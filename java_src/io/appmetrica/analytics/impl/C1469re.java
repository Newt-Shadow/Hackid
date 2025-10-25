package io.appmetrica.analytics.impl;

import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: io.appmetrica.analytics.impl.re  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1469re implements InterfaceC1066b9, InterfaceC1494se {

    /* renamed from: a  reason: collision with root package name */
    public final W6 f20527a;

    /* renamed from: b  reason: collision with root package name */
    public final AtomicLong f20528b;

    public C1469re(W6 w62) {
        this.f20527a = w62;
        this.f20528b = new AtomicLong(w62.b());
        w62.a(this);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1066b9
    public final void a(List<Integer> list) {
        this.f20528b.addAndGet(list.size());
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1066b9
    public final void b(List<Integer> list) {
        this.f20528b.addAndGet(-list.size());
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1066b9
    public final void a() {
        this.f20528b.set(this.f20527a.b());
    }

    public final long b() {
        return this.f20528b.get();
    }
}
