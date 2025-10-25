package td;

import xc.l;
/* loaded from: classes2.dex */
public abstract class c0 {
    public static final Object a(Object obj, ad.e eVar) {
        if (obj instanceof a0) {
            l.a aVar = xc.l.f32718b;
            return xc.l.b(xc.m.a(((a0) obj).f30621a));
        }
        return xc.l.b(obj);
    }

    public static final Object b(Object obj) {
        Throwable d10 = xc.l.d(obj);
        if (d10 != null) {
            return new a0(d10, false, 2, null);
        }
        return obj;
    }

    public static final Object c(Object obj, l lVar) {
        Throwable d10 = xc.l.d(obj);
        if (d10 != null) {
            return new a0(d10, false, 2, null);
        }
        return obj;
    }
}
