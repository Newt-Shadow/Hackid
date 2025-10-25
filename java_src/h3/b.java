package h3;

import b3.e3;
import b3.x1;
import g3.b0;
import g3.d;
import g3.k;
import g3.l;
import g3.m;
import g3.p;
import g3.y;
import g3.z;
import java.io.EOFException;
import java.util.Arrays;
import y4.q0;
/* loaded from: classes.dex */
public final class b implements k {

    /* renamed from: r  reason: collision with root package name */
    private static final int[] f16731r;

    /* renamed from: u  reason: collision with root package name */
    private static final int f16734u;

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f16735a;

    /* renamed from: b  reason: collision with root package name */
    private final int f16736b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f16737c;

    /* renamed from: d  reason: collision with root package name */
    private long f16738d;

    /* renamed from: e  reason: collision with root package name */
    private int f16739e;

    /* renamed from: f  reason: collision with root package name */
    private int f16740f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f16741g;

    /* renamed from: h  reason: collision with root package name */
    private long f16742h;

    /* renamed from: i  reason: collision with root package name */
    private int f16743i;

    /* renamed from: j  reason: collision with root package name */
    private int f16744j;

    /* renamed from: k  reason: collision with root package name */
    private long f16745k;

    /* renamed from: l  reason: collision with root package name */
    private m f16746l;

    /* renamed from: m  reason: collision with root package name */
    private b0 f16747m;

    /* renamed from: n  reason: collision with root package name */
    private z f16748n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f16749o;

    /* renamed from: p  reason: collision with root package name */
    public static final p f16729p = new p() { // from class: h3.a
        @Override // g3.p
        public final k[] b() {
            k[] m10;
            m10 = b.m();
            return m10;
        }
    };

    /* renamed from: q  reason: collision with root package name */
    private static final int[] f16730q = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: s  reason: collision with root package name */
    private static final byte[] f16732s = q0.l0("#!AMR\n");

    /* renamed from: t  reason: collision with root package name */
    private static final byte[] f16733t = q0.l0("#!AMR-WB\n");

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f16731r = iArr;
        f16734u = iArr[8];
    }

    public b() {
        this(0);
    }

    private void d() {
        y4.a.h(this.f16747m);
        q0.j(this.f16746l);
    }

    private static int e(int i10, long j10) {
        return (int) (((i10 * 8) * 1000000) / j10);
    }

    private z h(long j10, boolean z10) {
        return new d(j10, this.f16742h, e(this.f16743i, 20000L), this.f16743i, z10);
    }

    private int i(int i10) {
        String str;
        if (!k(i10)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Illegal AMR ");
            if (this.f16737c) {
                str = "WB";
            } else {
                str = "NB";
            }
            sb2.append(str);
            sb2.append(" frame type ");
            sb2.append(i10);
            throw e3.a(sb2.toString(), null);
        } else if (this.f16737c) {
            return f16731r[i10];
        } else {
            return f16730q[i10];
        }
    }

    private boolean j(int i10) {
        if (!this.f16737c && (i10 < 12 || i10 > 14)) {
            return true;
        }
        return false;
    }

    private boolean k(int i10) {
        if (i10 >= 0 && i10 <= 15 && (l(i10) || j(i10))) {
            return true;
        }
        return false;
    }

    private boolean l(int i10) {
        if (this.f16737c && (i10 < 10 || i10 > 13)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] m() {
        return new k[]{new b()};
    }

    private void n() {
        String str;
        int i10;
        if (!this.f16749o) {
            this.f16749o = true;
            boolean z10 = this.f16737c;
            if (z10) {
                str = "audio/amr-wb";
            } else {
                str = "audio/3gpp";
            }
            if (z10) {
                i10 = 16000;
            } else {
                i10 = 8000;
            }
            this.f16747m.c(new x1.b().g0(str).Y(f16734u).J(1).h0(i10).G());
        }
    }

    private void o(long j10, int i10) {
        int i11;
        boolean z10;
        if (this.f16741g) {
            return;
        }
        int i12 = this.f16736b;
        if ((i12 & 1) != 0 && j10 != -1 && ((i11 = this.f16743i) == -1 || i11 == this.f16739e)) {
            if (this.f16744j >= 20 || i10 == -1) {
                if ((i12 & 2) != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z h10 = h(j10, z10);
                this.f16748n = h10;
                this.f16746l.l(h10);
                this.f16741g = true;
                return;
            }
            return;
        }
        z.b bVar = new z.b(-9223372036854775807L);
        this.f16748n = bVar;
        this.f16746l.l(bVar);
        this.f16741g = true;
    }

    private static boolean p(l lVar, byte[] bArr) {
        lVar.l();
        byte[] bArr2 = new byte[bArr.length];
        lVar.p(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    private int q(l lVar) {
        lVar.l();
        lVar.p(this.f16735a, 0, 1);
        byte b10 = this.f16735a[0];
        if ((b10 & 131) <= 0) {
            return i((b10 >> 3) & 15);
        }
        throw e3.a("Invalid padding bits for frame header " + ((int) b10), null);
    }

    private boolean r(l lVar) {
        byte[] bArr = f16732s;
        if (p(lVar, bArr)) {
            this.f16737c = false;
            lVar.m(bArr.length);
            return true;
        }
        byte[] bArr2 = f16733t;
        if (!p(lVar, bArr2)) {
            return false;
        }
        this.f16737c = true;
        lVar.m(bArr2.length);
        return true;
    }

    private int s(l lVar) {
        if (this.f16740f == 0) {
            try {
                int q10 = q(lVar);
                this.f16739e = q10;
                this.f16740f = q10;
                if (this.f16743i == -1) {
                    this.f16742h = lVar.c();
                    this.f16743i = this.f16739e;
                }
                if (this.f16743i == this.f16739e) {
                    this.f16744j++;
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int e10 = this.f16747m.e(lVar, this.f16740f, true);
        if (e10 == -1) {
            return -1;
        }
        int i10 = this.f16740f - e10;
        this.f16740f = i10;
        if (i10 > 0) {
            return 0;
        }
        this.f16747m.f(this.f16745k + this.f16738d, 1, this.f16739e, 0, null);
        this.f16738d += 20000;
        return 0;
    }

    @Override // g3.k
    public void b(long j10, long j11) {
        this.f16738d = 0L;
        this.f16739e = 0;
        this.f16740f = 0;
        if (j10 != 0) {
            z zVar = this.f16748n;
            if (zVar instanceof d) {
                this.f16745k = ((d) zVar).c(j10);
                return;
            }
        }
        this.f16745k = 0L;
    }

    @Override // g3.k
    public void c(m mVar) {
        this.f16746l = mVar;
        this.f16747m = mVar.a(0, 1);
        mVar.n();
    }

    @Override // g3.k
    public boolean f(l lVar) {
        return r(lVar);
    }

    @Override // g3.k
    public int g(l lVar, y yVar) {
        d();
        if (lVar.c() == 0 && !r(lVar)) {
            throw e3.a("Could not find AMR header.", null);
        }
        n();
        int s10 = s(lVar);
        o(lVar.b(), s10);
        return s10;
    }

    @Override // g3.k
    public void release() {
    }

    public b(int i10) {
        this.f16736b = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.f16735a = new byte[1];
        this.f16743i = -1;
    }
}
