package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class c9 extends j {

    /* renamed from: c  reason: collision with root package name */
    private final c f6340c;

    public c9(c cVar) {
        super("internal.eventLogger");
        this.f6340c = cVar;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final p a(z4 z4Var, List list) {
        Map hashMap;
        a6.a(this.f6443a, 3, list);
        String f10 = z4Var.a((p) list.get(0)).f();
        long i10 = (long) a6.i(z4Var.a((p) list.get(1)).g().doubleValue());
        p a10 = z4Var.a((p) list.get(2));
        if (a10 instanceof m) {
            hashMap = a6.k((m) a10);
        } else {
            hashMap = new HashMap();
        }
        this.f6340c.e(f10, i10, hashMap);
        return p.f6622j0;
    }
}
