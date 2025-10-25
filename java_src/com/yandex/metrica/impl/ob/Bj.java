package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.telephony.CellIdentityGsm;
import android.telephony.CellInfo;
import android.telephony.CellInfoGsm;
import com.yandex.metrica.impl.ob.C0907uj;
@TargetApi(17)
/* loaded from: classes2.dex */
public class Bj extends AbstractC0788pj {

    /* renamed from: c  reason: collision with root package name */
    private final Mj<CellIdentityGsm> f9795c;

    public Bj() {
        this(A2.a(28) ? new Oj() : new Nj());
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0788pj
    protected void b(CellInfo cellInfo, C0907uj.a aVar) {
        CellInfoGsm cellInfoGsm = (CellInfoGsm) cellInfo;
        CellIdentityGsm cellIdentity = cellInfoGsm.getCellIdentity();
        aVar.a(1).b(Integer.valueOf(cellIdentity.getCid())).c(Integer.valueOf(cellIdentity.getLac())).l(Integer.valueOf(cellInfoGsm.getCellSignalStrength().getDbm())).i(this.f9795c.b(cellIdentity)).j(this.f9795c.a(cellIdentity));
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0788pj
    protected void c(CellInfo cellInfo, C0907uj.a aVar) {
        CellInfoGsm cellInfoGsm = (CellInfoGsm) cellInfo;
        if (A2.a(24)) {
            aVar.a(Integer.valueOf(cellInfoGsm.getCellIdentity().getArfcn()));
        }
    }

    Bj(Mj<CellIdentityGsm> mj) {
        this.f9795c = mj;
    }
}
