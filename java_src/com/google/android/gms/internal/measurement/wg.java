package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public final class wg extends j {

    /* renamed from: c  reason: collision with root package name */
    private final c8 f6876c;

    /* renamed from: d  reason: collision with root package name */
    final Map f6877d;

    public wg(c8 c8Var) {
        super("require");
        this.f6877d = new HashMap();
        this.f6876c = c8Var;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final p a(z4 z4Var, List list) {
        p pVar;
        a6.a("require", 1, list);
        String f10 = z4Var.a((p) list.get(0)).f();
        Map map = this.f6877d;
        if (map.containsKey(f10)) {
            return (p) map.get(f10);
        }
        Map map2 = this.f6876c.f6339a;
        if (map2.containsKey(f10)) {
            try {
                pVar = (p) ((Callable) map2.get(f10)).call();
            } catch (Exception unused) {
                throw new IllegalStateException("Failed to create API implementation: ".concat(String.valueOf(f10)));
            }
        } else {
            pVar = p.f6622j0;
        }
        if (pVar instanceof j) {
            this.f6877d.put(f10, (j) pVar);
        }
        return pVar;
    }
}
