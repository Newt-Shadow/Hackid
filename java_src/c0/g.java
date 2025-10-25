package c0;

import com.arthenica.ffmpegkit.StreamInformation;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final float f4790a;

    /* renamed from: b  reason: collision with root package name */
    private final float f4791b;

    public g(float f10, float f11) {
        this.f4790a = f.b(f10, StreamInformation.KEY_WIDTH);
        this.f4791b = f.b(f11, StreamInformation.KEY_HEIGHT);
    }

    public float a() {
        return this.f4791b;
    }

    public float b() {
        return this.f4790a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (gVar.f4790a == this.f4790a && gVar.f4791b == this.f4791b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.f4790a) ^ Float.floatToIntBits(this.f4791b);
    }

    public String toString() {
        return this.f4790a + "x" + this.f4791b;
    }
}
