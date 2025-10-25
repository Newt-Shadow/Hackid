package q3;

import org.apache.tika.fork.ForkServer;
import y4.m0;
import y4.q0;
/* loaded from: classes.dex */
final class y {

    /* renamed from: c  reason: collision with root package name */
    private boolean f28368c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f28369d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f28370e;

    /* renamed from: a  reason: collision with root package name */
    private final m0 f28366a = new m0(0);

    /* renamed from: f  reason: collision with root package name */
    private long f28371f = -9223372036854775807L;

    /* renamed from: g  reason: collision with root package name */
    private long f28372g = -9223372036854775807L;

    /* renamed from: h  reason: collision with root package name */
    private long f28373h = -9223372036854775807L;

    /* renamed from: b  reason: collision with root package name */
    private final y4.e0 f28367b = new y4.e0();

    private static boolean a(byte[] bArr) {
        if ((bArr[0] & 196) != 68 || (bArr[2] & 4) != 4 || (bArr[4] & 4) != 4 || (bArr[5] & 1) != 1 || (bArr[8] & 3) != 3) {
            return false;
        }
        return true;
    }

    private int b(g3.l lVar) {
        this.f28367b.Q(q0.f32951f);
        this.f28368c = true;
        lVar.l();
        return 0;
    }

    private int f(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & ForkServer.ERROR) | ((bArr[i10] & ForkServer.ERROR) << 24) | ((bArr[i10 + 1] & ForkServer.ERROR) << 16) | ((bArr[i10 + 2] & ForkServer.ERROR) << 8);
    }

    private int h(g3.l lVar, g3.y yVar) {
        int min = (int) Math.min(20000L, lVar.b());
        long j10 = 0;
        if (lVar.c() != j10) {
            yVar.f16251a = j10;
            return 1;
        }
        this.f28367b.P(min);
        lVar.l();
        lVar.p(this.f28367b.e(), 0, min);
        this.f28371f = i(this.f28367b);
        this.f28369d = true;
        return 0;
    }

    private long i(y4.e0 e0Var) {
        int g10 = e0Var.g();
        for (int f10 = e0Var.f(); f10 < g10 - 3; f10++) {
            if (f(e0Var.e(), f10) == 442) {
                e0Var.T(f10 + 4);
                long l10 = l(e0Var);
                if (l10 != -9223372036854775807L) {
                    return l10;
                }
            }
        }
        return -9223372036854775807L;
    }

    private int j(g3.l lVar, g3.y yVar) {
        long b10 = lVar.b();
        int min = (int) Math.min(20000L, b10);
        long j10 = b10 - min;
        if (lVar.c() != j10) {
            yVar.f16251a = j10;
            return 1;
        }
        this.f28367b.P(min);
        lVar.l();
        lVar.p(this.f28367b.e(), 0, min);
        this.f28372g = k(this.f28367b);
        this.f28370e = true;
        return 0;
    }

    private long k(y4.e0 e0Var) {
        int f10 = e0Var.f();
        for (int g10 = e0Var.g() - 4; g10 >= f10; g10--) {
            if (f(e0Var.e(), g10) == 442) {
                e0Var.T(g10 + 4);
                long l10 = l(e0Var);
                if (l10 != -9223372036854775807L) {
                    return l10;
                }
            }
        }
        return -9223372036854775807L;
    }

    public static long l(y4.e0 e0Var) {
        int f10 = e0Var.f();
        if (e0Var.a() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        e0Var.l(bArr, 0, 9);
        e0Var.T(f10);
        if (!a(bArr)) {
            return -9223372036854775807L;
        }
        return m(bArr);
    }

    private static long m(byte[] bArr) {
        byte b10 = bArr[0];
        byte b11 = bArr[2];
        return (((b10 & 56) >> 3) << 30) | ((b10 & 3) << 28) | ((bArr[1] & 255) << 20) | (((b11 & 248) >> 3) << 15) | ((b11 & 3) << 13) | ((bArr[3] & 255) << 5) | ((bArr[4] & 248) >> 3);
    }

    public long c() {
        return this.f28373h;
    }

    public m0 d() {
        return this.f28366a;
    }

    public boolean e() {
        return this.f28368c;
    }

    public int g(g3.l lVar, g3.y yVar) {
        if (!this.f28370e) {
            return j(lVar, yVar);
        }
        if (this.f28372g == -9223372036854775807L) {
            return b(lVar);
        }
        if (!this.f28369d) {
            return h(lVar, yVar);
        }
        long j10 = this.f28371f;
        if (j10 == -9223372036854775807L) {
            return b(lVar);
        }
        long b10 = this.f28366a.b(this.f28372g) - this.f28366a.b(j10);
        this.f28373h = b10;
        if (b10 < 0) {
            y4.r.i("PsDurationReader", "Invalid duration: " + this.f28373h + ". Using TIME_UNSET instead.");
            this.f28373h = -9223372036854775807L;
        }
        return b(lVar);
    }
}
