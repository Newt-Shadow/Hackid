package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import io.appmetrica.analytics.coreutils.internal.time.TimePassedChecker;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
/* loaded from: classes2.dex */
public final class Rj extends C1386o5 {
    public Rj(Context context, Ql ql, C1212h5 c1212h5, F4 f42, InterfaceC1248ih interfaceC1248ih, AbstractC1336m5 abstractC1336m5, C1187g5 c1187g5) {
        this(context, c1212h5, new C1107d0(), new TimePassedChecker(), new C1510t5(context, c1212h5, f42, abstractC1336m5, ql, interfaceC1248ih, C1665za.j().w().d(), PackageManagerUtils.getAppVersionCodeInt(context), C1665za.j().k(), c1187g5), f42);
    }

    @Override // io.appmetrica.analytics.impl.C1386o5, io.appmetrica.analytics.impl.Qa
    public final CounterConfigurationReporterType c() {
        return CounterConfigurationReporterType.SELF_SDK;
    }

    public Rj(Context context, C1212h5 c1212h5, C1107d0 c1107d0, TimePassedChecker timePassedChecker, C1510t5 c1510t5, F4 f42) {
        super(context, c1212h5, c1107d0, timePassedChecker, c1510t5, f42);
    }
}
