package td;

import xc.l;
/* loaded from: classes2.dex */
public abstract class p0 {
    public static final String a(Object obj) {
        return obj.getClass().getSimpleName();
    }

    public static final String b(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final String c(ad.e eVar) {
        String b10;
        if (eVar instanceof yd.h) {
            return ((yd.h) eVar).toString();
        }
        try {
            l.a aVar = xc.l.f32718b;
            b10 = xc.l.b(eVar + '@' + b(eVar));
        } catch (Throwable th) {
            l.a aVar2 = xc.l.f32718b;
            b10 = xc.l.b(xc.m.a(th));
        }
        if (xc.l.d(b10) != null) {
            b10 = eVar.getClass().getName() + '@' + b(eVar);
        }
        return (String) b10;
    }
}
