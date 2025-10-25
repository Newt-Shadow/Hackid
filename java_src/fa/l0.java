package fa;

import java.util.Map;
/* loaded from: classes.dex */
class l0 {

    /* renamed from: a  reason: collision with root package name */
    boolean f15968a;

    /* renamed from: b  reason: collision with root package name */
    boolean f15969b;

    /* renamed from: c  reason: collision with root package name */
    boolean f15970c;

    public l0(boolean z10, boolean z11, boolean z12) {
        this.f15968a = z10;
        this.f15969b = z11;
        this.f15970c = z12;
    }

    public static l0 a(Map map) {
        Object obj = map.get("preview");
        Boolean bool = Boolean.TRUE;
        return new l0(obj.equals(bool), map.get("imageStreaming").equals(bool), map.get("videoRecording").equals(bool));
    }

    public String toString() {
        return "CameraStartingConfig{preview=" + this.f15968a + ", imageStreaming=" + this.f15969b + ", videoRecording=" + this.f15970c + '}';
    }
}
