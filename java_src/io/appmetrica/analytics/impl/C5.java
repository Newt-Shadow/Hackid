package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
/* loaded from: classes2.dex */
public final class C5 {

    /* renamed from: a  reason: collision with root package name */
    public final PublicLogger f18040a;

    public C5(String str) {
        this.f18040a = LoggerStorage.getOrCreatePublicLogger(str);
    }

    public final int a(int i10) {
        if (i10 < 100) {
            PublicLogger publicLogger = this.f18040a;
            publicLogger.warning("Value passed as maxReportsInDatabaseCount is invalid. Should be greater than or equal to 100, but was: " + i10 + ". Default value (100) will be used", new Object[0]);
            return 100;
        } else if (i10 > 10000) {
            PublicLogger publicLogger2 = this.f18040a;
            publicLogger2.warning("Value passed as maxReportsInDatabaseCount is invalid. Should be less than or equal to 10000, but was: " + i10 + ". Default value (10000) will be used", new Object[0]);
            return 10000;
        } else {
            return i10;
        }
    }
}
