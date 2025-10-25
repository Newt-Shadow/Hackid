package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.h0;
import com.google.crypto.tink.shaded.protobuf.p1;
import com.google.crypto.tink.shaded.protobuf.q1;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class l implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private final k f8501a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8502a;

        static {
            int[] iArr = new int[p1.b.values().length];
            f8502a = iArr;
            try {
                iArr[p1.b.f8554j.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8502a[p1.b.f8553i.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8502a[p1.b.f8551g.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8502a[p1.b.f8561q.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8502a[p1.b.f8563s.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8502a[p1.b.f8559o.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f8502a[p1.b.f8552h.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f8502a[p1.b.f8549e.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f8502a[p1.b.f8562r.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f8502a[p1.b.f8564t.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f8502a[p1.b.f8550f.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f8502a[p1.b.f8555k.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private l(k kVar) {
        k kVar2 = (k) z.b(kVar, "output");
        this.f8501a = kVar2;
        kVar2.f8489a = this;
    }

    public static l P(k kVar) {
        l lVar = kVar.f8489a;
        if (lVar != null) {
            return lVar;
        }
        return new l(kVar);
    }

    private void Q(int i10, h0.a aVar, Map map) {
        int[] iArr = a.f8502a;
        throw null;
    }

    private void R(int i10, Object obj) {
        if (obj instanceof String) {
            this.f8501a.C0(i10, (String) obj);
        } else {
            this.f8501a.a0(i10, (h) obj);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void A(int i10, float f10) {
        this.f8501a.j0(i10, f10);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void B(int i10) {
        this.f8501a.D0(i10, 4);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void C(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f8501a.D0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += k.G(((Integer) list.get(i13)).intValue());
            }
            this.f8501a.F0(i12);
            while (i11 < list.size()) {
                this.f8501a.z0(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f8501a.y0(i10, ((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void D(int i10, int i11) {
        this.f8501a.d0(i10, i11);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void E(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f8501a.D0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += k.w(((Long) list.get(i13)).longValue());
            }
            this.f8501a.F0(i12);
            while (i11 < list.size()) {
                this.f8501a.q0(((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f8501a.p0(i10, ((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void F(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f8501a.D0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += k.k(((Integer) list.get(i13)).intValue());
            }
            this.f8501a.F0(i12);
            while (i11 < list.size()) {
                this.f8501a.e0(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f8501a.d0(i10, ((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void G(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f8501a.D0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += k.i(((Double) list.get(i13)).doubleValue());
            }
            this.f8501a.F0(i12);
            while (i11 < list.size()) {
                this.f8501a.c0(((Double) list.get(i11)).doubleValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f8501a.b0(i10, ((Double) list.get(i11)).doubleValue());
            i11++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void H(int i10, int i11) {
        this.f8501a.y0(i10, i11);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void I(int i10, List list) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.f8501a.a0(i10, (h) list.get(i11));
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void J(int i10, Object obj, d1 d1Var) {
        this.f8501a.r0(i10, (o0) obj, d1Var);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void K(int i10, h0.a aVar, Map map) {
        if (this.f8501a.T()) {
            Q(i10, aVar, map);
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            this.f8501a.D0(i10, 2);
            this.f8501a.F0(h0.a(aVar, entry.getKey(), entry.getValue()));
            h0.b(this.f8501a, aVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void L(int i10, Object obj, d1 d1Var) {
        this.f8501a.l0(i10, (o0) obj, d1Var);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void M(int i10, List list, d1 d1Var) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            L(i10, list.get(i11), d1Var);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void N(int i10, List list, d1 d1Var) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            J(i10, list.get(i11), d1Var);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void O(int i10, h hVar) {
        this.f8501a.a0(i10, hVar);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void a(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f8501a.D0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += k.q(((Float) list.get(i13)).floatValue());
            }
            this.f8501a.F0(i12);
            while (i11 < list.size()) {
                this.f8501a.k0(((Float) list.get(i11)).floatValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f8501a.j0(i10, ((Float) list.get(i11)).floatValue());
            i11++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void b(int i10, int i11) {
        this.f8501a.E0(i10, i11);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public final void c(int i10, Object obj) {
        if (obj instanceof h) {
            this.f8501a.t0(i10, (h) obj);
        } else {
            this.f8501a.s0(i10, (o0) obj);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void d(int i10, int i11) {
        this.f8501a.f0(i10, i11);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void e(int i10, double d10) {
        this.f8501a.b0(i10, d10);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void f(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f8501a.D0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += k.E(((Long) list.get(i13)).longValue());
            }
            this.f8501a.F0(i12);
            while (i11 < list.size()) {
                this.f8501a.x0(((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f8501a.w0(i10, ((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void g(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f8501a.D0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += k.P(((Long) list.get(i13)).longValue());
            }
            this.f8501a.F0(i12);
            while (i11 < list.size()) {
                this.f8501a.H0(((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f8501a.G0(i10, ((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void h(int i10, long j10) {
        this.f8501a.h0(i10, j10);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public q1.a i() {
        return q1.a.ASCENDING;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void j(int i10, List list) {
        int i11 = 0;
        if (list instanceof d0) {
            d0 d0Var = (d0) list;
            while (i11 < list.size()) {
                R(i10, d0Var.v(i11));
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f8501a.C0(i10, (String) list.get(i11));
            i11++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void k(int i10, String str) {
        this.f8501a.C0(i10, str);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void l(int i10, long j10) {
        this.f8501a.G0(i10, j10);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void m(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f8501a.D0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += k.u(((Integer) list.get(i13)).intValue());
            }
            this.f8501a.F0(i12);
            while (i11 < list.size()) {
                this.f8501a.o0(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f8501a.n0(i10, ((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void n(int i10, long j10) {
        this.f8501a.p0(i10, j10);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void o(int i10, boolean z10) {
        this.f8501a.Y(i10, z10);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void p(int i10, int i11) {
        this.f8501a.u0(i10, i11);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void q(int i10) {
        this.f8501a.D0(i10, 3);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void r(int i10, int i11) {
        this.f8501a.n0(i10, i11);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void s(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f8501a.D0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += k.o(((Long) list.get(i13)).longValue());
            }
            this.f8501a.F0(i12);
            while (i11 < list.size()) {
                this.f8501a.i0(((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f8501a.h0(i10, ((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void t(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f8501a.D0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += k.C(((Integer) list.get(i13)).intValue());
            }
            this.f8501a.F0(i12);
            while (i11 < list.size()) {
                this.f8501a.v0(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f8501a.u0(i10, ((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void u(int i10, long j10) {
        this.f8501a.w0(i10, j10);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void v(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f8501a.D0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += k.m(((Integer) list.get(i13)).intValue());
            }
            this.f8501a.F0(i12);
            while (i11 < list.size()) {
                this.f8501a.g0(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f8501a.f0(i10, ((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void w(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f8501a.D0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += k.e(((Boolean) list.get(i13)).booleanValue());
            }
            this.f8501a.F0(i12);
            while (i11 < list.size()) {
                this.f8501a.Z(((Boolean) list.get(i11)).booleanValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f8501a.Y(i10, ((Boolean) list.get(i11)).booleanValue());
            i11++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void x(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f8501a.D0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += k.N(((Integer) list.get(i13)).intValue());
            }
            this.f8501a.F0(i12);
            while (i11 < list.size()) {
                this.f8501a.F0(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f8501a.E0(i10, ((Integer) list.get(i11)).intValue());
            i11++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void y(int i10, List list, boolean z10) {
        int i11 = 0;
        if (z10) {
            this.f8501a.D0(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += k.I(((Long) list.get(i13)).longValue());
            }
            this.f8501a.F0(i12);
            while (i11 < list.size()) {
                this.f8501a.B0(((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f8501a.A0(i10, ((Long) list.get(i11)).longValue());
            i11++;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.q1
    public void z(int i10, long j10) {
        this.f8501a.A0(i10, j10);
    }
}
