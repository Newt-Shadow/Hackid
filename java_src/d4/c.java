package d4;
/* loaded from: classes.dex */
public final class c implements b0 {

    /* renamed from: a  reason: collision with root package name */
    private final g3.p f14729a;

    /* renamed from: b  reason: collision with root package name */
    private g3.k f14730b;

    /* renamed from: c  reason: collision with root package name */
    private g3.l f14731c;

    public c(g3.p pVar) {
        this.f14729a = pVar;
    }

    @Override // d4.b0
    public void b(long j10, long j11) {
        ((g3.k) y4.a.e(this.f14730b)).b(j10, j11);
    }

    @Override // d4.b0
    public long c() {
        g3.l lVar = this.f14731c;
        if (lVar != null) {
            return lVar.c();
        }
        return -1L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003f, code lost:
        if (r6.c() != r11) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0061, code lost:
        if (r6.c() != r11) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0064, code lost:
        r1 = false;
     */
    @Override // d4.b0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d(x4.h r8, android.net.Uri r9, java.util.Map r10, long r11, long r13, g3.m r15) {
        /*
            r7 = this;
            g3.e r6 = new g3.e
            r0 = r6
            r1 = r8
            r2 = r11
            r4 = r13
            r0.<init>(r1, r2, r4)
            r7.f14731c = r6
            g3.k r8 = r7.f14730b
            if (r8 == 0) goto L10
            return
        L10:
            g3.p r8 = r7.f14729a
            g3.k[] r8 = r8.c(r9, r10)
            int r10 = r8.length
            r13 = 0
            r14 = 1
            if (r10 != r14) goto L20
            r8 = r8[r13]
            r7.f14730b = r8
            goto L74
        L20:
            int r10 = r8.length
            r0 = r13
        L22:
            if (r0 >= r10) goto L70
            r1 = r8[r0]
            boolean r2 = r1.f(r6)     // Catch: java.lang.Throwable -> L42 java.io.EOFException -> L57
            if (r2 == 0) goto L35
            r7.f14730b = r1     // Catch: java.lang.Throwable -> L42 java.io.EOFException -> L57
            y4.a.f(r14)
            r6.l()
            goto L70
        L35:
            g3.k r1 = r7.f14730b
            if (r1 != 0) goto L66
            long r1 = r6.c()
            int r1 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r1 != 0) goto L64
            goto L66
        L42:
            r8 = move-exception
            g3.k r9 = r7.f14730b
            if (r9 != 0) goto L4f
            long r9 = r6.c()
            int r9 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r9 != 0) goto L50
        L4f:
            r13 = r14
        L50:
            y4.a.f(r13)
            r6.l()
            throw r8
        L57:
            g3.k r1 = r7.f14730b
            if (r1 != 0) goto L66
            long r1 = r6.c()
            int r1 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r1 != 0) goto L64
            goto L66
        L64:
            r1 = r13
            goto L67
        L66:
            r1 = r14
        L67:
            y4.a.f(r1)
            r6.l()
            int r0 = r0 + 1
            goto L22
        L70:
            g3.k r10 = r7.f14730b
            if (r10 == 0) goto L7a
        L74:
            g3.k r8 = r7.f14730b
            r8.c(r15)
            return
        L7a:
            d4.v0 r10 = new d4.v0
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "None of the available extractors ("
            r11.append(r12)
            java.lang.String r8 = y4.q0.M(r8)
            r11.append(r8)
            java.lang.String r8 = ") could read the stream."
            r11.append(r8)
            java.lang.String r8 = r11.toString()
            java.lang.Object r9 = y4.a.e(r9)
            android.net.Uri r9 = (android.net.Uri) r9
            r10.<init>(r8, r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: d4.c.d(x4.h, android.net.Uri, java.util.Map, long, long, g3.m):void");
    }

    @Override // d4.b0
    public void e() {
        g3.k kVar = this.f14730b;
        if (kVar instanceof n3.f) {
            ((n3.f) kVar).j();
        }
    }

    @Override // d4.b0
    public int f(g3.y yVar) {
        return ((g3.k) y4.a.e(this.f14730b)).g((g3.l) y4.a.e(this.f14731c), yVar);
    }

    @Override // d4.b0
    public void release() {
        g3.k kVar = this.f14730b;
        if (kVar != null) {
            kVar.release();
            this.f14730b = null;
        }
        this.f14731c = null;
    }
}
