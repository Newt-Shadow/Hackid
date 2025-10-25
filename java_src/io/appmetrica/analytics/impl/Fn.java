package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class Fn extends R4 {

    /* renamed from: b  reason: collision with root package name */
    public final P6 f18238b;

    public Fn(O4 o42, P6 p62) {
        super(o42);
        this.f18238b = p62;
    }

    @Override // io.appmetrica.analytics.impl.R4
    public final boolean a(C1138e6 c1138e6, L4 l42) {
        F4 f42 = l42.f18511b.f18686d.f17958a;
        this.f18238b.a(f42.f18207i);
        Vb l10 = C1665za.E.l();
        boolean z10 = true;
        if (Boolean.TRUE.equals(f42.f18200b)) {
            l10.a(true);
        } else {
            if (Boolean.FALSE.equals(f42.f18200b)) {
                l10.a(false);
            }
        }
        l10.a(f42.f18201c);
        Boolean bool = f42.f18212n;
        O b10 = C1665za.E.b();
        if (bool != null) {
            z10 = bool.booleanValue();
        }
        b10.b(z10);
        return false;
    }
}
