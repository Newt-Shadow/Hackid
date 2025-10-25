package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.AppMetricaConfig;
/* renamed from: io.appmetrica.analytics.impl.h2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1209h2 {
    public static final boolean a(Throwable th) {
        return true;
    }

    public final Ra a(Context context, AppMetricaConfig appMetricaConfig, InterfaceC1168fb interfaceC1168fb) {
        return new Ch(new C1443qc(interfaceC1168fb, appMetricaConfig), new InterfaceC1586w6() { // from class: io.appmetrica.analytics.impl.rp
            @Override // io.appmetrica.analytics.impl.InterfaceC1586w6
            public final boolean a(Throwable th) {
                return C1209h2.a(th);
            }
        }, appMetricaConfig.crashTransformer, new Y9(context));
    }
}
