package io.appmetrica.analytics.impl;

import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2.dex */
public final class Qb {

    /* renamed from: a  reason: collision with root package name */
    public final X2 f18814a;

    /* renamed from: b  reason: collision with root package name */
    public final C1234i2 f18815b;

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList f18816c;

    public Qb(X2 x22, C1234i2 c1234i2) {
        ArrayList arrayList = new ArrayList();
        this.f18816c = arrayList;
        this.f18814a = x22;
        arrayList.add(x22);
        this.f18815b = c1234i2;
        arrayList.add(c1234i2);
    }

    public final synchronized void a() {
        Iterator it = this.f18816c.iterator();
        while (it.hasNext()) {
            ((InterfaceC1152ek) it.next()).onCreate();
        }
    }

    public final synchronized void a(C1640ya c1640ya) {
        this.f18816c.add(c1640ya);
    }
}
