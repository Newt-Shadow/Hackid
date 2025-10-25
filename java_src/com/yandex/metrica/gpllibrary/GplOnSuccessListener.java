package com.yandex.metrica.gpllibrary;

import android.location.Location;
import android.location.LocationListener;
import m6.h;
/* loaded from: classes.dex */
class GplOnSuccessListener implements h {
    private final LocationListener mLocationListener;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GplOnSuccessListener(LocationListener locationListener) {
        this.mLocationListener = locationListener;
    }

    @Override // m6.h
    public void onSuccess(Location location) {
        this.mLocationListener.onLocationChanged(location);
    }
}
