package yd;

import xc.l;
/* loaded from: classes2.dex */
public abstract class e0 {

    /* renamed from: a  reason: collision with root package name */
    private static final StackTraceElement f33253a = new a.a().a();

    /* renamed from: b  reason: collision with root package name */
    private static final String f33254b;

    /* renamed from: c  reason: collision with root package name */
    private static final String f33255c;

    static {
        Object b10;
        Object b11;
        try {
            l.a aVar = xc.l.f32718b;
            b10 = xc.l.b(kotlin.coroutines.jvm.internal.a.class.getCanonicalName());
        } catch (Throwable th) {
            l.a aVar2 = xc.l.f32718b;
            b10 = xc.l.b(xc.m.a(th));
        }
        if (xc.l.d(b10) != null) {
            b10 = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        f33254b = (String) b10;
        try {
            b11 = xc.l.b(e0.class.getCanonicalName());
        } catch (Throwable th2) {
            l.a aVar3 = xc.l.f32718b;
            b11 = xc.l.b(xc.m.a(th2));
        }
        if (xc.l.d(b11) != null) {
            b11 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        f33255c = (String) b11;
    }

    public static final Throwable a(Throwable th) {
        return th;
    }
}
