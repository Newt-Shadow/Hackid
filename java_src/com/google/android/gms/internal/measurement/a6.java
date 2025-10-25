package com.google.android.gms.internal.measurement;

import io.flutter.embedding.android.KeyboardMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class a6 {
    public static void a(String str, int i10, List list) {
        if (list.size() == i10) {
            return;
        }
        throw new IllegalArgumentException(String.format("%s operation requires %s parameters found %s", str, Integer.valueOf(i10), Integer.valueOf(list.size())));
    }

    public static void b(String str, int i10, List list) {
        if (list.size() >= i10) {
            return;
        }
        throw new IllegalArgumentException(String.format("%s operation requires at least %s parameters found %s", str, Integer.valueOf(i10), Integer.valueOf(list.size())));
    }

    public static void c(String str, int i10, List list) {
        if (list.size() <= i10) {
            return;
        }
        throw new IllegalArgumentException(String.format("%s operation requires at most %s parameters found %s", str, Integer.valueOf(i10), Integer.valueOf(list.size())));
    }

    public static boolean d(p pVar) {
        if (pVar == null) {
            return false;
        }
        Double g10 = pVar.g();
        if (g10.isNaN() || g10.doubleValue() < 0.0d || !g10.equals(Double.valueOf(Math.floor(g10.doubleValue())))) {
            return false;
        }
        return true;
    }

    public static m0 e(String str) {
        m0 m0Var = null;
        if (str != null && !str.isEmpty()) {
            m0Var = m0.a(Integer.parseInt(str));
        }
        if (m0Var != null) {
            return m0Var;
        }
        throw new IllegalArgumentException(String.format("Unsupported commandId %s", str));
    }

    public static boolean f(p pVar, p pVar2) {
        if (!pVar.getClass().equals(pVar2.getClass())) {
            return false;
        }
        if ((pVar instanceof u) || (pVar instanceof n)) {
            return true;
        }
        if (pVar instanceof i) {
            if (Double.isNaN(pVar.g().doubleValue()) || Double.isNaN(pVar2.g().doubleValue())) {
                return false;
            }
            return pVar.g().equals(pVar2.g());
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
    }

    public static int g(double d10) {
        int i10;
        int i11;
        if (!Double.isNaN(d10) && !Double.isInfinite(d10) && d10 != 0.0d) {
            if (i10 > 0) {
                i11 = 1;
            } else {
                i11 = -1;
            }
            return (int) ((i11 * Math.floor(Math.abs(d10))) % 4.294967296E9d);
        }
        return 0;
    }

    public static long h(double d10) {
        return g(d10) & KeyboardMap.kValueMask;
    }

    public static double i(double d10) {
        int i10;
        int i11;
        if (Double.isNaN(d10)) {
            return 0.0d;
        }
        if (!Double.isInfinite(d10) && d10 != 0.0d && i10 != 0) {
            if (i10 > 0) {
                i11 = 1;
            } else {
                i11 = -1;
            }
            return i11 * Math.floor(Math.abs(d10));
        }
        return d10;
    }

    public static Object j(p pVar) {
        if (p.f6623k0.equals(pVar)) {
            return null;
        }
        if (p.f6622j0.equals(pVar)) {
            return "";
        }
        if (pVar instanceof m) {
            return k((m) pVar);
        }
        if (pVar instanceof f) {
            ArrayList arrayList = new ArrayList();
            Iterator it = ((f) pVar).iterator();
            while (it.hasNext()) {
                Object j10 = j((p) it.next());
                if (j10 != null) {
                    arrayList.add(j10);
                }
            }
            return arrayList;
        } else if (!pVar.g().isNaN()) {
            return pVar.g();
        } else {
            return pVar.f();
        }
    }

    public static Map k(m mVar) {
        HashMap hashMap = new HashMap();
        for (String str : mVar.a()) {
            Object j10 = j(mVar.l(str));
            if (j10 != null) {
                hashMap.put(str, j10);
            }
        }
        return hashMap;
    }

    public static int l(z4 z4Var) {
        int g10 = g(z4Var.h("runtime.counter").g().doubleValue() + 1.0d);
        if (g10 <= 1000000) {
            z4Var.e("runtime.counter", new i(Double.valueOf(g10)));
            return g10;
        }
        throw new IllegalStateException("Instructions allowed exceeded");
    }
}
