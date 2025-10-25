package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class k0 extends w {
    @Override // com.google.android.gms.internal.measurement.w
    public final p a(String str, z4 z4Var, List list) {
        if (str != null && !str.isEmpty() && z4Var.d(str)) {
            p h10 = z4Var.h(str);
            if (h10 instanceof j) {
                return ((j) h10).a(z4Var, list);
            }
            throw new IllegalArgumentException(String.format("Function %s is not defined", str));
        }
        throw new IllegalArgumentException(String.format("Command not found: %s", str));
    }
}
