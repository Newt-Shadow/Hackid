package com.google.android.gms.internal.measurement;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class m implements p, l {

    /* renamed from: a  reason: collision with root package name */
    final Map f6514a = new HashMap();

    public final List a() {
        return new ArrayList(this.f6514a.keySet());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        return this.f6514a.equals(((m) obj).f6514a);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String f() {
        return "[object Object]";
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Double g() {
        return Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Boolean h() {
        return Boolean.TRUE;
    }

    public final int hashCode() {
        return this.f6514a.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator i() {
        return l.n(this.f6514a);
    }

    @Override // com.google.android.gms.internal.measurement.l
    public final p l(String str) {
        Map map = this.f6514a;
        if (map.containsKey(str)) {
            return (p) map.get(str);
        }
        return p.f6622j0;
    }

    @Override // com.google.android.gms.internal.measurement.l
    public final void m(String str, p pVar) {
        if (pVar == null) {
            this.f6514a.remove(str);
        } else {
            this.f6514a.put(str, pVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.l
    public final boolean o(String str) {
        return this.f6514a.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p r() {
        m mVar = new m();
        for (Map.Entry entry : this.f6514a.entrySet()) {
            if (entry.getValue() instanceof l) {
                mVar.f6514a.put((String) entry.getKey(), (p) entry.getValue());
            } else {
                mVar.f6514a.put((String) entry.getKey(), ((p) entry.getValue()).r());
            }
        }
        return mVar;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public p s(String str, z4 z4Var, List list) {
        if ("toString".equals(str)) {
            return new t(toString());
        }
        return l.d(this, new t(str), z4Var, list);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        Map map = this.f6514a;
        if (!map.isEmpty()) {
            for (String str : map.keySet()) {
                sb2.append(String.format("%s: %s,", str, map.get(str)));
            }
            sb2.deleteCharAt(sb2.lastIndexOf(StringUtils.COMMA));
        }
        sb2.append("}");
        return sb2.toString();
    }
}
