package io.appmetrica.analytics.gpllibrary.internal;

import android.location.LocationListener;
import com.google.android.gms.location.LocationResult;
import g6.LocationCallback;
/* loaded from: classes2.dex */
class GplLocationCallback extends LocationCallback {

    /* renamed from: a  reason: collision with root package name */
    private final LocationListener f17890a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GplLocationCallback(LocationListener locationListener) {
        this.f17890a = locationListener;
    }

    @Override // g6.LocationCallback
    public void onLocationResult(LocationResult locationResult) {
        this.f17890a.onLocationChanged(locationResult.g());
    }
}
