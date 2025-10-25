package com.yandex.metrica.impl.ob;

import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.eh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0512eh {

    /* renamed from: a  reason: collision with root package name */
    public final List<C0587hh> f12333a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12334b;

    /* renamed from: c  reason: collision with root package name */
    public final long f12335c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f12336d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f12337e;

    public C0512eh(List<C0587hh> list, String str, long j10, boolean z10, boolean z11) {
        this.f12333a = A2.c(list);
        this.f12334b = str;
        this.f12335c = j10;
        this.f12336d = z10;
        this.f12337e = z11;
    }

    public String toString() {
        return "SdkFingerprintingState{sdkItemList=" + this.f12333a + ", etag='" + this.f12334b + "', lastAttemptTime=" + this.f12335c + ", hasFirstCollectionOccurred=" + this.f12336d + ", shouldRetry=" + this.f12337e + '}';
    }
}
