package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class b7 {
    public static p a(Object obj) {
        if (obj == null) {
            return p.f6623k0;
        }
        if (obj instanceof String) {
            return new t((String) obj);
        }
        if (obj instanceof Double) {
            return new i((Double) obj);
        }
        if (obj instanceof Long) {
            return new i(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new i(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Boolean) {
            return new g((Boolean) obj);
        }
        if (obj instanceof Map) {
            m mVar = new m();
            Map map = (Map) obj;
            for (Object obj2 : map.keySet()) {
                p a10 = a(map.get(obj2));
                if (obj2 != null) {
                    if (!(obj2 instanceof String)) {
                        obj2 = obj2.toString();
                    }
                    mVar.m((String) obj2, a10);
                }
            }
            return mVar;
        } else if (obj instanceof List) {
            f fVar = new f();
            for (Object obj3 : (List) obj) {
                fVar.C(fVar.y(), a(obj3));
            }
            return fVar;
        } else {
            throw new IllegalArgumentException("Invalid value type");
        }
    }

    public static p b(h8 h8Var) {
        if (h8Var == null) {
            return p.f6622j0;
        }
        int L = h8Var.L() - 1;
        if (L != 1) {
            if (L != 2) {
                if (L != 3) {
                    if (L == 4) {
                        List<h8> C = h8Var.C();
                        ArrayList arrayList = new ArrayList();
                        for (h8 h8Var2 : C) {
                            arrayList.add(b(h8Var2));
                        }
                        return new q(h8Var.D(), arrayList);
                    }
                    throw new IllegalArgumentException("Unknown type found. Cannot convert entity");
                } else if (h8Var.G()) {
                    return new g(Boolean.valueOf(h8Var.H()));
                } else {
                    return new g(null);
                }
            } else if (h8Var.I()) {
                return new i(Double.valueOf(h8Var.J()));
            } else {
                return new i(null);
            }
        } else if (h8Var.E()) {
            return new t(h8Var.F());
        } else {
            return p.f6629q0;
        }
    }
}
