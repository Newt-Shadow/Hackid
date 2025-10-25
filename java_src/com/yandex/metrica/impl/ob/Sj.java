package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.telephony.CellIdentityWcdma;
import com.yandex.metrica.DoNotInline;
import io.flutter.Build;
@TargetApi(Build.API_LEVELS.API_28)
@DoNotInline
/* loaded from: classes2.dex */
public final class Sj implements Mj<CellIdentityWcdma> {
    @Override // com.yandex.metrica.impl.ob.Mj
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public Integer b(CellIdentityWcdma cellIdentityWcdma) {
        String mccString;
        mccString = cellIdentityWcdma.getMccString();
        return C0419b.c(mccString);
    }

    @Override // com.yandex.metrica.impl.ob.Mj
    /* renamed from: b  reason: avoid collision after fix types in other method */
    public Integer a(CellIdentityWcdma cellIdentityWcdma) {
        String mncString;
        mncString = cellIdentityWcdma.getMncString();
        return C0419b.c(mncString);
    }
}
