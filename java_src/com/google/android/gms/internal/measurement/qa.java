package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
final class qa implements rd {

    /* renamed from: a  reason: collision with root package name */
    private final pa f6712a;

    private qa(pa paVar) {
        byte[] bArr = ob.f6616b;
        this.f6712a = paVar;
        paVar.f6669a = this;
    }

    public static qa L(pa paVar) {
        qa qaVar = paVar.f6669a;
        if (qaVar != null) {
            return qaVar;
        }
        return new qa(paVar);
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void A(int i10, List list, boolean z10) {
        int i11 = 0;
        if (list instanceof wb) {
            wb wbVar = (wb) list;
            if (z10) {
                pa paVar = this.f6712a;
                paVar.i(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < wbVar.size(); i13++) {
                    long d02 = wbVar.d0(i13);
                    i12 += pa.a((d02 >> 63) ^ (d02 + d02));
                }
                paVar.x(i12);
                while (i11 < wbVar.size()) {
                    long d03 = wbVar.d0(i11);
                    paVar.z((d03 >> 63) ^ (d03 + d03));
                    i11++;
                }
                return;
            }
            while (i11 < wbVar.size()) {
                pa paVar2 = this.f6712a;
                long d04 = wbVar.d0(i11);
                paVar2.m(i10, (d04 >> 63) ^ (d04 + d04));
                i11++;
            }
        } else if (z10) {
            pa paVar3 = this.f6712a;
            paVar3.i(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                long longValue = ((Long) list.get(i15)).longValue();
                i14 += pa.a((longValue >> 63) ^ (longValue + longValue));
            }
            paVar3.x(i14);
            while (i11 < list.size()) {
                long longValue2 = ((Long) list.get(i11)).longValue();
                paVar3.z((longValue2 >> 63) ^ (longValue2 + longValue2));
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                pa paVar4 = this.f6712a;
                long longValue3 = ((Long) list.get(i11)).longValue();
                paVar4.m(i10, (longValue3 >> 63) ^ (longValue3 + longValue3));
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void B(int i10, int i11) {
        this.f6712a.k(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void C(int i10, List list) {
        int i11 = 0;
        if (list instanceof sb) {
            sb sbVar = (sb) list;
            while (i11 < list.size()) {
                Object f10 = sbVar.f();
                if (f10 instanceof String) {
                    this.f6712a.p(i10, (String) f10);
                } else {
                    this.f6712a.q(i10, (ka) f10);
                }
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f6712a.p(i10, (String) list.get(i11));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void D(int i10, int i11) {
        this.f6712a.j(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void E(int i10, int i11) {
        this.f6712a.k(i10, (i11 >> 31) ^ (i11 + i11));
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void F(int i10, List list, boolean z10) {
        if (list instanceof aa) {
            aa aaVar = (aa) list;
            if (z10) {
                this.f6712a.i(i10, 2);
                throw null;
            }
            throw null;
        }
        int i11 = 0;
        if (z10) {
            pa paVar = this.f6712a;
            paVar.i(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                ((Boolean) list.get(i13)).booleanValue();
                i12++;
            }
            paVar.x(i12);
            while (i11 < list.size()) {
                paVar.v(((Boolean) list.get(i11)).booleanValue() ? (byte) 1 : (byte) 0);
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f6712a.o(i10, ((Boolean) list.get(i11)).booleanValue());
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void G(int i10, Object obj, tc tcVar) {
        pa paVar = this.f6712a;
        paVar.i(i10, 3);
        tcVar.g((ic) obj, paVar.f6669a);
        paVar.i(i10, 4);
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void H(int i10, boolean z10) {
        this.f6712a.o(i10, z10);
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void I(int i10, long j10) {
        this.f6712a.n(i10, j10);
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void J(int i10, List list, boolean z10) {
        int i11 = 0;
        if (list instanceof ib) {
            ib ibVar = (ib) list;
            if (z10) {
                pa paVar = this.f6712a;
                paVar.i(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < ibVar.size(); i13++) {
                    i12 += pa.a(ibVar.i(i13));
                }
                paVar.x(i12);
                while (i11 < ibVar.size()) {
                    paVar.w(ibVar.i(i11));
                    i11++;
                }
                return;
            }
            while (i11 < ibVar.size()) {
                this.f6712a.j(i10, ibVar.i(i11));
                i11++;
            }
        } else if (z10) {
            pa paVar2 = this.f6712a;
            paVar2.i(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += pa.a(((Integer) list.get(i15)).intValue());
            }
            paVar2.x(i14);
            while (i11 < list.size()) {
                paVar2.w(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.f6712a.j(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void K(int i10, float f10) {
        this.f6712a.l(i10, Float.floatToRawIntBits(f10));
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void a(int i10, List list, boolean z10) {
        int i11 = 0;
        if (list instanceof wb) {
            wb wbVar = (wb) list;
            if (z10) {
                pa paVar = this.f6712a;
                paVar.i(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < wbVar.size(); i13++) {
                    i12 += pa.a(wbVar.d0(i13));
                }
                paVar.x(i12);
                while (i11 < wbVar.size()) {
                    paVar.z(wbVar.d0(i11));
                    i11++;
                }
                return;
            }
            while (i11 < wbVar.size()) {
                this.f6712a.m(i10, wbVar.d0(i11));
                i11++;
            }
        } else if (z10) {
            pa paVar2 = this.f6712a;
            paVar2.i(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += pa.a(((Long) list.get(i15)).longValue());
            }
            paVar2.x(i14);
            while (i11 < list.size()) {
                paVar2.z(((Long) list.get(i11)).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.f6712a.m(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void b(int i10, int i11) {
        this.f6712a.l(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void c(int i10, List list, boolean z10) {
        int i11 = 0;
        if (list instanceof ib) {
            ib ibVar = (ib) list;
            if (z10) {
                pa paVar = this.f6712a;
                paVar.i(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < ibVar.size(); i13++) {
                    ibVar.i(i13);
                    i12 += 4;
                }
                paVar.x(i12);
                while (i11 < ibVar.size()) {
                    paVar.y(ibVar.i(i11));
                    i11++;
                }
                return;
            }
            while (i11 < ibVar.size()) {
                this.f6712a.l(i10, ibVar.i(i11));
                i11++;
            }
        } else if (z10) {
            pa paVar2 = this.f6712a;
            paVar2.i(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Integer) list.get(i15)).intValue();
                i14 += 4;
            }
            paVar2.x(i14);
            while (i11 < list.size()) {
                paVar2.y(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.f6712a.l(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void d(int i10, int i11) {
        this.f6712a.j(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void e(int i10, List list) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.f6712a.q(i10, (ka) list.get(i11));
        }
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void f(int i10, double d10) {
        this.f6712a.n(i10, Double.doubleToRawLongBits(d10));
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void g(int i10, List list, boolean z10) {
        if (list instanceof bb) {
            bb bbVar = (bb) list;
            if (z10) {
                this.f6712a.i(i10, 2);
                throw null;
            }
            throw null;
        }
        int i11 = 0;
        if (z10) {
            pa paVar = this.f6712a;
            paVar.i(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                ((Float) list.get(i13)).floatValue();
                i12 += 4;
            }
            paVar.x(i12);
            while (i11 < list.size()) {
                paVar.y(Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f6712a.l(i10, Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void h(int i10, List list, boolean z10) {
        int i11 = 0;
        if (list instanceof ib) {
            ib ibVar = (ib) list;
            if (z10) {
                pa paVar = this.f6712a;
                paVar.i(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < ibVar.size(); i13++) {
                    int i14 = ibVar.i(i13);
                    i12 += pa.E((i14 >> 31) ^ (i14 + i14));
                }
                paVar.x(i12);
                while (i11 < ibVar.size()) {
                    int i15 = ibVar.i(i11);
                    paVar.x((i15 >> 31) ^ (i15 + i15));
                    i11++;
                }
                return;
            }
            while (i11 < ibVar.size()) {
                pa paVar2 = this.f6712a;
                int i16 = ibVar.i(i11);
                paVar2.k(i10, (i16 >> 31) ^ (i16 + i16));
                i11++;
            }
        } else if (z10) {
            pa paVar3 = this.f6712a;
            paVar3.i(i10, 2);
            int i17 = 0;
            for (int i18 = 0; i18 < list.size(); i18++) {
                int intValue = ((Integer) list.get(i18)).intValue();
                i17 += pa.E((intValue >> 31) ^ (intValue + intValue));
            }
            paVar3.x(i17);
            while (i11 < list.size()) {
                int intValue2 = ((Integer) list.get(i11)).intValue();
                paVar3.x((intValue2 >> 31) ^ (intValue2 + intValue2));
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                pa paVar4 = this.f6712a;
                int intValue3 = ((Integer) list.get(i11)).intValue();
                paVar4.k(i10, (intValue3 >> 31) ^ (intValue3 + intValue3));
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void i(int i10, List list, boolean z10) {
        int i11 = 0;
        if (list instanceof ib) {
            ib ibVar = (ib) list;
            if (z10) {
                pa paVar = this.f6712a;
                paVar.i(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < ibVar.size(); i13++) {
                    ibVar.i(i13);
                    i12 += 4;
                }
                paVar.x(i12);
                while (i11 < ibVar.size()) {
                    paVar.y(ibVar.i(i11));
                    i11++;
                }
                return;
            }
            while (i11 < ibVar.size()) {
                this.f6712a.l(i10, ibVar.i(i11));
                i11++;
            }
        } else if (z10) {
            pa paVar2 = this.f6712a;
            paVar2.i(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Integer) list.get(i15)).intValue();
                i14 += 4;
            }
            paVar2.x(i14);
            while (i11 < list.size()) {
                paVar2.y(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.f6712a.l(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void j(int i10, List list, boolean z10) {
        int i11 = 0;
        if (list instanceof ib) {
            ib ibVar = (ib) list;
            if (z10) {
                pa paVar = this.f6712a;
                paVar.i(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < ibVar.size(); i13++) {
                    i12 += pa.a(ibVar.i(i13));
                }
                paVar.x(i12);
                while (i11 < ibVar.size()) {
                    paVar.w(ibVar.i(i11));
                    i11++;
                }
                return;
            }
            while (i11 < ibVar.size()) {
                this.f6712a.j(i10, ibVar.i(i11));
                i11++;
            }
        } else if (z10) {
            pa paVar2 = this.f6712a;
            paVar2.i(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += pa.a(((Integer) list.get(i15)).intValue());
            }
            paVar2.x(i14);
            while (i11 < list.size()) {
                paVar2.w(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.f6712a.j(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void k(int i10, ka kaVar) {
        this.f6712a.q(i10, kaVar);
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void l(int i10, long j10) {
        this.f6712a.n(i10, j10);
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void m(int i10, int i11) {
        this.f6712a.l(i10, i11);
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void n(int i10, List list, boolean z10) {
        int i11 = 0;
        if (list instanceof wb) {
            wb wbVar = (wb) list;
            if (z10) {
                pa paVar = this.f6712a;
                paVar.i(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < wbVar.size(); i13++) {
                    i12 += pa.a(wbVar.d0(i13));
                }
                paVar.x(i12);
                while (i11 < wbVar.size()) {
                    paVar.z(wbVar.d0(i11));
                    i11++;
                }
                return;
            }
            while (i11 < wbVar.size()) {
                this.f6712a.m(i10, wbVar.d0(i11));
                i11++;
            }
        } else if (z10) {
            pa paVar2 = this.f6712a;
            paVar2.i(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += pa.a(((Long) list.get(i15)).longValue());
            }
            paVar2.x(i14);
            while (i11 < list.size()) {
                paVar2.z(((Long) list.get(i11)).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.f6712a.m(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void o(int i10, ac acVar, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            pa paVar = this.f6712a;
            paVar.i(i10, 2);
            paVar.x(bc.c(acVar, entry.getKey(), entry.getValue()));
            bc.b(paVar, acVar, entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void p(int i10, Object obj, tc tcVar) {
        this.f6712a.t(i10, (ic) obj, tcVar);
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void q(int i10, long j10) {
        this.f6712a.m(i10, j10);
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void r(int i10, List list, boolean z10) {
        int i11 = 0;
        if (list instanceof wb) {
            wb wbVar = (wb) list;
            if (z10) {
                pa paVar = this.f6712a;
                paVar.i(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < wbVar.size(); i13++) {
                    wbVar.d0(i13);
                    i12 += 8;
                }
                paVar.x(i12);
                while (i11 < wbVar.size()) {
                    paVar.A(wbVar.d0(i11));
                    i11++;
                }
                return;
            }
            while (i11 < wbVar.size()) {
                this.f6712a.n(i10, wbVar.d0(i11));
                i11++;
            }
        } else if (z10) {
            pa paVar2 = this.f6712a;
            paVar2.i(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Long) list.get(i15)).longValue();
                i14 += 8;
            }
            paVar2.x(i14);
            while (i11 < list.size()) {
                paVar2.A(((Long) list.get(i11)).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.f6712a.n(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void s(int i10, long j10) {
        this.f6712a.m(i10, j10);
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void t(int i10, long j10) {
        this.f6712a.m(i10, (j10 >> 63) ^ (j10 + j10));
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void u(int i10, List list, boolean z10) {
        int i11 = 0;
        if (list instanceof wb) {
            wb wbVar = (wb) list;
            if (z10) {
                pa paVar = this.f6712a;
                paVar.i(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < wbVar.size(); i13++) {
                    wbVar.d0(i13);
                    i12 += 8;
                }
                paVar.x(i12);
                while (i11 < wbVar.size()) {
                    paVar.A(wbVar.d0(i11));
                    i11++;
                }
                return;
            }
            while (i11 < wbVar.size()) {
                this.f6712a.n(i10, wbVar.d0(i11));
                i11++;
            }
        } else if (z10) {
            pa paVar2 = this.f6712a;
            paVar2.i(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                ((Long) list.get(i15)).longValue();
                i14 += 8;
            }
            paVar2.x(i14);
            while (i11 < list.size()) {
                paVar2.A(((Long) list.get(i11)).longValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.f6712a.n(i10, ((Long) list.get(i11)).longValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void v(int i10) {
        this.f6712a.i(i10, 3);
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void w(int i10, List list, boolean z10) {
        int i11 = 0;
        if (list instanceof ib) {
            ib ibVar = (ib) list;
            if (z10) {
                pa paVar = this.f6712a;
                paVar.i(i10, 2);
                int i12 = 0;
                for (int i13 = 0; i13 < ibVar.size(); i13++) {
                    i12 += pa.E(ibVar.i(i13));
                }
                paVar.x(i12);
                while (i11 < ibVar.size()) {
                    paVar.x(ibVar.i(i11));
                    i11++;
                }
                return;
            }
            while (i11 < ibVar.size()) {
                this.f6712a.k(i10, ibVar.i(i11));
                i11++;
            }
        } else if (z10) {
            pa paVar2 = this.f6712a;
            paVar2.i(i10, 2);
            int i14 = 0;
            for (int i15 = 0; i15 < list.size(); i15++) {
                i14 += pa.E(((Integer) list.get(i15)).intValue());
            }
            paVar2.x(i14);
            while (i11 < list.size()) {
                paVar2.x(((Integer) list.get(i11)).intValue());
                i11++;
            }
        } else {
            while (i11 < list.size()) {
                this.f6712a.k(i10, ((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void x(int i10) {
        this.f6712a.i(i10, 4);
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void y(int i10, List list, boolean z10) {
        if (list instanceof ra) {
            ra raVar = (ra) list;
            if (z10) {
                this.f6712a.i(i10, 2);
                throw null;
            }
            throw null;
        }
        int i11 = 0;
        if (z10) {
            pa paVar = this.f6712a;
            paVar.i(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                ((Double) list.get(i13)).doubleValue();
                i12 += 8;
            }
            paVar.x(i12);
            while (i11 < list.size()) {
                paVar.A(Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
                i11++;
            }
            return;
        }
        while (i11 < list.size()) {
            this.f6712a.n(i10, Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
            i11++;
        }
    }

    @Override // com.google.android.gms.internal.measurement.rd
    public final void z(int i10, String str) {
        this.f6712a.p(i10, str);
    }
}
