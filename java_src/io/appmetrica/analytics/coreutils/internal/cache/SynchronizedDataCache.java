package io.appmetrica.analytics.coreutils.internal.cache;
/* loaded from: classes2.dex */
public abstract class SynchronizedDataCache<T> extends DataCache<T> {
    public SynchronizedDataCache(long j10, long j11, String str) {
        super(j10, j11, str);
    }

    @Override // io.appmetrica.analytics.coreutils.internal.cache.DataCache
    public synchronized T getData() {
        return (T) super.getData();
    }

    @Override // io.appmetrica.analytics.coreutils.internal.cache.DataCache, io.appmetrica.analytics.coreapi.internal.cache.UpdateConditionsChecker
    public synchronized boolean shouldUpdate() {
        return super.shouldUpdate();
    }

    @Override // io.appmetrica.analytics.coreutils.internal.cache.DataCache
    public synchronized void updateData(T t10) {
        super.updateData(t10);
    }
}
