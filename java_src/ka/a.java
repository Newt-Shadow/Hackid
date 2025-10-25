package ka;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import android.util.Size;
import fa.e0;
import fa.k0;
import ga.e;
import io.flutter.embedding.engine.systemchannels.PlatformChannel;
import qa.b;
/* loaded from: classes.dex */
public class a extends ga.a {

    /* renamed from: b  reason: collision with root package name */
    private Size f24865b;

    /* renamed from: c  reason: collision with root package name */
    private e f24866c;

    /* renamed from: d  reason: collision with root package name */
    private MeteringRectangle f24867d;

    /* renamed from: e  reason: collision with root package name */
    private final b f24868e;

    public a(e0 e0Var, b bVar) {
        super(e0Var);
        this.f24868e = bVar;
    }

    private void c() {
        if (this.f24865b != null) {
            if (this.f24866c == null) {
                this.f24867d = null;
                return;
            }
            PlatformChannel.DeviceOrientation d10 = this.f24868e.d();
            if (d10 == null) {
                d10 = this.f24868e.c().c();
            }
            this.f24867d = k0.b(this.f24865b, this.f24866c.f16342a.doubleValue(), this.f24866c.f16343b.doubleValue(), d10);
            return;
        }
        throw new AssertionError("The cameraBoundaries should be set (using `ExposurePointFeature.setCameraBoundaries(Size)`) before updating the exposure point.");
    }

    @Override // ga.a
    public String a() {
        return "ExposurePointFeature";
    }

    @Override // ga.a
    public void b(CaptureRequest.Builder builder) {
        MeteringRectangle[] meteringRectangleArr;
        if (!d()) {
            return;
        }
        CaptureRequest.Key key = CaptureRequest.CONTROL_AE_REGIONS;
        MeteringRectangle meteringRectangle = this.f24867d;
        if (meteringRectangle == null) {
            meteringRectangleArr = null;
        } else {
            meteringRectangleArr = new MeteringRectangle[]{meteringRectangle};
        }
        builder.set(key, meteringRectangleArr);
    }

    public boolean d() {
        Integer a10 = this.f16340a.a();
        if (a10 != null && a10.intValue() > 0) {
            return true;
        }
        return false;
    }

    public void e(Size size) {
        this.f24865b = size;
        c();
    }

    public void f(e eVar) {
        this.f24866c = (eVar == null || eVar.f16342a == null || eVar.f16343b == null) ? null : null;
        c();
    }
}
