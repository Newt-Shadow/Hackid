package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.HostRetryInfoProvider;
/* renamed from: com.yandex.metrica.impl.ob.pd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0782pd implements HostRetryInfoProvider {

    /* renamed from: a  reason: collision with root package name */
    private final C0504e9 f13117a;

    /* renamed from: b  reason: collision with root package name */
    private final EnumC0806qd f13118b;

    public C0782pd(C0504e9 c0504e9, EnumC0806qd enumC0806qd) {
        this.f13117a = c0504e9;
        this.f13118b = enumC0806qd;
    }

    @Override // com.yandex.metrica.networktasks.api.HostRetryInfoProvider
    public long getLastAttemptTimeSeconds() {
        return this.f13117a.a(this.f13118b, 0L);
    }

    @Override // com.yandex.metrica.networktasks.api.HostRetryInfoProvider
    public int getNextSendAttemptNumber() {
        return this.f13117a.a(this.f13118b, 1);
    }

    @Override // com.yandex.metrica.networktasks.api.HostRetryInfoProvider
    public void saveLastAttemptTimeSeconds(long j10) {
        this.f13117a.b(this.f13118b, j10);
    }

    @Override // com.yandex.metrica.networktasks.api.HostRetryInfoProvider
    public void saveNextSendAttemptNumber(int i10) {
        this.f13117a.b(this.f13118b, i10);
    }
}
