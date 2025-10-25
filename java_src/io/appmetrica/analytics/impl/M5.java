package io.appmetrica.analytics.impl;

import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2.dex */
public final class M5 implements O8, InterfaceC1066b9 {

    /* renamed from: a  reason: collision with root package name */
    public final W6 f18572a;

    /* renamed from: b  reason: collision with root package name */
    public final Set f18573b;

    /* renamed from: c  reason: collision with root package name */
    public final AtomicLong f18574c;

    public M5(W6 w62) {
        Set d10;
        this.f18572a = w62;
        d10 = yc.m0.d(Integer.valueOf(EnumC1367nb.EVENT_CLIENT_EXTERNAL_ATTRIBUTION.a()), Integer.valueOf(EnumC1367nb.EVENT_TYPE_APP_UPDATE.a()), Integer.valueOf(EnumC1367nb.EVENT_TYPE_FIRST_ACTIVATION.a()), Integer.valueOf(EnumC1367nb.EVENT_TYPE_INIT.a()), Integer.valueOf(EnumC1367nb.EVENT_TYPE_SEND_AD_REVENUE_EVENT.a()), Integer.valueOf(EnumC1367nb.EVENT_TYPE_SEND_ECOMMERCE_EVENT.a()), Integer.valueOf(EnumC1367nb.EVENT_TYPE_SEND_REFERRER.a()), Integer.valueOf(EnumC1367nb.EVENT_TYPE_SEND_REVENUE_EVENT.a()));
        this.f18573b = d10;
        this.f18574c = new AtomicLong(w62.a(d10));
        w62.a(this);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1066b9
    public final void a() {
        this.f18574c.set(this.f18572a.a(this.f18573b));
    }

    @Override // io.appmetrica.analytics.impl.O8
    public final boolean b() {
        return this.f18574c.get() > 0;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1066b9
    public final void b(List<Integer> list) {
        int i10 = 0;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (Number number : list) {
                if (this.f18573b.contains(Integer.valueOf(number.intValue())) && (i10 = i10 + 1) < 0) {
                    yc.o.p();
                }
            }
        }
        this.f18574c.addAndGet(-i10);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1066b9
    public final void a(List<Integer> list) {
        int i10 = 0;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (Number number : list) {
                if (this.f18573b.contains(Integer.valueOf(number.intValue())) && (i10 = i10 + 1) < 0) {
                    yc.o.p();
                }
            }
        }
        this.f18574c.addAndGet(i10);
    }
}
