package com.google.android.gms.internal.measurement;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class l0 extends w {
    /* JADX INFO: Access modifiers changed from: protected */
    public l0() {
        this.f6857a.add(m0.ASSIGN);
        this.f6857a.add(m0.CONST);
        this.f6857a.add(m0.CREATE_ARRAY);
        this.f6857a.add(m0.CREATE_OBJECT);
        this.f6857a.add(m0.EXPRESSION_LIST);
        this.f6857a.add(m0.GET);
        this.f6857a.add(m0.GET_INDEX);
        this.f6857a.add(m0.GET_PROPERTY);
        this.f6857a.add(m0.NULL);
        this.f6857a.add(m0.SET_PROPERTY);
        this.f6857a.add(m0.TYPEOF);
        this.f6857a.add(m0.UNDEFINED);
        this.f6857a.add(m0.VAR);
    }

    @Override // com.google.android.gms.internal.measurement.w
    public final p a(String str, z4 z4Var, List list) {
        p a10;
        p a11;
        String str2;
        m0 m0Var = m0.ADD;
        int ordinal = a6.e(str).ordinal();
        int i10 = 0;
        if (ordinal != 3) {
            if (ordinal == 14) {
                a6.b(m0.CONST.name(), 2, list);
                if (list.size() % 2 == 0) {
                    while (i10 < list.size() - 1) {
                        p a12 = z4Var.a((p) list.get(i10));
                        if (a12 instanceof t) {
                            z4Var.g(a12.f(), z4Var.a((p) list.get(i10 + 1)));
                            i10 += 2;
                        } else {
                            throw new IllegalArgumentException(String.format("Expected string for const name. got %s", a12.getClass().getCanonicalName()));
                        }
                    }
                    return p.f6622j0;
                }
                throw new IllegalArgumentException(String.format("CONST requires an even number of arguments, found %s", Integer.valueOf(list.size())));
            } else if (ordinal == 24) {
                a6.b(m0.EXPRESSION_LIST.name(), 1, list);
                p pVar = p.f6622j0;
                while (i10 < list.size()) {
                    pVar = z4Var.a((p) list.get(i10));
                    if (pVar instanceof h) {
                        throw new IllegalStateException("ControlValue cannot be in an expression list");
                    }
                    i10++;
                }
                return pVar;
            } else if (ordinal == 33) {
                a6.a(m0.GET.name(), 1, list);
                p a13 = z4Var.a((p) list.get(0));
                if (a13 instanceof t) {
                    return z4Var.h(a13.f());
                }
                throw new IllegalArgumentException(String.format("Expected string for get var. got %s", a13.getClass().getCanonicalName()));
            } else if (ordinal == 49) {
                a6.a(m0.NULL.name(), 0, list);
                return p.f6623k0;
            } else {
                if (ordinal == 58) {
                    a6.a(m0.SET_PROPERTY.name(), 3, list);
                    p a14 = z4Var.a((p) list.get(0));
                    p a15 = z4Var.a((p) list.get(1));
                    a11 = z4Var.a((p) list.get(2));
                    if (a14 != p.f6622j0 && a14 != p.f6623k0) {
                        if ((a14 instanceof f) && (a15 instanceof i)) {
                            ((f) a14).C(a15.g().intValue(), a11);
                        } else if (a14 instanceof l) {
                            ((l) a14).m(a15.f(), a11);
                            return a11;
                        }
                    } else {
                        throw new IllegalStateException(String.format("Can't set property %s of %s", a15.f(), a14.f()));
                    }
                } else if (ordinal == 17) {
                    if (list.isEmpty()) {
                        return new f();
                    }
                    f fVar = new f();
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        p a16 = z4Var.a((p) it.next());
                        if (!(a16 instanceof h)) {
                            fVar.C(i10, a16);
                            i10++;
                        } else {
                            throw new IllegalStateException("Failed to evaluate array element");
                        }
                    }
                    return fVar;
                } else if (ordinal == 18) {
                    if (list.isEmpty()) {
                        return new m();
                    }
                    if (list.size() % 2 == 0) {
                        m mVar = new m();
                        while (i10 < list.size() - 1) {
                            p a17 = z4Var.a((p) list.get(i10));
                            p a18 = z4Var.a((p) list.get(i10 + 1));
                            if (!(a17 instanceof h) && !(a18 instanceof h)) {
                                mVar.m(a17.f(), a18);
                                i10 += 2;
                            } else {
                                throw new IllegalStateException("Failed to evaluate map entry");
                            }
                        }
                        return mVar;
                    }
                    throw new IllegalArgumentException(String.format("CREATE_OBJECT requires an even number of arguments, found %s", Integer.valueOf(list.size())));
                } else if (ordinal != 35 && ordinal != 36) {
                    switch (ordinal) {
                        case 62:
                            a6.a(m0.TYPEOF.name(), 1, list);
                            p a19 = z4Var.a((p) list.get(0));
                            if (a19 instanceof u) {
                                str2 = StringUtils.UNDEFINED;
                            } else if (a19 instanceof g) {
                                str2 = "boolean";
                            } else if (a19 instanceof i) {
                                str2 = "number";
                            } else if (a19 instanceof t) {
                                str2 = "string";
                            } else if (a19 instanceof o) {
                                str2 = "function";
                            } else if ((a19 instanceof q) || (a19 instanceof h)) {
                                throw new IllegalArgumentException(String.format("Unsupported value type %s in typeof", a19));
                            } else {
                                str2 = "object";
                            }
                            a11 = new t(str2);
                            break;
                        case 63:
                            a6.a(m0.UNDEFINED.name(), 0, list);
                            return p.f6622j0;
                        case 64:
                            a6.b(m0.VAR.name(), 1, list);
                            Iterator it2 = list.iterator();
                            while (it2.hasNext()) {
                                p a20 = z4Var.a((p) it2.next());
                                if (a20 instanceof t) {
                                    z4Var.f(a20.f(), p.f6622j0);
                                } else {
                                    throw new IllegalArgumentException(String.format("Expected string for var name. got %s", a20.getClass().getCanonicalName()));
                                }
                            }
                            return p.f6622j0;
                        default:
                            return super.b(str);
                    }
                } else {
                    a6.a(m0.GET_PROPERTY.name(), 2, list);
                    p a21 = z4Var.a((p) list.get(0));
                    p a22 = z4Var.a((p) list.get(1));
                    if ((a21 instanceof f) && a6.d(a22)) {
                        return ((f) a21).B(a22.g().intValue());
                    }
                    if (a21 instanceof l) {
                        return ((l) a21).l(a22.f());
                    }
                    if (a21 instanceof t) {
                        if ("length".equals(a22.f())) {
                            a11 = new i(Double.valueOf(a21.f().length()));
                        } else if (a6.d(a22) && a22.g().doubleValue() < a21.f().length()) {
                            a10 = new t(String.valueOf(a21.f().charAt(a22.g().intValue())));
                        }
                    }
                    return p.f6622j0;
                }
                return a11;
            }
        }
        a6.a(m0.ASSIGN.name(), 2, list);
        p a23 = z4Var.a((p) list.get(0));
        if (a23 instanceof t) {
            if (z4Var.d(a23.f())) {
                a10 = z4Var.a((p) list.get(1));
                z4Var.e(a23.f(), a10);
            } else {
                throw new IllegalArgumentException(String.format("Attempting to assign undefined value %s", a23.f()));
            }
        } else {
            throw new IllegalArgumentException(String.format("Expected string for assign var. got %s", a23.getClass().getCanonicalName()));
        }
        return a10;
    }
}
