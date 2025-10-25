package com.google.android.gms.common.api;

import m5.t;
/* loaded from: classes.dex */
public abstract class i {
    public static h a(k kVar, f fVar) {
        n5.q.l(kVar, "Result must not be null");
        n5.q.b(!kVar.d().n(), "Status code must not be SUCCESS");
        o oVar = new o(fVar, kVar);
        oVar.f(kVar);
        return oVar;
    }

    public static g b(k kVar, f fVar) {
        n5.q.l(kVar, "Result must not be null");
        p pVar = new p(fVar);
        pVar.f(kVar);
        return new m5.n(pVar);
    }

    public static h c(Status status, f fVar) {
        n5.q.l(status, "Result must not be null");
        t tVar = new t(fVar);
        tVar.f(status);
        return tVar;
    }
}
