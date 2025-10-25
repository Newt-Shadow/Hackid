package q3;

import java.util.Arrays;
import q3.i0;
/* loaded from: classes.dex */
public final class n implements m {

    /* renamed from: q  reason: collision with root package name */
    private static final double[] f28181q = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a  reason: collision with root package name */
    private String f28182a;

    /* renamed from: b  reason: collision with root package name */
    private g3.b0 f28183b;

    /* renamed from: c  reason: collision with root package name */
    private final k0 f28184c;

    /* renamed from: d  reason: collision with root package name */
    private final y4.e0 f28185d;

    /* renamed from: e  reason: collision with root package name */
    private final u f28186e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean[] f28187f;

    /* renamed from: g  reason: collision with root package name */
    private final a f28188g;

    /* renamed from: h  reason: collision with root package name */
    private long f28189h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f28190i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f28191j;

    /* renamed from: k  reason: collision with root package name */
    private long f28192k;

    /* renamed from: l  reason: collision with root package name */
    private long f28193l;

    /* renamed from: m  reason: collision with root package name */
    private long f28194m;

    /* renamed from: n  reason: collision with root package name */
    private long f28195n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f28196o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f28197p;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: e  reason: collision with root package name */
        private static final byte[] f28198e = {0, 0, 1};

        /* renamed from: a  reason: collision with root package name */
        private boolean f28199a;

        /* renamed from: b  reason: collision with root package name */
        public int f28200b;

        /* renamed from: c  reason: collision with root package name */
        public int f28201c;

        /* renamed from: d  reason: collision with root package name */
        public byte[] f28202d;

        public a(int i10) {
            this.f28202d = new byte[i10];
        }

        public void a(byte[] bArr, int i10, int i11) {
            if (!this.f28199a) {
                return;
            }
            int i12 = i11 - i10;
            byte[] bArr2 = this.f28202d;
            int length = bArr2.length;
            int i13 = this.f28200b;
            if (length < i13 + i12) {
                this.f28202d = Arrays.copyOf(bArr2, (i13 + i12) * 2);
            }
            System.arraycopy(bArr, i10, this.f28202d, this.f28200b, i12);
            this.f28200b += i12;
        }

        public boolean b(int i10, int i11) {
            if (this.f28199a) {
                int i12 = this.f28200b - i11;
                this.f28200b = i12;
                if (this.f28201c == 0 && i10 == 181) {
                    this.f28201c = i12;
                } else {
                    this.f28199a = false;
                    return true;
                }
            } else if (i10 == 179) {
                this.f28199a = true;
            }
            byte[] bArr = f28198e;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.f28199a = false;
            this.f28200b = 0;
            this.f28201c = 0;
        }
    }

    public n() {
        this(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.util.Pair a(q3.n.a r8, java.lang.String r9) {
        /*
            byte[] r0 = r8.f28202d
            int r1 = r8.f28200b
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)
            r1 = 4
            r2 = r0[r1]
            r2 = r2 & 255(0xff, float:3.57E-43)
            r3 = 5
            r4 = r0[r3]
            r4 = r4 & 255(0xff, float:3.57E-43)
            r5 = 6
            r5 = r0[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r1
            int r6 = r4 >> 4
            r2 = r2 | r6
            r4 = r4 & 15
            int r4 = r4 << 8
            r4 = r4 | r5
            r5 = 7
            r6 = r0[r5]
            r6 = r6 & 240(0xf0, float:3.36E-43)
            int r6 = r6 >> r1
            r7 = 2
            if (r6 == r7) goto L3d
            r7 = 3
            if (r6 == r7) goto L37
            if (r6 == r1) goto L31
            r1 = 1065353216(0x3f800000, float:1.0)
            goto L44
        L31:
            int r1 = r4 * 121
            float r1 = (float) r1
            int r6 = r2 * 100
            goto L42
        L37:
            int r1 = r4 * 16
            float r1 = (float) r1
            int r6 = r2 * 9
            goto L42
        L3d:
            int r1 = r4 * 4
            float r1 = (float) r1
            int r6 = r2 * 3
        L42:
            float r6 = (float) r6
            float r1 = r1 / r6
        L44:
            b3.x1$b r6 = new b3.x1$b
            r6.<init>()
            b3.x1$b r9 = r6.U(r9)
            java.lang.String r6 = "video/mpeg2"
            b3.x1$b r9 = r9.g0(r6)
            b3.x1$b r9 = r9.n0(r2)
            b3.x1$b r9 = r9.S(r4)
            b3.x1$b r9 = r9.c0(r1)
            java.util.List r1 = java.util.Collections.singletonList(r0)
            b3.x1$b r9 = r9.V(r1)
            b3.x1 r9 = r9.G()
            r1 = r0[r5]
            r1 = r1 & 15
            int r1 = r1 + (-1)
            if (r1 < 0) goto L98
            double[] r2 = q3.n.f28181q
            int r4 = r2.length
            if (r1 >= r4) goto L98
            r1 = r2[r1]
            int r8 = r8.f28201c
            int r8 = r8 + 9
            r8 = r0[r8]
            r0 = r8 & 96
            int r0 = r0 >> r3
            r8 = r8 & 31
            if (r0 == r8) goto L90
            double r3 = (double) r0
            r5 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r3 = r3 + r5
            int r8 = r8 + 1
            double r5 = (double) r8
            double r3 = r3 / r5
            double r1 = r1 * r3
        L90:
            r3 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            double r3 = r3 / r1
            long r0 = (long) r3
            goto L9a
        L98:
            r0 = 0
        L9a:
            java.lang.Long r8 = java.lang.Long.valueOf(r0)
            android.util.Pair r8 = android.util.Pair.create(r9, r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: q3.n.a(q3.n$a, java.lang.String):android.util.Pair");
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0142  */
    @Override // q3.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(y4.e0 r21) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: q3.n.b(y4.e0):void");
    }

    @Override // q3.m
    public void c() {
        y4.w.a(this.f28187f);
        this.f28188g.c();
        u uVar = this.f28186e;
        if (uVar != null) {
            uVar.d();
        }
        this.f28189h = 0L;
        this.f28190i = false;
        this.f28193l = -9223372036854775807L;
        this.f28195n = -9223372036854775807L;
    }

    @Override // q3.m
    public void d() {
    }

    @Override // q3.m
    public void e(long j10, int i10) {
        this.f28193l = j10;
    }

    @Override // q3.m
    public void f(g3.m mVar, i0.d dVar) {
        dVar.a();
        this.f28182a = dVar.b();
        this.f28183b = mVar.a(dVar.c(), 2);
        k0 k0Var = this.f28184c;
        if (k0Var != null) {
            k0Var.b(mVar, dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(k0 k0Var) {
        this.f28184c = k0Var;
        this.f28187f = new boolean[4];
        this.f28188g = new a(128);
        if (k0Var != null) {
            this.f28186e = new u(178, 128);
            this.f28185d = new y4.e0();
        } else {
            this.f28186e = null;
            this.f28185d = null;
        }
        this.f28193l = -9223372036854775807L;
        this.f28195n = -9223372036854775807L;
    }
}
