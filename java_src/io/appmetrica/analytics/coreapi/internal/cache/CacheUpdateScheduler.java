package io.appmetrica.analytics.coreapi.internal.cache;
/* loaded from: classes2.dex */
public interface CacheUpdateScheduler {
    void onStateUpdated();

    void scheduleUpdateIfNeededNow();
}
