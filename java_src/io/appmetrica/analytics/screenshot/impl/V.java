package io.appmetrica.analytics.screenshot.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class V implements Converter {

    /* renamed from: a  reason: collision with root package name */
    public final C1685g f21399a;

    /* renamed from: b  reason: collision with root package name */
    public final Z f21400b;

    /* renamed from: c  reason: collision with root package name */
    public final C1695q f21401c;

    public V() {
        this(null, null, null, 7, null);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final N fromModel(T t10) {
        N n10 = new N();
        C1683e c1683e = t10.f21393a;
        n10.f21386a = c1683e != null ? this.f21399a.fromModel(c1683e) : null;
        X x10 = t10.f21394b;
        n10.f21387b = x10 != null ? this.f21400b.fromModel(x10) : null;
        C1693o c1693o = t10.f21395c;
        n10.f21388c = c1693o != null ? this.f21401c.fromModel(c1693o) : null;
        return n10;
    }

    public V(C1685g c1685g, Z z10, C1695q c1695q) {
        this.f21399a = c1685g;
        this.f21400b = z10;
        this.f21401c = c1695q;
    }

    public /* synthetic */ V(C1685g c1685g, Z z10, C1695q c1695q, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new C1685g() : c1685g, (i10 & 2) != 0 ? new Z() : z10, (i10 & 4) != 0 ? new C1695q() : c1695q);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final T toModel(N n10) {
        C1683e c1683e;
        X x10;
        K k10 = n10.f21386a;
        if (k10 != null) {
            this.f21399a.getClass();
            c1683e = new C1683e(k10.f21377a);
        } else {
            c1683e = null;
        }
        M m10 = n10.f21387b;
        if (m10 != null) {
            this.f21400b.getClass();
            x10 = new X(m10.f21383a, m10.f21384b);
        } else {
            x10 = null;
        }
        L l10 = n10.f21388c;
        return new T(c1683e, x10, l10 != null ? this.f21401c.toModel(l10) : null);
    }
}
