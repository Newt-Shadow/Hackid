package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.telephony.CellInfo;
import com.yandex.metrica.impl.ob.C0907uj;
import java.util.concurrent.TimeUnit;
@TargetApi(17)
/* loaded from: classes2.dex */
public class Jj {

    /* renamed from: a  reason: collision with root package name */
    private C0567gm f10569a;

    public Jj() {
        this(new C0567gm());
    }

    public void a(CellInfo cellInfo, C0907uj.a aVar) {
        long timeStamp = cellInfo.getTimeStamp();
        Long l10 = null;
        if (timeStamp > 0) {
            C0567gm c0567gm = this.f10569a;
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            long c10 = c0567gm.c(timeStamp, timeUnit);
            if (c10 > 0 && c10 < TimeUnit.HOURS.toSeconds(1L)) {
                l10 = Long.valueOf(c10);
            }
            if (l10 == null) {
                long a10 = this.f10569a.a(timeStamp, timeUnit);
                if (a10 > 0 && a10 < TimeUnit.HOURS.toSeconds(1L)) {
                    l10 = Long.valueOf(a10);
                }
            }
        }
        aVar.a(l10).a(cellInfo.isRegistered());
    }

    Jj(C0567gm c0567gm) {
        this.f10569a = c0567gm;
    }
}
