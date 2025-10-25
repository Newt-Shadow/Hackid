package i3;

import g3.a0;
import g3.b0;
import g3.l;
import g3.z;
import java.util.Arrays;
import y4.q0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    protected final b0 f17094a;

    /* renamed from: b  reason: collision with root package name */
    private final int f17095b;

    /* renamed from: c  reason: collision with root package name */
    private final int f17096c;

    /* renamed from: d  reason: collision with root package name */
    private final long f17097d;

    /* renamed from: e  reason: collision with root package name */
    private final int f17098e;

    /* renamed from: f  reason: collision with root package name */
    private int f17099f;

    /* renamed from: g  reason: collision with root package name */
    private int f17100g;

    /* renamed from: h  reason: collision with root package name */
    private int f17101h;

    /* renamed from: i  reason: collision with root package name */
    private int f17102i;

    /* renamed from: j  reason: collision with root package name */
    private int f17103j;

    /* renamed from: k  reason: collision with root package name */
    private long[] f17104k;

    /* renamed from: l  reason: collision with root package name */
    private int[] f17105l;

    public e(int i10, int i11, long j10, int i12, b0 b0Var) {
        int i13;
        int i14;
        boolean z10 = true;
        if (i11 != 1 && i11 != 2) {
            z10 = false;
        }
        y4.a.a(z10);
        this.f17097d = j10;
        this.f17098e = i12;
        this.f17094a = b0Var;
        if (i11 == 2) {
            i13 = 1667497984;
        } else {
            i13 = 1651965952;
        }
        this.f17095b = d(i10, i13);
        if (i11 == 2) {
            i14 = d(i10, 1650720768);
        } else {
            i14 = -1;
        }
        this.f17096c = i14;
        this.f17104k = new long[512];
        this.f17105l = new int[512];
    }

    private static int d(int i10, int i11) {
        return (((i10 % 10) + 48) << 8) | ((i10 / 10) + 48) | i11;
    }

    private long e(int i10) {
        return (this.f17097d * i10) / this.f17098e;
    }

    private a0 h(int i10) {
        return new a0(this.f17105l[i10] * g(), this.f17104k[i10]);
    }

    public void a() {
        this.f17101h++;
    }

    public void b(long j10) {
        if (this.f17103j == this.f17105l.length) {
            long[] jArr = this.f17104k;
            this.f17104k = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
            int[] iArr = this.f17105l;
            this.f17105l = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
        }
        long[] jArr2 = this.f17104k;
        int i10 = this.f17103j;
        jArr2[i10] = j10;
        this.f17105l[i10] = this.f17102i;
        this.f17103j = i10 + 1;
    }

    public void c() {
        this.f17104k = Arrays.copyOf(this.f17104k, this.f17103j);
        this.f17105l = Arrays.copyOf(this.f17105l, this.f17103j);
    }

    public long f() {
        return e(this.f17101h);
    }

    public long g() {
        return e(1);
    }

    public z.a i(long j10) {
        int g10 = (int) (j10 / g());
        int h10 = q0.h(this.f17105l, g10, true, true);
        if (this.f17105l[h10] == g10) {
            return new z.a(h(h10));
        }
        a0 h11 = h(h10);
        int i10 = h10 + 1;
        if (i10 < this.f17104k.length) {
            return new z.a(h11, h(i10));
        }
        return new z.a(h11);
    }

    public boolean j(int i10) {
        if (this.f17095b != i10 && this.f17096c != i10) {
            return false;
        }
        return true;
    }

    public void k() {
        this.f17102i++;
    }

    public boolean l() {
        if (Arrays.binarySearch(this.f17105l, this.f17101h) >= 0) {
            return true;
        }
        return false;
    }

    public boolean m(l lVar) {
        int i10 = this.f17100g;
        boolean z10 = false;
        int e10 = i10 - this.f17094a.e(lVar, i10, false);
        this.f17100g = e10;
        if (e10 == 0) {
            z10 = true;
        }
        if (z10) {
            if (this.f17099f > 0) {
                b0 b0Var = this.f17094a;
                long f10 = f();
                boolean l10 = l();
                b0Var.f(f10, l10 ? 1 : 0, this.f17099f, 0, null);
            }
            a();
        }
        return z10;
    }

    public void n(int i10) {
        this.f17099f = i10;
        this.f17100g = i10;
    }

    public void o(long j10) {
        if (this.f17103j == 0) {
            this.f17101h = 0;
            return;
        }
        this.f17101h = this.f17105l[q0.i(this.f17104k, j10, true, true)];
    }
}
