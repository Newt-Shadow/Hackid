package io.appmetrica.analytics.location.impl;

import android.content.Context;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Looper;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionResolutionStrategy;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import io.appmetrica.analytics.location.impl.r;
import io.appmetrica.analytics.locationapi.internal.LocationReceiver;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class r extends u implements LocationReceiver {

    /* renamed from: e  reason: collision with root package name */
    public final Looper f21138e;

    /* renamed from: f  reason: collision with root package name */
    public final long f21139f;

    public r(Context context, Looper looper, PermissionResolutionStrategy permissionResolutionStrategy, LocationListener locationListener) {
        super(context, permissionResolutionStrategy, locationListener, "passive");
        this.f21138e = looper;
        this.f21139f = TimeUnit.SECONDS.toMillis(1L);
    }

    public static final xc.t a(r rVar, LocationManager locationManager) {
        locationManager.requestLocationUpdates(rVar.f21148d, rVar.f21139f, 0.0f, rVar.f21147c, rVar.f21138e);
        return xc.t.f32733a;
    }

    public static final xc.t b(r rVar, LocationManager locationManager) {
        locationManager.removeUpdates(rVar.f21147c);
        return xc.t.f32733a;
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LocationReceiver
    public final void startLocationUpdates() {
        if (this.f21146b.hasNecessaryPermissions(this.f21145a)) {
            Context context = this.f21145a;
            SystemServiceUtils.accessSystemServiceByNameSafely(context, "location", "request location updates for " + this.f21148d + " provider", "location manager", new FunctionWithThrowable() { // from class: rc.a
                @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
                public final Object apply(Object obj) {
                    return r.a(r.this, (LocationManager) obj);
                }
            });
        }
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LocationReceiver
    public final void stopLocationUpdates() {
        SystemServiceUtils.accessSystemServiceByNameSafely(this.f21145a, "location", "stop location updates for passive provider", "location manager", new FunctionWithThrowable() { // from class: rc.b
            @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
            public final Object apply(Object obj) {
                return r.b(r.this, (LocationManager) obj);
            }
        });
    }
}
