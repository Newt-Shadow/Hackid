package yd;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* loaded from: classes2.dex */
public class o0 {

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f33282b = AtomicIntegerFieldUpdater.newUpdater(o0.class, "_size$volatile");
    private volatile /* synthetic */ int _size$volatile;

    /* renamed from: a  reason: collision with root package name */
    private p0[] f33283a;

    private final p0[] g() {
        p0[] p0VarArr = this.f33283a;
        if (p0VarArr == null) {
            p0[] p0VarArr2 = new p0[4];
            this.f33283a = p0VarArr2;
            return p0VarArr2;
        } else if (c() >= p0VarArr.length) {
            Object[] copyOf = Arrays.copyOf(p0VarArr, c() * 2);
            kotlin.jvm.internal.m.d(copyOf, "copyOf(...)");
            p0[] p0VarArr3 = (p0[]) copyOf;
            this.f33283a = p0VarArr3;
            return p0VarArr3;
        } else {
            return p0VarArr;
        }
    }

    private final void k(int i10) {
        f33282b.set(this, i10);
    }

    private final void l(int i10) {
        while (true) {
            int i11 = (i10 * 2) + 1;
            if (i11 >= c()) {
                return;
            }
            p0[] p0VarArr = this.f33283a;
            kotlin.jvm.internal.m.b(p0VarArr);
            int i12 = i11 + 1;
            if (i12 < c()) {
                p0 p0Var = p0VarArr[i12];
                kotlin.jvm.internal.m.b(p0Var);
                p0 p0Var2 = p0VarArr[i11];
                kotlin.jvm.internal.m.b(p0Var2);
                if (((Comparable) p0Var).compareTo(p0Var2) < 0) {
                    i11 = i12;
                }
            }
            p0 p0Var3 = p0VarArr[i10];
            kotlin.jvm.internal.m.b(p0Var3);
            p0 p0Var4 = p0VarArr[i11];
            kotlin.jvm.internal.m.b(p0Var4);
            if (((Comparable) p0Var3).compareTo(p0Var4) <= 0) {
                return;
            }
            n(i10, i11);
            i10 = i11;
        }
    }

    private final void m(int i10) {
        while (i10 > 0) {
            p0[] p0VarArr = this.f33283a;
            kotlin.jvm.internal.m.b(p0VarArr);
            int i11 = (i10 - 1) / 2;
            p0 p0Var = p0VarArr[i11];
            kotlin.jvm.internal.m.b(p0Var);
            p0 p0Var2 = p0VarArr[i10];
            kotlin.jvm.internal.m.b(p0Var2);
            if (((Comparable) p0Var).compareTo(p0Var2) <= 0) {
                return;
            }
            n(i10, i11);
            i10 = i11;
        }
    }

    private final void n(int i10, int i11) {
        p0[] p0VarArr = this.f33283a;
        kotlin.jvm.internal.m.b(p0VarArr);
        p0 p0Var = p0VarArr[i11];
        kotlin.jvm.internal.m.b(p0Var);
        p0 p0Var2 = p0VarArr[i10];
        kotlin.jvm.internal.m.b(p0Var2);
        p0VarArr[i10] = p0Var;
        p0VarArr[i11] = p0Var2;
        p0Var.f(i10);
        p0Var2.f(i11);
    }

    public final void a(p0 p0Var) {
        p0Var.j(this);
        p0[] g10 = g();
        int c10 = c();
        k(c10 + 1);
        g10[c10] = p0Var;
        p0Var.f(c10);
        m(c10);
    }

    public final p0 b() {
        p0[] p0VarArr = this.f33283a;
        if (p0VarArr != null) {
            return p0VarArr[0];
        }
        return null;
    }

    public final int c() {
        return f33282b.get(this);
    }

    public final boolean e() {
        if (c() == 0) {
            return true;
        }
        return false;
    }

    public final p0 f() {
        p0 b10;
        synchronized (this) {
            b10 = b();
        }
        return b10;
    }

    public final boolean h(p0 p0Var) {
        boolean z10;
        synchronized (this) {
            if (p0Var.b() == null) {
                z10 = false;
            } else {
                i(p0Var.i());
                z10 = true;
            }
        }
        return z10;
    }

    public final p0 i(int i10) {
        p0[] p0VarArr = this.f33283a;
        kotlin.jvm.internal.m.b(p0VarArr);
        k(c() - 1);
        if (i10 < c()) {
            n(i10, c());
            int i11 = (i10 - 1) / 2;
            if (i10 > 0) {
                p0 p0Var = p0VarArr[i10];
                kotlin.jvm.internal.m.b(p0Var);
                p0 p0Var2 = p0VarArr[i11];
                kotlin.jvm.internal.m.b(p0Var2);
                if (((Comparable) p0Var).compareTo(p0Var2) < 0) {
                    n(i10, i11);
                    m(i11);
                }
            }
            l(i10);
        }
        p0 p0Var3 = p0VarArr[c()];
        kotlin.jvm.internal.m.b(p0Var3);
        p0Var3.j(null);
        p0Var3.f(-1);
        p0VarArr[c()] = null;
        return p0Var3;
    }

    public final p0 j() {
        p0 p0Var;
        synchronized (this) {
            if (c() > 0) {
                p0Var = i(0);
            } else {
                p0Var = null;
            }
        }
        return p0Var;
    }
}
