package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Looper;
/* loaded from: classes2.dex */
class Tc extends Dc<Xb> {

    /* renamed from: f  reason: collision with root package name */
    private final LocationManager f11408f;

    /* renamed from: g  reason: collision with root package name */
    private final String f11409g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tc(Context context, Looper looper, LocationManager locationManager, InterfaceC1021zd interfaceC1021zd, String str, LocationListener locationListener) {
        super(context, locationListener, interfaceC1021zd, looper);
        this.f11408f = locationManager;
        this.f11409g = str;
    }

    @Override // com.yandex.metrica.impl.ob.Dc
    @SuppressLint({"MissingPermission"})
    public void b() {
        Location lastKnownLocation;
        if (this.f9906b.a(this.f9905a)) {
            LocationManager locationManager = this.f11408f;
            if (locationManager != null) {
                try {
                    lastKnownLocation = locationManager.getLastKnownLocation(this.f11409g);
                } catch (Throwable unused) {
                }
                this.f9907c.onLocationChanged(lastKnownLocation);
            }
            lastKnownLocation = null;
            this.f9907c.onLocationChanged(lastKnownLocation);
        }
    }

    public boolean c() {
        if (!this.f9906b.a(this.f9905a)) {
            return false;
        }
        String str = this.f11409g;
        long j10 = Dc.f9904e;
        LocationListener locationListener = this.f9907c;
        Looper looper = this.f9908d;
        LocationManager locationManager = this.f11408f;
        if (locationManager == null) {
            return false;
        }
        try {
            locationManager.requestLocationUpdates(str, j10, 0.0f, locationListener, looper);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.yandex.metrica.impl.ob.Dc
    public /* bridge */ /* synthetic */ boolean a(Xb xb2) {
        return c();
    }

    @Override // com.yandex.metrica.impl.ob.Dc
    public void a() {
        LocationManager locationManager = this.f11408f;
        if (locationManager != null) {
            try {
                locationManager.removeUpdates(this.f9907c);
            } catch (Throwable unused) {
            }
        }
    }
}
