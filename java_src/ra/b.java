package ra;

import android.graphics.Rect;
import android.hardware.camera2.CaptureRequest;
import android.os.Build;
import fa.e0;
/* loaded from: classes.dex */
public class b extends ga.a {

    /* renamed from: g  reason: collision with root package name */
    private static final Float f29043g = Float.valueOf(1.0f);

    /* renamed from: b  reason: collision with root package name */
    private final boolean f29044b;

    /* renamed from: c  reason: collision with root package name */
    private final Rect f29045c;

    /* renamed from: d  reason: collision with root package name */
    private Float f29046d;

    /* renamed from: e  reason: collision with root package name */
    private Float f29047e;

    /* renamed from: f  reason: collision with root package name */
    private Float f29048f;

    public b(e0 e0Var) {
        super(e0Var);
        Float f10 = f29043g;
        this.f29046d = f10;
        this.f29047e = f10;
        Rect m10 = e0Var.m();
        this.f29045c = m10;
        if (m10 == null) {
            this.f29048f = this.f29047e;
            this.f29044b = false;
            return;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            this.f29047e = e0Var.e();
            this.f29048f = e0Var.i();
        } else {
            this.f29047e = f10;
            Float h10 = e0Var.h();
            this.f29048f = (h10 == null || h10.floatValue() < this.f29047e.floatValue()) ? this.f29047e : h10;
        }
        this.f29044b = Float.compare(this.f29048f.floatValue(), this.f29047e.floatValue()) > 0;
    }

    @Override // ga.a
    public String a() {
        return "ZoomLevelFeature";
    }

    @Override // ga.a
    public void b(CaptureRequest.Builder builder) {
        CaptureRequest.Key key;
        if (!c()) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            key = CaptureRequest.CONTROL_ZOOM_RATIO;
            builder.set(key, c.a(this.f29046d.floatValue(), this.f29047e.floatValue(), this.f29048f.floatValue()));
            return;
        }
        builder.set(CaptureRequest.SCALER_CROP_REGION, c.b(this.f29046d.floatValue(), this.f29045c, this.f29047e.floatValue(), this.f29048f.floatValue()));
    }

    public boolean c() {
        return this.f29044b;
    }

    public float d() {
        return this.f29048f.floatValue();
    }

    public float e() {
        return this.f29047e.floatValue();
    }

    public void f(Float f10) {
        this.f29046d = f10;
    }
}
