package io.appmetrica.analytics.impl;

import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.e5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1137e5 {

    /* renamed from: a  reason: collision with root package name */
    public final M5 f19568a;

    /* renamed from: b  reason: collision with root package name */
    public final Qc f19569b;

    /* renamed from: c  reason: collision with root package name */
    public final Qc f19570c;

    public C1137e5(W6 w62, Og og) {
        C1469re c1469re = new C1469re(w62);
        this.f19568a = new M5(w62);
        this.f19569b = new Qc(c1469re, new C1112d5(og));
        this.f19570c = new Qc(c1469re, C1087c5.f19468a);
    }

    public final List<O8> a() {
        List<O8> k10;
        k10 = yc.o.k(this.f19568a, this.f19569b);
        return k10;
    }

    public final List<O8> b() {
        List<O8> b10;
        b10 = yc.n.b(this.f19570c);
        return b10;
    }
}
