package io.appmetrica.analytics.impl;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: io.appmetrica.analytics.impl.y6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1636y6 implements Ra {

    /* renamed from: a  reason: collision with root package name */
    public final CopyOnWriteArrayList f20958a = new CopyOnWriteArrayList();

    @Override // io.appmetrica.analytics.impl.Ra
    public final void a(Throwable th, P p10) {
        Iterator it = this.f20958a.iterator();
        while (it.hasNext()) {
            ((Ra) it.next()).a(th, p10);
        }
    }

    public final void a(Ra... raArr) {
        yc.t.w(this.f20958a, raArr);
    }

    public final void a(List<? extends Ra> list) {
        this.f20958a.addAll(list);
    }

    public final void a() {
        this.f20958a.clear();
    }
}
