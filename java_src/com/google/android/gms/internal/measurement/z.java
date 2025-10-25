package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class z extends w {
    /* JADX INFO: Access modifiers changed from: protected */
    public z() {
        this.f6857a.add(m0.APPLY);
        this.f6857a.add(m0.BLOCK);
        this.f6857a.add(m0.BREAK);
        this.f6857a.add(m0.CASE);
        this.f6857a.add(m0.DEFAULT);
        this.f6857a.add(m0.CONTINUE);
        this.f6857a.add(m0.DEFINE_FUNCTION);
        this.f6857a.add(m0.FN);
        this.f6857a.add(m0.IF);
        this.f6857a.add(m0.QUOTE);
        this.f6857a.add(m0.RETURN);
        this.f6857a.add(m0.SWITCH);
        this.f6857a.add(m0.TERNARY);
    }

    private static p c(z4 z4Var, List list) {
        a6.b(m0.FN.name(), 2, list);
        p a10 = z4Var.a((p) list.get(0));
        p a11 = z4Var.a((p) list.get(1));
        if (a11 instanceof f) {
            List p10 = ((f) a11).p();
            List arrayList = new ArrayList();
            if (list.size() > 2) {
                arrayList = list.subList(2, list.size());
            }
            return new o(a10.f(), p10, arrayList, z4Var);
        }
        throw new IllegalArgumentException(String.format("FN requires an ArrayValue of parameter names found %s", a11.getClass().getCanonicalName()));
    }

    @Override // com.google.android.gms.internal.measurement.w
    public final p a(String str, z4 z4Var, List list) {
        p b10;
        m0 m0Var = m0.ADD;
        int ordinal = a6.e(str).ordinal();
        if (ordinal == 2) {
            a6.a(m0.APPLY.name(), 3, list);
            p a10 = z4Var.a((p) list.get(0));
            String f10 = z4Var.a((p) list.get(1)).f();
            p a11 = z4Var.a((p) list.get(2));
            if (a11 instanceof f) {
                if (!f10.isEmpty()) {
                    return a10.s(f10, z4Var, ((f) a11).p());
                }
                throw new IllegalArgumentException("Function name for apply is undefined");
            }
            throw new IllegalArgumentException(String.format("Function arguments for Apply are not a list found %s", a11.getClass().getCanonicalName()));
        } else if (ordinal == 15) {
            a6.a(m0.BREAK.name(), 0, list);
            return p.f6624l0;
        } else if (ordinal != 25) {
            if (ordinal == 41) {
                a6.b(m0.IF.name(), 2, list);
                p a12 = z4Var.a((p) list.get(0));
                p a13 = z4Var.a((p) list.get(1));
                p a14 = list.size() > 2 ? z4Var.a((p) list.get(2)) : null;
                p pVar = p.f6622j0;
                if (a12.h().booleanValue()) {
                    b10 = z4Var.b((f) a13);
                } else {
                    b10 = a14 != null ? z4Var.b((f) a14) : pVar;
                }
                return true != (b10 instanceof h) ? pVar : b10;
            } else if (ordinal != 54) {
                if (ordinal != 57) {
                    if (ordinal != 19) {
                        if (ordinal == 20) {
                            a6.b(m0.DEFINE_FUNCTION.name(), 2, list);
                            o oVar = (o) c(z4Var, list);
                            if (oVar.b() == null) {
                                z4Var.e("", oVar);
                                return oVar;
                            }
                            z4Var.e(oVar.b(), oVar);
                            return oVar;
                        } else if (ordinal == 60) {
                            a6.a(m0.SWITCH.name(), 3, list);
                            p a15 = z4Var.a((p) list.get(0));
                            p a16 = z4Var.a((p) list.get(1));
                            p a17 = z4Var.a((p) list.get(2));
                            if (a16 instanceof f) {
                                if (a17 instanceof f) {
                                    f fVar = (f) a16;
                                    f fVar2 = (f) a17;
                                    boolean z10 = false;
                                    for (int i10 = 0; i10 < fVar.y(); i10++) {
                                        if (z10 || a15.equals(z4Var.a(fVar.B(i10)))) {
                                            p a18 = z4Var.a(fVar2.B(i10));
                                            if (a18 instanceof h) {
                                                return ((h) a18).b().equals("break") ? p.f6622j0 : a18;
                                            }
                                            z10 = true;
                                        } else {
                                            z10 = false;
                                        }
                                    }
                                    if (fVar.y() + 1 == fVar2.y()) {
                                        p a19 = z4Var.a(fVar2.B(fVar.y()));
                                        if (a19 instanceof h) {
                                            String b11 = ((h) a19).b();
                                            if (b11.equals("return") || b11.equals("continue")) {
                                                return a19;
                                            }
                                        }
                                    }
                                    return p.f6622j0;
                                }
                                throw new IllegalArgumentException("Malformed SWITCH statement, case statements are not a list");
                            }
                            throw new IllegalArgumentException("Malformed SWITCH statement, cases are not a list");
                        } else if (ordinal != 61) {
                            switch (ordinal) {
                                case 11:
                                    return z4Var.c().b(new f(list));
                                case 12:
                                    a6.a(m0.BREAK.name(), 0, list);
                                    return p.f6625m0;
                                case 13:
                                    break;
                                default:
                                    return super.b(str);
                            }
                        } else {
                            a6.a(m0.TERNARY.name(), 3, list);
                            if (z4Var.a((p) list.get(0)).h().booleanValue()) {
                                return z4Var.a((p) list.get(1));
                            }
                            return z4Var.a((p) list.get(2));
                        }
                    }
                    if (list.isEmpty()) {
                        return p.f6622j0;
                    }
                    p a20 = z4Var.a((p) list.get(0));
                    if (a20 instanceof f) {
                        return z4Var.b((f) a20);
                    }
                    return p.f6622j0;
                } else if (list.isEmpty()) {
                    return p.f6626n0;
                } else {
                    a6.a(m0.RETURN.name(), 1, list);
                    return new h("return", z4Var.a((p) list.get(0)));
                }
            } else {
                return new f(list);
            }
        } else {
            return c(z4Var, list);
        }
    }
}
