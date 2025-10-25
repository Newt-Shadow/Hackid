package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class j implements p, l {

    /* renamed from: a  reason: collision with root package name */
    protected final String f6443a;

    /* renamed from: b  reason: collision with root package name */
    protected final Map f6444b = new HashMap();

    public j(String str) {
        this.f6443a = str;
    }

    public abstract p a(z4 z4Var, List list);

    public final String b() {
        return this.f6443a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        String str = this.f6443a;
        if (str == null) {
            return false;
        }
        return str.equals(jVar.f6443a);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String f() {
        return this.f6443a;
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
        String str = this.f6443a;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator i() {
        return l.n(this.f6444b);
    }

    @Override // com.google.android.gms.internal.measurement.l
    public final p l(String str) {
        Map map = this.f6444b;
        if (map.containsKey(str)) {
            return (p) map.get(str);
        }
        return p.f6622j0;
    }

    @Override // com.google.android.gms.internal.measurement.l
    public final void m(String str, p pVar) {
        if (pVar == null) {
            this.f6444b.remove(str);
        } else {
            this.f6444b.put(str, pVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.l
    public final boolean o(String str) {
        return this.f6444b.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public p r() {
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p s(String str, z4 z4Var, List list) {
        if ("toString".equals(str)) {
            return new t(this.f6443a);
        }
        return l.d(this, new t(str), z4Var, list);
    }
}
