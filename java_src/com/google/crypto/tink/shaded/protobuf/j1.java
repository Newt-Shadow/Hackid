package com.google.crypto.tink.shaded.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class j1 {
    abstract void a(Object obj, int i10, int i11);

    abstract void b(Object obj, int i10, long j10);

    abstract void c(Object obj, int i10, Object obj2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void d(Object obj, int i10, h hVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void e(Object obj, int i10, long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Object f(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Object g(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int h(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int i(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void j(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Object k(Object obj, Object obj2);

    final void l(Object obj, c1 c1Var) {
        while (c1Var.w() != Integer.MAX_VALUE && m(obj, c1Var)) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean m(Object obj, c1 c1Var) {
        int q10 = c1Var.q();
        int a10 = p1.a(q10);
        int b10 = p1.b(q10);
        if (b10 != 0) {
            if (b10 != 1) {
                if (b10 != 2) {
                    if (b10 != 3) {
                        if (b10 != 4) {
                            if (b10 == 5) {
                                a(obj, a10, c1Var.g());
                                return true;
                            }
                            throw a0.e();
                        }
                        return false;
                    }
                    Object n10 = n();
                    int c10 = p1.c(a10, 4);
                    l(n10, c1Var);
                    if (c10 == c1Var.q()) {
                        c(obj, a10, r(n10));
                        return true;
                    }
                    throw a0.b();
                }
                d(obj, a10, c1Var.z());
                return true;
            }
            b(obj, a10, c1Var.c());
            return true;
        }
        e(obj, a10, c1Var.G());
        return true;
    }

    abstract Object n();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void o(Object obj, Object obj2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void p(Object obj, Object obj2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean q(c1 c1Var);

    abstract Object r(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void s(Object obj, q1 q1Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void t(Object obj, q1 q1Var);
}
