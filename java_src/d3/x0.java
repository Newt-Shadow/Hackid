package d3;

import java.nio.ShortBuffer;
import java.util.Arrays;
import kotlin.KotlinVersion;
/* loaded from: classes.dex */
final class x0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f14644a;

    /* renamed from: b  reason: collision with root package name */
    private final int f14645b;

    /* renamed from: c  reason: collision with root package name */
    private final float f14646c;

    /* renamed from: d  reason: collision with root package name */
    private final float f14647d;

    /* renamed from: e  reason: collision with root package name */
    private final float f14648e;

    /* renamed from: f  reason: collision with root package name */
    private final int f14649f;

    /* renamed from: g  reason: collision with root package name */
    private final int f14650g;

    /* renamed from: h  reason: collision with root package name */
    private final int f14651h;

    /* renamed from: i  reason: collision with root package name */
    private final short[] f14652i;

    /* renamed from: j  reason: collision with root package name */
    private short[] f14653j;

    /* renamed from: k  reason: collision with root package name */
    private int f14654k;

    /* renamed from: l  reason: collision with root package name */
    private short[] f14655l;

    /* renamed from: m  reason: collision with root package name */
    private int f14656m;

    /* renamed from: n  reason: collision with root package name */
    private short[] f14657n;

    /* renamed from: o  reason: collision with root package name */
    private int f14658o;

    /* renamed from: p  reason: collision with root package name */
    private int f14659p;

    /* renamed from: q  reason: collision with root package name */
    private int f14660q;

    /* renamed from: r  reason: collision with root package name */
    private int f14661r;

    /* renamed from: s  reason: collision with root package name */
    private int f14662s;

    /* renamed from: t  reason: collision with root package name */
    private int f14663t;

    /* renamed from: u  reason: collision with root package name */
    private int f14664u;

    /* renamed from: v  reason: collision with root package name */
    private int f14665v;

    public x0(int i10, int i11, float f10, float f11, int i12) {
        this.f14644a = i10;
        this.f14645b = i11;
        this.f14646c = f10;
        this.f14647d = f11;
        this.f14648e = i10 / i12;
        this.f14649f = i10 / 400;
        int i13 = i10 / 65;
        this.f14650g = i13;
        int i14 = i13 * 2;
        this.f14651h = i14;
        this.f14652i = new short[i14];
        this.f14653j = new short[i14 * i11];
        this.f14655l = new short[i14 * i11];
        this.f14657n = new short[i14 * i11];
    }

    private void a(float f10, int i10) {
        int i11;
        int i12;
        if (this.f14656m == i10) {
            return;
        }
        int i13 = this.f14644a;
        int i14 = (int) (i13 / f10);
        while (true) {
            if (i14 <= 16384 && i13 <= 16384) {
                break;
            }
            i14 /= 2;
            i13 /= 2;
        }
        o(i10);
        int i15 = 0;
        while (true) {
            int i16 = this.f14658o;
            boolean z10 = true;
            if (i15 < i16 - 1) {
                while (true) {
                    i11 = this.f14659p;
                    int i17 = (i11 + 1) * i14;
                    i12 = this.f14660q;
                    if (i17 <= i12 * i13) {
                        break;
                    }
                    this.f14655l = f(this.f14655l, this.f14656m, 1);
                    int i18 = 0;
                    while (true) {
                        int i19 = this.f14645b;
                        if (i18 < i19) {
                            this.f14655l[(this.f14656m * i19) + i18] = n(this.f14657n, (i19 * i15) + i18, i13, i14);
                            i18++;
                        }
                    }
                    this.f14660q++;
                    this.f14656m++;
                }
                int i20 = i11 + 1;
                this.f14659p = i20;
                if (i20 == i13) {
                    this.f14659p = 0;
                    if (i12 != i14) {
                        z10 = false;
                    }
                    y4.a.f(z10);
                    this.f14660q = 0;
                }
                i15++;
            } else {
                u(i16 - 1);
                return;
            }
        }
    }

    private void b(float f10) {
        int m10;
        int i10 = this.f14654k;
        if (i10 < this.f14651h) {
            return;
        }
        int i11 = 0;
        do {
            if (this.f14661r > 0) {
                m10 = c(i11);
            } else {
                int g10 = g(this.f14653j, i11);
                if (f10 > 1.0d) {
                    m10 = g10 + w(this.f14653j, i11, f10, g10);
                } else {
                    m10 = m(this.f14653j, i11, f10, g10);
                }
            }
            i11 += m10;
        } while (this.f14651h + i11 <= i10);
        v(i11);
    }

    private int c(int i10) {
        int min = Math.min(this.f14651h, this.f14661r);
        d(this.f14653j, i10, min);
        this.f14661r -= min;
        return min;
    }

    private void d(short[] sArr, int i10, int i11) {
        short[] f10 = f(this.f14655l, this.f14656m, i11);
        this.f14655l = f10;
        int i12 = this.f14645b;
        System.arraycopy(sArr, i10 * i12, f10, this.f14656m * i12, i12 * i11);
        this.f14656m += i11;
    }

    private void e(short[] sArr, int i10, int i11) {
        int i12 = this.f14651h / i11;
        int i13 = this.f14645b;
        int i14 = i11 * i13;
        int i15 = i10 * i13;
        for (int i16 = 0; i16 < i12; i16++) {
            int i17 = 0;
            for (int i18 = 0; i18 < i14; i18++) {
                i17 += sArr[(i16 * i14) + i15 + i18];
            }
            this.f14652i[i16] = (short) (i17 / i14);
        }
    }

    private short[] f(short[] sArr, int i10, int i11) {
        int length = sArr.length;
        int i12 = this.f14645b;
        int i13 = length / i12;
        if (i10 + i11 <= i13) {
            return sArr;
        }
        return Arrays.copyOf(sArr, (((i13 * 3) / 2) + i11) * i12);
    }

    private int g(short[] sArr, int i10) {
        int i11;
        int i12;
        int i13;
        int i14 = this.f14644a;
        if (i14 > 4000) {
            i11 = i14 / 4000;
        } else {
            i11 = 1;
        }
        if (this.f14645b == 1 && i11 == 1) {
            i12 = h(sArr, i10, this.f14649f, this.f14650g);
        } else {
            e(sArr, i10, i11);
            int h10 = h(this.f14652i, 0, this.f14649f / i11, this.f14650g / i11);
            if (i11 != 1) {
                int i15 = h10 * i11;
                int i16 = i11 * 4;
                int i17 = i15 - i16;
                int i18 = i15 + i16;
                int i19 = this.f14649f;
                if (i17 < i19) {
                    i17 = i19;
                }
                int i20 = this.f14650g;
                if (i18 > i20) {
                    i18 = i20;
                }
                if (this.f14645b == 1) {
                    i12 = h(sArr, i10, i17, i18);
                } else {
                    e(sArr, i10, 1);
                    i12 = h(this.f14652i, 0, i17, i18);
                }
            } else {
                i12 = h10;
            }
        }
        if (q(this.f14664u, this.f14665v)) {
            i13 = this.f14662s;
        } else {
            i13 = i12;
        }
        this.f14663t = this.f14664u;
        this.f14662s = i12;
        return i13;
    }

    private int h(short[] sArr, int i10, int i11, int i12) {
        int i13 = i10 * this.f14645b;
        int i14 = KotlinVersion.MAX_COMPONENT_VALUE;
        int i15 = 1;
        int i16 = 0;
        int i17 = 0;
        while (i11 <= i12) {
            int i18 = 0;
            for (int i19 = 0; i19 < i11; i19++) {
                i18 += Math.abs(sArr[i13 + i19] - sArr[(i13 + i11) + i19]);
            }
            if (i18 * i16 < i15 * i11) {
                i16 = i11;
                i15 = i18;
            }
            if (i18 * i14 > i17 * i11) {
                i14 = i11;
                i17 = i18;
            }
            i11++;
        }
        this.f14664u = i15 / i16;
        this.f14665v = i17 / i14;
        return i16;
    }

    private int m(short[] sArr, int i10, float f10, int i11) {
        int i12;
        if (f10 < 0.5f) {
            i12 = (int) ((i11 * f10) / (1.0f - f10));
        } else {
            this.f14661r = (int) ((i11 * ((2.0f * f10) - 1.0f)) / (1.0f - f10));
            i12 = i11;
        }
        int i13 = i11 + i12;
        short[] f11 = f(this.f14655l, this.f14656m, i13);
        this.f14655l = f11;
        int i14 = this.f14645b;
        System.arraycopy(sArr, i10 * i14, f11, this.f14656m * i14, i14 * i11);
        p(i12, this.f14645b, this.f14655l, this.f14656m + i11, sArr, i10 + i11, sArr, i10);
        this.f14656m += i13;
        return i12;
    }

    private short n(short[] sArr, int i10, int i11, int i12) {
        short s10 = sArr[i10];
        short s11 = sArr[i10 + this.f14645b];
        int i13 = this.f14660q * i11;
        int i14 = this.f14659p;
        int i15 = i14 * i12;
        int i16 = (i14 + 1) * i12;
        int i17 = i16 - i13;
        int i18 = i16 - i15;
        return (short) (((s10 * i17) + ((i18 - i17) * s11)) / i18);
    }

    private void o(int i10) {
        int i11 = this.f14656m - i10;
        short[] f10 = f(this.f14657n, this.f14658o, i11);
        this.f14657n = f10;
        short[] sArr = this.f14655l;
        int i12 = this.f14645b;
        System.arraycopy(sArr, i10 * i12, f10, this.f14658o * i12, i12 * i11);
        this.f14656m = i10;
        this.f14658o += i11;
    }

    private static void p(int i10, int i11, short[] sArr, int i12, short[] sArr2, int i13, short[] sArr3, int i14) {
        for (int i15 = 0; i15 < i11; i15++) {
            int i16 = (i12 * i11) + i15;
            int i17 = (i14 * i11) + i15;
            int i18 = (i13 * i11) + i15;
            for (int i19 = 0; i19 < i10; i19++) {
                sArr[i16] = (short) (((sArr2[i18] * (i10 - i19)) + (sArr3[i17] * i19)) / i10);
                i16 += i11;
                i18 += i11;
                i17 += i11;
            }
        }
    }

    private boolean q(int i10, int i11) {
        if (i10 == 0 || this.f14662s == 0 || i11 > i10 * 3 || i10 * 2 <= this.f14663t * 3) {
            return false;
        }
        return true;
    }

    private void r() {
        int i10 = this.f14656m;
        float f10 = this.f14646c;
        float f11 = this.f14647d;
        float f12 = f10 / f11;
        float f13 = this.f14648e * f11;
        double d10 = f12;
        if (d10 <= 1.00001d && d10 >= 0.99999d) {
            d(this.f14653j, 0, this.f14654k);
            this.f14654k = 0;
        } else {
            b(f12);
        }
        if (f13 != 1.0f) {
            a(f13, i10);
        }
    }

    private void u(int i10) {
        if (i10 == 0) {
            return;
        }
        short[] sArr = this.f14657n;
        int i11 = this.f14645b;
        System.arraycopy(sArr, i10 * i11, sArr, 0, (this.f14658o - i10) * i11);
        this.f14658o -= i10;
    }

    private void v(int i10) {
        int i11 = this.f14654k - i10;
        short[] sArr = this.f14653j;
        int i12 = this.f14645b;
        System.arraycopy(sArr, i10 * i12, sArr, 0, i12 * i11);
        this.f14654k = i11;
    }

    private int w(short[] sArr, int i10, float f10, int i11) {
        int i12;
        if (f10 >= 2.0f) {
            i12 = (int) (i11 / (f10 - 1.0f));
        } else {
            this.f14661r = (int) ((i11 * (2.0f - f10)) / (f10 - 1.0f));
            i12 = i11;
        }
        short[] f11 = f(this.f14655l, this.f14656m, i12);
        this.f14655l = f11;
        p(i12, this.f14645b, f11, this.f14656m, sArr, i10, sArr, i10 + i11);
        this.f14656m += i12;
        return i12;
    }

    public void i() {
        this.f14654k = 0;
        this.f14656m = 0;
        this.f14658o = 0;
        this.f14659p = 0;
        this.f14660q = 0;
        this.f14661r = 0;
        this.f14662s = 0;
        this.f14663t = 0;
        this.f14664u = 0;
        this.f14665v = 0;
    }

    public void j(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.f14645b, this.f14656m);
        shortBuffer.put(this.f14655l, 0, this.f14645b * min);
        int i10 = this.f14656m - min;
        this.f14656m = i10;
        short[] sArr = this.f14655l;
        int i11 = this.f14645b;
        System.arraycopy(sArr, min * i11, sArr, 0, i10 * i11);
    }

    public int k() {
        return this.f14656m * this.f14645b * 2;
    }

    public int l() {
        return this.f14654k * this.f14645b * 2;
    }

    public void s() {
        int i10;
        int i11 = this.f14654k;
        float f10 = this.f14646c;
        float f11 = this.f14647d;
        int i12 = this.f14656m + ((int) ((((i11 / (f10 / f11)) + this.f14658o) / (this.f14648e * f11)) + 0.5f));
        this.f14653j = f(this.f14653j, i11, (this.f14651h * 2) + i11);
        int i13 = 0;
        while (true) {
            i10 = this.f14651h;
            int i14 = this.f14645b;
            if (i13 >= i10 * 2 * i14) {
                break;
            }
            this.f14653j[(i14 * i11) + i13] = 0;
            i13++;
        }
        this.f14654k += i10 * 2;
        r();
        if (this.f14656m > i12) {
            this.f14656m = i12;
        }
        this.f14654k = 0;
        this.f14661r = 0;
        this.f14658o = 0;
    }

    public void t(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i10 = this.f14645b;
        int i11 = remaining / i10;
        short[] f10 = f(this.f14653j, this.f14654k, i11);
        this.f14653j = f10;
        shortBuffer.get(f10, this.f14654k * this.f14645b, ((i10 * i11) * 2) / 2);
        this.f14654k += i11;
        r();
    }
}
