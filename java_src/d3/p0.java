package d3;

import d3.i0;
import io.appmetrica.analytics.impl.C1415p9;
import java.math.RoundingMode;
/* loaded from: classes.dex */
public class p0 implements i0.e {

    /* renamed from: b  reason: collision with root package name */
    protected final int f14560b;

    /* renamed from: c  reason: collision with root package name */
    protected final int f14561c;

    /* renamed from: d  reason: collision with root package name */
    protected final int f14562d;

    /* renamed from: e  reason: collision with root package name */
    protected final int f14563e;

    /* renamed from: f  reason: collision with root package name */
    protected final int f14564f;

    /* renamed from: g  reason: collision with root package name */
    public final int f14565g;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f14566a = 250000;

        /* renamed from: b  reason: collision with root package name */
        private int f14567b = 750000;

        /* renamed from: c  reason: collision with root package name */
        private int f14568c = 4;

        /* renamed from: d  reason: collision with root package name */
        private int f14569d = 250000;

        /* renamed from: e  reason: collision with root package name */
        private int f14570e = 50000000;

        /* renamed from: f  reason: collision with root package name */
        private int f14571f = 2;

        public p0 g() {
            return new p0(this);
        }
    }

    protected p0(a aVar) {
        this.f14560b = aVar.f14566a;
        this.f14561c = aVar.f14567b;
        this.f14562d = aVar.f14568c;
        this.f14563e = aVar.f14569d;
        this.f14564f = aVar.f14570e;
        this.f14565g = aVar.f14571f;
    }

    protected static int b(int i10, int i11, int i12) {
        return q6.e.d(((i10 * i11) * i12) / 1000000);
    }

    protected static int d(int i10) {
        switch (i10) {
            case 5:
                return 80000;
            case 6:
            case 18:
                return 768000;
            case 7:
                return 192000;
            case 8:
                return 2250000;
            case 9:
                return 40000;
            case 10:
                return 100000;
            case 11:
                return 16000;
            case 12:
                return 7000;
            case 13:
            case C1415p9.C /* 19 */:
            default:
                throw new IllegalArgumentException();
            case 14:
                return 3062500;
            case 15:
                return 8000;
            case 16:
                return 256000;
            case 17:
                return 336000;
            case 20:
                return 63750;
        }
    }

    @Override // d3.i0.e
    public int a(int i10, int i11, int i12, int i13, int i14, int i15, double d10) {
        return (((Math.max(i10, (int) (c(i10, i11, i12, i13, i14, i15) * d10)) + i13) - 1) / i13) * i13;
    }

    protected int c(int i10, int i11, int i12, int i13, int i14, int i15) {
        if (i12 != 0) {
            if (i12 != 1) {
                if (i12 == 2) {
                    return f(i11, i15);
                }
                throw new IllegalArgumentException();
            }
            return e(i11);
        }
        return g(i10, i14, i13);
    }

    protected int e(int i10) {
        return q6.e.d((this.f14564f * d(i10)) / 1000000);
    }

    protected int f(int i10, int i11) {
        int d10;
        int i12 = this.f14563e;
        if (i10 == 5) {
            i12 *= this.f14565g;
        }
        if (i11 != -1) {
            d10 = p6.b.a(i11, 8, RoundingMode.CEILING);
        } else {
            d10 = d(i10);
        }
        return q6.e.d((i12 * d10) / 1000000);
    }

    protected int g(int i10, int i11, int i12) {
        return y4.q0.q(i10 * this.f14562d, b(this.f14560b, i11, i12), b(this.f14561c, i11, i12));
    }
}
