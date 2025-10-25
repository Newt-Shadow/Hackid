package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Ll extends AbstractC1063b6 {

    /* renamed from: b  reason: collision with root package name */
    public final R3 f18557b;

    public Ll(Context context, String str) {
        this(context, str, new SafePackageManager(), C1665za.j().e());
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1063b6, io.appmetrica.analytics.networktasks.internal.BaseRequestConfig.ComponentLoader, io.appmetrica.analytics.networktasks.internal.BaseRequestConfig.RequestConfigLoader
    /* renamed from: b */
    public final Ml load(C1038a6 c1038a6) {
        Ml ml = (Ml) super.load(c1038a6);
        Ql ql = c1038a6.f19374a;
        ml.f18609d = ql.f18833f;
        ml.f18610e = ql.f18834g;
        Kl kl = (Kl) c1038a6.componentArguments;
        String str = kl.f18501a;
        if (str != null) {
            ml.f18611f = str;
            ml.f18612g = kl.f18502b;
        }
        Map<String, String> map = kl.f18503c;
        ml.f18613h = map;
        ml.f18614i = (J3) this.f18557b.a(new J3(map, EnumC1065b8.f19425c));
        Kl kl2 = (Kl) c1038a6.componentArguments;
        ml.f18616k = kl2.f18504d;
        ml.f18615j = kl2.f18505e;
        Ql ql2 = c1038a6.f19374a;
        ml.f18617l = ql2.f18843p;
        ml.f18618m = ql2.f18845r;
        long j10 = ql2.f18849v;
        if (ml.f18619n == 0) {
            ml.f18619n = j10;
        }
        return ml;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.BaseRequestConfig.ComponentLoader
    public final BaseRequestConfig createBlankConfig() {
        return new Ml();
    }

    public Ll(Context context, String str, SafePackageManager safePackageManager, R3 r32) {
        super(context, str, safePackageManager);
        this.f18557b = r32;
    }

    public final Ml a() {
        return new Ml();
    }
}
