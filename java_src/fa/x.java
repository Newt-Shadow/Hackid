package fa;

import java.util.HashMap;
/* loaded from: classes.dex */
class x {

    /* renamed from: a  reason: collision with root package name */
    boolean f16054a = true;

    /* renamed from: b  reason: collision with root package name */
    boolean f16055b = false;

    /* renamed from: c  reason: collision with root package name */
    boolean f16056c = false;

    /* renamed from: d  reason: collision with root package name */
    boolean f16057d = false;

    /* renamed from: e  reason: collision with root package name */
    boolean f16058e = false;

    /* renamed from: f  reason: collision with root package name */
    boolean f16059f = false;

    /* loaded from: classes.dex */
    class a extends HashMap {
        a() {
            put("showPreview", Boolean.valueOf(x.this.f16054a));
            put("previewPaused", Boolean.valueOf(x.this.f16055b));
            put("imageStreaming", Boolean.valueOf(x.this.f16057d));
            put("imageStreamingPaused", Boolean.valueOf(x.this.f16057d));
            put("recordingVideo", Boolean.valueOf(x.this.f16058e));
            put("recordingVideoPaused", Boolean.valueOf(x.this.f16059f));
        }
    }

    public void a(l0 l0Var) {
        b(l0Var.f15969b);
        c(l0Var.f15970c);
        this.f16054a = l0Var.f15968a;
    }

    public void b(boolean z10) {
        this.f16056c = z10;
        if (z10) {
            this.f16057d = false;
        }
    }

    public void c(boolean z10) {
        this.f16058e = z10;
        if (z10) {
            this.f16059f = false;
        }
    }

    public HashMap d() {
        return new a();
    }

    public String toString() {
        return "CameraConfigState{showPreview=" + this.f16054a + ", previewPaused=" + this.f16055b + ", imageStreaming=" + this.f16056c + ", imageStreamingPaused=" + this.f16057d + ", recordingVideo=" + this.f16058e + ", recordingVideoPaused=" + this.f16059f + '}';
    }
}
