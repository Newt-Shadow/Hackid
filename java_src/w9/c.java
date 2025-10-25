package w9;

import d9.p;
/* loaded from: classes.dex */
final class c {

    /* renamed from: a  reason: collision with root package name */
    private final j9.b f31966a;

    /* renamed from: b  reason: collision with root package name */
    private final p f31967b;

    /* renamed from: c  reason: collision with root package name */
    private final p f31968c;

    /* renamed from: d  reason: collision with root package name */
    private final p f31969d;

    /* renamed from: e  reason: collision with root package name */
    private final p f31970e;

    /* renamed from: f  reason: collision with root package name */
    private final int f31971f;

    /* renamed from: g  reason: collision with root package name */
    private final int f31972g;

    /* renamed from: h  reason: collision with root package name */
    private final int f31973h;

    /* renamed from: i  reason: collision with root package name */
    private final int f31974i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(j9.b bVar, p pVar, p pVar2, p pVar3, p pVar4) {
        boolean z10 = false;
        boolean z11 = pVar == null || pVar2 == null;
        z10 = (pVar3 == null || pVar4 == null) ? true : z10;
        if (z11 && z10) {
            throw d9.j.a();
        }
        if (z11) {
            pVar = new p(0.0f, pVar3.d());
            pVar2 = new p(0.0f, pVar4.d());
        } else if (z10) {
            pVar3 = new p(bVar.m() - 1, pVar.d());
            pVar4 = new p(bVar.m() - 1, pVar2.d());
        }
        this.f31966a = bVar;
        this.f31967b = pVar;
        this.f31968c = pVar2;
        this.f31969d = pVar3;
        this.f31970e = pVar4;
        this.f31971f = (int) Math.min(pVar.c(), pVar2.c());
        this.f31972g = (int) Math.max(pVar3.c(), pVar4.c());
        this.f31973h = (int) Math.min(pVar.d(), pVar3.d());
        this.f31974i = (int) Math.max(pVar2.d(), pVar4.d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c j(c cVar, c cVar2) {
        if (cVar == null) {
            return cVar2;
        }
        if (cVar2 == null) {
            return cVar;
        }
        return new c(cVar.f31966a, cVar.f31967b, cVar.f31968c, cVar2.f31969d, cVar2.f31970e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public w9.c a(int r13, int r14, boolean r15) {
        /*
            r12 = this;
            d9.p r0 = r12.f31967b
            d9.p r1 = r12.f31968c
            d9.p r2 = r12.f31969d
            d9.p r3 = r12.f31970e
            if (r13 <= 0) goto L29
            if (r15 == 0) goto Le
            r4 = r0
            goto Lf
        Le:
            r4 = r2
        Lf:
            float r5 = r4.d()
            int r5 = (int) r5
            int r5 = r5 - r13
            if (r5 >= 0) goto L18
            r5 = 0
        L18:
            d9.p r13 = new d9.p
            float r4 = r4.c()
            float r5 = (float) r5
            r13.<init>(r4, r5)
            if (r15 == 0) goto L26
            r8 = r13
            goto L2a
        L26:
            r10 = r13
            r8 = r0
            goto L2b
        L29:
            r8 = r0
        L2a:
            r10 = r2
        L2b:
            if (r14 <= 0) goto L5b
            if (r15 == 0) goto L32
            d9.p r13 = r12.f31968c
            goto L34
        L32:
            d9.p r13 = r12.f31970e
        L34:
            float r0 = r13.d()
            int r0 = (int) r0
            int r0 = r0 + r14
            j9.b r14 = r12.f31966a
            int r14 = r14.j()
            if (r0 < r14) goto L4a
            j9.b r14 = r12.f31966a
            int r14 = r14.j()
            int r0 = r14 + (-1)
        L4a:
            d9.p r14 = new d9.p
            float r13 = r13.c()
            float r0 = (float) r0
            r14.<init>(r13, r0)
            if (r15 == 0) goto L58
            r9 = r14
            goto L5c
        L58:
            r11 = r14
            r9 = r1
            goto L5d
        L5b:
            r9 = r1
        L5c:
            r11 = r3
        L5d:
            w9.c r13 = new w9.c
            j9.b r7 = r12.f31966a
            r6 = r13
            r6.<init>(r7, r8, r9, r10, r11)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: w9.c.a(int, int, boolean):w9.c");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p b() {
        return this.f31968c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p c() {
        return this.f31970e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return this.f31972g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.f31974i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.f31971f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g() {
        return this.f31973h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p h() {
        return this.f31967b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p i() {
        return this.f31969d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(c cVar) {
        this.f31966a = cVar.f31966a;
        this.f31967b = cVar.f31967b;
        this.f31968c = cVar.f31968c;
        this.f31969d = cVar.f31969d;
        this.f31970e = cVar.f31970e;
        this.f31971f = cVar.f31971f;
        this.f31972g = cVar.f31972g;
        this.f31973h = cVar.f31973h;
        this.f31974i = cVar.f31974i;
    }
}
