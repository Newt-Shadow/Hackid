package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public final class Q1 implements Thread.UncaughtExceptionHandler {

    /* renamed from: e  reason: collision with root package name */
    public static final AtomicBoolean f18798e = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    public final Ra f18799a;

    /* renamed from: b  reason: collision with root package name */
    public final C1467rc f18800b = C1509t4.j().m();

    /* renamed from: c  reason: collision with root package name */
    public final B6 f18801c = new B6();

    /* renamed from: d  reason: collision with root package name */
    public final C1279jn f18802d = new C1279jn();

    public Q1(C1636y6 c1636y6) {
        this.f18799a = c1636y6;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        StackTraceElement[] stackTraceElementArr;
        try {
            f18798e.set(true);
            Ra ra2 = this.f18799a;
            C1105cn apply = this.f18801c.apply(thread);
            C1279jn c1279jn = this.f18802d;
            Thread a10 = c1279jn.f19876a.a();
            ArrayList a11 = c1279jn.a(a10, thread);
            if (thread != a10) {
                try {
                    stackTraceElementArr = c1279jn.f19876a.b();
                    if (stackTraceElementArr == null) {
                        try {
                            stackTraceElementArr = a10.getStackTrace();
                        } catch (SecurityException unused) {
                        }
                    }
                } catch (SecurityException unused2) {
                    stackTraceElementArr = null;
                }
                a11.add(0, (C1105cn) c1279jn.f19877b.apply(a10, stackTraceElementArr));
            }
            ra2.a(th, new P(apply, a11, this.f18800b.b()));
        } catch (Throwable th2) {
            LoggerStorage.getMainPublicOrAnonymousLogger().error(th2, th2.getMessage(), new Object[0]);
        }
    }
}
