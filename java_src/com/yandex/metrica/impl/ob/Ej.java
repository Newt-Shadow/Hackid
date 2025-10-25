package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.telephony.CellIdentityLte;
import com.yandex.metrica.DoNotInline;
import io.flutter.Build;
@TargetApi(Build.API_LEVELS.API_28)
@DoNotInline
/* loaded from: classes2.dex */
public final class Ej {

    /* renamed from: a  reason: collision with root package name */
    public static final Ej f10022a = new Ej();

    private Ej() {
    }

    public static final int a(CellIdentityLte cellIdentityLte) {
        int bandwidth;
        bandwidth = cellIdentityLte.getBandwidth();
        return bandwidth;
    }
}
