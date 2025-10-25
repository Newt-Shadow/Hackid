package androidx.media;

import androidx.versionedparcelable.a;
/* loaded from: classes.dex */
public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(a aVar) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f3046a = aVar.p(audioAttributesImplBase.f3046a, 1);
        audioAttributesImplBase.f3047b = aVar.p(audioAttributesImplBase.f3047b, 2);
        audioAttributesImplBase.f3048c = aVar.p(audioAttributesImplBase.f3048c, 3);
        audioAttributesImplBase.f3049d = aVar.p(audioAttributesImplBase.f3049d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, a aVar) {
        aVar.x(false, false);
        aVar.F(audioAttributesImplBase.f3046a, 1);
        aVar.F(audioAttributesImplBase.f3047b, 2);
        aVar.F(audioAttributesImplBase.f3048c, 3);
        aVar.F(audioAttributesImplBase.f3049d, 4);
    }
}
