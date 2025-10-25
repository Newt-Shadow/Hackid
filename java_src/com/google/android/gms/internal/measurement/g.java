package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class g implements p {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f6402a;

    public g(Boolean bool) {
        boolean booleanValue;
        if (bool == null) {
            booleanValue = false;
        } else {
            booleanValue = bool.booleanValue();
        }
        this.f6402a = booleanValue;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof g) && this.f6402a == ((g) obj).f6402a) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String f() {
        return Boolean.toString(this.f6402a);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Double g() {
        double d10;
        if (true != this.f6402a) {
            d10 = 0.0d;
        } else {
            d10 = 1.0d;
        }
        return Double.valueOf(d10);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Boolean h() {
        return Boolean.valueOf(this.f6402a);
    }

    public final int hashCode() {
        return Boolean.valueOf(this.f6402a).hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator i() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p r() {
        return new g(Boolean.valueOf(this.f6402a));
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p s(String str, z4 z4Var, List list) {
        if ("toString".equals(str)) {
            return new t(Boolean.toString(this.f6402a));
        }
        throw new IllegalArgumentException(String.format("%s.%s is not a function.", Boolean.toString(this.f6402a), str));
    }

    public final String toString() {
        return String.valueOf(this.f6402a);
    }
}
