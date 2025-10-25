package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import com.yandex.metrica.impl.ob.C0907uj;
@TargetApi(17)
/* renamed from: com.yandex.metrica.impl.ob.yj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1003yj implements S {

    /* renamed from: a  reason: collision with root package name */
    private final Jj f14017a;

    /* renamed from: b  reason: collision with root package name */
    private final AbstractC0788pj f14018b;

    /* renamed from: c  reason: collision with root package name */
    private final AbstractC0788pj f14019c;

    /* renamed from: d  reason: collision with root package name */
    private final AbstractC0788pj f14020d;

    /* renamed from: e  reason: collision with root package name */
    private final AbstractC0788pj f14021e;

    /* renamed from: f  reason: collision with root package name */
    private final S[] f14022f;

    public C1003yj() {
        this(new Aj());
    }

    public void a(CellInfo cellInfo, C0907uj.a aVar) {
        this.f14017a.a(cellInfo, aVar);
        if (cellInfo instanceof CellInfoGsm) {
            this.f14018b.a((CellInfoGsm) cellInfo, aVar);
        } else if (cellInfo instanceof CellInfoCdma) {
            this.f14019c.a((CellInfoCdma) cellInfo, aVar);
        } else if (cellInfo instanceof CellInfoLte) {
            this.f14020d.a((CellInfoLte) cellInfo, aVar);
        } else if (A2.a(18) && (cellInfo instanceof CellInfoWcdma)) {
            this.f14021e.a((CellInfoWcdma) cellInfo, aVar);
        }
    }

    private C1003yj(AbstractC0788pj abstractC0788pj) {
        this(new Jj(), new Bj(), new C1027zj(), new Gj(), A2.a(18) ? new Hj() : abstractC0788pj);
    }

    C1003yj(Jj jj, AbstractC0788pj abstractC0788pj, AbstractC0788pj abstractC0788pj2, AbstractC0788pj abstractC0788pj3, AbstractC0788pj abstractC0788pj4) {
        this.f14017a = jj;
        this.f14018b = abstractC0788pj;
        this.f14019c = abstractC0788pj2;
        this.f14020d = abstractC0788pj3;
        this.f14021e = abstractC0788pj4;
        this.f14022f = new S[]{abstractC0788pj, abstractC0788pj2, abstractC0788pj4, abstractC0788pj3};
    }

    @Override // com.yandex.metrica.impl.ob.S
    public void a(Sh sh) {
        for (S s10 : this.f14022f) {
            s10.a(sh);
        }
    }
}
