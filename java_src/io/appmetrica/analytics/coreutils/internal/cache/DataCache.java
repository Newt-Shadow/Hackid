package io.appmetrica.analytics.coreutils.internal.cache;

import io.appmetrica.analytics.coreapi.internal.cache.CacheUpdateScheduler;
import io.appmetrica.analytics.coreapi.internal.cache.UpdateConditionsChecker;
import io.appmetrica.analytics.coreutils.internal.cache.CachedDataProvider;
/* loaded from: classes2.dex */
public abstract class DataCache<T> implements UpdateConditionsChecker {

    /* renamed from: a  reason: collision with root package name */
    private CacheUpdateScheduler f17716a;
    protected final CachedDataProvider.CachedData<T> mCachedData;

    public DataCache(long j10, long j11, String str) {
        String.format("[DataCache-%s]", str);
        this.mCachedData = new CachedDataProvider.CachedData<>(j10, j11, str);
    }

    public CachedDataProvider.CachedData<T> getCachedData() {
        return this.mCachedData;
    }

    public T getData() {
        CacheUpdateScheduler cacheUpdateScheduler;
        if (shouldUpdate() && (cacheUpdateScheduler = this.f17716a) != null) {
            cacheUpdateScheduler.scheduleUpdateIfNeededNow();
        }
        if (this.mCachedData.shouldClearData()) {
            this.mCachedData.setData(null);
        }
        return this.mCachedData.getData();
    }

    public void setUpdateScheduler(CacheUpdateScheduler cacheUpdateScheduler) {
        this.f17716a = cacheUpdateScheduler;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.cache.UpdateConditionsChecker
    public boolean shouldUpdate() {
        return this.mCachedData.isEmpty() || this.mCachedData.shouldUpdateData();
    }

    protected abstract boolean shouldUpdate(T t10);

    public void updateCacheControl(long j10, long j11) {
        this.mCachedData.setExpirationPolicy(j10, j11);
    }

    public void updateData(T t10) {
        if (shouldUpdate(t10)) {
            this.mCachedData.setData(t10);
            CacheUpdateScheduler cacheUpdateScheduler = this.f17716a;
            if (cacheUpdateScheduler != null) {
                cacheUpdateScheduler.onStateUpdated();
            }
        }
    }
}
