package com.google.android.gms.internal.measurement;

import io.appmetrica.analytics.impl.C1415p9;
import java.util.List;
/* loaded from: classes.dex */
public final class y extends w {
    public y() {
        this.f6857a.add(m0.EQUALS);
        this.f6857a.add(m0.GREATER_THAN);
        this.f6857a.add(m0.GREATER_THAN_EQUALS);
        this.f6857a.add(m0.IDENTITY_EQUALS);
        this.f6857a.add(m0.IDENTITY_NOT_EQUALS);
        this.f6857a.add(m0.LESS_THAN);
        this.f6857a.add(m0.LESS_THAN_EQUALS);
        this.f6857a.add(m0.NOT_EQUALS);
    }

    private static boolean c(p pVar, p pVar2) {
        int i10;
        if (pVar instanceof l) {
            pVar = new t(pVar.f());
        }
        if (pVar2 instanceof l) {
            pVar2 = new t(pVar2.f());
        }
        if ((pVar instanceof t) && (pVar2 instanceof t)) {
            if (pVar.f().compareTo(pVar2.f()) < 0) {
                return true;
            }
            return false;
        }
        double doubleValue = pVar.g().doubleValue();
        double doubleValue2 = pVar2.g().doubleValue();
        if (!Double.isNaN(doubleValue) && !Double.isNaN(doubleValue2) && ((doubleValue != 0.0d || doubleValue2 != 0.0d) && ((i10 != 0 || doubleValue2 != 0.0d) && Double.compare(doubleValue, doubleValue2) < 0))) {
            return true;
        }
        return false;
    }

    private static boolean d(p pVar, p pVar2) {
        if (pVar.getClass().equals(pVar2.getClass())) {
            if ((pVar instanceof u) || (pVar instanceof n)) {
                return true;
            }
            if (pVar instanceof i) {
                if (Double.isNaN(pVar.g().doubleValue()) || Double.isNaN(pVar2.g().doubleValue()) || pVar.g().doubleValue() != pVar2.g().doubleValue()) {
                    return false;
                }
                return true;
            } else if (pVar instanceof t) {
                return pVar.f().equals(pVar2.f());
            } else {
                if (pVar instanceof g) {
                    return pVar.h().equals(pVar2.h());
                }
                if (pVar != pVar2) {
                    return false;
                }
                return true;
            }
        } else if (((pVar instanceof u) || (pVar instanceof n)) && ((pVar2 instanceof u) || (pVar2 instanceof n))) {
            return true;
        } else {
            boolean z10 = pVar instanceof i;
            if (z10 && (pVar2 instanceof t)) {
                return d(pVar, new i(pVar2.g()));
            }
            boolean z11 = pVar instanceof t;
            if (z11 && (pVar2 instanceof i)) {
                return d(new i(pVar.g()), pVar2);
            }
            if (pVar instanceof g) {
                return d(new i(pVar.g()), pVar2);
            }
            if (pVar2 instanceof g) {
                return d(pVar, new i(pVar2.g()));
            }
            if ((!z11 && !z10) || !(pVar2 instanceof l)) {
                if (!(pVar instanceof l) || (!(pVar2 instanceof t) && !(pVar2 instanceof i))) {
                    return false;
                }
                return d(new t(pVar.f()), pVar2);
            }
            return d(pVar, new t(pVar2.f()));
        }
    }

    private static boolean e(p pVar, p pVar2) {
        if (pVar instanceof l) {
            pVar = new t(pVar.f());
        }
        if (pVar2 instanceof l) {
            pVar2 = new t(pVar2.f());
        }
        if (((!(pVar instanceof t) || !(pVar2 instanceof t)) && (Double.isNaN(pVar.g().doubleValue()) || Double.isNaN(pVar2.g().doubleValue()))) || c(pVar2, pVar)) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.w
    public final p a(String str, z4 z4Var, List list) {
        boolean d10;
        boolean d11;
        a6.a(a6.e(str).name(), 2, list);
        p a10 = z4Var.a((p) list.get(0));
        p a11 = z4Var.a((p) list.get(1));
        int ordinal = a6.e(str).ordinal();
        if (ordinal != 23) {
            if (ordinal != 48) {
                if (ordinal != 42) {
                    if (ordinal != 43) {
                        switch (ordinal) {
                            case 37:
                                d10 = c(a11, a10);
                                break;
                            case C1415p9.K /* 38 */:
                                d10 = e(a11, a10);
                                break;
                            case 39:
                                d10 = a6.f(a10, a11);
                                break;
                            case C1415p9.L /* 40 */:
                                d11 = a6.f(a10, a11);
                                break;
                            default:
                                return super.b(str);
                        }
                    } else {
                        d10 = e(a10, a11);
                    }
                } else {
                    d10 = c(a10, a11);
                }
            } else {
                d11 = d(a10, a11);
            }
            d10 = !d11;
        } else {
            d10 = d(a10, a11);
        }
        if (d10) {
            return p.f6627o0;
        }
        return p.f6628p0;
    }
}
