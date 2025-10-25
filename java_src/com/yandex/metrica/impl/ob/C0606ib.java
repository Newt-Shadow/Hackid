package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0935w;
/* renamed from: com.yandex.metrica.impl.ob.ib  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0606ib {

    /* renamed from: a  reason: collision with root package name */
    private Uh f12599a;

    /* renamed from: b  reason: collision with root package name */
    private C0556gb f12600b;

    /* renamed from: c  reason: collision with root package name */
    private final C0935w f12601c;

    /* renamed from: d  reason: collision with root package name */
    private final C0581hb f12602d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.ib$a */
    /* loaded from: classes2.dex */
    public static final class a implements C0935w.b {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.C0935w.b
        public final void a(C0935w.a aVar) {
            C0606ib.this.b();
        }
    }

    public C0606ib(C0935w c0935w, C0581hb c0581hb) {
        this.f12601c = c0935w;
        this.f12602d = c0581hb;
    }

    public synchronized void b(C0787pi c0787pi) {
        Uh uh;
        if (!kotlin.jvm.internal.m.a(c0787pi.m(), this.f12599a)) {
            this.f12599a = c0787pi.m();
            C0556gb c0556gb = this.f12600b;
            if (c0556gb != null) {
                c0556gb.a();
            }
            this.f12600b = null;
            if (a() && this.f12600b == null && (uh = this.f12599a) != null) {
                this.f12600b = this.f12602d.a(uh);
            }
        }
    }

    public final synchronized void a(C0787pi c0787pi) {
        this.f12599a = c0787pi.m();
        this.f12601c.a(new a());
        b();
    }

    private final boolean a() {
        boolean d10;
        Uh uh = this.f12599a;
        if (uh != null) {
            C0935w.a c10 = this.f12601c.c();
            kotlin.jvm.internal.m.d(c10, "applicationStateProvider.currentState");
            if (uh.c().length() > 0) {
                int ordinal = c10.ordinal();
                if (ordinal == 0 || ordinal == 1) {
                    d10 = uh.d();
                } else if (ordinal != 2) {
                    throw new xc.i();
                } else {
                    d10 = true;
                }
                return d10;
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void b() {
        Uh uh;
        boolean z10 = this.f12600b != null;
        if (a() == z10) {
            return;
        }
        if (z10) {
            C0556gb c0556gb = this.f12600b;
            if (c0556gb != null) {
                c0556gb.a();
            }
            this.f12600b = null;
            return;
        }
        if (this.f12600b == null && (uh = this.f12599a) != null) {
            this.f12600b = this.f12602d.a(uh);
        }
    }
}
