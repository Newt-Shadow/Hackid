package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.IReporter;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class Vg extends Pg {

    /* renamed from: b  reason: collision with root package name */
    public final IReporter f19132b;

    public Vg(C1386o5 c1386o5, IReporter iReporter) {
        super(c1386o5);
        this.f19132b = iReporter;
    }

    @Override // io.appmetrica.analytics.impl.Pg
    public final boolean a(C1138e6 c1138e6) {
        Sc sc2 = (Sc) Sc.f18927c.get(c1138e6.f19574d);
        HashMap hashMap = new HashMap();
        hashMap.put("type", sc2.f18928a);
        hashMap.put("delivery_method", sc2.f18929b);
        this.f19132b.reportEvent("crash_saved", hashMap);
        return false;
    }
}
