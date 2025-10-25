package j9;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private final float f24546a;

    /* renamed from: b  reason: collision with root package name */
    private final float f24547b;

    /* renamed from: c  reason: collision with root package name */
    private final float f24548c;

    /* renamed from: d  reason: collision with root package name */
    private final float f24549d;

    /* renamed from: e  reason: collision with root package name */
    private final float f24550e;

    /* renamed from: f  reason: collision with root package name */
    private final float f24551f;

    /* renamed from: g  reason: collision with root package name */
    private final float f24552g;

    /* renamed from: h  reason: collision with root package name */
    private final float f24553h;

    /* renamed from: i  reason: collision with root package name */
    private final float f24554i;

    private l(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        this.f24546a = f10;
        this.f24547b = f13;
        this.f24548c = f16;
        this.f24549d = f11;
        this.f24550e = f14;
        this.f24551f = f17;
        this.f24552g = f12;
        this.f24553h = f15;
        this.f24554i = f18;
    }

    public static l b(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, float f21, float f22, float f23, float f24, float f25) {
        return d(f18, f19, f20, f21, f22, f23, f24, f25).e(c(f10, f11, f12, f13, f14, f15, f16, f17));
    }

    public static l c(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17) {
        return d(f10, f11, f12, f13, f14, f15, f16, f17).a();
    }

    public static l d(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17) {
        float f18 = ((f10 - f12) + f14) - f16;
        float f19 = ((f11 - f13) + f15) - f17;
        if (f18 == 0.0f && f19 == 0.0f) {
            return new l(f12 - f10, f14 - f12, f10, f13 - f11, f15 - f13, f11, 0.0f, 0.0f, 1.0f);
        }
        float f20 = f12 - f14;
        float f21 = f16 - f14;
        float f22 = f13 - f15;
        float f23 = f17 - f15;
        float f24 = (f20 * f23) - (f21 * f22);
        float f25 = ((f23 * f18) - (f21 * f19)) / f24;
        float f26 = ((f20 * f19) - (f18 * f22)) / f24;
        return new l((f25 * f12) + (f12 - f10), (f26 * f16) + (f16 - f10), f10, (f13 - f11) + (f25 * f13), (f17 - f11) + (f26 * f17), f11, f25, f26, 1.0f);
    }

    l a() {
        float f10 = this.f24550e;
        float f11 = this.f24554i;
        float f12 = this.f24551f;
        float f13 = this.f24553h;
        float f14 = (f10 * f11) - (f12 * f13);
        float f15 = this.f24552g;
        float f16 = this.f24549d;
        float f17 = (f12 * f15) - (f16 * f11);
        float f18 = (f16 * f13) - (f10 * f15);
        float f19 = this.f24548c;
        float f20 = this.f24547b;
        float f21 = (f19 * f13) - (f20 * f11);
        float f22 = this.f24546a;
        return new l(f14, f17, f18, f21, (f11 * f22) - (f19 * f15), (f15 * f20) - (f13 * f22), (f20 * f12) - (f19 * f10), (f19 * f16) - (f12 * f22), (f22 * f10) - (f20 * f16));
    }

    l e(l lVar) {
        float f10 = this.f24546a;
        float f11 = lVar.f24546a;
        float f12 = this.f24549d;
        float f13 = lVar.f24547b;
        float f14 = this.f24552g;
        float f15 = lVar.f24548c;
        float f16 = (f10 * f11) + (f12 * f13) + (f14 * f15);
        float f17 = lVar.f24549d;
        float f18 = lVar.f24550e;
        float f19 = lVar.f24551f;
        float f20 = (f10 * f17) + (f12 * f18) + (f14 * f19);
        float f21 = lVar.f24552g;
        float f22 = lVar.f24553h;
        float f23 = lVar.f24554i;
        float f24 = (f10 * f21) + (f12 * f22) + (f14 * f23);
        float f25 = this.f24547b;
        float f26 = this.f24550e;
        float f27 = this.f24553h;
        float f28 = (f27 * f23) + (f25 * f21) + (f26 * f22);
        float f29 = this.f24548c;
        float f30 = this.f24551f;
        float f31 = (f11 * f29) + (f13 * f30);
        float f32 = this.f24554i;
        return new l(f16, f20, f24, (f25 * f11) + (f26 * f13) + (f27 * f15), (f25 * f17) + (f26 * f18) + (f27 * f19), f28, (f15 * f32) + f31, (f17 * f29) + (f18 * f30) + (f19 * f32), (f29 * f21) + (f30 * f22) + (f32 * f23));
    }

    public void f(float[] fArr) {
        float f10 = this.f24546a;
        float f11 = this.f24547b;
        float f12 = this.f24548c;
        float f13 = this.f24549d;
        float f14 = this.f24550e;
        float f15 = this.f24551f;
        float f16 = this.f24552g;
        float f17 = this.f24553h;
        float f18 = this.f24554i;
        int length = fArr.length - 1;
        for (int i10 = 0; i10 < length; i10 += 2) {
            float f19 = fArr[i10];
            int i11 = i10 + 1;
            float f20 = fArr[i11];
            float f21 = (f12 * f19) + (f15 * f20) + f18;
            fArr[i10] = (((f10 * f19) + (f13 * f20)) + f16) / f21;
            fArr[i11] = (((f19 * f11) + (f20 * f14)) + f17) / f21;
        }
    }
}
