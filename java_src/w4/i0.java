package w4;

import b3.l4;
import b3.v3;
import y4.q0;
/* loaded from: classes.dex */
public final class i0 {

    /* renamed from: a  reason: collision with root package name */
    public final int f31841a;

    /* renamed from: b  reason: collision with root package name */
    public final v3[] f31842b;

    /* renamed from: c  reason: collision with root package name */
    public final y[] f31843c;

    /* renamed from: d  reason: collision with root package name */
    public final l4 f31844d;

    /* renamed from: e  reason: collision with root package name */
    public final Object f31845e;

    public i0(v3[] v3VarArr, y[] yVarArr, l4 l4Var, Object obj) {
        this.f31842b = v3VarArr;
        this.f31843c = (y[]) yVarArr.clone();
        this.f31844d = l4Var;
        this.f31845e = obj;
        this.f31841a = v3VarArr.length;
    }

    public boolean a(i0 i0Var) {
        if (i0Var == null || i0Var.f31843c.length != this.f31843c.length) {
            return false;
        }
        for (int i10 = 0; i10 < this.f31843c.length; i10++) {
            if (!b(i0Var, i10)) {
                return false;
            }
        }
        return true;
    }

    public boolean b(i0 i0Var, int i10) {
        if (i0Var == null || !q0.c(this.f31842b[i10], i0Var.f31842b[i10]) || !q0.c(this.f31843c[i10], i0Var.f31843c[i10])) {
            return false;
        }
        return true;
    }

    public boolean c(int i10) {
        if (this.f31842b[i10] != null) {
            return true;
        }
        return false;
    }
}
