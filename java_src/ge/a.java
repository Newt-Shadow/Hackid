package ge;

import ie.x;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public abstract class a {
    public static final pd.c a(d dVar) {
        m.e(dVar, "<this>");
        if (dVar instanceof x) {
            return a(((x) dVar).k());
        }
        return null;
    }

    public static final d b(le.b bVar, d descriptor) {
        ee.b b10;
        m.e(bVar, "<this>");
        m.e(descriptor, "descriptor");
        pd.c a10 = a(descriptor);
        if (a10 == null || (b10 = le.b.b(bVar, a10, null, 2, null)) == null) {
            return null;
        }
        return b10.a();
    }
}
