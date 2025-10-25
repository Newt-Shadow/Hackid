package com.google.android.gms.internal.measurement;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class u implements p {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj instanceof u;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String f() {
        return StringUtils.UNDEFINED;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Double g() {
        return Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Boolean h() {
        return Boolean.FALSE;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator i() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p r() {
        return p.f6622j0;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p s(String str, z4 z4Var, List list) {
        throw new IllegalStateException(String.format("Undefined has no function %s", str));
    }
}
