package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.telephony.CellIdentityLte;
import com.yandex.metrica.DoNotInline;
@TargetApi(17)
@DoNotInline
/* loaded from: classes2.dex */
public final class Pj implements Mj<CellIdentityLte> {
    @Override // com.yandex.metrica.impl.ob.Mj
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public Integer b(CellIdentityLte cellIdentityLte) {
        return Integer.valueOf(cellIdentityLte.getMcc());
    }

    @Override // com.yandex.metrica.impl.ob.Mj
    /* renamed from: b  reason: avoid collision after fix types in other method */
    public Integer a(CellIdentityLte cellIdentityLte) {
        return Integer.valueOf(cellIdentityLte.getMnc());
    }
}
