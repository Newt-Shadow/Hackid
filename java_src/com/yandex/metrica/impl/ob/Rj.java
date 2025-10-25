package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.telephony.CellIdentityWcdma;
import com.yandex.metrica.DoNotInline;
@TargetApi(18)
@DoNotInline
/* loaded from: classes2.dex */
public final class Rj implements Mj<CellIdentityWcdma> {
    @Override // com.yandex.metrica.impl.ob.Mj
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public Integer b(CellIdentityWcdma cellIdentityWcdma) {
        return Integer.valueOf(cellIdentityWcdma.getMcc());
    }

    @Override // com.yandex.metrica.impl.ob.Mj
    /* renamed from: b  reason: avoid collision after fix types in other method */
    public Integer a(CellIdentityWcdma cellIdentityWcdma) {
        return Integer.valueOf(cellIdentityWcdma.getMnc());
    }
}
