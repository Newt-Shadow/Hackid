package j9;

import kotlin.KotlinVersion;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f24496a;

    /* renamed from: b  reason: collision with root package name */
    private int f24497b;

    /* renamed from: c  reason: collision with root package name */
    private int f24498c;

    public c(byte[] bArr) {
        this.f24496a = bArr;
    }

    public int a() {
        return ((this.f24496a.length - this.f24497b) * 8) - this.f24498c;
    }

    public int b() {
        return this.f24498c;
    }

    public int c() {
        return this.f24497b;
    }

    public int d(int i10) {
        if (i10 >= 1 && i10 <= 32 && i10 <= a()) {
            int i11 = this.f24498c;
            int i12 = 0;
            if (i11 > 0) {
                int i13 = 8 - i11;
                int min = Math.min(i10, i13);
                int i14 = i13 - min;
                byte[] bArr = this.f24496a;
                int i15 = this.f24497b;
                int i16 = (((KotlinVersion.MAX_COMPONENT_VALUE >> (8 - min)) << i14) & bArr[i15]) >> i14;
                i10 -= min;
                int i17 = this.f24498c + min;
                this.f24498c = i17;
                if (i17 == 8) {
                    this.f24498c = 0;
                    this.f24497b = i15 + 1;
                }
                i12 = i16;
            }
            if (i10 > 0) {
                while (i10 >= 8) {
                    int i18 = i12 << 8;
                    byte[] bArr2 = this.f24496a;
                    int i19 = this.f24497b;
                    i12 = (bArr2[i19] & ForkServer.ERROR) | i18;
                    this.f24497b = i19 + 1;
                    i10 -= 8;
                }
                if (i10 > 0) {
                    int i20 = 8 - i10;
                    int i21 = (i12 << i10) | ((((KotlinVersion.MAX_COMPONENT_VALUE >> i20) << i20) & this.f24496a[this.f24497b]) >> i20);
                    this.f24498c += i10;
                    return i21;
                }
                return i12;
            }
            return i12;
        }
        throw new IllegalArgumentException(String.valueOf(i10));
    }
}
