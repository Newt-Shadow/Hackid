package io.appmetrica.analytics.location.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionResolutionStrategy;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import io.appmetrica.analytics.location.impl.u;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractor;
/* loaded from: classes2.dex */
public class u implements LastKnownLocationExtractor {

    /* renamed from: a  reason: collision with root package name */
    public final Context f21145a;

    /* renamed from: b  reason: collision with root package name */
    public final PermissionResolutionStrategy f21146b;

    /* renamed from: c  reason: collision with root package name */
    public final LocationListener f21147c;

    /* renamed from: d  reason: collision with root package name */
    public final String f21148d;

    public u(Context context, PermissionResolutionStrategy permissionResolutionStrategy, LocationListener locationListener, String str) {
        this.f21145a = context;
        this.f21146b = permissionResolutionStrategy;
        this.f21147c = locationListener;
        this.f21148d = str;
    }

    public final Context a() {
        return this.f21145a;
    }

    public final LocationListener b() {
        return this.f21147c;
    }

    public final PermissionResolutionStrategy c() {
        return this.f21146b;
    }

    public final String d() {
        return this.f21148d;
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractor
    @SuppressLint({"MissingPermission"})
    public final void updateLastKnownLocation() {
        if (this.f21146b.hasNecessaryPermissions(this.f21145a)) {
            Context context = this.f21145a;
            Location location = (Location) SystemServiceUtils.accessSystemServiceByNameSafely(context, "location", "getting last known location for provider " + this.f21148d, "location manager", new FunctionWithThrowable() { // from class: rc.c
                @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
                public final Object apply(Object obj) {
                    return u.a(u.this, (LocationManager) obj);
                }
            });
            if (location != null) {
                this.f21147c.onLocationChanged(location);
            }
        }
    }

    public static final Location a(u uVar, LocationManager locationManager) {
        return locationManager.getLastKnownLocation(uVar.f21148d);
    }
}
