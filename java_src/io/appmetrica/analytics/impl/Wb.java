package io.appmetrica.analytics.impl;

import android.content.Context;
import android.location.Location;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import io.appmetrica.analytics.locationapi.internal.CacheArguments;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProvider;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProviderFactory;
import io.appmetrica.analytics.locationapi.internal.LocationClient;
import io.appmetrica.analytics.locationapi.internal.LocationControllerObserver;
import io.appmetrica.analytics.locationapi.internal.LocationFilter;
import io.appmetrica.analytics.locationapi.internal.LocationProvider;
import io.appmetrica.analytics.locationapi.internal.LocationReceiverProvider;
import io.appmetrica.analytics.locationapi.internal.LocationReceiverProviderFactory;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleLocationSourcesServiceController;
/* loaded from: classes2.dex */
public final class Wb implements Vb, Vl, LocationProvider {

    /* renamed from: a  reason: collision with root package name */
    public final Context f19178a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC1044ac f19179b;

    /* renamed from: c  reason: collision with root package name */
    public final LocationClient f19180c;

    /* renamed from: d  reason: collision with root package name */
    public final C1153el f19181d;

    /* renamed from: e  reason: collision with root package name */
    public final C1301kk f19182e;

    /* renamed from: f  reason: collision with root package name */
    public final LastKnownLocationExtractorProviderFactory f19183f;

    /* renamed from: g  reason: collision with root package name */
    public final LocationReceiverProviderFactory f19184g;

    public Wb(Context context, InterfaceC1044ac interfaceC1044ac, LocationClient locationClient) {
        this.f19178a = context;
        this.f19179b = interfaceC1044ac;
        this.f19180c = locationClient;
        C1169fc c1169fc = new C1169fc();
        this.f19181d = new C1153el(new C1635y5(c1169fc, C1665za.j().o().getAskForPermissionStrategy()));
        this.f19182e = C1665za.j().o();
        ((C1119dc) interfaceC1044ac).a(c1169fc, true);
        ((C1119dc) interfaceC1044ac).a(locationClient, true);
        this.f19183f = locationClient.getLastKnownExtractorProviderFactory();
        this.f19184g = locationClient.getLocationReceiverProviderFactory();
    }

    @Override // io.appmetrica.analytics.impl.Vl
    public final void a(Ql ql) {
        C1558v3 c1558v3 = ql.f18852y;
        if (c1558v3 != null) {
            long j10 = c1558v3.f20773a;
            this.f19180c.updateCacheArguments(new CacheArguments(j10, 2 * j10));
        }
    }

    public final C1153el b() {
        return this.f19181d;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi
    public final LastKnownLocationExtractorProviderFactory getLastKnownExtractorProviderFactory() {
        return this.f19183f;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi
    public final LocationReceiverProviderFactory getLocationReceiverProviderFactory() {
        return this.f19184g;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi
    public final PermissionExtractor getPermissionExtractor() {
        return this.f19181d;
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LocationProvider
    public final Location getSystemLocation() {
        return this.f19180c.getSystemLocation();
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LocationProvider
    public final Location getUserLocation() {
        return this.f19180c.getUserLocation();
    }

    @Override // io.appmetrica.analytics.impl.Vb, io.appmetrica.analytics.impl.Yb
    public final void init() {
        this.f19180c.init(this.f19178a, this.f19181d, C1665za.E.f21040d.c(), this.f19182e.e());
        ModuleLocationSourcesServiceController f10 = this.f19182e.f();
        if (f10 != null) {
            f10.init();
        } else {
            LocationClient locationClient = this.f19180c;
            locationClient.registerSystemLocationSource(locationClient.getLastKnownExtractorProviderFactory().getGplLastKnownLocationExtractorProvider());
            LocationClient locationClient2 = this.f19180c;
            locationClient2.registerSystemLocationSource(locationClient2.getLastKnownExtractorProviderFactory().getNetworkLastKnownLocationExtractorProvider());
        }
        ((C1119dc) this.f19179b).a(this.f19182e.g());
        C1665za.E.f21057u.a(this);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi
    public final void registerControllerObserver(LocationControllerObserver locationControllerObserver) {
        ((C1119dc) this.f19179b).a(locationControllerObserver, true);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi
    public final void registerSource(LastKnownLocationExtractorProvider lastKnownLocationExtractorProvider) {
        this.f19180c.registerSystemLocationSource(lastKnownLocationExtractorProvider);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi
    public final void unregisterSource(LastKnownLocationExtractorProvider lastKnownLocationExtractorProvider) {
        this.f19180c.unregisterSystemLocationSource(lastKnownLocationExtractorProvider);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi
    public final void updateLocationFilter(LocationFilter locationFilter) {
        this.f19180c.updateLocationFilter(locationFilter);
    }

    @Override // io.appmetrica.analytics.impl.Vb, io.appmetrica.analytics.impl.Yb
    public final void b(Object obj) {
        ((C1119dc) this.f19179b).a(obj);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi
    public final void registerSource(LocationReceiverProvider locationReceiverProvider) {
        this.f19180c.registerSystemLocationSource(locationReceiverProvider);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi
    public final void unregisterSource(LocationReceiverProvider locationReceiverProvider) {
        this.f19180c.unregisterSystemLocationSource(locationReceiverProvider);
    }

    @Override // io.appmetrica.analytics.impl.Vb, io.appmetrica.analytics.impl.Yb
    public final void a(Object obj) {
        ((C1119dc) this.f19179b).b(obj);
    }

    @Override // io.appmetrica.analytics.impl.Vb, io.appmetrica.analytics.impl.Yb
    public final void a(boolean z10) {
        ((C1119dc) this.f19179b).a(z10);
    }

    @Override // io.appmetrica.analytics.impl.Vb, io.appmetrica.analytics.impl.Yb
    public final void a(Location location) {
        this.f19180c.updateUserLocation(location);
    }
}
