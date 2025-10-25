package yd;

import id.Function2;
/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a */
    private static final f0 f33245a = new f0("CLOSED");

    public static final b b(b bVar) {
        while (true) {
            Object g10 = bVar.g();
            if (g10 == f33245a) {
                return bVar;
            }
            b bVar2 = (b) g10;
            if (bVar2 == null) {
                if (bVar.m()) {
                    return bVar;
                }
            } else {
                bVar = bVar2;
            }
        }
    }

    public static final Object c(c0 c0Var, long j10, Function2 function2) {
        while (true) {
            if (c0Var.f33250c < j10 || c0Var.k()) {
                Object g10 = c0Var.g();
                if (g10 == f33245a) {
                    return d0.a(f33245a);
                }
                c0 c0Var2 = (c0) ((b) g10);
                if (c0Var2 == null) {
                    c0Var2 = (c0) function2.invoke(Long.valueOf(c0Var.f33250c + 1), c0Var);
                    if (c0Var.o(c0Var2)) {
                        if (c0Var.k()) {
                            c0Var.n();
                        }
                    }
                }
                c0Var = c0Var2;
            } else {
                return d0.a(c0Var);
            }
        }
    }
}
