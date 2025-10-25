package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class n implements p {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj instanceof n;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String f() {
        return "null";
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Double g() {
        return Double.valueOf(0.0d);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Boolean h() {
        return Boolean.FALSE;
    }

    public final int hashCode() {
        return 1;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator i() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p r() {
        return p.f6623k0;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p s(String str, z4 z4Var, List list) {
        throw new IllegalStateException(String.format("null has no function %s", str));
    }
}
