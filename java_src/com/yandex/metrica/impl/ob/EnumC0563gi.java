package com.yandex.metrica.impl.ob;

import android.os.Bundle;
/* renamed from: com.yandex.metrica.impl.ob.gi  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public enum EnumC0563gi {
    UNKNOWN(0),
    NETWORK(1),
    PARSE(2);
    

    /* renamed from: a  reason: collision with root package name */
    private int f12484a;

    EnumC0563gi(int i10) {
        this.f12484a = i10;
    }

    public Bundle a(Bundle bundle) {
        bundle.putInt("startup_error_key_code", this.f12484a);
        return bundle;
    }
}
