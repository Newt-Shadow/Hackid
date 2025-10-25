package com.google.android.gms.internal.measurement;
/* loaded from: classes.dex */
public final class y3 {

    /* renamed from: a  reason: collision with root package name */
    final x f6888a;

    /* renamed from: b  reason: collision with root package name */
    final z4 f6889b;

    /* renamed from: c  reason: collision with root package name */
    final z4 f6890c;

    /* renamed from: d  reason: collision with root package name */
    final c8 f6891d;

    public y3() {
        x xVar = new x();
        this.f6888a = xVar;
        z4 z4Var = new z4(null, xVar);
        this.f6890c = z4Var;
        this.f6889b = z4Var.c();
        c8 c8Var = new c8();
        this.f6891d = c8Var;
        z4Var.e("require", new wg(c8Var));
        c8Var.a("internal.platform", d3.f6351a);
        z4Var.e("runtime.counter", new i(Double.valueOf(0.0d)));
    }

    public final p a(z4 z4Var, h8... h8VarArr) {
        p pVar = p.f6622j0;
        for (h8 h8Var : h8VarArr) {
            pVar = b7.b(h8Var);
            a6.l(this.f6890c);
            if ((pVar instanceof q) || (pVar instanceof o)) {
                pVar = this.f6888a.b(z4Var, pVar);
            }
        }
        return pVar;
    }
}
