package u;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final float f30749a;

    /* renamed from: b  reason: collision with root package name */
    private final float f30750b;

    /* renamed from: c  reason: collision with root package name */
    private final float f30751c;

    /* renamed from: d  reason: collision with root package name */
    private final float f30752d;

    /* renamed from: e  reason: collision with root package name */
    private final float f30753e;

    /* renamed from: f  reason: collision with root package name */
    private final float f30754f;

    /* renamed from: g  reason: collision with root package name */
    private final float f30755g;

    /* renamed from: h  reason: collision with root package name */
    private final float f30756h;

    /* renamed from: i  reason: collision with root package name */
    private final float f30757i;

    a(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        this.f30749a = f10;
        this.f30750b = f11;
        this.f30751c = f12;
        this.f30752d = f13;
        this.f30753e = f14;
        this.f30754f = f15;
        this.f30755g = f16;
        this.f30756h = f17;
        this.f30757i = f18;
    }

    private static a b(float f10, float f11, float f12) {
        float f13 = 100.0f;
        float f14 = 1000.0f;
        float f15 = 0.0f;
        a aVar = null;
        float f16 = 1000.0f;
        while (Math.abs(f15 - f13) > 0.01f) {
            float f17 = ((f13 - f15) / 2.0f) + f15;
            int p10 = e(f17, f11, f10).p();
            float b10 = b.b(p10);
            float abs = Math.abs(f12 - b10);
            if (abs < 0.2f) {
                a c10 = c(p10);
                float a10 = c10.a(e(c10.k(), c10.i(), f10));
                if (a10 <= 1.0f) {
                    aVar = c10;
                    f14 = abs;
                    f16 = a10;
                }
            }
            if (f14 == 0.0f && f16 == 0.0f) {
                break;
            } else if (b10 < f12) {
                f15 = f17;
            } else {
                f13 = f17;
            }
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a c(int i10) {
        float[] fArr = new float[7];
        float[] fArr2 = new float[3];
        d(i10, j.f30790k, fArr, fArr2);
        return new a(fArr2[0], fArr2[1], fArr[0], fArr[1], fArr[2], fArr[3], fArr[4], fArr[5], fArr[6]);
    }

    static void d(int i10, j jVar, float[] fArr, float[] fArr2) {
        float f10;
        float pow;
        b.f(i10, fArr2);
        float[][] fArr3 = b.f30758a;
        float f11 = fArr2[0];
        float[] fArr4 = fArr3[0];
        float f12 = fArr2[1];
        float f13 = fArr2[2];
        float f14 = (fArr4[0] * f11) + (fArr4[1] * f12) + (fArr4[2] * f13);
        float[] fArr5 = fArr3[1];
        float f15 = (fArr5[0] * f11) + (fArr5[1] * f12) + (fArr5[2] * f13);
        float[] fArr6 = fArr3[2];
        float f16 = jVar.i()[0] * f14;
        float f17 = jVar.i()[1] * f15;
        float f18 = jVar.i()[2] * ((f11 * fArr6[0]) + (f12 * fArr6[1]) + (f13 * fArr6[2]));
        float pow2 = (float) Math.pow((jVar.c() * Math.abs(f16)) / 100.0d, 0.42d);
        float pow3 = (float) Math.pow((jVar.c() * Math.abs(f17)) / 100.0d, 0.42d);
        float pow4 = (float) Math.pow((jVar.c() * Math.abs(f18)) / 100.0d, 0.42d);
        float signum = ((Math.signum(f16) * 400.0f) * pow2) / (pow2 + 27.13f);
        float signum2 = ((Math.signum(f17) * 400.0f) * pow3) / (pow3 + 27.13f);
        float signum3 = ((Math.signum(f18) * 400.0f) * pow4) / (pow4 + 27.13f);
        double d10 = signum3;
        float f19 = ((float) (((signum * 11.0d) + (signum2 * (-12.0d))) + d10)) / 11.0f;
        float f20 = ((float) ((signum + signum2) - (d10 * 2.0d))) / 9.0f;
        float f21 = signum2 * 20.0f;
        float f22 = (((signum * 20.0f) + f21) + (21.0f * signum3)) / 20.0f;
        float f23 = (((signum * 40.0f) + f21) + signum3) / 20.0f;
        float atan2 = (((float) Math.atan2(f20, f19)) * 180.0f) / 3.1415927f;
        if (atan2 < 0.0f) {
            atan2 += 360.0f;
        } else if (atan2 >= 360.0f) {
            atan2 -= 360.0f;
        }
        float f24 = (3.1415927f * atan2) / 180.0f;
        float pow5 = ((float) Math.pow((f23 * jVar.f()) / jVar.a(), jVar.b() * jVar.j())) * 100.0f;
        float b10 = (4.0f / jVar.b()) * ((float) Math.sqrt(pow5 / 100.0f)) * (jVar.a() + 4.0f) * jVar.d();
        if (atan2 < 20.14d) {
            f10 = 360.0f + atan2;
        } else {
            f10 = atan2;
        }
        float sqrt = ((float) Math.sqrt(pow5 / 100.0d)) * ((float) Math.pow(1.64d - Math.pow(0.29d, jVar.e()), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(((f10 * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * jVar.g()) * jVar.h()) * ((float) Math.sqrt((f19 * f19) + (f20 * f20)))) / (f22 + 0.305f), 0.9d));
        float d11 = jVar.d() * sqrt;
        float sqrt2 = ((float) Math.sqrt((pow * jVar.b()) / (jVar.a() + 4.0f))) * 50.0f;
        float f25 = (1.7f * pow5) / ((0.007f * pow5) + 1.0f);
        float log = ((float) Math.log((0.0228f * d11) + 1.0f)) * 43.85965f;
        double d12 = f24;
        float cos = ((float) Math.cos(d12)) * log;
        float sin = log * ((float) Math.sin(d12));
        fArr2[0] = atan2;
        fArr2[1] = sqrt;
        if (fArr != null) {
            fArr[0] = pow5;
            fArr[1] = b10;
            fArr[2] = d11;
            fArr[3] = sqrt2;
            fArr[4] = f25;
            fArr[5] = cos;
            fArr[6] = sin;
        }
    }

    private static a e(float f10, float f11, float f12) {
        return f(f10, f11, f12, j.f30790k);
    }

    private static a f(float f10, float f11, float f12, j jVar) {
        double d10;
        float b10 = (4.0f / jVar.b()) * ((float) Math.sqrt(f10 / 100.0d)) * (jVar.a() + 4.0f) * jVar.d();
        float d11 = f11 * jVar.d();
        float sqrt = ((float) Math.sqrt(((f11 / ((float) Math.sqrt(d10))) * jVar.b()) / (jVar.a() + 4.0f))) * 50.0f;
        float f13 = (1.7f * f10) / ((0.007f * f10) + 1.0f);
        float log = ((float) Math.log((d11 * 0.0228d) + 1.0d)) * 43.85965f;
        double d12 = (3.1415927f * f12) / 180.0f;
        return new a(f12, f11, f10, b10, d11, sqrt, f13, log * ((float) Math.cos(d12)), log * ((float) Math.sin(d12)));
    }

    public static int m(float f10, float f11, float f12) {
        return n(f10, f11, f12, j.f30790k);
    }

    static int n(float f10, float f11, float f12, j jVar) {
        float min;
        if (f11 >= 1.0d && Math.round(f12) > 0.0d && Math.round(f12) < 100.0d) {
            if (f10 < 0.0f) {
                min = 0.0f;
            } else {
                min = Math.min(360.0f, f10);
            }
            a aVar = null;
            boolean z10 = true;
            float f13 = 0.0f;
            float f14 = f11;
            while (Math.abs(f13 - f11) >= 0.4f) {
                a b10 = b(min, f14, f12);
                if (z10) {
                    if (b10 != null) {
                        return b10.o(jVar);
                    }
                    f14 = ((f11 - f13) / 2.0f) + f13;
                    z10 = false;
                } else {
                    if (b10 == null) {
                        f11 = f14;
                    } else {
                        f13 = f14;
                        aVar = b10;
                    }
                    f14 = ((f11 - f13) / 2.0f) + f13;
                }
            }
            if (aVar == null) {
                return b.a(f12);
            }
            return aVar.o(jVar);
        }
        return b.a(f12);
    }

    float a(a aVar) {
        float l10 = l() - aVar.l();
        float g10 = g() - aVar.g();
        float h10 = h() - aVar.h();
        return (float) (Math.pow(Math.sqrt((l10 * l10) + (g10 * g10) + (h10 * h10)), 0.63d) * 1.41d);
    }

    float g() {
        return this.f30756h;
    }

    float h() {
        return this.f30757i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float i() {
        return this.f30750b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float j() {
        return this.f30749a;
    }

    float k() {
        return this.f30751c;
    }

    float l() {
        return this.f30755g;
    }

    int o(j jVar) {
        float f10;
        float f11;
        if (i() != 0.0d && k() != 0.0d) {
            f10 = i() / ((float) Math.sqrt(k() / 100.0d));
        } else {
            f10 = 0.0f;
        }
        float pow = (float) Math.pow(f10 / Math.pow(1.64d - Math.pow(0.29d, jVar.e()), 0.73d), 1.1111111111111112d);
        double j10 = (j() * 3.1415927f) / 180.0f;
        float a10 = jVar.a() * ((float) Math.pow(k() / 100.0d, (1.0d / jVar.b()) / jVar.j()));
        float cos = ((float) (Math.cos(2.0d + j10) + 3.8d)) * 0.25f * 3846.1538f * jVar.g() * jVar.h();
        float f12 = a10 / jVar.f();
        float sin = (float) Math.sin(j10);
        float cos2 = (float) Math.cos(j10);
        float f13 = (((0.305f + f12) * 23.0f) * pow) / (((cos * 23.0f) + ((11.0f * pow) * cos2)) + ((pow * 108.0f) * sin));
        float f14 = cos2 * f13;
        float f15 = f13 * sin;
        float f16 = f12 * 460.0f;
        float f17 = (((451.0f * f14) + f16) + (288.0f * f15)) / 1403.0f;
        float f18 = ((f16 - (891.0f * f14)) - (261.0f * f15)) / 1403.0f;
        float signum = Math.signum(f17) * (100.0f / jVar.c()) * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f17) * 27.13d) / (400.0d - Math.abs(f17))), 2.380952380952381d));
        float signum2 = Math.signum(f18) * (100.0f / jVar.c()) * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f18) * 27.13d) / (400.0d - Math.abs(f18))), 2.380952380952381d));
        float signum3 = Math.signum(((f16 - (f14 * 220.0f)) - (f15 * 6300.0f)) / 1403.0f) * (100.0f / jVar.c()) * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f11) * 27.13d) / (400.0d - Math.abs(f11))), 2.380952380952381d));
        float f19 = signum / jVar.i()[0];
        float f20 = signum2 / jVar.i()[1];
        float f21 = signum3 / jVar.i()[2];
        float[][] fArr = b.f30759b;
        float[] fArr2 = fArr[0];
        float f22 = (fArr2[0] * f19) + (fArr2[1] * f20) + (fArr2[2] * f21);
        float[] fArr3 = fArr[1];
        float[] fArr4 = fArr[2];
        return v.a.a(f22, (fArr3[0] * f19) + (fArr3[1] * f20) + (fArr3[2] * f21), (f19 * fArr4[0]) + (f20 * fArr4[1]) + (f21 * fArr4[2]));
    }

    int p() {
        return o(j.f30790k);
    }
}
