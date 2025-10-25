package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.HashMap;
/* renamed from: io.appmetrica.analytics.impl.d0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1107d0 {

    /* renamed from: a  reason: collision with root package name */
    public final HashMap f19499a = new HashMap();

    public final synchronized C1082c0 a(C1212h5 c1212h5, PublicLogger publicLogger, Ue ue2) {
        C1082c0 c1082c0;
        c1082c0 = (C1082c0) this.f19499a.get(c1212h5.toString());
        if (c1082c0 == null) {
            C1057b0 d10 = ue2.d();
            c1082c0 = new C1082c0(d10.f19415a, d10.f19416b, new C1103cl(publicLogger, "[App Environment]"));
            this.f19499a.put(c1212h5.toString(), c1082c0);
        }
        return c1082c0;
    }

    public final synchronized void a(C1057b0 c1057b0, Ue ue2) {
        ue2.a(c1057b0).b();
    }
}
