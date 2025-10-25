package io.appmetrica.analytics.coreutils.internal.cache;

import io.appmetrica.analytics.coreapi.internal.cache.CacheUpdateScheduler;
import io.appmetrica.analytics.coreapi.internal.cache.UpdateConditionsChecker;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.locationapi.internal.ILastKnownUpdater;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class LocationDataCacheUpdateScheduler implements CacheUpdateScheduler {

    /* renamed from: a  reason: collision with root package name */
    private final ICommonExecutor f17717a;

    /* renamed from: b  reason: collision with root package name */
    private final ILastKnownUpdater f17718b;

    /* renamed from: c  reason: collision with root package name */
    private final UpdateConditionsChecker f17719c;

    /* renamed from: d  reason: collision with root package name */
    private final a f17720d = new a(this);

    /* renamed from: e  reason: collision with root package name */
    private final b f17721e = new b(this);

    public LocationDataCacheUpdateScheduler(ICommonExecutor iCommonExecutor, ILastKnownUpdater iLastKnownUpdater, UpdateConditionsChecker updateConditionsChecker, String str) {
        this.f17717a = iCommonExecutor;
        this.f17718b = iLastKnownUpdater;
        this.f17719c = updateConditionsChecker;
        String.format("[LocationDataCacheUpdateScheduler-%s]", str);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.cache.CacheUpdateScheduler
    public void onStateUpdated() {
        this.f17717a.remove(this.f17720d);
        this.f17717a.executeDelayed(this.f17720d, 90L, TimeUnit.SECONDS);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.cache.CacheUpdateScheduler
    public void scheduleUpdateIfNeededNow() {
        this.f17717a.execute(this.f17721e);
    }

    public void startUpdates() {
        onStateUpdated();
    }

    public void stopUpdates() {
        this.f17717a.remove(this.f17720d);
        this.f17717a.remove(this.f17721e);
    }
}
