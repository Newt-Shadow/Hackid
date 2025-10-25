package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class q implements p {

    /* renamed from: a  reason: collision with root package name */
    private final String f6701a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList f6702b;

    public q(String str, List list) {
        this.f6701a = str;
        ArrayList arrayList = new ArrayList();
        this.f6702b = arrayList;
        arrayList.addAll(list);
    }

    public final String a() {
        return this.f6701a;
    }

    public final ArrayList b() {
        return this.f6702b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        String str = this.f6701a;
        if (str == null ? qVar.f6701a != null : !str.equals(qVar.f6701a)) {
            return false;
        }
        return this.f6702b.equals(qVar.f6702b);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String f() {
        throw new IllegalStateException("Statement cannot be cast as String");
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Double g() {
        throw new IllegalStateException("Statement cannot be cast as Double");
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Boolean h() {
        throw new IllegalStateException("Statement cannot be cast as Boolean");
    }

    public final int hashCode() {
        int i10;
        String str = this.f6701a;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return (i10 * 31) + this.f6702b.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator i() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p r() {
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p s(String str, z4 z4Var, List list) {
        throw new IllegalStateException("Statement is not an evaluated entity");
    }
}
