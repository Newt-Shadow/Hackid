package androidx.media;

import android.media.AudioAttributes;
/* loaded from: classes.dex */
public class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* renamed from: a  reason: collision with root package name */
    public AudioAttributes f3044a;

    /* renamed from: b  reason: collision with root package name */
    public int f3045b = -1;

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplApi21)) {
            return false;
        }
        return this.f3044a.equals(((AudioAttributesImplApi21) obj).f3044a);
    }

    public int hashCode() {
        return this.f3044a.hashCode();
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f3044a;
    }
}
