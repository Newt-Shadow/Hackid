package k5;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m6.Task;
/* loaded from: classes.dex */
public class c {

    /* renamed from: h  reason: collision with root package name */
    private static int f24714h;

    /* renamed from: i  reason: collision with root package name */
    private static PendingIntent f24715i;

    /* renamed from: j  reason: collision with root package name */
    private static final Executor f24716j = new Executor() { // from class: k5.g0
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    };

    /* renamed from: k  reason: collision with root package name */
    private static final Pattern f24717k = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)");

    /* renamed from: b  reason: collision with root package name */
    private final Context f24719b;

    /* renamed from: c  reason: collision with root package name */
    private final e0 f24720c;

    /* renamed from: d  reason: collision with root package name */
    private final ScheduledExecutorService f24721d;

    /* renamed from: f  reason: collision with root package name */
    private Messenger f24723f;

    /* renamed from: g  reason: collision with root package name */
    private l f24724g;

    /* renamed from: a  reason: collision with root package name */
    private final r.i f24718a = new r.i();

    /* renamed from: e  reason: collision with root package name */
    private final Messenger f24722e = new Messenger(new i(this, Looper.getMainLooper()));

    public c(Context context) {
        this.f24719b = context;
        this.f24720c = new e0(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f24721d = scheduledThreadPoolExecutor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Task e(Bundle bundle) {
        if (m(bundle)) {
            return m6.n.e(null);
        }
        return m6.n.e(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void g(c cVar, Message message) {
        if (message != null) {
            Object obj = message.obj;
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                intent.setExtrasClassLoader(new k());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof l) {
                        cVar.f24724g = (l) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        cVar.f24723f = (Messenger) parcelableExtra;
                    }
                }
                Intent intent2 = (Intent) message.obj;
                String action = intent2.getAction();
                if (!Objects.equals(action, "com.google.android.c2dm.intent.REGISTRATION")) {
                    if (Log.isLoggable("Rpc", 3)) {
                        Log.d("Rpc", "Unexpected response action: ".concat(String.valueOf(action)));
                        return;
                    }
                    return;
                }
                String stringExtra = intent2.getStringExtra("registration_id");
                if (stringExtra == null) {
                    stringExtra = intent2.getStringExtra("unregistered");
                }
                if (stringExtra == null) {
                    String stringExtra2 = intent2.getStringExtra("error");
                    if (stringExtra2 == null) {
                        Log.w("Rpc", "Unexpected response, no error or registration id ".concat(String.valueOf(intent2.getExtras())));
                        return;
                    }
                    if (Log.isLoggable("Rpc", 3)) {
                        Log.d("Rpc", "Received InstanceID error ".concat(stringExtra2));
                    }
                    if (stringExtra2.startsWith("|")) {
                        String[] split = stringExtra2.split("\\|");
                        if (split.length > 2 && Objects.equals(split[1], "ID")) {
                            String str = split[2];
                            String str2 = split[3];
                            if (str2.startsWith(":")) {
                                str2 = str2.substring(1);
                            }
                            cVar.l(str, intent2.putExtra("error", str2).getExtras());
                            return;
                        }
                        Log.w("Rpc", "Unexpected structured response ".concat(stringExtra2));
                        return;
                    }
                    synchronized (cVar.f24718a) {
                        for (int i10 = 0; i10 < cVar.f24718a.size(); i10++) {
                            cVar.l((String) cVar.f24718a.g(i10), intent2.getExtras());
                        }
                    }
                    return;
                }
                Matcher matcher = f24717k.matcher(stringExtra);
                if (!matcher.matches()) {
                    if (Log.isLoggable("Rpc", 3)) {
                        Log.d("Rpc", "Unexpected response string: ".concat(stringExtra));
                        return;
                    }
                    return;
                }
                String group = matcher.group(1);
                String group2 = matcher.group(2);
                if (group != null) {
                    Bundle extras = intent2.getExtras();
                    extras.putString("registration_id", group2);
                    cVar.l(group, extras);
                    return;
                }
                return;
            }
        }
        Log.w("Rpc", "Dropping invalid message");
    }

    private final Task i(Bundle bundle) {
        final String j10 = j();
        final m6.l lVar = new m6.l();
        synchronized (this.f24718a) {
            this.f24718a.put(j10, lVar);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.f24720c.b() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        k(this.f24719b, intent);
        intent.putExtra("kid", "|ID|" + j10 + "|");
        if (Log.isLoggable("Rpc", 3)) {
            Log.d("Rpc", "Sending ".concat(String.valueOf(intent.getExtras())));
        }
        intent.putExtra("google.messenger", this.f24722e);
        if (this.f24723f != null || this.f24724g != null) {
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                Messenger messenger = this.f24723f;
                if (messenger != null) {
                    messenger.send(obtain);
                } else {
                    this.f24724g.b(obtain);
                }
            } catch (RemoteException unused) {
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Messenger failed, fallback to startService");
                }
            }
            final ScheduledFuture<?> schedule = this.f24721d.schedule(new Runnable() { // from class: k5.g
                @Override // java.lang.Runnable
                public final void run() {
                    if (m6.l.this.d(new IOException("TIMEOUT"))) {
                        Log.w("Rpc", "No response");
                    }
                }
            }, 30L, TimeUnit.SECONDS);
            lVar.a().b(f24716j, new m6.f() { // from class: k5.h
                @Override // m6.f
                public final void onComplete(Task task) {
                    c.this.h(j10, schedule, task);
                }
            });
            return lVar.a();
        }
        if (this.f24720c.b() == 2) {
            this.f24719b.sendBroadcast(intent);
        } else {
            this.f24719b.startService(intent);
        }
        final ScheduledFuture schedule2 = this.f24721d.schedule(new Runnable() { // from class: k5.g
            @Override // java.lang.Runnable
            public final void run() {
                if (m6.l.this.d(new IOException("TIMEOUT"))) {
                    Log.w("Rpc", "No response");
                }
            }
        }, 30L, TimeUnit.SECONDS);
        lVar.a().b(f24716j, new m6.f() { // from class: k5.h
            @Override // m6.f
            public final void onComplete(Task task) {
                c.this.h(j10, schedule2, task);
            }
        });
        return lVar.a();
    }

    private static synchronized String j() {
        String num;
        synchronized (c.class) {
            int i10 = f24714h;
            f24714h = i10 + 1;
            num = Integer.toString(i10);
        }
        return num;
    }

    private static synchronized void k(Context context, Intent intent) {
        synchronized (c.class) {
            if (f24715i == null) {
                Intent intent2 = new Intent();
                intent2.setPackage("com.google.example.invalidpackage");
                f24715i = PendingIntent.getBroadcast(context, 0, intent2, b6.a.f4587a);
            }
            intent.putExtra("app", f24715i);
        }
    }

    private final void l(String str, Bundle bundle) {
        synchronized (this.f24718a) {
            m6.l lVar = (m6.l) this.f24718a.remove(str);
            if (lVar == null) {
                Log.w("Rpc", "Missing callback for " + str);
                return;
            }
            lVar.c(bundle);
        }
    }

    private static boolean m(Bundle bundle) {
        if (bundle != null && bundle.containsKey("google.messenger")) {
            return true;
        }
        return false;
    }

    public Task a() {
        if (this.f24720c.a() >= 241100000) {
            return d0.b(this.f24719b).d(5, Bundle.EMPTY).g(f24716j, new m6.c() { // from class: k5.f
                @Override // m6.c
                public final Object a(Task task) {
                    Intent intent = (Intent) ((Bundle) task.l()).getParcelable("notification_data");
                    if (intent != null) {
                        return new a(intent);
                    }
                    return null;
                }
            });
        }
        return m6.n.d(new IOException("SERVICE_NOT_AVAILABLE"));
    }

    public Task b(a aVar) {
        if (this.f24720c.a() >= 233700000) {
            Bundle bundle = new Bundle();
            bundle.putString("google.message_id", aVar.i());
            Integer l10 = aVar.l();
            if (l10 != null) {
                bundle.putInt("google.product_id", l10.intValue());
            }
            return d0.b(this.f24719b).c(3, bundle);
        }
        return m6.n.d(new IOException("SERVICE_NOT_AVAILABLE"));
    }

    public Task c(final Bundle bundle) {
        if (this.f24720c.a() < 12000000) {
            if (this.f24720c.b() != 0) {
                return i(bundle).i(f24716j, new m6.c() { // from class: k5.h0
                    @Override // m6.c
                    public final Object a(Task task) {
                        return c.this.f(bundle, task);
                    }
                });
            }
            return m6.n.d(new IOException("MISSING_INSTANCEID_SERVICE"));
        }
        return d0.b(this.f24719b).d(1, bundle).g(f24716j, new m6.c() { // from class: k5.e
            @Override // m6.c
            public final Object a(Task task) {
                if (task.p()) {
                    return (Bundle) task.l();
                }
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Error making request: ".concat(String.valueOf(task.k())));
                }
                throw new IOException("SERVICE_NOT_AVAILABLE", task.k());
            }
        });
    }

    public Task d(boolean z10) {
        if (this.f24720c.a() >= 241100000) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("proxy_retention", z10);
            return d0.b(this.f24719b).c(4, bundle);
        }
        return m6.n.d(new IOException("SERVICE_NOT_AVAILABLE"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Task f(Bundle bundle, Task task) {
        if (task.p() && m((Bundle) task.l())) {
            return i(bundle).q(f24716j, new m6.k() { // from class: k5.f0
                @Override // m6.k
                public final Task a(Object obj) {
                    return c.e((Bundle) obj);
                }
            });
        }
        return task;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void h(String str, ScheduledFuture scheduledFuture, Task task) {
        synchronized (this.f24718a) {
            this.f24718a.remove(str);
        }
        scheduledFuture.cancel(false);
    }
}
