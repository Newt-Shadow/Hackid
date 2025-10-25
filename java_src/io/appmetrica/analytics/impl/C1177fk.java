package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
/* renamed from: io.appmetrica.analytics.impl.fk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1177fk {

    /* renamed from: a  reason: collision with root package name */
    public final SystemTimeProvider f19650a;

    /* renamed from: b  reason: collision with root package name */
    public final long f19651b;

    public C1177fk() {
        SystemTimeProvider systemTimeProvider = new SystemTimeProvider();
        this.f19650a = systemTimeProvider;
        this.f19651b = systemTimeProvider.currentTimeMillis();
    }
}
