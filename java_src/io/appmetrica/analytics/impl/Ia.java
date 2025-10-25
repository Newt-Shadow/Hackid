package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.HostRetryInfoProvider;
/* loaded from: classes2.dex */
public final class Ia implements HostRetryInfoProvider {

    /* renamed from: a  reason: collision with root package name */
    public final Xe f18382a;

    /* renamed from: b  reason: collision with root package name */
    public final Sd f18383b;

    public Ia(Xe xe2, Sd sd2) {
        this.f18382a = xe2;
        this.f18383b = sd2;
    }

    public final Sd a() {
        return this.f18383b;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.HostRetryInfoProvider
    public final long getLastAttemptTimeSeconds() {
        return this.f18382a.a(this.f18383b, 0L);
    }

    @Override // io.appmetrica.analytics.networktasks.internal.HostRetryInfoProvider
    public final int getNextSendAttemptNumber() {
        return this.f18382a.a(this.f18383b, 1);
    }

    @Override // io.appmetrica.analytics.networktasks.internal.HostRetryInfoProvider
    public final void saveLastAttemptTimeSeconds(long j10) {
        this.f18382a.b(this.f18383b, j10).b();
    }

    @Override // io.appmetrica.analytics.networktasks.internal.HostRetryInfoProvider
    public final void saveNextSendAttemptNumber(int i10) {
        this.f18382a.b(this.f18383b, i10).b();
    }
}
