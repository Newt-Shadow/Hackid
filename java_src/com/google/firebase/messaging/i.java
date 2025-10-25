package com.google.firebase.messaging;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import com.google.firebase.messaging.m1;
import java.util.concurrent.ExecutorService;
import m6.Task;
/* loaded from: classes.dex */
public abstract class i extends Service {
    static final long MESSAGE_TIMEOUT_S = 20;
    private static final String TAG = "EnhancedIntentService";
    private Binder binder;
    private int lastStartId;
    final ExecutorService executor = o.d();
    private final Object lock = new Object();
    private int runningTasks = 0;

    /* loaded from: classes.dex */
    class a implements m1.a {
        a() {
        }

        @Override // com.google.firebase.messaging.m1.a
        public Task a(Intent intent) {
            return i.this.f(intent);
        }
    }

    private void c(Intent intent) {
        if (intent != null) {
            k1.c(intent);
        }
        synchronized (this.lock) {
            int i10 = this.runningTasks - 1;
            this.runningTasks = i10;
            if (i10 == 0) {
                stopSelfResultHook(this.lastStartId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(Intent intent, Task task) {
        c(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(Intent intent, m6.l lVar) {
        try {
            handleIntent(intent);
        } finally {
            lVar.c(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Task f(final Intent intent) {
        if (handleIntentOnMainThread(intent)) {
            return m6.n.e(null);
        }
        final m6.l lVar = new m6.l();
        this.executor.execute(new Runnable() { // from class: com.google.firebase.messaging.g
            @Override // java.lang.Runnable
            public final void run() {
                i.this.e(intent, lVar);
            }
        });
        return lVar.a();
    }

    protected abstract Intent getStartCommandIntent(Intent intent);

    public abstract void handleIntent(Intent intent);

    public boolean handleIntentOnMainThread(Intent intent) {
        return false;
    }

    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "Service received bind request");
        }
        if (this.binder == null) {
            this.binder = new m1(new a());
        }
        return this.binder;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.executor.shutdown();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(final Intent intent, int i10, int i11) {
        synchronized (this.lock) {
            this.lastStartId = i11;
            this.runningTasks++;
        }
        Intent startCommandIntent = getStartCommandIntent(intent);
        if (startCommandIntent == null) {
            c(intent);
            return 2;
        }
        Task f10 = f(startCommandIntent);
        if (f10.o()) {
            c(intent);
            return 2;
        }
        f10.b(new androidx.privacysandbox.ads.adservices.measurement.j(), new m6.f() { // from class: com.google.firebase.messaging.h
            @Override // m6.f
            public final void onComplete(Task task) {
                i.this.d(intent, task);
            }
        });
        return 3;
    }

    boolean stopSelfResultHook(int i10) {
        return stopSelfResult(i10);
    }
}
