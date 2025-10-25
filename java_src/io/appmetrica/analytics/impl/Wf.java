package io.appmetrica.analytics.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class Wf implements Sf {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1048ag f19188a;

    public Wf(C1048ag c1048ag) {
        this.f19188a = c1048ag;
    }

    @Override // io.appmetrica.analytics.impl.Sf
    public final void a() {
        List L;
        String str;
        boolean z10;
        C1048ag c1048ag = this.f19188a;
        ArrayList arrayList = c1048ag.f19390g;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            C1322lg c1322lg = (C1322lg) next;
            c1048ag.f19386c.getClass();
            if (c1322lg != null) {
                str = c1322lg.f20033a;
            } else {
                str = null;
            }
            if (str != null && str.length() != 0) {
                z10 = false;
            } else {
                z10 = true;
            }
            if (!z10) {
                arrayList2.add(next);
            }
        }
        L = yc.w.L(arrayList2);
        c1048ag.a(c1048ag.f19386c.a(L));
    }
}
