package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.telephony.CellSignalStrengthLte;
import com.yandex.metrica.DoNotInline;
@TargetApi(26)
@DoNotInline
/* loaded from: classes2.dex */
public final class Dj {

    /* renamed from: a  reason: collision with root package name */
    public static final Dj f9924a = new Dj();

    private Dj() {
    }

    public static final int a(CellSignalStrengthLte cellSignalStrengthLte) {
        int cqi;
        cqi = cellSignalStrengthLte.getCqi();
        return cqi;
    }

    public static final int b(CellSignalStrengthLte cellSignalStrengthLte) {
        int rsrq;
        rsrq = cellSignalStrengthLte.getRsrq();
        return rsrq;
    }

    public static final int c(CellSignalStrengthLte cellSignalStrengthLte) {
        int rssnr;
        rssnr = cellSignalStrengthLte.getRssnr();
        return rssnr;
    }
}
