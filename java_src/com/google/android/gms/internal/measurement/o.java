package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class o extends j {

    /* renamed from: c  reason: collision with root package name */
    protected final List f6589c;

    /* renamed from: d  reason: collision with root package name */
    protected final List f6590d;

    /* renamed from: e  reason: collision with root package name */
    protected z4 f6591e;

    private o(o oVar) {
        super(oVar.f6443a);
        ArrayList arrayList = new ArrayList(oVar.f6589c.size());
        this.f6589c = arrayList;
        arrayList.addAll(oVar.f6589c);
        ArrayList arrayList2 = new ArrayList(oVar.f6590d.size());
        this.f6590d = arrayList2;
        arrayList2.addAll(oVar.f6590d);
        this.f6591e = oVar.f6591e;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final p a(z4 z4Var, List list) {
        z4 c10 = this.f6591e.c();
        int i10 = 0;
        while (true) {
            List list2 = this.f6589c;
            if (i10 >= list2.size()) {
                break;
            }
            if (i10 < list.size()) {
                c10.f((String) list2.get(i10), z4Var.a((p) list.get(i10)));
            } else {
                c10.f((String) list2.get(i10), p.f6622j0);
            }
            i10++;
        }
        for (p pVar : this.f6590d) {
            p a10 = c10.a(pVar);
            if (a10 instanceof q) {
                a10 = c10.a(pVar);
            }
            if (a10 instanceof h) {
                return ((h) a10).a();
            }
        }
        return p.f6622j0;
    }

    @Override // com.google.android.gms.internal.measurement.j, com.google.android.gms.internal.measurement.p
    public final p r() {
        return new o(this);
    }

    public o(String str, List list, List list2, z4 z4Var) {
        super(str);
        this.f6589c = new ArrayList();
        this.f6591e = z4Var;
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.f6589c.add(((p) it.next()).f());
            }
        }
        this.f6590d = new ArrayList(list2);
    }
}
