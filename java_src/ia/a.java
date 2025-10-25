package ia;

import android.hardware.camera2.CaptureRequest;
import fa.e0;
/* loaded from: classes.dex */
public class a extends ga.a {

    /* renamed from: b  reason: collision with root package name */
    private b f17360b;

    public a(e0 e0Var) {
        super(e0Var);
        this.f17360b = b.auto;
    }

    @Override // ga.a
    public String a() {
        return "ExposureLockFeature";
    }

    @Override // ga.a
    public void b(CaptureRequest.Builder builder) {
        boolean z10;
        if (!c()) {
            return;
        }
        CaptureRequest.Key key = CaptureRequest.CONTROL_AE_LOCK;
        if (this.f17360b == b.locked) {
            z10 = true;
        } else {
            z10 = false;
        }
        builder.set(key, Boolean.valueOf(z10));
    }

    public boolean c() {
        return true;
    }

    public b d() {
        return this.f17360b;
    }

    public void e(b bVar) {
        this.f17360b = bVar;
    }
}
