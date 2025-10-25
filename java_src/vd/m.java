package vd;

import java.util.concurrent.atomic.AtomicReferenceArray;
import yd.c0;
/* loaded from: classes2.dex */
public final class m extends c0 {

    /* renamed from: e  reason: collision with root package name */
    private final e f31407e;

    /* renamed from: f  reason: collision with root package name */
    private final /* synthetic */ AtomicReferenceArray f31408f;

    public m(long j10, m mVar, e eVar, int i10) {
        super(j10, mVar, i10);
        this.f31407e = eVar;
        this.f31408f = new AtomicReferenceArray(f.f31380b * 2);
    }

    private final void E(int i10, Object obj) {
        z().set(i10 * 2, obj);
    }

    private final /* synthetic */ AtomicReferenceArray z() {
        return this.f31408f;
    }

    public final Object A(int i10) {
        return z().get(i10 * 2);
    }

    public final Object B(int i10) {
        return z().get((i10 * 2) + 1);
    }

    public final void C(int i10, boolean z10) {
        if (z10) {
            y().c1((this.f33250c * f.f31380b) + i10);
        }
        t();
    }

    public final Object D(int i10) {
        Object A = A(i10);
        w(i10);
        return A;
    }

    public final void F(int i10, Object obj) {
        z().set((i10 * 2) + 1, obj);
    }

    public final void G(int i10, Object obj) {
        E(i10, obj);
    }

    @Override // yd.c0
    public int r() {
        return f.f31380b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0063, code lost:
        w(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0066, code lost:
        if (r0 == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0068, code lost:
        r4 = y().f31374b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006e, code lost:
        if (r4 == null) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0070, code lost:
        yd.y.a(r4, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0073, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:?, code lost:
        return;
     */
    @Override // yd.c0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void s(int r4, java.lang.Throwable r5, ad.i r6) {
        /*
            r3 = this;
            int r5 = vd.f.f31380b
            if (r4 < r5) goto L6
            r0 = 1
            goto L7
        L6:
            r0 = 0
        L7:
            if (r0 == 0) goto La
            int r4 = r4 - r5
        La:
            java.lang.Object r5 = r3.A(r4)
        Le:
            java.lang.Object r1 = r3.B(r4)
            boolean r2 = r1 instanceof td.s2
            if (r2 != 0) goto L74
            boolean r2 = r1 instanceof vd.y
            if (r2 == 0) goto L1b
            goto L74
        L1b:
            yd.f0 r2 = vd.f.j()
            if (r1 == r2) goto L63
            yd.f0 r2 = vd.f.i()
            if (r1 != r2) goto L28
            goto L63
        L28:
            yd.f0 r2 = vd.f.p()
            if (r1 == r2) goto Le
            yd.f0 r2 = vd.f.q()
            if (r1 != r2) goto L35
            goto Le
        L35:
            yd.f0 r4 = vd.f.f()
            if (r1 == r4) goto L62
            yd.f0 r4 = vd.f.f31382d
            if (r1 != r4) goto L40
            goto L62
        L40:
            yd.f0 r4 = vd.f.z()
            if (r1 != r4) goto L47
            return
        L47:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "unexpected state: "
            r5.append(r6)
            r5.append(r1)
            java.lang.String r5 = r5.toString()
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L62:
            return
        L63:
            r3.w(r4)
            if (r0 == 0) goto L73
            vd.e r4 = r3.y()
            id.l r4 = r4.f31374b
            if (r4 == 0) goto L73
            yd.y.a(r4, r5, r6)
        L73:
            return
        L74:
            if (r0 == 0) goto L7b
            yd.f0 r2 = vd.f.j()
            goto L7f
        L7b:
            yd.f0 r2 = vd.f.i()
        L7f:
            boolean r1 = r3.v(r4, r1, r2)
            if (r1 == 0) goto Le
            r3.w(r4)
            r1 = r0 ^ 1
            r3.C(r4, r1)
            if (r0 == 0) goto L9a
            vd.e r4 = r3.y()
            id.l r4 = r4.f31374b
            if (r4 == 0) goto L9a
            yd.y.a(r4, r5, r6)
        L9a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: vd.m.s(int, java.lang.Throwable, ad.i):void");
    }

    public final boolean v(int i10, Object obj, Object obj2) {
        return l.a(z(), (i10 * 2) + 1, obj, obj2);
    }

    public final void w(int i10) {
        E(i10, null);
    }

    public final Object x(int i10, Object obj) {
        return z().getAndSet((i10 * 2) + 1, obj);
    }

    public final e y() {
        e eVar = this.f31407e;
        kotlin.jvm.internal.m.b(eVar);
        return eVar;
    }
}
