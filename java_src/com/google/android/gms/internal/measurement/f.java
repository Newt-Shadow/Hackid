package com.google.android.gms.internal.measurement;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
/* loaded from: classes.dex */
public final class f implements Iterable, p, l {

    /* renamed from: a  reason: collision with root package name */
    final SortedMap f6376a;

    /* renamed from: b  reason: collision with root package name */
    final Map f6377b;

    public f() {
        this.f6376a = new TreeMap();
        this.f6377b = new TreeMap();
    }

    public final int A() {
        return this.f6376a.size();
    }

    public final p B(int i10) {
        p pVar;
        if (i10 < y()) {
            if (D(i10) && (pVar = (p) this.f6376a.get(Integer.valueOf(i10))) != null) {
                return pVar;
            }
            return p.f6622j0;
        }
        throw new IndexOutOfBoundsException("Attempting to get element outside of current array");
    }

    public final void C(int i10, p pVar) {
        if (i10 <= 32468) {
            if (i10 >= 0) {
                if (pVar == null) {
                    this.f6376a.remove(Integer.valueOf(i10));
                    return;
                } else {
                    this.f6376a.put(Integer.valueOf(i10), pVar);
                    return;
                }
            }
            StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 21);
            sb2.append("Out of bounds index: ");
            sb2.append(i10);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        throw new IllegalStateException("Array too large");
    }

    public final boolean D(int i10) {
        if (i10 >= 0) {
            SortedMap sortedMap = this.f6376a;
            if (i10 <= ((Integer) sortedMap.lastKey()).intValue()) {
                return sortedMap.containsKey(Integer.valueOf(i10));
            }
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 21);
        sb2.append("Out of bounds index: ");
        sb2.append(i10);
        throw new IndexOutOfBoundsException(sb2.toString());
    }

    public final void F() {
        this.f6376a.clear();
    }

    public final void G(int i10, p pVar) {
        if (i10 >= 0) {
            if (i10 >= y()) {
                C(i10, pVar);
                return;
            }
            SortedMap sortedMap = this.f6376a;
            for (int intValue = ((Integer) sortedMap.lastKey()).intValue(); intValue >= i10; intValue--) {
                Integer valueOf = Integer.valueOf(intValue);
                p pVar2 = (p) sortedMap.get(valueOf);
                if (pVar2 != null) {
                    C(intValue + 1, pVar2);
                    sortedMap.remove(valueOf);
                }
            }
            C(i10, pVar);
            return;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 21);
        sb2.append("Invalid value index: ");
        sb2.append(i10);
        throw new IllegalArgumentException(sb2.toString());
    }

    public final void I(int i10) {
        SortedMap sortedMap = this.f6376a;
        int intValue = ((Integer) sortedMap.lastKey()).intValue();
        if (i10 <= intValue && i10 >= 0) {
            sortedMap.remove(Integer.valueOf(i10));
            if (i10 == intValue) {
                int i11 = i10 - 1;
                Integer valueOf = Integer.valueOf(i11);
                if (!sortedMap.containsKey(valueOf) && i11 >= 0) {
                    sortedMap.put(valueOf, p.f6622j0);
                    return;
                }
                return;
            }
            while (true) {
                i10++;
                if (i10 <= ((Integer) sortedMap.lastKey()).intValue()) {
                    Integer valueOf2 = Integer.valueOf(i10);
                    p pVar = (p) sortedMap.get(valueOf2);
                    if (pVar != null) {
                        sortedMap.put(Integer.valueOf(i10 - 1), pVar);
                        sortedMap.remove(valueOf2);
                    }
                } else {
                    return;
                }
            }
        }
    }

    public final String J(String str) {
        String str2;
        StringBuilder sb2 = new StringBuilder();
        if (!this.f6376a.isEmpty()) {
            int i10 = 0;
            while (true) {
                if (str == null) {
                    str2 = "";
                } else {
                    str2 = str;
                }
                if (i10 >= y()) {
                    break;
                }
                p B = B(i10);
                sb2.append(str2);
                if (!(B instanceof u) && !(B instanceof n)) {
                    sb2.append(B.f());
                }
                i10++;
            }
            sb2.delete(0, str2.length());
        }
        return sb2.toString();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (y() != fVar.y()) {
            return false;
        }
        SortedMap sortedMap = this.f6376a;
        if (sortedMap.isEmpty()) {
            return fVar.f6376a.isEmpty();
        }
        for (int intValue = ((Integer) sortedMap.firstKey()).intValue(); intValue <= ((Integer) sortedMap.lastKey()).intValue(); intValue++) {
            if (!B(intValue).equals(fVar.B(intValue))) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String f() {
        return J(StringUtils.COMMA);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Double g() {
        SortedMap sortedMap = this.f6376a;
        if (sortedMap.size() == 1) {
            return B(0).g();
        }
        if (sortedMap.size() <= 0) {
            return Double.valueOf(0.0d);
        }
        return Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Boolean h() {
        return Boolean.TRUE;
    }

    public final int hashCode() {
        return this.f6376a.hashCode() * 31;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator i() {
        return new d(this, this.f6376a.keySet().iterator(), this.f6377b.keySet().iterator());
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new e(this);
    }

    @Override // com.google.android.gms.internal.measurement.l
    public final p l(String str) {
        p pVar;
        if ("length".equals(str)) {
            return new i(Double.valueOf(y()));
        }
        if (o(str) && (pVar = (p) this.f6377b.get(str)) != null) {
            return pVar;
        }
        return p.f6622j0;
    }

    @Override // com.google.android.gms.internal.measurement.l
    public final void m(String str, p pVar) {
        if (pVar == null) {
            this.f6377b.remove(str);
        } else {
            this.f6377b.put(str, pVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.l
    public final boolean o(String str) {
        if (!"length".equals(str) && !this.f6377b.containsKey(str)) {
            return false;
        }
        return true;
    }

    public final List p() {
        ArrayList arrayList = new ArrayList(y());
        for (int i10 = 0; i10 < y(); i10++) {
            arrayList.add(B(i10));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p r() {
        f fVar = new f();
        for (Map.Entry entry : this.f6376a.entrySet()) {
            if (entry.getValue() instanceof l) {
                fVar.f6376a.put((Integer) entry.getKey(), (p) entry.getValue());
            } else {
                fVar.f6376a.put((Integer) entry.getKey(), ((p) entry.getValue()).r());
            }
        }
        return fVar;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p s(String str, z4 z4Var, List list) {
        if (!"concat".equals(str) && !"every".equals(str) && !"filter".equals(str) && !"forEach".equals(str) && !"indexOf".equals(str) && !"join".equals(str) && !"lastIndexOf".equals(str) && !"map".equals(str) && !"pop".equals(str) && !"push".equals(str) && !"reduce".equals(str) && !"reduceRight".equals(str) && !"reverse".equals(str) && !"shift".equals(str) && !"slice".equals(str) && !"some".equals(str) && !"sort".equals(str) && !"splice".equals(str) && !"toString".equals(str) && !"unshift".equals(str)) {
            return l.d(this, new t(str), z4Var, list);
        }
        return c0.a(str, this, z4Var, list);
    }

    public final Iterator t() {
        return this.f6376a.keySet().iterator();
    }

    public final String toString() {
        return J(StringUtils.COMMA);
    }

    public final int y() {
        SortedMap sortedMap = this.f6376a;
        if (sortedMap.isEmpty()) {
            return 0;
        }
        return ((Integer) sortedMap.lastKey()).intValue() + 1;
    }

    public f(List list) {
        this();
        if (list != null) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                C(i10, (p) list.get(i10));
            }
        }
    }
}
