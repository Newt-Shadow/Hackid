package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
public final class z4 {

    /* renamed from: a  reason: collision with root package name */
    public final z4 f6909a;

    /* renamed from: b  reason: collision with root package name */
    final x f6910b;

    /* renamed from: c  reason: collision with root package name */
    final Map f6911c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    final Map f6912d = new HashMap();

    public z4(z4 z4Var, x xVar) {
        this.f6909a = z4Var;
        this.f6910b = xVar;
    }

    public final p a(p pVar) {
        return this.f6910b.b(this, pVar);
    }

    public final p b(f fVar) {
        p pVar = p.f6622j0;
        Iterator t10 = fVar.t();
        while (t10.hasNext()) {
            pVar = this.f6910b.b(this, fVar.B(((Integer) t10.next()).intValue()));
            if (pVar instanceof h) {
                break;
            }
        }
        return pVar;
    }

    public final z4 c() {
        return new z4(this, this.f6910b);
    }

    public final boolean d(String str) {
        if (this.f6911c.containsKey(str)) {
            return true;
        }
        z4 z4Var = this.f6909a;
        if (z4Var != null) {
            return z4Var.d(str);
        }
        return false;
    }

    public final void e(String str, p pVar) {
        z4 z4Var;
        Map map = this.f6911c;
        if (!map.containsKey(str) && (z4Var = this.f6909a) != null && z4Var.d(str)) {
            z4Var.e(str, pVar);
        } else if (this.f6912d.containsKey(str)) {
        } else {
            if (pVar == null) {
                map.remove(str);
            } else {
                map.put(str, pVar);
            }
        }
    }

    public final void f(String str, p pVar) {
        if (this.f6912d.containsKey(str)) {
            return;
        }
        if (pVar == null) {
            this.f6911c.remove(str);
        } else {
            this.f6911c.put(str, pVar);
        }
    }

    public final void g(String str, p pVar) {
        f(str, pVar);
        this.f6912d.put(str, Boolean.TRUE);
    }

    public final p h(String str) {
        Map map = this.f6911c;
        if (map.containsKey(str)) {
            return (p) map.get(str);
        }
        z4 z4Var = this.f6909a;
        if (z4Var != null) {
            return z4Var.h(str);
        }
        throw new IllegalArgumentException(String.format("%s is not defined", str));
    }
}
