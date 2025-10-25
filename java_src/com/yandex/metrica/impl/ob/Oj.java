package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.telephony.CellIdentityGsm;
import com.yandex.metrica.DoNotInline;
import io.flutter.Build;
@TargetApi(Build.API_LEVELS.API_28)
@DoNotInline
/* loaded from: classes2.dex */
public final class Oj implements Mj<CellIdentityGsm> {
    @Override // com.yandex.metrica.impl.ob.Mj
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public Integer b(CellIdentityGsm cellIdentityGsm) {
        String mccString;
        mccString = cellIdentityGsm.getMccString();
        return C0419b.c(mccString);
    }

    @Override // com.yandex.metrica.impl.ob.Mj
    /* renamed from: b  reason: avoid collision after fix types in other method */
    public Integer a(CellIdentityGsm cellIdentityGsm) {
        String mncString;
        mncString = cellIdentityGsm.getMncString();
        return C0419b.c(mncString);
    }
}
