package com.google.android.gms.internal.play_billing;

import java.util.List;
/* loaded from: classes.dex */
final class n1 implements m4 {

    /* renamed from: a  reason: collision with root package name */
    private final m1 f7074a;

    private n1(m1 m1Var) {
        byte[] bArr = j2.f7023d;
        this.f7074a = m1Var;
        m1Var.f7058a = this;
    }

    public static n1 K(m1 m1Var) {
        n1 n1Var = m1Var.f7058a;
        if (n1Var != null) {
            return n1Var;
        }
        return new n1(m1Var);
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void A(int i10, int i11) {
        this.f7074a.g(i10, i11);
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void B(int i10, float f10) {
        this.f7074a.g(i10, Float.floatToRawIntBits(f10));
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void C(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f7074a.o(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += m1.x(((Long) list.get(i13)).longValue());
            }
            this.f7074a.q(i12);
            while (i11 < list.size()) {
                this.f7074a.s(((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f7074a.r(i10, ((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void D(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f7074a.o(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                ((Double) list.get(i13)).doubleValue();
                i12 += 8;
            }
            this.f7074a.q(i12);
            while (i11 < list.size()) {
                this.f7074a.j(Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f7074a.i(i10, Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void E(int i10, long j10) {
        this.f7074a.r(i10, j10);
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void F(int i10) {
        this.f7074a.o(i10, 3);
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void G(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f7074a.o(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                ((Float) list.get(i13)).floatValue();
                i12 += 4;
            }
            this.f7074a.q(i12);
            while (i11 < list.size()) {
                this.f7074a.h(Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f7074a.g(i10, Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void H(int i10, long j10) {
        this.f7074a.i(i10, j10);
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void I(int i10, Object obj, q3 q3Var) {
        m1 m1Var = this.f7074a;
        m1Var.o(i10, 3);
        q3Var.e((f3) obj, m1Var.f7058a);
        m1Var.o(i10, 4);
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void J(int i10, long j10) {
        this.f7074a.r(i10, (j10 >> 63) ^ (j10 + j10));
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void a(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f7074a.o(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                ((Long) list.get(i13)).longValue();
                i12 += 8;
            }
            this.f7074a.q(i12);
            while (i11 < list.size()) {
                this.f7074a.j(((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f7074a.i(i10, ((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void b(int i10, int i11) {
        this.f7074a.g(i10, i11);
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void c(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f7074a.o(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += m1.w(((Integer) list.get(i13)).intValue());
            }
            this.f7074a.q(i12);
            while (i11 < list.size()) {
                this.f7074a.q(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f7074a.p(i10, ((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void d(int i10, int i11) {
        this.f7074a.k(i10, i11);
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void e(int i10, List list) {
        int i11 = 0;
        if (list instanceof o2) {
            o2 o2Var = (o2) list;
            while (i11 < list.size()) {
                Object P = o2Var.P(i11);
                if (P instanceof String) {
                    this.f7074a.n(i10, (String) P);
                } else {
                    this.f7074a.f(i10, (e1) P);
                }
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f7074a.n(i10, (String) list.get(i11));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void f(int i10, double d10) {
        this.f7074a.i(i10, Double.doubleToRawLongBits(d10));
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void g(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f7074a.o(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                int intValue = ((Integer) list.get(i13)).intValue();
                i12 += m1.w((intValue >> 31) ^ (intValue + intValue));
            }
            this.f7074a.q(i12);
            while (i11 < list.size()) {
                m1 m1Var = this.f7074a;
                int intValue2 = ((Integer) list.get(i11)).intValue();
                m1Var.q((intValue2 >> 31) ^ (intValue2 + intValue2));
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            m1 m1Var2 = this.f7074a;
            int intValue3 = ((Integer) list.get(i11)).intValue();
            m1Var2.p(i10, (intValue3 >> 31) ^ (intValue3 + intValue3));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void h(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f7074a.o(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += m1.x(((Long) list.get(i13)).longValue());
            }
            this.f7074a.q(i12);
            while (i11 < list.size()) {
                this.f7074a.s(((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f7074a.r(i10, ((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void i(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f7074a.o(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                ((Integer) list.get(i13)).intValue();
                i12 += 4;
            }
            this.f7074a.q(i12);
            while (i11 < list.size()) {
                this.f7074a.h(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f7074a.g(i10, ((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void j(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f7074a.o(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                long longValue = ((Long) list.get(i13)).longValue();
                i12 += m1.x((longValue >> 63) ^ (longValue + longValue));
            }
            this.f7074a.q(i12);
            while (i11 < list.size()) {
                m1 m1Var = this.f7074a;
                long longValue2 = ((Long) list.get(i11)).longValue();
                m1Var.s((longValue2 >> 63) ^ (longValue2 + longValue2));
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            m1 m1Var2 = this.f7074a;
            long longValue3 = ((Long) list.get(i11)).longValue();
            m1Var2.r(i10, (longValue3 >> 63) ^ (longValue3 + longValue3));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void k(int i10, int i11) {
        this.f7074a.p(i10, i11);
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void l(int i10, List list) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.f7074a.f(i10, (e1) list.get(i11));
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void m(int i10, boolean z10) {
        this.f7074a.e(i10, z10);
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void n(int i10, e1 e1Var) {
        this.f7074a.f(i10, e1Var);
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void o(int i10, int i11) {
        this.f7074a.p(i10, (i11 >> 31) ^ (i11 + i11));
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void p(int i10, String str) {
        this.f7074a.n(i10, str);
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void q(int i10, long j10) {
        this.f7074a.r(i10, j10);
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void r(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f7074a.o(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                ((Boolean) list.get(i13)).booleanValue();
                i12++;
            }
            this.f7074a.q(i12);
            while (i11 < list.size()) {
                this.f7074a.d(((Boolean) list.get(i11)).booleanValue() ? (byte) 1 : (byte) 0);
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f7074a.e(i10, ((Boolean) list.get(i11)).booleanValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void s(int i10, long j10) {
        this.f7074a.i(i10, j10);
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void t(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f7074a.o(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                ((Integer) list.get(i13)).intValue();
                i12 += 4;
            }
            this.f7074a.q(i12);
            while (i11 < list.size()) {
                this.f7074a.h(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f7074a.g(i10, ((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void u(int i10, Object obj, q3 q3Var) {
        f3 f3Var = (f3) obj;
        j1 j1Var = (j1) this.f7074a;
        j1Var.q((i10 << 3) | 2);
        j1Var.q(((o0) f3Var).b(q3Var));
        q3Var.e(f3Var, j1Var.f7058a);
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void v(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f7074a.o(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += m1.x(((Integer) list.get(i13)).intValue());
            }
            this.f7074a.q(i12);
            while (i11 < list.size()) {
                this.f7074a.l(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f7074a.k(i10, ((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void w(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f7074a.o(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += m1.x(((Integer) list.get(i13)).intValue());
            }
            this.f7074a.q(i12);
            while (i11 < list.size()) {
                this.f7074a.l(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f7074a.k(i10, ((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void x(int i10) {
        this.f7074a.o(i10, 4);
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void y(int i10, int i11) {
        this.f7074a.k(i10, i11);
    }

    @Override // com.google.android.gms.internal.play_billing.m4
    public final void z(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f7074a.o(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                ((Long) list.get(i13)).longValue();
                i12 += 8;
            }
            this.f7074a.q(i12);
            while (i11 < list.size()) {
                this.f7074a.j(((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f7074a.i(i10, ((Long) list.get(i11)).longValue());
            i11++;
        }
    }
}
