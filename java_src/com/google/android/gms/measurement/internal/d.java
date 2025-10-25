package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.re;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d extends c {

    /* renamed from: g  reason: collision with root package name */
    private final com.google.android.gms.internal.measurement.m4 f7407g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ e f7408h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(e eVar, String str, int i10, com.google.android.gms.internal.measurement.m4 m4Var) {
        super(str, i10);
        Objects.requireNonNull(eVar);
        this.f7408h = eVar;
        this.f7407g = m4Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.measurement.internal.c
    public final int a() {
        return this.f7407g.D();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.measurement.internal.c
    public final boolean b() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.measurement.internal.c
    public final boolean c() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean k(Long l10, Long l11, com.google.android.gms.internal.measurement.w7 w7Var, boolean z10) {
        Object[] objArr;
        Object obj;
        re.a();
        w6 w6Var = this.f7408h.f8322a;
        boolean H = w6Var.w().H(this.f7303a, c5.E0);
        com.google.android.gms.internal.measurement.m4 m4Var = this.f7407g;
        boolean G = m4Var.G();
        boolean H2 = m4Var.H();
        boolean J = m4Var.J();
        if (!G && !H2 && !J) {
            objArr = null;
        } else {
            objArr = 1;
        }
        Boolean bool = null;
        Integer num = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        if (z10 && objArr == null) {
            n5 w10 = w6Var.a().w();
            Integer valueOf = Integer.valueOf(this.f7304b);
            if (m4Var.C()) {
                num = Integer.valueOf(m4Var.D());
            }
            w10.c("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", valueOf, num);
            return true;
        }
        com.google.android.gms.internal.measurement.g4 F = m4Var.F();
        boolean H3 = F.H();
        if (w7Var.H()) {
            if (!F.E()) {
                w6Var.a().r().b("No number filter for long property. property", w6Var.D().c(w7Var.E()));
            } else {
                bool = c.e(c.g(w7Var.I(), F.F()), H3);
            }
        } else if (w7Var.L()) {
            if (!F.E()) {
                w6Var.a().r().b("No number filter for double property. property", w6Var.D().c(w7Var.E()));
            } else {
                bool = c.e(c.h(w7Var.M(), F.F()), H3);
            }
        } else if (w7Var.F()) {
            if (!F.C()) {
                if (!F.E()) {
                    w6Var.a().r().b("No string or number filter defined. property", w6Var.D().c(w7Var.E()));
                } else if (td.O(w7Var.G())) {
                    bool = c.e(c.i(w7Var.G(), F.F()), H3);
                } else {
                    w6Var.a().r().c("Invalid user property value for Numeric number filter. property, value", w6Var.D().c(w7Var.E()), w7Var.G());
                }
            } else {
                bool = c.e(c.f(w7Var.G(), F.D(), w6Var.a()), H3);
            }
        } else {
            w6Var.a().r().b("User property has no value, property", w6Var.D().c(w7Var.E()));
        }
        n5 w11 = w6Var.a().w();
        if (bool == null) {
            obj = "null";
        } else {
            obj = bool;
        }
        w11.b("Property filter result", obj);
        if (bool == null) {
            return false;
        }
        this.f7305c = Boolean.TRUE;
        if (J && !bool.booleanValue()) {
            return true;
        }
        if (!z10 || m4Var.G()) {
            this.f7306d = bool;
        }
        if (bool.booleanValue() && objArr != null && w7Var.C()) {
            long D = w7Var.D();
            if (l10 != null) {
                D = l10.longValue();
            }
            if (H && m4Var.G() && !m4Var.H() && l11 != null) {
                D = l11.longValue();
            }
            if (m4Var.H()) {
                this.f7308f = Long.valueOf(D);
            } else {
                this.f7307e = Long.valueOf(D);
            }
        }
        return true;
    }
}
