package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import com.yandex.metrica.impl.ob.C0907uj;
@TargetApi(17)
/* renamed from: com.yandex.metrica.impl.ob.zj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1027zj extends AbstractC0788pj {
    @Override // com.yandex.metrica.impl.ob.AbstractC0788pj
    protected void b(CellInfo cellInfo, C0907uj.a aVar) {
        aVar.l(Integer.valueOf(((CellInfoCdma) cellInfo).getCellSignalStrength().getDbm()));
        aVar.a(2);
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0788pj
    protected void c(CellInfo cellInfo, C0907uj.a aVar) {
        CellInfoCdma cellInfoCdma = (CellInfoCdma) cellInfo;
    }
}
