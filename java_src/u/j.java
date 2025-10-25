package u;
/* loaded from: classes.dex */
final class j {

    /* renamed from: k  reason: collision with root package name */
    static final j f30790k = k(b.f30760c, (float) ((b.h(50.0f) * 63.66197723675813d) / 100.0d), 50.0f, 2.0f, false);

    /* renamed from: a  reason: collision with root package name */
    private final float f30791a;

    /* renamed from: b  reason: collision with root package name */
    private final float f30792b;

    /* renamed from: c  reason: collision with root package name */
    private final float f30793c;

    /* renamed from: d  reason: collision with root package name */
    private final float f30794d;

    /* renamed from: e  reason: collision with root package name */
    private final float f30795e;

    /* renamed from: f  reason: collision with root package name */
    private final float f30796f;

    /* renamed from: g  reason: collision with root package name */
    private final float[] f30797g;

    /* renamed from: h  reason: collision with root package name */
    private final float f30798h;

    /* renamed from: i  reason: collision with root package name */
    private final float f30799i;

    /* renamed from: j  reason: collision with root package name */
    private final float f30800j;

    private j(float f10, float f11, float f12, float f13, float f14, float f15, float[] fArr, float f16, float f17, float f18) {
        this.f30796f = f10;
        this.f30791a = f11;
        this.f30792b = f12;
        this.f30793c = f13;
        this.f30794d = f14;
        this.f30795e = f15;
        this.f30797g = fArr;
        this.f30798h = f16;
        this.f30799i = f17;
        this.f30800j = f18;
    }

    static j k(float[] fArr, float f10, float f11, float f12, boolean z10) {
        float d10;
        float exp;
        float[][] fArr2 = b.f30758a;
        float f13 = fArr[0];
        float[] fArr3 = fArr2[0];
        float f14 = fArr[1];
        float f15 = fArr[2];
        float f16 = (fArr3[0] * f13) + (fArr3[1] * f14) + (fArr3[2] * f15);
        float[] fArr4 = fArr2[1];
        float f17 = (fArr4[0] * f13) + (fArr4[1] * f14) + (fArr4[2] * f15);
        float[] fArr5 = fArr2[2];
        float f18 = (f13 * fArr5[0]) + (f14 * fArr5[1]) + (f15 * fArr5[2]);
        float f19 = (f12 / 10.0f) + 0.8f;
        if (f19 >= 0.9d) {
            d10 = b.d(0.59f, 0.69f, (f19 - 0.9f) * 10.0f);
        } else {
            d10 = b.d(0.525f, 0.59f, (f19 - 0.8f) * 10.0f);
        }
        float f20 = d10;
        if (z10) {
            exp = 1.0f;
        } else {
            exp = (1.0f - (((float) Math.exp(((-f10) - 42.0f) / 92.0f)) * 0.2777778f)) * f19;
        }
        double d11 = exp;
        if (d11 > 1.0d) {
            exp = 1.0f;
        } else if (d11 < 0.0d) {
            exp = 0.0f;
        }
        float[] fArr6 = {(((100.0f / f16) * exp) + 1.0f) - exp, (((100.0f / f17) * exp) + 1.0f) - exp, (((100.0f / f18) * exp) + 1.0f) - exp};
        float f21 = 1.0f / ((5.0f * f10) + 1.0f);
        float f22 = f21 * f21 * f21 * f21;
        float f23 = 1.0f - f22;
        float cbrt = (f22 * f10) + (0.1f * f23 * f23 * ((float) Math.cbrt(f10 * 5.0d)));
        float h10 = b.h(f11) / fArr[1];
        double d12 = h10;
        float sqrt = ((float) Math.sqrt(d12)) + 1.48f;
        float pow = 0.725f / ((float) Math.pow(d12, 0.2d));
        float pow2 = (float) Math.pow(((fArr6[2] * cbrt) * f18) / 100.0d, 0.42d);
        float[] fArr7 = {(float) Math.pow(((fArr6[0] * cbrt) * f16) / 100.0d, 0.42d), (float) Math.pow(((fArr6[1] * cbrt) * f17) / 100.0d, 0.42d), pow2};
        float f24 = fArr7[0];
        float f25 = fArr7[1];
        return new j(h10, ((((f24 * 400.0f) / (f24 + 27.13f)) * 2.0f) + ((f25 * 400.0f) / (f25 + 27.13f)) + (((400.0f * pow2) / (pow2 + 27.13f)) * 0.05f)) * pow, pow, pow, f20, f19, fArr6, cbrt, (float) Math.pow(cbrt, 0.25d), sqrt);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float a() {
        return this.f30791a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float b() {
        return this.f30794d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float c() {
        return this.f30798h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float d() {
        return this.f30799i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float e() {
        return this.f30796f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float f() {
        return this.f30792b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float g() {
        return this.f30795e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float h() {
        return this.f30793c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float[] i() {
        return this.f30797g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float j() {
        return this.f30800j;
    }
}
