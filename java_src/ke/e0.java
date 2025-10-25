package ke;

import ge.f;
import ge.g;
/* loaded from: classes2.dex */
public abstract class e0 {
    public static final ge.d a(ge.d dVar, le.b module) {
        ge.d a10;
        kotlin.jvm.internal.m.e(dVar, "<this>");
        kotlin.jvm.internal.m.e(module, "module");
        if (kotlin.jvm.internal.m.a(dVar.e(), f.a.f16418a)) {
            ge.d b10 = ge.a.b(module, dVar);
            if (b10 != null && (a10 = a(b10, module)) != null) {
                return a10;
            }
            return dVar;
        } else if (dVar.isInline()) {
            return a(dVar.i(0), module);
        } else {
            return dVar;
        }
    }

    public static final d0 b(je.b bVar, ge.d desc) {
        kotlin.jvm.internal.m.e(bVar, "<this>");
        kotlin.jvm.internal.m.e(desc, "desc");
        ge.f e10 = desc.e();
        if (e10 instanceof ge.b) {
            return d0.f24902f;
        }
        if (kotlin.jvm.internal.m.a(e10, g.b.f16421a)) {
            return d0.f24900d;
        }
        if (kotlin.jvm.internal.m.a(e10, g.c.f16422a)) {
            ge.d a10 = a(desc.i(0), bVar.d());
            ge.f e11 = a10.e();
            if (!(e11 instanceof ge.c) && !kotlin.jvm.internal.m.a(e11, f.b.f16419a)) {
                if (bVar.c().c()) {
                    return d0.f24900d;
                }
                throw q.b(a10);
            }
            return d0.f24901e;
        }
        return d0.f24899c;
    }
}
