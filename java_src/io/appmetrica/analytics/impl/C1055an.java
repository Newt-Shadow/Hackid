package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage;
import java.util.Arrays;
/* renamed from: io.appmetrica.analytics.impl.an  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1055an implements TempCacheStorage.Entry {

    /* renamed from: a  reason: collision with root package name */
    public final long f19407a;

    /* renamed from: b  reason: collision with root package name */
    public final String f19408b;

    /* renamed from: c  reason: collision with root package name */
    public final long f19409c;

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f19410d;

    public C1055an(long j10, String str, long j11, byte[] bArr) {
        this.f19407a = j10;
        this.f19408b = str;
        this.f19409c = j11;
        this.f19410d = bArr;
    }

    public final boolean equals(Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!kotlin.jvm.internal.m.a(C1055an.class, cls)) {
            return false;
        }
        if (obj != null) {
            C1055an c1055an = (C1055an) obj;
            if (this.f19407a != c1055an.f19407a || !kotlin.jvm.internal.m.a(this.f19408b, c1055an.f19408b) || this.f19409c != c1055an.f19409c) {
                return false;
            }
            return Arrays.equals(this.f19410d, c1055an.f19410d);
        }
        throw new NullPointerException("null cannot be cast to non-null type io.appmetrica.analytics.impl.db.storage.TempCacheEntry");
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage.Entry
    public final byte[] getData() {
        return this.f19410d;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage.Entry
    public final long getId() {
        return this.f19407a;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage.Entry
    public final String getScope() {
        return this.f19408b;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage.Entry
    public final long getTimestamp() {
        return this.f19409c;
    }

    public final int hashCode() {
        int hashCode = this.f19408b.hashCode();
        int hashCode2 = Long.hashCode(this.f19409c);
        return Arrays.hashCode(this.f19410d) + ((hashCode2 + ((hashCode + (Long.hashCode(this.f19407a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "TempCacheEntry(id=" + this.f19407a + ", scope='" + this.f19408b + "', timestamp=" + this.f19409c + ", data=array[" + this.f19410d.length + "])";
    }
}
