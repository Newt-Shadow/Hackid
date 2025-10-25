package androidx.media;

import java.util.Arrays;
/* loaded from: classes.dex */
public class AudioAttributesImplBase implements AudioAttributesImpl {

    /* renamed from: a  reason: collision with root package name */
    public int f3046a = 0;

    /* renamed from: b  reason: collision with root package name */
    public int f3047b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f3048c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f3049d = -1;

    public int a() {
        return this.f3047b;
    }

    public int b() {
        int i10 = this.f3048c;
        int c10 = c();
        if (c10 == 6) {
            i10 |= 4;
        } else if (c10 == 7) {
            i10 |= 1;
        }
        return i10 & 273;
    }

    public int c() {
        int i10 = this.f3049d;
        if (i10 != -1) {
            return i10;
        }
        return AudioAttributesCompat.a(false, this.f3048c, this.f3046a);
    }

    public int d() {
        return this.f3046a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        if (this.f3047b != audioAttributesImplBase.a() || this.f3048c != audioAttributesImplBase.b() || this.f3046a != audioAttributesImplBase.d() || this.f3049d != audioAttributesImplBase.f3049d) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3047b), Integer.valueOf(this.f3048c), Integer.valueOf(this.f3046a), Integer.valueOf(this.f3049d)});
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("AudioAttributesCompat:");
        if (this.f3049d != -1) {
            sb2.append(" stream=");
            sb2.append(this.f3049d);
            sb2.append(" derived");
        }
        sb2.append(" usage=");
        sb2.append(AudioAttributesCompat.b(this.f3046a));
        sb2.append(" content=");
        sb2.append(this.f3047b);
        sb2.append(" flags=0x");
        sb2.append(Integer.toHexString(this.f3048c).toUpperCase());
        return sb2.toString();
    }
}
