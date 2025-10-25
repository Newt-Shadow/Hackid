package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage;
import java.util.Collection;
/* loaded from: classes2.dex */
public final class Zm implements TempCacheStorage {

    /* renamed from: a  reason: collision with root package name */
    public final TempCacheStorage f19357a;

    public Zm(Context context, Dm dm, TempCacheStorage tempCacheStorage) {
        this.f19357a = tempCacheStorage;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage
    public final TempCacheStorage.Entry get(String str) {
        return this.f19357a.get(str);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage
    public final long put(String str, long j10, byte[] bArr) {
        return this.f19357a.put(str, j10, bArr);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage
    public final void remove(long j10) {
        this.f19357a.remove(j10);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage
    public final void removeOlderThan(String str, long j10) {
        this.f19357a.removeOlderThan(str, j10);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage
    public final Collection<TempCacheStorage.Entry> get(String str, int i10) {
        return this.f19357a.get(str, i10);
    }
}
