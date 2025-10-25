package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityWcdma;
import com.yandex.metrica.DoNotInline;
import io.flutter.Build;
@TargetApi(Build.API_LEVELS.API_24)
@DoNotInline
/* loaded from: classes2.dex */
public final class Cj {

    /* renamed from: a  reason: collision with root package name */
    public static final Cj f9860a = new Cj();

    private Cj() {
    }

    public static final int a(CellIdentityWcdma cellIdentityWcdma) {
        return cellIdentityWcdma.getUarfcn();
    }

    public static final int a(CellIdentityLte cellIdentityLte) {
        return cellIdentityLte.getEarfcn();
    }
}
