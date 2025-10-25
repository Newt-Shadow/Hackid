package com.yandex.metrica.impl.ob;

import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.yandex.metrica.impl.ob.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0394a {

    /* renamed from: f  reason: collision with root package name */
    private static final long f11899f = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: a  reason: collision with root package name */
    private final b f11900a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f11901b = new Handler(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    private final Thread f11902c = new c();

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f11903d = new AtomicBoolean();

    /* renamed from: e  reason: collision with root package name */
    private final Runnable f11904e = new RunnableC0127a();

    /* renamed from: com.yandex.metrica.impl.ob.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class RunnableC0127a implements Runnable {
        RunnableC0127a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0394a.this.f11903d.set(true);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.a$b */
    /* loaded from: classes2.dex */
    public interface b {
        void a();
    }

    /* renamed from: com.yandex.metrica.impl.ob.a$c */
    /* loaded from: classes2.dex */
    private class c extends Thread {
        public c() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            boolean z10 = false;
            int i10 = 0;
            while (!isInterrupted()) {
                if (!z10) {
                    C0394a.this.f11903d.set(false);
                    C0394a.this.f11901b.post(C0394a.this.f11904e);
                    i10 = 0;
                }
                try {
                    Thread.sleep(C0394a.f11899f);
                    if (!C0394a.this.f11903d.get()) {
                        i10++;
                        if (i10 == 4 && !Debug.isDebuggerConnected()) {
                            C0394a.this.b();
                        }
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } catch (InterruptedException unused) {
                    return;
                }
            }
        }
    }

    public C0394a(b bVar) {
        this.f11900a = bVar;
    }

    public void b() {
        this.f11900a.a();
    }

    public void c() {
        try {
            this.f11902c.setName("CR-WatchDog");
        } catch (SecurityException unused) {
        }
        this.f11902c.start();
    }
}
