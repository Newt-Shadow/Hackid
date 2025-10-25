package td;
/* loaded from: classes2.dex */
public final class q2 extends yd.b0 {

    /* renamed from: e  reason: collision with root package name */
    private final ThreadLocal f30686e;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public q2(ad.i r3, ad.e r4) {
        /*
            r2 = this;
            td.r2 r0 = td.r2.f30692a
            ad.i$b r1 = r3.a(r0)
            if (r1 != 0) goto Ld
            ad.i r0 = r3.e(r0)
            goto Le
        Ld:
            r0 = r3
        Le:
            r2.<init>(r0, r4)
            java.lang.ThreadLocal r0 = new java.lang.ThreadLocal
            r0.<init>()
            r2.f30686e = r0
            ad.i r4 = r4.getContext()
            ad.f$b r0 = ad.f.f293h0
            ad.i$b r4 = r4.a(r0)
            boolean r4 = r4 instanceof td.i0
            if (r4 != 0) goto L31
            r4 = 0
            java.lang.Object r4 = yd.m0.i(r3, r4)
            yd.m0.f(r3, r4)
            r2.T0(r3, r4)
        L31:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: td.q2.<init>(ad.i, ad.e):void");
    }

    @Override // yd.b0, td.a
    protected void O0(Object obj) {
        if (this.threadLocalIsSet) {
            xc.k kVar = (xc.k) this.f30686e.get();
            if (kVar != null) {
                yd.m0.f((ad.i) kVar.a(), kVar.b());
            }
            this.f30686e.remove();
        }
        Object a10 = c0.a(obj, this.f33248d);
        ad.e eVar = this.f33248d;
        ad.i context = eVar.getContext();
        q2 q2Var = null;
        Object i10 = yd.m0.i(context, null);
        if (i10 != yd.m0.f33277a) {
            q2Var = g0.m(eVar, context, i10);
        }
        try {
            this.f33248d.resumeWith(a10);
            xc.t tVar = xc.t.f32733a;
        } finally {
            if (q2Var == null || q2Var.S0()) {
                yd.m0.f(context, i10);
            }
        }
    }

    public final boolean S0() {
        boolean z10;
        if (this.threadLocalIsSet && this.f30686e.get() == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f30686e.remove();
        return !z10;
    }

    public final void T0(ad.i iVar, Object obj) {
        this.threadLocalIsSet = true;
        this.f30686e.set(xc.q.a(iVar, obj));
    }
}
