package io.appmetrica.analytics.impl;

import android.os.Bundle;
/* renamed from: io.appmetrica.analytics.impl.sa  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1490sa extends R4 {
    public C1490sa(O4 o42) {
        super(o42);
    }

    @Override // io.appmetrica.analytics.impl.R4
    public final boolean a(C1138e6 c1138e6, L4 l42) {
        C1267jb c1267jb;
        Bundle bundle = c1138e6.f19583m;
        if (bundle != null) {
            c1267jb = (C1267jb) bundle.getParcelable("io.appmetrica.analytics.impl.IdentifiersData");
        } else {
            c1267jb = null;
        }
        this.f18876a.a(c1267jb);
        return false;
    }
}
