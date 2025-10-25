package td;
/* loaded from: classes2.dex */
public abstract class k0 {
    public static final void a(ad.i iVar, Throwable th) {
        try {
            j0 j0Var = (j0) iVar.a(j0.f30656s0);
            if (j0Var != null) {
                j0Var.k0(iVar, th);
            } else {
                yd.f.a(iVar, th);
            }
        } catch (Throwable th2) {
            yd.f.a(iVar, b(th, th2));
        }
    }

    public static final Throwable b(Throwable th, Throwable th2) {
        if (th == th2) {
            return th;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
        xc.b.a(runtimeException, th);
        return runtimeException;
    }
}
