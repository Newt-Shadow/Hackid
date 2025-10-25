package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class v extends w {
    public v() {
        this.f6857a.add(m0.BITWISE_AND);
        this.f6857a.add(m0.BITWISE_LEFT_SHIFT);
        this.f6857a.add(m0.BITWISE_NOT);
        this.f6857a.add(m0.BITWISE_OR);
        this.f6857a.add(m0.BITWISE_RIGHT_SHIFT);
        this.f6857a.add(m0.BITWISE_UNSIGNED_RIGHT_SHIFT);
        this.f6857a.add(m0.BITWISE_XOR);
    }

    @Override // com.google.android.gms.internal.measurement.w
    public final p a(String str, z4 z4Var, List list) {
        m0 m0Var = m0.ADD;
        switch (a6.e(str).ordinal()) {
            case 4:
                a6.a(m0.BITWISE_AND.name(), 2, list);
                return new i(Double.valueOf(a6.g(z4Var.a((p) list.get(0)).g().doubleValue()) & a6.g(z4Var.a((p) list.get(1)).g().doubleValue())));
            case 5:
                a6.a(m0.BITWISE_LEFT_SHIFT.name(), 2, list);
                return new i(Double.valueOf(a6.g(z4Var.a((p) list.get(0)).g().doubleValue()) << ((int) (a6.h(z4Var.a((p) list.get(1)).g().doubleValue()) & 31))));
            case 6:
                a6.a(m0.BITWISE_NOT.name(), 1, list);
                return new i(Double.valueOf(~a6.g(z4Var.a((p) list.get(0)).g().doubleValue())));
            case 7:
                a6.a(m0.BITWISE_OR.name(), 2, list);
                return new i(Double.valueOf(a6.g(z4Var.a((p) list.get(0)).g().doubleValue()) | a6.g(z4Var.a((p) list.get(1)).g().doubleValue())));
            case 8:
                a6.a(m0.BITWISE_RIGHT_SHIFT.name(), 2, list);
                return new i(Double.valueOf(a6.g(z4Var.a((p) list.get(0)).g().doubleValue()) >> ((int) (a6.h(z4Var.a((p) list.get(1)).g().doubleValue()) & 31))));
            case 9:
                a6.a(m0.BITWISE_UNSIGNED_RIGHT_SHIFT.name(), 2, list);
                return new i(Double.valueOf(a6.h(z4Var.a((p) list.get(0)).g().doubleValue()) >>> ((int) (a6.h(z4Var.a((p) list.get(1)).g().doubleValue()) & 31))));
            case 10:
                a6.a(m0.BITWISE_XOR.name(), 2, list);
                return new i(Double.valueOf(a6.g(z4Var.a((p) list.get(0)).g().doubleValue()) ^ a6.g(z4Var.a((p) list.get(1)).g().doubleValue())));
            default:
                return super.b(str);
        }
    }
}
