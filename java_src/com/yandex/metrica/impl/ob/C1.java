package com.yandex.metrica.impl.ob;

import java.lang.Thread;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
class C1 implements Thread.UncaughtExceptionHandler {

    /* renamed from: f  reason: collision with root package name */
    private static final AtomicBoolean f9817f = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    private final List<A6> f9818a;

    /* renamed from: b  reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f9819b;

    /* renamed from: c  reason: collision with root package name */
    private final C0647k3 f9820c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC0442bm f9821d;

    /* renamed from: e  reason: collision with root package name */
    private final C0598i3 f9822e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, List<A6> list, InterfaceC0442bm interfaceC0442bm, C0598i3 c0598i3, C0647k3 c0647k3) {
        this.f9818a = list;
        this.f9819b = uncaughtExceptionHandler;
        this.f9821d = interfaceC0442bm;
        this.f9822e = c0598i3;
        this.f9820c = c0647k3;
    }

    public static boolean a() {
        return f9817f.get();
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            f9817f.set(true);
            C0942w6 c0942w6 = new C0942w6(this.f9822e.a(thread), this.f9820c.a(thread), ((Xl) this.f9821d).b());
            for (A6 a62 : this.f9818a) {
                a62.a(th, c0942w6);
            }
        } finally {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f9819b;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            }
        }
    }
}
