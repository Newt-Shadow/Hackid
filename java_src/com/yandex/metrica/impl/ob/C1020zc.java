package com.yandex.metrica.impl.ob;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
/* renamed from: com.yandex.metrica.impl.ob.zc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1020zc implements LocationListener {

    /* renamed from: a  reason: collision with root package name */
    private final Pc f14071a;

    public C1020zc(Pc pc2) {
        this.f14071a = pc2;
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        if (location != null) {
            this.f14071a.a(location);
        }
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i10, Bundle bundle) {
    }
}
