package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.telephony.CellSignalStrengthLte;
import com.yandex.metrica.DoNotInline;
@TargetApi(29)
@DoNotInline
/* loaded from: classes2.dex */
public final class Fj {

    /* renamed from: a  reason: collision with root package name */
    public static final Fj f10093a = new Fj();

    private Fj() {
    }

    public static final int a(CellSignalStrengthLte cellSignalStrengthLte) {
        int rssi;
        rssi = cellSignalStrengthLte.getRssi();
        return rssi;
    }
}
