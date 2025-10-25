package io.appmetrica.analytics.coreapi.internal.data;

import java.util.Collection;
/* loaded from: classes2.dex */
public interface TempCacheStorage {

    /* loaded from: classes2.dex */
    public interface Entry {
        byte[] getData();

        long getId();

        String getScope();

        long getTimestamp();
    }

    Entry get(String str);

    Collection<Entry> get(String str, int i10);

    long put(String str, long j10, byte[] bArr);

    void remove(long j10);

    void removeOlderThan(String str, long j10);
}
