package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.ReporterConfig;
import io.appmetrica.analytics.internal.CounterConfiguration;
/* loaded from: classes2.dex */
public final class Kc extends R2 {
    public Kc(Context context, C1645yf c1645yf, ReporterConfig reporterConfig, C1598wi c1598wi, Y9 y92) {
        this(context, c1598wi, new Gh(c1645yf, new CounterConfiguration(reporterConfig), reporterConfig.userProfileID), y92, C1509t4.j().m(), new C1628xn(), new Cg(), new G6(), new W(), new He(y92));
    }

    @Override // io.appmetrica.analytics.impl.R2
    public final String j() {
        return "[ManualReporter]";
    }

    public Kc(Context context, C1598wi c1598wi, Gh gh, Y9 y92, C1467rc c1467rc, C1628xn c1628xn, Cg cg, G6 g62, W w10, He he2) {
        super(context, c1598wi, gh, y92, c1467rc, c1628xn, cg, g62, w10, he2);
        C1509t4.j().getClass();
    }
}
