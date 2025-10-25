package com.google.android.exoplayer2.source.dash;

import b3.x1;
import b3.y1;
import d4.m0;
import e3.g;
import h4.f;
import y4.q0;
/* loaded from: classes.dex */
final class d implements m0 {

    /* renamed from: a  reason: collision with root package name */
    private final x1 f5675a;

    /* renamed from: c  reason: collision with root package name */
    private long[] f5677c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f5678d;

    /* renamed from: e  reason: collision with root package name */
    private f f5679e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f5680f;

    /* renamed from: g  reason: collision with root package name */
    private int f5681g;

    /* renamed from: b  reason: collision with root package name */
    private final v3.c f5676b = new v3.c();

    /* renamed from: h  reason: collision with root package name */
    private long f5682h = -9223372036854775807L;

    public d(f fVar, x1 x1Var, boolean z10) {
        this.f5675a = x1Var;
        this.f5679e = fVar;
        this.f5677c = fVar.f16791b;
        d(fVar, z10);
    }

    @Override // d4.m0
    public void a() {
    }

    public String b() {
        return this.f5679e.a();
    }

    public void c(long j10) {
        boolean z10 = true;
        int e10 = q0.e(this.f5677c, j10, true, false);
        this.f5681g = e10;
        if (!this.f5678d || e10 != this.f5677c.length) {
            z10 = false;
        }
        if (!z10) {
            j10 = -9223372036854775807L;
        }
        this.f5682h = j10;
    }

    public void d(f fVar, boolean z10) {
        long j10;
        int i10 = this.f5681g;
        if (i10 == 0) {
            j10 = -9223372036854775807L;
        } else {
            j10 = this.f5677c[i10 - 1];
        }
        this.f5678d = z10;
        this.f5679e = fVar;
        long[] jArr = fVar.f16791b;
        this.f5677c = jArr;
        long j11 = this.f5682h;
        if (j11 != -9223372036854775807L) {
            c(j11);
        } else if (j10 != -9223372036854775807L) {
            this.f5681g = q0.e(jArr, j10, false, false);
        }
    }

    @Override // d4.m0
    public boolean isReady() {
        return true;
    }

    @Override // d4.m0
    public int j(long j10) {
        int max = Math.max(this.f5681g, q0.e(this.f5677c, j10, true, false));
        int i10 = max - this.f5681g;
        this.f5681g = max;
        return i10;
    }

    @Override // d4.m0
    public int l(y1 y1Var, g gVar, int i10) {
        boolean z10;
        int i11 = this.f5681g;
        if (i11 == this.f5677c.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10 && !this.f5678d) {
            gVar.u(4);
            return -4;
        } else if ((i10 & 2) == 0 && this.f5680f) {
            if (z10) {
                return -3;
            }
            if ((i10 & 1) == 0) {
                this.f5681g = i11 + 1;
            }
            if ((i10 & 4) == 0) {
                byte[] a10 = this.f5676b.a(this.f5679e.f16790a[i11]);
                gVar.w(a10.length);
                gVar.f15289c.put(a10);
            }
            gVar.f15291e = this.f5677c[i11];
            gVar.u(1);
            return -4;
        } else {
            y1Var.f4575b = this.f5675a;
            this.f5680f = true;
            return -5;
        }
    }
}
