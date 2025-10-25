package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.telephony.CellIdentityGsm;
import com.yandex.metrica.DoNotInline;
@TargetApi(17)
@DoNotInline
/* loaded from: classes2.dex */
public final class Nj implements Mj<CellIdentityGsm> {
    @Override // com.yandex.metrica.impl.ob.Mj
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public Integer b(CellIdentityGsm cellIdentityGsm) {
        return Integer.valueOf(cellIdentityGsm.getMcc());
    }

    @Override // com.yandex.metrica.impl.ob.Mj
    /* renamed from: b  reason: avoid collision after fix types in other method */
    public Integer a(CellIdentityGsm cellIdentityGsm) {
        return Integer.valueOf(cellIdentityGsm.getMnc());
    }
}
