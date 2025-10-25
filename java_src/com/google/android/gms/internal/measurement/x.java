package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    final Map f6878a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    final k0 f6879b = new k0();

    public x() {
        a(new v());
        a(new y());
        a(new z());
        a(new d0());
        a(new i0());
        a(new j0());
        a(new l0());
    }

    final void a(w wVar) {
        for (m0 m0Var : wVar.f6857a) {
            this.f6878a.put(m0Var.b().toString(), wVar);
        }
    }

    public final p b(z4 z4Var, p pVar) {
        w wVar;
        a6.l(z4Var);
        if (pVar instanceof q) {
            q qVar = (q) pVar;
            ArrayList b10 = qVar.b();
            String a10 = qVar.a();
            Map map = this.f6878a;
            if (map.containsKey(a10)) {
                wVar = (w) map.get(a10);
            } else {
                wVar = this.f6879b;
            }
            return wVar.a(a10, z4Var, b10);
        }
        return pVar;
    }
}
