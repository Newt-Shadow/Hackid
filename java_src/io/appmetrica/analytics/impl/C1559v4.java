package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
/* renamed from: io.appmetrica.analytics.impl.v4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1559v4 {

    /* renamed from: a  reason: collision with root package name */
    public final SystemTimeProvider f20774a;

    public C1559v4() {
        this(new SystemTimeProvider());
    }

    public final void a() {
        this.f20774a.elapsedRealtime();
    }

    public C1559v4(SystemTimeProvider systemTimeProvider) {
        this.f20774a = systemTimeProvider;
    }
}
