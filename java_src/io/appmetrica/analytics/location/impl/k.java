package io.appmetrica.analytics.location.impl;

import android.content.Context;
import android.location.Location;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import io.appmetrica.analytics.coreutils.internal.cache.LocationDataCacheUpdateScheduler;
import io.appmetrica.analytics.locationapi.internal.ILastKnownUpdater;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractor;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProvider;
import io.appmetrica.analytics.locationapi.internal.LocationControllerObserver;
import io.appmetrica.analytics.locationapi.internal.LocationReceiver;
import io.appmetrica.analytics.locationapi.internal.LocationReceiverProvider;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class k implements ILastKnownUpdater, LocationControllerObserver {

    /* renamed from: a  reason: collision with root package name */
    public final Context f21112a;

    /* renamed from: b  reason: collision with root package name */
    public final PermissionExtractor f21113b;

    /* renamed from: c  reason: collision with root package name */
    public final p f21114c;

    /* renamed from: d  reason: collision with root package name */
    public final IHandlerExecutor f21115d;

    /* renamed from: e  reason: collision with root package name */
    public final n f21116e;

    /* renamed from: f  reason: collision with root package name */
    public final LocationDataCacheUpdateScheduler f21117f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f21118g;

    /* renamed from: h  reason: collision with root package name */
    public final HashMap f21119h = new HashMap();

    /* renamed from: i  reason: collision with root package name */
    public final HashMap f21120i = new HashMap();

    /* renamed from: j  reason: collision with root package name */
    public Location f21121j;

    public k(Context context, PermissionExtractor permissionExtractor, IHandlerExecutor iHandlerExecutor, p pVar) {
        this.f21112a = context;
        this.f21114c = pVar;
        this.f21113b = permissionExtractor;
        this.f21115d = iHandlerExecutor;
        this.f21116e = new n(pVar);
        LocationDataCacheUpdateScheduler locationDataCacheUpdateScheduler = new LocationDataCacheUpdateScheduler(iHandlerExecutor, this, pVar.a(), "loc");
        this.f21117f = locationDataCacheUpdateScheduler;
        pVar.a().setUpdateScheduler(locationDataCacheUpdateScheduler);
    }

    public final synchronized Location a() {
        return (Location) this.f21114c.f21132b.getData();
    }

    public final synchronized void b(LastKnownLocationExtractorProvider lastKnownLocationExtractorProvider) {
        this.f21119h.remove(lastKnownLocationExtractorProvider.getIdentifier());
    }

    public final synchronized Location c() {
        Location location;
        location = this.f21121j;
        if (location == null) {
            location = a();
        }
        return location;
    }

    public final synchronized void d() {
        this.f21117f.startUpdates();
        for (LocationReceiver locationReceiver : this.f21120i.values()) {
            locationReceiver.startLocationUpdates();
        }
        updateLastKnown();
    }

    public final synchronized void e() {
        this.f21117f.stopUpdates();
        for (LocationReceiver locationReceiver : this.f21120i.values()) {
            locationReceiver.stopLocationUpdates();
        }
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LocationControllerObserver
    public final synchronized void startLocationTracking() {
        if (!this.f21118g) {
            this.f21118g = true;
            d();
        }
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LocationControllerObserver
    public final synchronized void stopLocationTracking() {
        if (this.f21118g) {
            this.f21118g = false;
            e();
        }
    }

    @Override // io.appmetrica.analytics.locationapi.internal.ILastKnownUpdater
    public final synchronized void updateLastKnown() {
        for (LastKnownLocationExtractor lastKnownLocationExtractor : this.f21119h.values()) {
            lastKnownLocationExtractor.updateLastKnownLocation();
        }
    }

    public final synchronized void b(LocationReceiverProvider locationReceiverProvider) {
        LocationReceiver locationReceiver = (LocationReceiver) this.f21120i.remove(locationReceiverProvider.getIdentifier());
        if (locationReceiver != null && this.f21118g) {
            locationReceiver.stopLocationUpdates();
        }
    }

    public final void a(i iVar) {
        this.f21115d.execute(new j(this, iVar));
    }

    public final synchronized void a(LastKnownLocationExtractorProvider lastKnownLocationExtractorProvider) {
        LastKnownLocationExtractor extractor = lastKnownLocationExtractorProvider.getExtractor(this.f21112a, this.f21113b, this.f21115d, this.f21116e);
        this.f21119h.put(lastKnownLocationExtractorProvider.getIdentifier(), extractor);
        if (this.f21118g) {
            extractor.updateLastKnownLocation();
        }
    }

    public final synchronized Location b() {
        return this.f21121j;
    }

    public final synchronized void a(LocationReceiverProvider locationReceiverProvider) {
        LocationReceiver locationReceiver = locationReceiverProvider.getLocationReceiver(this.f21112a, this.f21113b, this.f21115d, this.f21116e);
        LocationReceiver locationReceiver2 = (LocationReceiver) this.f21120i.put(locationReceiverProvider.getIdentifier(), locationReceiver);
        if (this.f21118g) {
            if (locationReceiver2 != null) {
                locationReceiver2.stopLocationUpdates();
            }
            locationReceiver.startLocationUpdates();
        }
    }

    public final synchronized void a(Location location) {
        if (location != null) {
            this.f21121j = location;
        }
    }
}
