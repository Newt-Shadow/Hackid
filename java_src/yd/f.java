package yd;
/* loaded from: classes2.dex */
public abstract class f {
    public static final void a(ad.i iVar, Throwable th) {
        for (td.j0 j0Var : e.a()) {
            try {
                j0Var.k0(iVar, th);
            } catch (Throwable th2) {
                e.b(td.k0.b(th, th2));
            }
        }
        try {
            xc.b.a(th, new g(iVar));
        } catch (Throwable unused) {
        }
        e.b(th);
    }
}
