package com.yandex.metrica.impl.ob;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.lk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0689lk {

    /* renamed from: a  reason: collision with root package name */
    private final C0429b9 f12812a;

    /* renamed from: b  reason: collision with root package name */
    private long f12813b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0689lk(C0429b9 c0429b9) {
        this.f12812a = c0429b9;
        this.f12813b = c0429b9.c(-1L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long a() {
        C0429b9 c0429b9 = this.f12812a;
        long j10 = this.f12813b + 1;
        this.f12813b = j10;
        c0429b9.f(j10);
        return this.f12813b;
    }
}
