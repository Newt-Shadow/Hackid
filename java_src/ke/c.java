package ke;

import xc.l;
/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private static final int f24895a;

    static {
        Object b10;
        int i10;
        Integer m10;
        try {
            l.a aVar = xc.l.f32718b;
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            kotlin.jvm.internal.m.d(property, "getProperty(...)");
            m10 = rd.x.m(property);
            b10 = xc.l.b(m10);
        } catch (Throwable th) {
            l.a aVar2 = xc.l.f32718b;
            b10 = xc.l.b(xc.m.a(th));
        }
        if (xc.l.f(b10)) {
            b10 = null;
        }
        Integer num = (Integer) b10;
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = 2097152;
        }
        f24895a = i10;
    }
}
