package yd;

import td.u0;
/* loaded from: classes2.dex */
public final class x extends td.i0 implements u0 {

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ u0 f33307c;

    /* renamed from: d  reason: collision with root package name */
    private final td.i0 f33308d;

    /* renamed from: e  reason: collision with root package name */
    private final String f33309e;

    public x(td.i0 i0Var, String str) {
        u0 u0Var;
        if (i0Var instanceof u0) {
            u0Var = (u0) i0Var;
        } else {
            u0Var = null;
        }
        this.f33307c = u0Var == null ? td.r0.a() : u0Var;
        this.f33308d = i0Var;
        this.f33309e = str;
    }

    @Override // td.u0
    public void h(long j10, td.l lVar) {
        this.f33307c.h(j10, lVar);
    }

    @Override // td.i0
    public void q0(ad.i iVar, Runnable runnable) {
        this.f33308d.q0(iVar, runnable);
    }

    @Override // td.i0
    public boolean t0(ad.i iVar) {
        return this.f33308d.t0(iVar);
    }

    @Override // td.i0
    public String toString() {
        return this.f33309e;
    }
}
