package androidx.datastore.preferences.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class l1 {

    /* renamed from: a  reason: collision with root package name */
    private static volatile int f2221a = 100;

    private final void l(Object obj, d1 d1Var, int i10) {
        while (d1Var.w() != Integer.MAX_VALUE && m(obj, d1Var, i10)) {
        }
    }

    abstract void a(Object obj, int i10, int i11);

    abstract void b(Object obj, int i10, long j10);

    abstract void c(Object obj, int i10, Object obj2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void d(Object obj, int i10, g gVar);

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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean m(Object obj, d1 d1Var, int i10) {
        int q10 = d1Var.q();
        int a10 = q1.a(q10);
        int b10 = q1.b(q10);
        if (b10 != 0) {
            if (b10 != 1) {
                if (b10 != 2) {
                    if (b10 != 3) {
                        if (b10 != 4) {
                            if (b10 == 5) {
                                a(obj, a10, d1Var.g());
                                return true;
                            }
                            throw z.e();
                        }
                        return false;
                    }
                    Object n10 = n();
                    int c10 = q1.c(a10, 4);
                    int i11 = i10 + 1;
                    if (i11 < f2221a) {
                        l(n10, d1Var, i11);
                        if (c10 == d1Var.q()) {
                            c(obj, a10, r(n10));
                            return true;
                        }
                        throw z.b();
                    }
                    throw z.i();
                }
                d(obj, a10, d1Var.z());
                return true;
            }
            b(obj, a10, d1Var.c());
            return true;
        }
        e(obj, a10, d1Var.G());
        return true;
    }

    abstract Object n();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void o(Object obj, Object obj2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void p(Object obj, Object obj2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean q(d1 d1Var);

    abstract Object r(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void s(Object obj, r1 r1Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void t(Object obj, r1 r1Var);
}
