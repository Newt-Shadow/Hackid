package com.google.android.exoplayer2.source.smoothstreaming;

import b3.x1;
import b3.x3;
import com.google.android.exoplayer2.source.smoothstreaming.b;
import d4.a0;
import d4.h;
import d4.n0;
import d4.r;
import d4.s0;
import d4.u0;
import f3.u;
import f3.v;
import f4.i;
import java.util.ArrayList;
import l4.a;
import w4.y;
import x4.d0;
import x4.f0;
import x4.m0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c implements r, n0.a {

    /* renamed from: a  reason: collision with root package name */
    private final b.a f5765a;

    /* renamed from: b  reason: collision with root package name */
    private final m0 f5766b;

    /* renamed from: c  reason: collision with root package name */
    private final f0 f5767c;

    /* renamed from: d  reason: collision with root package name */
    private final v f5768d;

    /* renamed from: e  reason: collision with root package name */
    private final u.a f5769e;

    /* renamed from: f  reason: collision with root package name */
    private final d0 f5770f;

    /* renamed from: g  reason: collision with root package name */
    private final a0.a f5771g;

    /* renamed from: h  reason: collision with root package name */
    private final x4.b f5772h;

    /* renamed from: i  reason: collision with root package name */
    private final u0 f5773i;

    /* renamed from: j  reason: collision with root package name */
    private final h f5774j;

    /* renamed from: k  reason: collision with root package name */
    private r.a f5775k;

    /* renamed from: l  reason: collision with root package name */
    private l4.a f5776l;

    /* renamed from: m  reason: collision with root package name */
    private i[] f5777m;

    /* renamed from: n  reason: collision with root package name */
    private n0 f5778n;

    public c(l4.a aVar, b.a aVar2, m0 m0Var, h hVar, v vVar, u.a aVar3, d0 d0Var, a0.a aVar4, f0 f0Var, x4.b bVar) {
        this.f5776l = aVar;
        this.f5765a = aVar2;
        this.f5766b = m0Var;
        this.f5767c = f0Var;
        this.f5768d = vVar;
        this.f5769e = aVar3;
        this.f5770f = d0Var;
        this.f5771g = aVar4;
        this.f5772h = bVar;
        this.f5774j = hVar;
        this.f5773i = n(aVar, vVar);
        i[] o10 = o(0);
        this.f5777m = o10;
        this.f5778n = hVar.a(o10);
    }

    private i l(y yVar, long j10) {
        int c10 = this.f5773i.c(yVar.a());
        return new i(this.f5776l.f25202f[c10].f25208a, null, null, this.f5765a.a(this.f5767c, this.f5776l, c10, yVar, this.f5766b), this, this.f5772h, j10, this.f5768d, this.f5769e, this.f5770f, this.f5771g);
    }

    private static u0 n(l4.a aVar, v vVar) {
        s0[] s0VarArr = new s0[aVar.f25202f.length];
        int i10 = 0;
        while (true) {
            a.b[] bVarArr = aVar.f25202f;
            if (i10 < bVarArr.length) {
                x1[] x1VarArr = bVarArr[i10].f25217j;
                x1[] x1VarArr2 = new x1[x1VarArr.length];
                for (int i11 = 0; i11 < x1VarArr.length; i11++) {
                    x1 x1Var = x1VarArr[i11];
                    x1VarArr2[i11] = x1Var.c(vVar.c(x1Var));
                }
                s0VarArr[i10] = new s0(Integer.toString(i10), x1VarArr2);
                i10++;
            } else {
                return new u0(s0VarArr);
            }
        }
    }

    private static i[] o(int i10) {
        return new i[i10];
    }

    @Override // d4.r, d4.n0
    public long b() {
        return this.f5778n.b();
    }

    @Override // d4.r, d4.n0
    public boolean c(long j10) {
        return this.f5778n.c(j10);
    }

    @Override // d4.r, d4.n0
    public long d() {
        return this.f5778n.d();
    }

    @Override // d4.r
    public long e(long j10, x3 x3Var) {
        i[] iVarArr;
        for (i iVar : this.f5777m) {
            if (iVar.f15789a == 2) {
                return iVar.e(j10, x3Var);
            }
        }
        return j10;
    }

    @Override // d4.r, d4.n0
    public void f(long j10) {
        this.f5778n.f(j10);
    }

    @Override // d4.r
    public void i() {
        this.f5767c.a();
    }

    @Override // d4.r, d4.n0
    public boolean isLoading() {
        return this.f5778n.isLoading();
    }

    @Override // d4.r
    public long k(long j10) {
        for (i iVar : this.f5777m) {
            iVar.Q(j10);
        }
        return j10;
    }

    @Override // d4.r
    public long m(y[] yVarArr, boolean[] zArr, d4.m0[] m0VarArr, boolean[] zArr2, long j10) {
        y yVar;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < yVarArr.length; i10++) {
            d4.m0 m0Var = m0VarArr[i10];
            if (m0Var != null) {
                i iVar = (i) m0Var;
                if (yVarArr[i10] != null && zArr[i10]) {
                    ((b) iVar.C()).b(yVarArr[i10]);
                    arrayList.add(iVar);
                } else {
                    iVar.N();
                    m0VarArr[i10] = null;
                }
            }
            if (m0VarArr[i10] == null && (yVar = yVarArr[i10]) != null) {
                i l10 = l(yVar, j10);
                arrayList.add(l10);
                m0VarArr[i10] = l10;
                zArr2[i10] = true;
            }
        }
        i[] o10 = o(arrayList.size());
        this.f5777m = o10;
        arrayList.toArray(o10);
        this.f5778n = this.f5774j.a(this.f5777m);
        return j10;
    }

    @Override // d4.r
    public long p() {
        return -9223372036854775807L;
    }

    @Override // d4.r
    public u0 q() {
        return this.f5773i;
    }

    @Override // d4.r
    public void r(long j10, boolean z10) {
        for (i iVar : this.f5777m) {
            iVar.r(j10, z10);
        }
    }

    @Override // d4.n0.a
    /* renamed from: s */
    public void h(i iVar) {
        this.f5775k.h(this);
    }

    @Override // d4.r
    public void t(r.a aVar, long j10) {
        this.f5775k = aVar;
        aVar.g(this);
    }

    public void u() {
        for (i iVar : this.f5777m) {
            iVar.N();
        }
        this.f5775k = null;
    }

    public void v(l4.a aVar) {
        this.f5776l = aVar;
        for (i iVar : this.f5777m) {
            ((b) iVar.C()).g(aVar);
        }
        this.f5775k.h(this);
    }
}
