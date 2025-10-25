package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes.dex */
public final class d0 extends w {
    /* JADX INFO: Access modifiers changed from: protected */
    public d0() {
        this.f6857a.add(m0.AND);
        this.f6857a.add(m0.NOT);
        this.f6857a.add(m0.OR);
    }

    @Override // com.google.android.gms.internal.measurement.w
    public final p a(String str, z4 z4Var, List list) {
        m0 m0Var = m0.ADD;
        int ordinal = a6.e(str).ordinal();
        if (ordinal != 1) {
            if (ordinal != 47) {
                if (ordinal != 50) {
                    return super.b(str);
                }
                a6.a(m0.OR.name(), 2, list);
                p a10 = z4Var.a((p) list.get(0));
                if (!a10.h().booleanValue()) {
                    return z4Var.a((p) list.get(1));
                }
                return a10;
            }
            a6.a(m0.NOT.name(), 1, list);
            return new g(Boolean.valueOf(!z4Var.a((p) list.get(0)).h().booleanValue()));
        }
        a6.a(m0.AND.name(), 2, list);
        p a11 = z4Var.a((p) list.get(0));
        if (a11.h().booleanValue()) {
            return z4Var.a((p) list.get(1));
        }
        return a11;
    }
}
