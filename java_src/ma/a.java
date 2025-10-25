package ma;

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
    private Size f26013b;

    /* renamed from: c  reason: collision with root package name */
    private e f26014c;

    /* renamed from: d  reason: collision with root package name */
    private MeteringRectangle f26015d;

    /* renamed from: e  reason: collision with root package name */
    private final b f26016e;

    public a(e0 e0Var, b bVar) {
        super(e0Var);
        this.f26016e = bVar;
    }

    private void c() {
        if (this.f26013b != null) {
            if (this.f26014c == null) {
                this.f26015d = null;
                return;
            }
            PlatformChannel.DeviceOrientation d10 = this.f26016e.d();
            if (d10 == null) {
                d10 = this.f26016e.c().c();
            }
            this.f26015d = k0.b(this.f26013b, this.f26014c.f16342a.doubleValue(), this.f26014c.f16343b.doubleValue(), d10);
            return;
        }
        throw new AssertionError("The cameraBoundaries should be set (using `FocusPointFeature.setCameraBoundaries(Size)`) before updating the focus point.");
    }

    @Override // ga.a
    public String a() {
        return "FocusPointFeature";
    }

    @Override // ga.a
    public void b(CaptureRequest.Builder builder) {
        MeteringRectangle[] meteringRectangleArr;
        if (!d()) {
            return;
        }
        CaptureRequest.Key key = CaptureRequest.CONTROL_AF_REGIONS;
        MeteringRectangle meteringRectangle = this.f26015d;
        if (meteringRectangle == null) {
            meteringRectangleArr = null;
        } else {
            meteringRectangleArr = new MeteringRectangle[]{meteringRectangle};
        }
        builder.set(key, meteringRectangleArr);
    }

    public boolean d() {
        Integer s10 = this.f16340a.s();
        if (s10 != null && s10.intValue() > 0) {
            return true;
        }
        return false;
    }

    public void e(Size size) {
        this.f26013b = size;
        c();
    }

    public void f(e eVar) {
        this.f26014c = (eVar == null || eVar.f16342a == null || eVar.f16343b == null) ? null : null;
        c();
    }
}
