package d4;

import android.net.Uri;
import b3.f2;
import b3.g4;
/* loaded from: classes.dex */
public final class p0 extends g4 {

    /* renamed from: s  reason: collision with root package name */
    private static final Object f14917s = new Object();

    /* renamed from: t  reason: collision with root package name */
    private static final f2 f14918t = new f2.c().c("SinglePeriodTimeline").e(Uri.EMPTY).a();

    /* renamed from: f  reason: collision with root package name */
    private final long f14919f;

    /* renamed from: g  reason: collision with root package name */
    private final long f14920g;

    /* renamed from: h  reason: collision with root package name */
    private final long f14921h;

    /* renamed from: i  reason: collision with root package name */
    private final long f14922i;

    /* renamed from: j  reason: collision with root package name */
    private final long f14923j;

    /* renamed from: k  reason: collision with root package name */
    private final long f14924k;

    /* renamed from: l  reason: collision with root package name */
    private final long f14925l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f14926m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f14927n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f14928o;

    /* renamed from: p  reason: collision with root package name */
    private final Object f14929p;

    /* renamed from: q  reason: collision with root package name */
    private final f2 f14930q;

    /* renamed from: r  reason: collision with root package name */
    private final f2.g f14931r;

    public p0(long j10, boolean z10, boolean z11, boolean z12, Object obj, f2 f2Var) {
        this(j10, j10, 0L, 0L, z10, z11, z12, obj, f2Var);
    }

    @Override // b3.g4
    public int f(Object obj) {
        if (f14917s.equals(obj)) {
            return 0;
        }
        return -1;
    }

    @Override // b3.g4
    public g4.b k(int i10, g4.b bVar, boolean z10) {
        Object obj;
        y4.a.c(i10, 0, 1);
        if (z10) {
            obj = f14917s;
        } else {
            obj = null;
        }
        return bVar.u(null, obj, 0, this.f14922i, -this.f14924k);
    }

    @Override // b3.g4
    public int m() {
        return 1;
    }

    @Override // b3.g4
    public Object q(int i10) {
        y4.a.c(i10, 0, 1);
        return f14917s;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
        if (r1 > r3) goto L9;
     */
    @Override // b3.g4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public b3.g4.d s(int r25, b3.g4.d r26, long r27) {
        /*
            r24 = this;
            r0 = r24
            r1 = 0
            r2 = 1
            r3 = r25
            y4.a.c(r3, r1, r2)
            long r1 = r0.f14925l
            boolean r14 = r0.f14927n
            if (r14 == 0) goto L2e
            boolean r3 = r0.f14928o
            if (r3 != 0) goto L2e
            r3 = 0
            int r3 = (r27 > r3 ? 1 : (r27 == r3 ? 0 : -1))
            if (r3 == 0) goto L2e
            long r3 = r0.f14923j
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L27
        L24:
            r16 = r5
            goto L30
        L27:
            long r1 = r1 + r27
            int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r3 <= 0) goto L2e
            goto L24
        L2e:
            r16 = r1
        L30:
            java.lang.Object r4 = b3.g4.d.f4064r
            b3.f2 r5 = r0.f14930q
            java.lang.Object r6 = r0.f14929p
            long r7 = r0.f14919f
            long r9 = r0.f14920g
            long r11 = r0.f14921h
            boolean r13 = r0.f14926m
            b3.f2$g r15 = r0.f14931r
            long r1 = r0.f14923j
            r18 = r1
            r20 = 0
            r21 = 0
            long r1 = r0.f14924k
            r22 = r1
            r3 = r26
            b3.g4$d r1 = r3.h(r4, r5, r6, r7, r9, r11, r13, r14, r15, r16, r18, r20, r21, r22)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d4.p0.s(int, b3.g4$d, long):b3.g4$d");
    }

    @Override // b3.g4
    public int t() {
        return 1;
    }

    public p0(long j10, long j11, long j12, long j13, boolean z10, boolean z11, boolean z12, Object obj, f2 f2Var) {
        this(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j10, j11, j12, j13, z10, z11, false, obj, f2Var, z12 ? f2Var.f3882d : null);
    }

    public p0(long j10, long j11, long j12, long j13, long j14, long j15, long j16, boolean z10, boolean z11, boolean z12, Object obj, f2 f2Var, f2.g gVar) {
        this.f14919f = j10;
        this.f14920g = j11;
        this.f14921h = j12;
        this.f14922i = j13;
        this.f14923j = j14;
        this.f14924k = j15;
        this.f14925l = j16;
        this.f14926m = z10;
        this.f14927n = z11;
        this.f14928o = z12;
        this.f14929p = obj;
        this.f14930q = (f2) y4.a.e(f2Var);
        this.f14931r = gVar;
    }
}
