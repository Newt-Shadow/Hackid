package com.google.android.gms.internal.measurement;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.impl.C1415p9;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public abstract class c0 {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v26, types: [com.google.android.gms.internal.measurement.t] */
    /* JADX WARN: Type inference failed for: r1v38 */
    /* JADX WARN: Type inference failed for: r1v39, types: [com.google.android.gms.internal.measurement.p] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.measurement.f] */
    /* JADX WARN: Type inference failed for: r2v15, types: [com.google.android.gms.internal.measurement.f] */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20, types: [com.google.android.gms.internal.measurement.i] */
    public static p a(String str, f fVar, z4 z4Var, List list) {
        String str2;
        char c10;
        ?? r12;
        ?? fVar2;
        String str3;
        double d10;
        f fVar3;
        double min;
        j jVar;
        switch (str.hashCode()) {
            case -1776922004:
                str2 = "toString";
                if (str.equals(str2)) {
                    c10 = 18;
                    break;
                }
                c10 = 65535;
                break;
            case -1354795244:
                if (str.equals("concat")) {
                    str2 = "toString";
                    c10 = 0;
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case -1274492040:
                if (str.equals("filter")) {
                    str2 = "toString";
                    c10 = 2;
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case -934873754:
                if (str.equals("reduce")) {
                    c10 = '\n';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case -895859076:
                if (str.equals("splice")) {
                    c10 = 17;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case -678635926:
                if (str.equals("forEach")) {
                    c10 = 3;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case -467511597:
                if (str.equals("lastIndexOf")) {
                    c10 = 6;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case -277637751:
                if (str.equals("unshift")) {
                    c10 = 19;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 107868:
                if (str.equals("map")) {
                    c10 = 7;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 111185:
                if (str.equals("pop")) {
                    c10 = '\b';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 3267882:
                if (str.equals("join")) {
                    c10 = 5;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 3452698:
                if (str.equals("push")) {
                    c10 = '\t';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 3536116:
                if (str.equals("some")) {
                    c10 = 15;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 3536286:
                if (str.equals("sort")) {
                    c10 = 16;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 96891675:
                if (str.equals("every")) {
                    str2 = "toString";
                    c10 = 1;
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 109407362:
                if (str.equals("shift")) {
                    c10 = '\r';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 109526418:
                if (str.equals("slice")) {
                    c10 = 14;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 965561430:
                if (str.equals("reduceRight")) {
                    c10 = 11;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 1099846370:
                if (str.equals("reverse")) {
                    c10 = '\f';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            case 1943291465:
                if (str.equals("indexOf")) {
                    c10 = 4;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c10 = 65535;
                break;
            default:
                str2 = "toString";
                c10 = 65535;
                break;
        }
        double d11 = 0.0d;
        switch (c10) {
            case 0:
                r12 = (f) fVar.r();
                if (!list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        p a10 = z4Var.a((p) it.next());
                        if (!(a10 instanceof h)) {
                            int y10 = r12.y();
                            if (a10 instanceof f) {
                                f fVar4 = (f) a10;
                                Iterator t10 = fVar4.t();
                                while (t10.hasNext()) {
                                    Integer num = (Integer) t10.next();
                                    r12.C(num.intValue() + y10, fVar4.B(num.intValue()));
                                }
                            } else {
                                r12.C(y10, a10);
                            }
                        } else {
                            throw new IllegalStateException("Failed evaluation of arguments");
                        }
                    }
                }
                return r12;
            case 1:
                a6.a("every", 1, list);
                p a11 = z4Var.a((p) list.get(0));
                if (a11 instanceof o) {
                    if (fVar.y() == 0) {
                        return p.f6627o0;
                    }
                    if (c(fVar, z4Var, (o) a11, Boolean.FALSE, Boolean.TRUE).y() != fVar.y()) {
                        return p.f6628p0;
                    }
                    return p.f6627o0;
                }
                throw new IllegalArgumentException("Callback should be a method");
            case 2:
                a6.a("filter", 1, list);
                p a12 = z4Var.a((p) list.get(0));
                if (a12 instanceof o) {
                    if (fVar.A() == 0) {
                        return new f();
                    }
                    f fVar5 = (f) fVar.r();
                    f c11 = c(fVar, z4Var, (o) a12, null, Boolean.TRUE);
                    fVar2 = new f();
                    Iterator t11 = c11.t();
                    while (t11.hasNext()) {
                        fVar2.C(fVar2.y(), fVar5.B(((Integer) t11.next()).intValue()));
                    }
                    return fVar2;
                }
                throw new IllegalArgumentException("Callback should be a method");
            case 3:
                a6.a("forEach", 1, list);
                p a13 = z4Var.a((p) list.get(0));
                if (a13 instanceof o) {
                    if (fVar.A() == 0) {
                        return p.f6622j0;
                    }
                    c(fVar, z4Var, (o) a13, null, null);
                    return p.f6622j0;
                }
                throw new IllegalArgumentException("Callback should be a method");
            case 4:
                a6.c("indexOf", 2, list);
                p pVar = p.f6622j0;
                if (!list.isEmpty()) {
                    pVar = z4Var.a((p) list.get(0));
                }
                if (list.size() > 1) {
                    double i10 = a6.i(z4Var.a((p) list.get(1)).g().doubleValue());
                    if (i10 >= fVar.y()) {
                        return new i(Double.valueOf(-1.0d));
                    }
                    if (i10 < 0.0d) {
                        d11 = fVar.y() + i10;
                    } else {
                        d11 = i10;
                    }
                }
                Iterator t12 = fVar.t();
                while (t12.hasNext()) {
                    int intValue = ((Integer) t12.next()).intValue();
                    double d12 = intValue;
                    if (d12 >= d11 && a6.f(fVar.B(intValue), pVar)) {
                        return new i(Double.valueOf(d12));
                    }
                }
                return new i(Double.valueOf(-1.0d));
            case 5:
                a6.c("join", 1, list);
                if (fVar.y() == 0) {
                    return p.f6629q0;
                }
                if (!list.isEmpty()) {
                    p a14 = z4Var.a((p) list.get(0));
                    if (!(a14 instanceof n) && !(a14 instanceof u)) {
                        str3 = a14.f();
                    } else {
                        str3 = "";
                    }
                } else {
                    str3 = StringUtils.COMMA;
                }
                r12 = new t(fVar.J(str3));
                return r12;
            case 6:
                a6.c("lastIndexOf", 2, list);
                p pVar2 = p.f6622j0;
                if (!list.isEmpty()) {
                    pVar2 = z4Var.a((p) list.get(0));
                }
                int y11 = fVar.y() - 1;
                if (list.size() > 1) {
                    p a15 = z4Var.a((p) list.get(1));
                    d10 = Double.isNaN(a15.g().doubleValue()) ? fVar.y() - 1 : a6.i(a15.g().doubleValue());
                    if (d10 < 0.0d) {
                        d10 += fVar.y();
                    }
                } else {
                    d10 = y11;
                }
                if (d10 < 0.0d) {
                    return new i(Double.valueOf(-1.0d));
                }
                for (int min2 = (int) Math.min(fVar.y(), d10); min2 >= 0; min2--) {
                    if (fVar.D(min2) && a6.f(fVar.B(min2), pVar2)) {
                        fVar2 = new i(Double.valueOf(min2));
                        return fVar2;
                    }
                }
                return new i(Double.valueOf(-1.0d));
            case 7:
                a6.a("map", 1, list);
                p a16 = z4Var.a((p) list.get(0));
                if (a16 instanceof o) {
                    if (fVar.y() == 0) {
                        return new f();
                    }
                    return c(fVar, z4Var, (o) a16, null, null);
                }
                throw new IllegalArgumentException("Callback should be a method");
            case '\b':
                a6.a("pop", 0, list);
                int y12 = fVar.y();
                if (y12 == 0) {
                    return p.f6622j0;
                }
                int i11 = y12 - 1;
                r12 = fVar.B(i11);
                fVar.I(i11);
                return r12;
            case '\t':
                if (!list.isEmpty()) {
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        fVar.C(fVar.y(), z4Var.a((p) it2.next()));
                    }
                }
                return new i(Double.valueOf(fVar.y()));
            case '\n':
                return b(fVar, z4Var, list, true);
            case 11:
                return b(fVar, z4Var, list, false);
            case '\f':
                fVar3 = fVar;
                a6.a("reverse", 0, list);
                int y13 = fVar.y();
                if (y13 != 0) {
                    for (int i12 = 0; i12 < y13 / 2; i12++) {
                        if (fVar3.D(i12)) {
                            p B = fVar3.B(i12);
                            fVar3.C(i12, null);
                            int i13 = (y13 - 1) - i12;
                            if (fVar3.D(i13)) {
                                fVar3.C(i12, fVar3.B(i13));
                            }
                            fVar3.C(i13, B);
                        }
                    }
                }
                return fVar3;
            case '\r':
                a6.a("shift", 0, list);
                if (fVar.y() == 0) {
                    return p.f6622j0;
                }
                p B2 = fVar.B(0);
                fVar.I(0);
                return B2;
            case 14:
                a6.c("slice", 2, list);
                if (list.isEmpty()) {
                    return fVar.r();
                }
                double y14 = fVar.y();
                double i14 = a6.i(z4Var.a((p) list.get(0)).g().doubleValue());
                if (i14 < 0.0d) {
                    min = Math.max(i14 + y14, 0.0d);
                } else {
                    min = Math.min(i14, y14);
                }
                if (list.size() == 2) {
                    double i15 = a6.i(z4Var.a((p) list.get(1)).g().doubleValue());
                    if (i15 < 0.0d) {
                        y14 = Math.max(y14 + i15, 0.0d);
                    } else {
                        y14 = Math.min(y14, i15);
                    }
                }
                f fVar6 = new f();
                for (int i16 = (int) min; i16 < y14; i16++) {
                    fVar6.C(fVar6.y(), fVar.B(i16));
                }
                return fVar6;
            case 15:
                a6.a("some", 1, list);
                p a17 = z4Var.a((p) list.get(0));
                if (a17 instanceof j) {
                    if (fVar.y() == 0) {
                        return p.f6628p0;
                    }
                    j jVar2 = (j) a17;
                    Iterator t13 = fVar.t();
                    while (t13.hasNext()) {
                        int intValue2 = ((Integer) t13.next()).intValue();
                        if (fVar.D(intValue2) && jVar2.a(z4Var, Arrays.asList(fVar.B(intValue2), new i(Double.valueOf(intValue2)), fVar)).h().booleanValue()) {
                            return p.f6627o0;
                        }
                    }
                    return p.f6628p0;
                }
                throw new IllegalArgumentException("Callback should be a method");
            case 16:
                fVar3 = fVar;
                a6.c("sort", 1, list);
                if (fVar.y() >= 2) {
                    List<p> p10 = fVar.p();
                    if (!list.isEmpty()) {
                        p a18 = z4Var.a((p) list.get(0));
                        if (a18 instanceof j) {
                            jVar = (j) a18;
                        } else {
                            throw new IllegalArgumentException("Comparator should be a method");
                        }
                    } else {
                        jVar = null;
                    }
                    Collections.sort(p10, new a0(jVar, z4Var));
                    fVar.F();
                    int i17 = 0;
                    for (p pVar3 : p10) {
                        fVar3.C(i17, pVar3);
                        i17++;
                    }
                }
                return fVar3;
            case 17:
                if (list.isEmpty()) {
                    return new f();
                }
                int i18 = (int) a6.i(z4Var.a((p) list.get(0)).g().doubleValue());
                if (i18 < 0) {
                    i18 = Math.max(0, i18 + fVar.y());
                } else if (i18 > fVar.y()) {
                    i18 = fVar.y();
                }
                int y15 = fVar.y();
                f fVar7 = new f();
                if (list.size() > 1) {
                    int max = Math.max(0, (int) a6.i(z4Var.a((p) list.get(1)).g().doubleValue()));
                    if (max > 0) {
                        for (int i19 = i18; i19 < Math.min(y15, i18 + max); i19++) {
                            fVar7.C(fVar7.y(), fVar.B(i18));
                            fVar.I(i18);
                        }
                    }
                    if (list.size() > 2) {
                        for (int i20 = 2; i20 < list.size(); i20++) {
                            p a19 = z4Var.a((p) list.get(i20));
                            if (!(a19 instanceof h)) {
                                fVar.G((i18 + i20) - 2, a19);
                            } else {
                                throw new IllegalArgumentException("Failed to parse elements to add");
                            }
                        }
                    }
                } else {
                    while (i18 < y15) {
                        fVar7.C(fVar7.y(), fVar.B(i18));
                        fVar.C(i18, null);
                        i18++;
                    }
                }
                return fVar7;
            case 18:
                a6.a(str2, 0, list);
                return new t(fVar.J(StringUtils.COMMA));
            case C1415p9.C /* 19 */:
                if (!list.isEmpty()) {
                    f fVar8 = new f();
                    Iterator it3 = list.iterator();
                    while (it3.hasNext()) {
                        p a20 = z4Var.a((p) it3.next());
                        if (!(a20 instanceof h)) {
                            fVar8.C(fVar8.y(), a20);
                        } else {
                            throw new IllegalStateException("Argument evaluation failed");
                        }
                    }
                    int y16 = fVar8.y();
                    Iterator t14 = fVar.t();
                    while (t14.hasNext()) {
                        Integer num2 = (Integer) t14.next();
                        fVar8.C(num2.intValue() + y16, fVar.B(num2.intValue()));
                    }
                    fVar.F();
                    Iterator t15 = fVar8.t();
                    while (t15.hasNext()) {
                        Integer num3 = (Integer) t15.next();
                        fVar.C(num3.intValue(), fVar8.B(num3.intValue()));
                    }
                }
                return new i(Double.valueOf(fVar.y()));
            default:
                throw new IllegalArgumentException("Command not supported");
        }
    }

    private static p b(f fVar, z4 z4Var, List list, boolean z10) {
        p pVar;
        int i10;
        int i11;
        a6.b("reduce", 1, list);
        a6.c("reduce", 2, list);
        p a10 = z4Var.a((p) list.get(0));
        if (a10 instanceof j) {
            if (list.size() == 2) {
                pVar = z4Var.a((p) list.get(1));
                if (pVar instanceof h) {
                    throw new IllegalArgumentException("Failed to parse initial value");
                }
            } else if (fVar.y() != 0) {
                pVar = null;
            } else {
                throw new IllegalStateException("Empty array with no initial value error");
            }
            j jVar = (j) a10;
            int y10 = fVar.y();
            if (z10) {
                i10 = 0;
            } else {
                i10 = y10 - 1;
            }
            int i12 = -1;
            if (z10) {
                i11 = y10 - 1;
            } else {
                i11 = 0;
            }
            if (true == z10) {
                i12 = 1;
            }
            if (pVar == null) {
                pVar = fVar.B(i10);
                i10 += i12;
            }
            while ((i11 - i10) * i12 >= 0) {
                if (!fVar.D(i10)) {
                    i10 += i12;
                } else {
                    pVar = jVar.a(z4Var, Arrays.asList(pVar, fVar.B(i10), new i(Double.valueOf(i10)), fVar));
                    if (!(pVar instanceof h)) {
                        i10 += i12;
                    } else {
                        throw new IllegalStateException("Reduce operation failed");
                    }
                }
            }
            return pVar;
        }
        throw new IllegalArgumentException("Callback should be a method");
    }

    private static f c(f fVar, z4 z4Var, j jVar, Boolean bool, Boolean bool2) {
        f fVar2 = new f();
        Iterator t10 = fVar.t();
        while (t10.hasNext()) {
            int intValue = ((Integer) t10.next()).intValue();
            if (fVar.D(intValue)) {
                p a10 = jVar.a(z4Var, Arrays.asList(fVar.B(intValue), new i(Double.valueOf(intValue)), fVar));
                if (a10.h().equals(bool)) {
                    break;
                } else if (bool2 == null || a10.h().equals(bool2)) {
                    fVar2.C(intValue, a10);
                }
            }
        }
        return fVar2;
    }
}
