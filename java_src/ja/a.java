package ja;

import android.hardware.camera2.CaptureRequest;
import android.util.Range;
import fa.e0;
/* loaded from: classes.dex */
public class a extends ga.a {

    /* renamed from: b  reason: collision with root package name */
    private double f24560b;

    public a(e0 e0Var) {
        super(e0Var);
        this.f24560b = 0.0d;
    }

    @Override // ga.a
    public String a() {
        return "ExposureOffsetFeature";
    }

    @Override // ga.a
    public void b(CaptureRequest.Builder builder) {
        if (!c()) {
            return;
        }
        builder.set(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, Integer.valueOf((int) this.f24560b));
    }

    public boolean c() {
        return true;
    }

    public double d() {
        return this.f16340a.b();
    }

    public double e() {
        double intValue;
        Range l10 = this.f16340a.l();
        if (l10 == null) {
            intValue = 0.0d;
        } else {
            intValue = ((Integer) l10.getUpper()).intValue();
        }
        return intValue * d();
    }

    public double f() {
        double intValue;
        Range l10 = this.f16340a.l();
        if (l10 == null) {
            intValue = 0.0d;
        } else {
            intValue = ((Integer) l10.getLower()).intValue();
        }
        return intValue * d();
    }

    public Double g() {
        return Double.valueOf(this.f24560b);
    }

    public void h(Double d10) {
        this.f24560b = d10.doubleValue() / d();
    }
}
