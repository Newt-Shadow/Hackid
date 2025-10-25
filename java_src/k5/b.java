package k5;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import java.lang.ref.SoftReference;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import m6.Task;
/* loaded from: classes.dex */
public abstract class b extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static SoftReference f24712a;

    /* renamed from: b  reason: collision with root package name */
    private static SoftReference f24713b;

    private final int e(Context context, Intent intent) {
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("pending_intent");
        if (pendingIntent != null) {
            try {
                pendingIntent.send();
            } catch (PendingIntent.CanceledException unused) {
                Log.e("CloudMessagingReceiver", "Notification pending intent canceled");
            }
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            extras.remove("pending_intent");
        } else {
            extras = new Bundle();
        }
        if (Objects.equals(intent.getAction(), "com.google.firebase.messaging.NOTIFICATION_DISMISS")) {
            c(context, extras);
            return -1;
        }
        Log.e("CloudMessagingReceiver", "Unknown notification action");
        return 500;
    }

    protected Executor a() {
        ExecutorService executorService;
        synchronized (b.class) {
            SoftReference softReference = f24712a;
            if (softReference != null) {
                executorService = (ExecutorService) softReference.get();
            } else {
                executorService = null;
            }
            if (executorService == null) {
                b6.e.a();
                executorService = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool(new s5.b("firebase-iid-executor")));
                f24712a = new SoftReference(executorService);
            }
        }
        return executorService;
    }

    protected abstract int b(Context context, a aVar);

    protected abstract void c(Context context, Bundle bundle);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void d(Intent intent, final Context context, boolean z10, BroadcastReceiver.PendingResult pendingResult) {
        Intent intent2;
        int i10;
        try {
            Parcelable parcelableExtra = intent.getParcelableExtra("wrapped_intent");
            Executor executor = null;
            if (parcelableExtra instanceof Intent) {
                intent2 = (Intent) parcelableExtra;
            } else {
                intent2 = null;
            }
            if (intent2 != null) {
                i10 = e(context, intent2);
            } else if (intent.getExtras() == null) {
                i10 = 500;
            } else {
                final a aVar = new a(intent);
                final CountDownLatch countDownLatch = new CountDownLatch(1);
                synchronized (b.class) {
                    SoftReference softReference = f24713b;
                    if (softReference != null) {
                        executor = (Executor) softReference.get();
                    }
                    if (executor == null) {
                        b6.e.a();
                        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new s5.b("pscm-ack-executor"));
                        threadPoolExecutor.allowCoreThreadTimeOut(true);
                        executor = Executors.unconfigurableExecutorService(threadPoolExecutor);
                        f24713b = new SoftReference(executor);
                    }
                }
                executor.execute(new Runnable() { // from class: k5.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        Task c10;
                        a aVar2 = aVar;
                        if (TextUtils.isEmpty(aVar2.i())) {
                            c10 = m6.n.e(null);
                        } else {
                            Bundle bundle = new Bundle();
                            bundle.putString("google.message_id", aVar2.i());
                            Integer l10 = aVar2.l();
                            if (l10 != null) {
                                bundle.putInt("google.product_id", l10.intValue());
                            }
                            Context context2 = context;
                            bundle.putBoolean("supports_message_handled", true);
                            c10 = d0.b(context2).c(2, bundle);
                        }
                        final CountDownLatch countDownLatch2 = countDownLatch;
                        c10.b(new Executor() { // from class: k5.m
                            @Override // java.util.concurrent.Executor
                            public final void execute(Runnable runnable) {
                                runnable.run();
                            }
                        }, new m6.f() { // from class: k5.n
                            @Override // m6.f
                            public final void onComplete(Task task) {
                                countDownLatch2.countDown();
                            }
                        });
                    }
                });
                int b10 = b(context, aVar);
                try {
                    if (!countDownLatch.await(TimeUnit.SECONDS.toMillis(1L), TimeUnit.MILLISECONDS)) {
                        Log.w("CloudMessagingReceiver", "Message ack timed out");
                    }
                } catch (InterruptedException e10) {
                    Log.w("CloudMessagingReceiver", "Message ack failed: ".concat(e10.toString()));
                }
                i10 = b10;
            }
            if (z10 && pendingResult != null) {
                pendingResult.setResultCode(i10);
            }
        } finally {
            if (pendingResult != null) {
                pendingResult.finish();
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(final Context context, final Intent intent) {
        if (intent == null) {
            return;
        }
        final boolean isOrderedBroadcast = isOrderedBroadcast();
        final BroadcastReceiver.PendingResult goAsync = goAsync();
        a().execute(new Runnable() { // from class: k5.p
            @Override // java.lang.Runnable
            public final void run() {
                b.this.d(intent, context, isOrderedBroadcast, goAsync);
            }
        });
    }
}
