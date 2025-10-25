package yd;
/* loaded from: classes2.dex */
public abstract class d0 {
    public static Object a(Object obj) {
        return obj;
    }

    public static final c0 b(Object obj) {
        if (obj != a.f33245a) {
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type S of kotlinx.coroutines.internal.SegmentOrClosed");
            return (c0) obj;
        }
        throw new IllegalStateException("Does not contain segment".toString());
    }

    public static final boolean c(Object obj) {
        if (obj == a.f33245a) {
            return true;
        }
        return false;
    }
}
