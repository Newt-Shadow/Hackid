package oa;

import android.hardware.camera2.CaptureRequest;
import android.util.Log;
import fa.e0;
import java.util.HashMap;
/* loaded from: classes.dex */
public class a extends ga.a {

    /* renamed from: b  reason: collision with root package name */
    private b f27523b;

    /* renamed from: c  reason: collision with root package name */
    private final HashMap f27524c;

    public a(e0 e0Var) {
        super(e0Var);
        b bVar = b.fast;
        this.f27523b = bVar;
        HashMap hashMap = new HashMap();
        this.f27524c = hashMap;
        hashMap.put(b.off, 0);
        hashMap.put(bVar, 1);
        hashMap.put(b.highQuality, 2);
        hashMap.put(b.minimal, 3);
        hashMap.put(b.zeroShutterLag, 4);
    }

    @Override // ga.a
    public String a() {
        return "NoiseReductionFeature";
    }

    @Override // ga.a
    public void b(CaptureRequest.Builder builder) {
        if (!c()) {
            return;
        }
        Log.i("Camera", "updateNoiseReduction | currentSetting: " + this.f27523b);
        builder.set(CaptureRequest.NOISE_REDUCTION_MODE, (Integer) this.f27524c.get(this.f27523b));
    }

    public boolean c() {
        int[] k10 = this.f16340a.k();
        if (k10 != null && k10.length > 0) {
            return true;
        }
        return false;
    }
}
