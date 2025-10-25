package mf;
/* loaded from: classes2.dex */
public interface c {
    void a(String str, Object obj);

    void b(String str, Object obj);

    boolean c();

    void d(String str, Object obj, Object obj2);

    boolean e();

    void f(String str, Object obj);

    void g(String str, Throwable th);

    String getName();

    void h(String str, Object obj, Object obj2);

    boolean i();

    void j(String str, Object... objArr);

    boolean k();

    void l(String str, Object obj, Object obj2);

    void m(String str);

    boolean n();

    void o(String str, Object obj, Object obj2);

    void p(String str, Object... objArr);

    void q(String str, Object obj);

    void r(String str, Object obj);

    default boolean s(nf.b bVar) {
        int b10 = bVar.b();
        if (b10 != 0) {
            if (b10 != 10) {
                if (b10 != 20) {
                    if (b10 != 30) {
                        if (b10 == 40) {
                            return i();
                        }
                        throw new IllegalArgumentException("Level [" + bVar + "] not recognized.");
                    }
                    return c();
                }
                return k();
            }
            return e();
        }
        return n();
    }

    void t(String str, Object... objArr);

    void u(String str, Throwable th);

    void v(String str, Throwable th);

    void w(String str);

    void x(String str);

    void y(String str);

    void z(String str, Object obj, Object obj2);
}
