package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AnrListener;
/* renamed from: io.appmetrica.analytics.impl.uc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1542uc {

    /* renamed from: a  reason: collision with root package name */
    public int f20728a = 5;

    /* renamed from: b  reason: collision with root package name */
    public final C1131e f20729b;

    public C1542uc(Z z10) {
        this.f20729b = new C1131e(new Ob(z10));
    }

    public static final void b(AnrListener anrListener) {
        anrListener.onAppNotResponding();
    }

    public final void a(final AnrListener anrListener) {
        C1131e c1131e = this.f20729b;
        c1131e.f19550a.add(new InterfaceC1081c() { // from class: io.appmetrica.analytics.impl.aq
            @Override // io.appmetrica.analytics.impl.InterfaceC1081c
            public final void onAppNotResponding() {
                C1542uc.b(AnrListener.this);
            }
        });
    }
}
