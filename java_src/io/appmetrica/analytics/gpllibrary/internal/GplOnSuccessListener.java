package io.appmetrica.analytics.gpllibrary.internal;

import android.location.Location;
import android.location.LocationListener;
import m6.h;
/* loaded from: classes2.dex */
class GplOnSuccessListener implements h {

    /* renamed from: a  reason: collision with root package name */
    private final LocationListener f17891a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GplOnSuccessListener(LocationListener locationListener) {
        this.f17891a = locationListener;
    }

    @Override // m6.h
    public void onSuccess(Location location) {
        this.f17891a.onLocationChanged(location);
    }
}
