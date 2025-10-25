package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.toggle.ConjunctiveCompositeThreadSafeToggle;
import io.appmetrica.analytics.coreutils.internal.toggle.OuterStateToggle;
import io.appmetrica.analytics.coreutils.internal.toggle.SavableToggle;
import java.util.List;
/* loaded from: classes2.dex */
public final class E {

    /* renamed from: a  reason: collision with root package name */
    public final Xe f18118a = C1665za.j().x();

    /* renamed from: b  reason: collision with root package name */
    public final SavableToggle f18119b;

    /* renamed from: c  reason: collision with root package name */
    public final OuterStateToggle f18120c;

    /* renamed from: d  reason: collision with root package name */
    public final OuterStateToggle f18121d;

    /* renamed from: e  reason: collision with root package name */
    public final ConjunctiveCompositeThreadSafeToggle f18122e;

    /* renamed from: f  reason: collision with root package name */
    public final ConjunctiveCompositeThreadSafeToggle f18123f;

    /* renamed from: g  reason: collision with root package name */
    public final SavableToggle f18124g;

    public E(Ql ql) {
        List k10;
        List k11;
        SavableToggle savableToggle = new SavableToggle("advIdsFromClientApi", new D(this));
        this.f18119b = savableToggle;
        OuterStateToggle outerStateToggle = new OuterStateToggle(false, "GAID-remote-config");
        this.f18120c = outerStateToggle;
        OuterStateToggle outerStateToggle2 = new OuterStateToggle(false, "HOAID-remote-config");
        this.f18121d = outerStateToggle2;
        k10 = yc.o.k(savableToggle, outerStateToggle);
        this.f18122e = new ConjunctiveCompositeThreadSafeToggle(k10, "GAID");
        k11 = yc.o.k(savableToggle, outerStateToggle2);
        this.f18123f = new ConjunctiveCompositeThreadSafeToggle(k11, "HOAID");
        this.f18124g = savableToggle;
        a(ql);
    }

    public final void a(Ql ql) {
        boolean z10 = ql.f18843p;
        boolean z11 = false;
        this.f18120c.update(!z10 || ql.f18841n.f18036c);
        OuterStateToggle outerStateToggle = this.f18121d;
        if (!z10 || ql.f18841n.f18038e) {
            z11 = true;
        }
        outerStateToggle.update(z11);
    }

    public final B a() {
        int i10;
        int i11 = 3;
        int i12 = 4;
        if (this.f18122e.getActualState()) {
            i10 = 1;
        } else if (this.f18119b.getActualState()) {
            i10 = !this.f18120c.getActualState() ? 3 : 4;
        } else {
            i10 = 2;
        }
        if (this.f18123f.getActualState()) {
            i11 = 1;
        } else if (!this.f18119b.getActualState()) {
            i11 = 2;
        } else if (this.f18121d.getActualState()) {
            i11 = 4;
        }
        if (this.f18124g.getActualState()) {
            i12 = 1;
        } else if (!this.f18119b.getActualState()) {
            i12 = 2;
        }
        return new B(i10, i11, i12);
    }
}
