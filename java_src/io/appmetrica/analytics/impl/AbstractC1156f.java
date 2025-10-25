package io.appmetrica.analytics.impl;

import android.content.Context;
/* renamed from: io.appmetrica.analytics.impl.f  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1156f implements InterfaceC1584w4 {

    /* renamed from: a  reason: collision with root package name */
    public final Context f19612a;

    /* renamed from: b  reason: collision with root package name */
    public final C1671zg f19613b;

    public AbstractC1156f(Context context, C1671zg c1671zg) {
        this.f19612a = context.getApplicationContext();
        this.f19613b = c1671zg;
        c1671zg.a(this);
        C1665za.j().m().b(this);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1584w4
    public final void a(C1138e6 c1138e6, G4 g42) {
        b(c1138e6, g42);
    }

    public final C1671zg b() {
        return this.f19613b;
    }

    public abstract void b(C1138e6 c1138e6, G4 g42);

    public final Context c() {
        return this.f19612a;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1584w4
    public final void a() {
        this.f19613b.b(this);
        C1665za.E.l().a(this);
    }
}
