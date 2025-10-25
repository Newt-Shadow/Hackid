package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class j0 extends w {
    /* JADX INFO: Access modifiers changed from: protected */
    public j0() {
        this.f6857a.add(m0.ADD);
        this.f6857a.add(m0.DIVIDE);
        this.f6857a.add(m0.MODULUS);
        this.f6857a.add(m0.MULTIPLY);
        this.f6857a.add(m0.NEGATE);
        this.f6857a.add(m0.POST_DECREMENT);
        this.f6857a.add(m0.POST_INCREMENT);
        this.f6857a.add(m0.PRE_DECREMENT);
        this.f6857a.add(m0.PRE_INCREMENT);
        this.f6857a.add(m0.SUBTRACT);
    }

    @Override // com.google.android.gms.internal.measurement.w
    public final p a(String str, z4 z4Var, List list) {
        m0 m0Var = m0.ADD;
        int ordinal = a6.e(str).ordinal();
        if (ordinal != 0) {
            if (ordinal != 21) {
                if (ordinal != 59) {
                    if (ordinal != 52 && ordinal != 53) {
                        if (ordinal != 55 && ordinal != 56) {
                            switch (ordinal) {
                                case 44:
                                    a6.a(m0.MODULUS.name(), 2, list);
                                    return new i(Double.valueOf(z4Var.a((p) list.get(0)).g().doubleValue() % z4Var.a((p) list.get(1)).g().doubleValue()));
                                case 45:
                                    a6.a(m0.MULTIPLY.name(), 2, list);
                                    return new i(Double.valueOf(z4Var.a((p) list.get(0)).g().doubleValue() * z4Var.a((p) list.get(1)).g().doubleValue()));
                                case 46:
                                    a6.a(m0.NEGATE.name(), 1, list);
                                    return new i(Double.valueOf(-z4Var.a((p) list.get(0)).g().doubleValue()));
                                default:
                                    return super.b(str);
                            }
                        }
                        a6.a(str, 1, list);
                        return z4Var.a((p) list.get(0));
                    }
                    a6.a(str, 2, list);
                    p a10 = z4Var.a((p) list.get(0));
                    z4Var.a((p) list.get(1));
                    return a10;
                }
                a6.a(m0.SUBTRACT.name(), 2, list);
                return new i(Double.valueOf(z4Var.a((p) list.get(0)).g().doubleValue() + new i(Double.valueOf(-z4Var.a((p) list.get(1)).g().doubleValue())).g().doubleValue()));
            }
            a6.a(m0.DIVIDE.name(), 2, list);
            return new i(Double.valueOf(z4Var.a((p) list.get(0)).g().doubleValue() / z4Var.a((p) list.get(1)).g().doubleValue()));
        }
        a6.a(m0.ADD.name(), 2, list);
        p a11 = z4Var.a((p) list.get(0));
        p a12 = z4Var.a((p) list.get(1));
        if (!(a11 instanceof l) && !(a11 instanceof t) && !(a12 instanceof l) && !(a12 instanceof t)) {
            return new i(Double.valueOf(a11.g().doubleValue() + a12.g().doubleValue()));
        }
        return new t(String.valueOf(a11.f()).concat(String.valueOf(a12.f())));
    }
}
