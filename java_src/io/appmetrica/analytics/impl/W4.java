package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
/* loaded from: classes2.dex */
public final class W4 extends Gh {
    public W4(C1645yf c1645yf) {
        super(c1645yf, new CounterConfiguration());
        b().setReporterType(CounterConfigurationReporterType.COMMUTATION);
    }

    @Override // io.appmetrica.analytics.impl.Gh
    public final boolean f() {
        return true;
    }
}
