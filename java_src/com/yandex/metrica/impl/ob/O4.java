package com.yandex.metrica.impl.ob;

import android.os.Bundle;
/* loaded from: classes2.dex */
public class O4 extends M4 {
    public O4(F3 f32) {
        super(f32);
    }

    @Override // com.yandex.metrica.impl.ob.M4
    public boolean a(C0445c0 c0445c0, C0723n4 c0723n4) {
        V0 v02;
        Bundle l10 = c0445c0.l();
        if (l10 != null) {
            v02 = (V0) l10.getParcelable("com.yandex.metrica.impl.IdentifiersData");
        } else {
            v02 = null;
        }
        a().a(v02);
        return false;
    }
}
