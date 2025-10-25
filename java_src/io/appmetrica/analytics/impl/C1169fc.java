package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy;
import io.appmetrica.analytics.locationapi.internal.LocationControllerObserver;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.fc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1169fc implements PermissionStrategy, LocationControllerObserver {

    /* renamed from: b  reason: collision with root package name */
    public static final C1144ec f19639b = new C1144ec();

    /* renamed from: c  reason: collision with root package name */
    public static final List f19640c;

    /* renamed from: a  reason: collision with root package name */
    public volatile boolean f19641a;

    static {
        List k10;
        k10 = yc.o.k("android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION");
        f19640c = k10;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy
    public final boolean forbidUsePermission(String str) {
        if (f19640c.contains(str)) {
            return !this.f19641a;
        }
        return false;
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LocationControllerObserver
    public final void startLocationTracking() {
        this.f19641a = true;
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LocationControllerObserver
    public final void stopLocationTracking() {
        this.f19641a = false;
    }

    public final String toString() {
        return "LocationFlagStrategy(enabled=" + this.f19641a + ", locationPermissions=" + f19640c + ')';
    }
}
