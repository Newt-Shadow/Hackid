package yd;
/* loaded from: classes2.dex */
public abstract class y {
    public static final void a(id.l lVar, Object obj, ad.i iVar) {
        r0 b10 = b(lVar, obj, null);
        if (b10 != null) {
            td.k0.a(iVar, b10);
        }
    }

    public static final r0 b(id.l lVar, Object obj, r0 r0Var) {
        try {
            lVar.invoke(obj);
        } catch (Throwable th) {
            if (r0Var != null && r0Var.getCause() != th) {
                xc.b.a(r0Var, th);
            } else {
                return new r0("Exception in undelivered element handler for " + obj, th);
            }
        }
        return r0Var;
    }

    public static /* synthetic */ r0 c(id.l lVar, Object obj, r0 r0Var, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            r0Var = null;
        }
        return b(lVar, obj, r0Var);
    }
}
