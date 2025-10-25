package d4;

import android.os.Handler;
import b3.f2;
import b3.g4;
import c3.t3;
/* loaded from: classes.dex */
public interface t {

    /* loaded from: classes.dex */
    public interface a {
    }

    /* loaded from: classes.dex */
    public static final class b extends s {
        public b(Object obj) {
            super(obj);
        }

        public b c(Object obj) {
            return new b(super.a(obj));
        }

        public b(Object obj, long j10) {
            super(obj, j10);
        }

        public b(Object obj, long j10, int i10) {
            super(obj, j10, i10);
        }

        public b(Object obj, int i10, int i11, long j10) {
            super(obj, i10, i11, j10);
        }

        public b(s sVar) {
            super(sVar);
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        void a(t tVar, g4 g4Var);
    }

    void a(Handler handler, f3.u uVar);

    void b(f3.u uVar);

    void c(c cVar);

    r d(b bVar, x4.b bVar2, long j10);

    void e(a0 a0Var);

    void g(r rVar);

    void i(Handler handler, a0 a0Var);

    f2 j();

    void k();

    default boolean l() {
        return true;
    }

    default g4 n() {
        return null;
    }

    void p(c cVar);

    void q(c cVar);

    void r(c cVar, x4.m0 m0Var, t3 t3Var);
}
