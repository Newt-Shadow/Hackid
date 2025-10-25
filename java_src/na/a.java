package na;

import android.hardware.camera2.CaptureRequest;
import android.os.Build;
import android.util.Range;
import fa.e0;
/* loaded from: classes.dex */
public class a extends ga.a {

    /* renamed from: c  reason: collision with root package name */
    private static final Range f26547c = new Range(30, 30);

    /* renamed from: b  reason: collision with root package name */
    private Range f26548b;

    public a(e0 e0Var) {
        super(e0Var);
        Range range;
        if (d()) {
            this.f26548b = f26547c;
            return;
        }
        Range[] g10 = e0Var.g();
        if (g10 != null) {
            for (Range range2 : g10) {
                int intValue = ((Integer) range2.getUpper()).intValue();
                if (intValue >= 10 && ((range = this.f26548b) == null || intValue > ((Integer) range.getUpper()).intValue())) {
                    this.f26548b = range2;
                }
            }
        }
    }

    private boolean d() {
        if (Build.BRAND.equals("google") && Build.MODEL.equals("Pixel 4a")) {
            return true;
        }
        return false;
    }

    @Override // ga.a
    public String a() {
        return "FpsRangeFeature";
    }

    @Override // ga.a
    public void b(CaptureRequest.Builder builder) {
        if (!c()) {
            return;
        }
        builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, this.f26548b);
    }

    public boolean c() {
        return true;
    }
}
