package com.yandex.metrica.gpllibrary;

import android.location.LocationListener;
import com.google.android.gms.location.LocationResult;
import g6.LocationCallback;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class GplLocationCallback extends LocationCallback {
    private final LocationListener mLocationListener;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GplLocationCallback(LocationListener locationListener) {
        this.mLocationListener = locationListener;
    }

    @Override // g6.LocationCallback
    public void onLocationResult(LocationResult locationResult) {
        this.mLocationListener.onLocationChanged(locationResult.g());
    }
}
