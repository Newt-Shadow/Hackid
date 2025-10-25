package r3;

import android.util.Pair;
import b3.e3;
import b3.x1;
import d3.a1;
import g3.b0;
import g3.k;
import g3.l;
import g3.m;
import g3.p;
import g3.y;
import io.flutter.embedding.android.KeyboardMap;
import kotlin.KotlinVersion;
import org.apache.tika.fork.ForkServer;
import y4.e0;
import y4.q0;
import y4.r;
/* loaded from: classes.dex */
public final class b implements k {

    /* renamed from: h  reason: collision with root package name */
    public static final p f28883h = new p() { // from class: r3.a
        @Override // g3.p
        public final k[] b() {
            k[] e10;
            e10 = b.e();
            return e10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private m f28884a;

    /* renamed from: b  reason: collision with root package name */
    private b0 f28885b;

    /* renamed from: e  reason: collision with root package name */
    private InterfaceC0299b f28888e;

    /* renamed from: c  reason: collision with root package name */
    private int f28886c = 0;

    /* renamed from: d  reason: collision with root package name */
    private long f28887d = -1;

    /* renamed from: f  reason: collision with root package name */
    private int f28889f = -1;

    /* renamed from: g  reason: collision with root package name */
    private long f28890g = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a implements InterfaceC0299b {

        /* renamed from: m  reason: collision with root package name */
        private static final int[] f28891m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

        /* renamed from: n  reason: collision with root package name */
        private static final int[] f28892n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, 253, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

        /* renamed from: a  reason: collision with root package name */
        private final m f28893a;

        /* renamed from: b  reason: collision with root package name */
        private final b0 f28894b;

        /* renamed from: c  reason: collision with root package name */
        private final r3.c f28895c;

        /* renamed from: d  reason: collision with root package name */
        private final int f28896d;

        /* renamed from: e  reason: collision with root package name */
        private final byte[] f28897e;

        /* renamed from: f  reason: collision with root package name */
        private final e0 f28898f;

        /* renamed from: g  reason: collision with root package name */
        private final int f28899g;

        /* renamed from: h  reason: collision with root package name */
        private final x1 f28900h;

        /* renamed from: i  reason: collision with root package name */
        private int f28901i;

        /* renamed from: j  reason: collision with root package name */
        private long f28902j;

        /* renamed from: k  reason: collision with root package name */
        private int f28903k;

        /* renamed from: l  reason: collision with root package name */
        private long f28904l;

        public a(m mVar, b0 b0Var, r3.c cVar) {
            this.f28893a = mVar;
            this.f28894b = b0Var;
            this.f28895c = cVar;
            int max = Math.max(1, cVar.f28915c / 10);
            this.f28899g = max;
            e0 e0Var = new e0(cVar.f28919g);
            e0Var.y();
            int y10 = e0Var.y();
            this.f28896d = y10;
            int i10 = cVar.f28914b;
            int i11 = (((cVar.f28917e - (i10 * 4)) * 8) / (cVar.f28918f * i10)) + 1;
            if (y10 == i11) {
                int l10 = q0.l(max, y10);
                this.f28897e = new byte[cVar.f28917e * l10];
                this.f28898f = new e0(l10 * h(y10, i10));
                int i12 = ((cVar.f28915c * cVar.f28917e) * 8) / y10;
                this.f28900h = new x1.b().g0("audio/raw").I(i12).b0(i12).Y(h(max, i10)).J(cVar.f28914b).h0(cVar.f28915c).a0(2).G();
                return;
            }
            throw e3.a("Expected frames per block: " + i11 + "; got: " + y10, null);
        }

        private void d(byte[] bArr, int i10, e0 e0Var) {
            for (int i11 = 0; i11 < i10; i11++) {
                for (int i12 = 0; i12 < this.f28895c.f28914b; i12++) {
                    e(bArr, i11, i12, e0Var.e());
                }
            }
            int g10 = g(this.f28896d * i10);
            e0Var.T(0);
            e0Var.S(g10);
        }

        private void e(byte[] bArr, int i10, int i11, byte[] bArr2) {
            int i12;
            r3.c cVar = this.f28895c;
            int i13 = cVar.f28917e;
            int i14 = cVar.f28914b;
            int i15 = (i10 * i13) + (i11 * 4);
            int i16 = (i14 * 4) + i15;
            int i17 = (i13 / i14) - 4;
            int i18 = (short) (((bArr[i15 + 1] & ForkServer.ERROR) << 8) | (bArr[i15] & ForkServer.ERROR));
            int min = Math.min(bArr[i15 + 2] & ForkServer.ERROR, 88);
            int i19 = f28892n[min];
            int i20 = ((i10 * this.f28896d * i14) + i11) * 2;
            bArr2[i20] = (byte) (i18 & KotlinVersion.MAX_COMPONENT_VALUE);
            bArr2[i20 + 1] = (byte) (i18 >> 8);
            for (int i21 = 0; i21 < i17 * 2; i21++) {
                int i22 = bArr[((i21 / 8) * i14 * 4) + i16 + ((i21 / 2) % 4)] & ForkServer.ERROR;
                if (i21 % 2 == 0) {
                    i12 = i22 & 15;
                } else {
                    i12 = i22 >> 4;
                }
                int i23 = ((((i12 & 7) * 2) + 1) * i19) >> 3;
                if ((i12 & 8) != 0) {
                    i23 = -i23;
                }
                i18 = q0.q(i18 + i23, -32768, 32767);
                i20 += i14 * 2;
                bArr2[i20] = (byte) (i18 & KotlinVersion.MAX_COMPONENT_VALUE);
                bArr2[i20 + 1] = (byte) (i18 >> 8);
                int i24 = min + f28891m[i12];
                int[] iArr = f28892n;
                min = q0.q(i24, 0, iArr.length - 1);
                i19 = iArr[min];
            }
        }

        private int f(int i10) {
            return i10 / (this.f28895c.f28914b * 2);
        }

        private int g(int i10) {
            return h(i10, this.f28895c.f28914b);
        }

        private static int h(int i10, int i11) {
            return i10 * 2 * i11;
        }

        private void i(int i10) {
            long M0 = this.f28902j + q0.M0(this.f28904l, 1000000L, this.f28895c.f28915c);
            int g10 = g(i10);
            this.f28894b.f(M0, 1, g10, this.f28903k - g10, null);
            this.f28904l += i10;
            this.f28903k -= g10;
        }

        @Override // r3.b.InterfaceC0299b
        public void a(long j10) {
            this.f28901i = 0;
            this.f28902j = j10;
            this.f28903k = 0;
            this.f28904l = 0L;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0020  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0035 -> B:4:0x001b). Please submit an issue!!! */
        @Override // r3.b.InterfaceC0299b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean b(g3.l r7, long r8) {
            /*
                r6 = this;
                int r0 = r6.f28899g
                int r1 = r6.f28903k
                int r1 = r6.f(r1)
                int r0 = r0 - r1
                int r1 = r6.f28896d
                int r0 = y4.q0.l(r0, r1)
                r3.c r1 = r6.f28895c
                int r1 = r1.f28917e
                int r0 = r0 * r1
                r1 = 0
                int r1 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
                r2 = 1
                if (r1 != 0) goto L1d
            L1b:
                r1 = r2
                goto L1e
            L1d:
                r1 = 0
            L1e:
                if (r1 != 0) goto L3e
                int r3 = r6.f28901i
                if (r3 >= r0) goto L3e
                int r3 = r0 - r3
                long r3 = (long) r3
                long r3 = java.lang.Math.min(r3, r8)
                int r3 = (int) r3
                byte[] r4 = r6.f28897e
                int r5 = r6.f28901i
                int r3 = r7.read(r4, r5, r3)
                r4 = -1
                if (r3 != r4) goto L38
                goto L1b
            L38:
                int r4 = r6.f28901i
                int r4 = r4 + r3
                r6.f28901i = r4
                goto L1e
            L3e:
                int r7 = r6.f28901i
                r3.c r8 = r6.f28895c
                int r8 = r8.f28917e
                int r7 = r7 / r8
                if (r7 <= 0) goto L75
                byte[] r8 = r6.f28897e
                y4.e0 r9 = r6.f28898f
                r6.d(r8, r7, r9)
                int r8 = r6.f28901i
                r3.c r9 = r6.f28895c
                int r9 = r9.f28917e
                int r7 = r7 * r9
                int r8 = r8 - r7
                r6.f28901i = r8
                y4.e0 r7 = r6.f28898f
                int r7 = r7.g()
                g3.b0 r8 = r6.f28894b
                y4.e0 r9 = r6.f28898f
                r8.b(r9, r7)
                int r8 = r6.f28903k
                int r8 = r8 + r7
                r6.f28903k = r8
                int r7 = r6.f(r8)
                int r8 = r6.f28899g
                if (r7 < r8) goto L75
                r6.i(r8)
            L75:
                if (r1 == 0) goto L82
                int r7 = r6.f28903k
                int r7 = r6.f(r7)
                if (r7 <= 0) goto L82
                r6.i(r7)
            L82:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: r3.b.a.b(g3.l, long):boolean");
        }

        @Override // r3.b.InterfaceC0299b
        public void c(int i10, long j10) {
            this.f28893a.l(new e(this.f28895c, this.f28896d, i10, j10));
            this.f28894b.c(this.f28900h);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r3.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0299b {
        void a(long j10);

        boolean b(l lVar, long j10);

        void c(int i10, long j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c implements InterfaceC0299b {

        /* renamed from: a  reason: collision with root package name */
        private final m f28905a;

        /* renamed from: b  reason: collision with root package name */
        private final b0 f28906b;

        /* renamed from: c  reason: collision with root package name */
        private final r3.c f28907c;

        /* renamed from: d  reason: collision with root package name */
        private final x1 f28908d;

        /* renamed from: e  reason: collision with root package name */
        private final int f28909e;

        /* renamed from: f  reason: collision with root package name */
        private long f28910f;

        /* renamed from: g  reason: collision with root package name */
        private int f28911g;

        /* renamed from: h  reason: collision with root package name */
        private long f28912h;

        public c(m mVar, b0 b0Var, r3.c cVar, String str, int i10) {
            this.f28905a = mVar;
            this.f28906b = b0Var;
            this.f28907c = cVar;
            int i11 = (cVar.f28914b * cVar.f28918f) / 8;
            if (cVar.f28917e == i11) {
                int i12 = cVar.f28915c;
                int i13 = i12 * i11 * 8;
                int max = Math.max(i11, (i12 * i11) / 10);
                this.f28909e = max;
                this.f28908d = new x1.b().g0(str).I(i13).b0(i13).Y(max).J(cVar.f28914b).h0(cVar.f28915c).a0(i10).G();
                return;
            }
            throw e3.a("Expected block size: " + i11 + "; got: " + cVar.f28917e, null);
        }

        @Override // r3.b.InterfaceC0299b
        public void a(long j10) {
            this.f28910f = j10;
            this.f28911g = 0;
            this.f28912h = 0L;
        }

        @Override // r3.b.InterfaceC0299b
        public boolean b(l lVar, long j10) {
            int i10;
            r3.c cVar;
            int i11;
            int i12;
            long j11 = j10;
            while (true) {
                i10 = (j11 > 0L ? 1 : (j11 == 0L ? 0 : -1));
                if (i10 <= 0 || (i11 = this.f28911g) >= (i12 = this.f28909e)) {
                    break;
                }
                int e10 = this.f28906b.e(lVar, (int) Math.min(i12 - i11, j11), true);
                if (e10 == -1) {
                    j11 = 0;
                } else {
                    this.f28911g += e10;
                    j11 -= e10;
                }
            }
            int i13 = this.f28907c.f28917e;
            int i14 = this.f28911g / i13;
            if (i14 > 0) {
                int i15 = i14 * i13;
                int i16 = this.f28911g - i15;
                this.f28906b.f(this.f28910f + q0.M0(this.f28912h, 1000000L, cVar.f28915c), 1, i15, i16, null);
                this.f28912h += i14;
                this.f28911g = i16;
            }
            if (i10 <= 0) {
                return true;
            }
            return false;
        }

        @Override // r3.b.InterfaceC0299b
        public void c(int i10, long j10) {
            this.f28905a.l(new e(this.f28907c, 1, i10, j10));
            this.f28906b.c(this.f28908d);
        }
    }

    private void d() {
        y4.a.h(this.f28885b);
        q0.j(this.f28884a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] e() {
        return new k[]{new b()};
    }

    private void h(l lVar) {
        boolean z10;
        if (lVar.c() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        int i10 = this.f28889f;
        if (i10 != -1) {
            lVar.m(i10);
            this.f28886c = 4;
        } else if (d.a(lVar)) {
            lVar.m((int) (lVar.g() - lVar.c()));
            this.f28886c = 1;
        } else {
            throw e3.a("Unsupported or unrecognized wav file type.", null);
        }
    }

    private void i(l lVar) {
        r3.c b10 = d.b(lVar);
        int i10 = b10.f28913a;
        if (i10 == 17) {
            this.f28888e = new a(this.f28884a, this.f28885b, b10);
        } else if (i10 == 6) {
            this.f28888e = new c(this.f28884a, this.f28885b, b10, "audio/g711-alaw", -1);
        } else if (i10 == 7) {
            this.f28888e = new c(this.f28884a, this.f28885b, b10, "audio/g711-mlaw", -1);
        } else {
            int a10 = a1.a(i10, b10.f28918f);
            if (a10 != 0) {
                this.f28888e = new c(this.f28884a, this.f28885b, b10, "audio/raw", a10);
            } else {
                throw e3.d("Unsupported WAV format type: " + b10.f28913a);
            }
        }
        this.f28886c = 3;
    }

    private void j(l lVar) {
        this.f28887d = d.c(lVar);
        this.f28886c = 2;
    }

    private int k(l lVar) {
        boolean z10;
        if (this.f28890g != -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        if (!((InterfaceC0299b) y4.a.e(this.f28888e)).b(lVar, this.f28890g - lVar.c())) {
            return 0;
        }
        return -1;
    }

    private void l(l lVar) {
        Pair e10 = d.e(lVar);
        this.f28889f = ((Long) e10.first).intValue();
        long longValue = ((Long) e10.second).longValue();
        long j10 = this.f28887d;
        if (j10 != -1 && longValue == KeyboardMap.kValueMask) {
            longValue = j10;
        }
        this.f28890g = this.f28889f + longValue;
        long b10 = lVar.b();
        if (b10 != -1 && this.f28890g > b10) {
            r.i("WavExtractor", "Data exceeds input length: " + this.f28890g + ", " + b10);
            this.f28890g = b10;
        }
        ((InterfaceC0299b) y4.a.e(this.f28888e)).c(this.f28889f, this.f28890g);
        this.f28886c = 4;
    }

    @Override // g3.k
    public void b(long j10, long j11) {
        int i10;
        if (j10 == 0) {
            i10 = 0;
        } else {
            i10 = 4;
        }
        this.f28886c = i10;
        InterfaceC0299b interfaceC0299b = this.f28888e;
        if (interfaceC0299b != null) {
            interfaceC0299b.a(j11);
        }
    }

    @Override // g3.k
    public void c(m mVar) {
        this.f28884a = mVar;
        this.f28885b = mVar.a(0, 1);
        mVar.n();
    }

    @Override // g3.k
    public boolean f(l lVar) {
        return d.a(lVar);
    }

    @Override // g3.k
    public int g(l lVar, y yVar) {
        d();
        int i10 = this.f28886c;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            return k(lVar);
                        }
                        throw new IllegalStateException();
                    }
                    l(lVar);
                    return 0;
                }
                i(lVar);
                return 0;
            }
            j(lVar);
            return 0;
        }
        h(lVar);
        return 0;
    }

    @Override // g3.k
    public void release() {
    }
}
