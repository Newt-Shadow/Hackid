package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
/* renamed from: io.appmetrica.analytics.impl.r5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1460r5 {

    /* renamed from: a  reason: collision with root package name */
    public final String f20493a;

    public C1460r5(String str) {
        this.f20493a = str;
    }

    public final PublicLogger a() {
        return LoggerStorage.getOrCreatePublicLogger(this.f20493a);
    }
}
