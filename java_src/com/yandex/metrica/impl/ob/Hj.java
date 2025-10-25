package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoWcdma;
import com.yandex.metrica.DoNotInline;
import com.yandex.metrica.impl.ob.C0907uj;
@TargetApi(18)
@DoNotInline
/* loaded from: classes2.dex */
public class Hj extends AbstractC0788pj {

    /* renamed from: c  reason: collision with root package name */
    private final Mj<CellIdentityWcdma> f10215c;

    public Hj() {
        this(A2.a(28) ? new Sj() : new Rj());
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0788pj
    protected void b(CellInfo cellInfo, C0907uj.a aVar) {
        CellInfoWcdma cellInfoWcdma = (CellInfoWcdma) cellInfo;
        CellIdentityWcdma cellIdentity = cellInfoWcdma.getCellIdentity();
        aVar.a(3).b(Integer.valueOf(cellIdentity.getCid())).c(Integer.valueOf(cellIdentity.getLac())).k(Integer.valueOf(cellIdentity.getPsc())).l(Integer.valueOf(cellInfoWcdma.getCellSignalStrength().getDbm())).i(this.f10215c.b(cellIdentity)).j(this.f10215c.a(cellIdentity));
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0788pj
    protected void c(CellInfo cellInfo, C0907uj.a aVar) {
        if (A2.a(24)) {
            aVar.a(Integer.valueOf(Cj.a(((CellInfoWcdma) cellInfo).getCellIdentity())));
        }
    }

    Hj(Mj<CellIdentityWcdma> mj) {
        this.f10215c = mj;
    }
}
