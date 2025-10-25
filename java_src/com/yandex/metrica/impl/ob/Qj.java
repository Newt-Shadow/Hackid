package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.telephony.CellIdentityLte;
import com.yandex.metrica.DoNotInline;
import io.flutter.Build;
@TargetApi(Build.API_LEVELS.API_28)
@DoNotInline
/* loaded from: classes2.dex */
public final class Qj implements Mj<CellIdentityLte> {
    @Override // com.yandex.metrica.impl.ob.Mj
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public Integer b(CellIdentityLte cellIdentityLte) {
        String mccString;
        mccString = cellIdentityLte.getMccString();
        return C0419b.c(mccString);
    }

    @Override // com.yandex.metrica.impl.ob.Mj
    /* renamed from: b  reason: avoid collision after fix types in other method */
    public Integer a(CellIdentityLte cellIdentityLte) {
        String mncString;
        mncString = cellIdentityLte.getMncString();
        return C0419b.c(mncString);
    }
}
