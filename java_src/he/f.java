package he;

import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public interface f {

    /* loaded from: classes2.dex */
    public static final class a {
        public static d a(f fVar, ge.d descriptor, int i10) {
            m.e(descriptor, "descriptor");
            return fVar.b(descriptor);
        }

        public static void b(f fVar) {
        }

        public static void c(f fVar, ee.e serializer, Object obj) {
            m.e(serializer, "serializer");
            if (serializer.a().c()) {
                fVar.k(serializer, obj);
            } else if (obj == null) {
                fVar.d();
            } else {
                fVar.l();
                fVar.k(serializer, obj);
            }
        }
    }

    d b(ge.d dVar);

    void d();

    void g(double d10);

    d h(ge.d dVar, int i10);

    void j(boolean z10);

    void k(ee.e eVar, Object obj);

    void l();

    void o(int i10);

    void p(long j10);

    void r(String str);
}
