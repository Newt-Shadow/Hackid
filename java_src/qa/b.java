package qa;

import android.app.Activity;
import android.hardware.camera2.CaptureRequest;
import fa.e0;
import fa.o0;
import io.flutter.embedding.engine.systemchannels.PlatformChannel;
/* loaded from: classes.dex */
public class b extends ga.a {

    /* renamed from: b  reason: collision with root package name */
    private Integer f28647b;

    /* renamed from: c  reason: collision with root package name */
    private final a f28648c;

    /* renamed from: d  reason: collision with root package name */
    private PlatformChannel.DeviceOrientation f28649d;

    public b(e0 e0Var, Activity activity, o0 o0Var) {
        super(e0Var);
        this.f28647b = 0;
        f(Integer.valueOf(e0Var.n()));
        a a10 = a.a(activity, o0Var, e0Var.j() == 0, this.f28647b.intValue());
        this.f28648c = a10;
        a10.i();
    }

    @Override // ga.a
    public String a() {
        return "SensorOrientationFeature";
    }

    @Override // ga.a
    public void b(CaptureRequest.Builder builder) {
    }

    public a c() {
        return this.f28648c;
    }

    public PlatformChannel.DeviceOrientation d() {
        return this.f28649d;
    }

    public void e(PlatformChannel.DeviceOrientation deviceOrientation) {
        this.f28649d = deviceOrientation;
    }

    public void f(Integer num) {
        this.f28647b = num;
    }

    public void g() {
        this.f28649d = null;
    }
}
