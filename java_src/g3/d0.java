package g3;

import kotlin.KotlinVersion;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public final class d0 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f16169a;

    /* renamed from: b  reason: collision with root package name */
    private final int f16170b;

    /* renamed from: c  reason: collision with root package name */
    private int f16171c;

    /* renamed from: d  reason: collision with root package name */
    private int f16172d;

    public d0(byte[] bArr) {
        this.f16169a = bArr;
        this.f16170b = bArr.length;
    }

    private void a() {
        boolean z10;
        int i10;
        int i11 = this.f16171c;
        if (i11 >= 0 && (i11 < (i10 = this.f16170b) || (i11 == i10 && this.f16172d == 0))) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
    }

    public int b() {
        return (this.f16171c * 8) + this.f16172d;
    }

    public boolean c() {
        boolean z10;
        if ((((this.f16169a[this.f16171c] & ForkServer.ERROR) >> this.f16172d) & 1) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        e(1);
        return z10;
    }

    public int d(int i10) {
        int i11 = this.f16171c;
        int min = Math.min(i10, 8 - this.f16172d);
        int i12 = i11 + 1;
        int i13 = ((this.f16169a[i11] & ForkServer.ERROR) >> this.f16172d) & (KotlinVersion.MAX_COMPONENT_VALUE >> (8 - min));
        while (min < i10) {
            i13 |= (this.f16169a[i12] & ForkServer.ERROR) << min;
            min += 8;
            i12++;
        }
        int i14 = i13 & ((-1) >>> (32 - i10));
        e(i10);
        return i14;
    }

    public void e(int i10) {
        int i11 = i10 / 8;
        int i12 = this.f16171c + i11;
        this.f16171c = i12;
        int i13 = this.f16172d + (i10 - (i11 * 8));
        this.f16172d = i13;
        if (i13 > 7) {
            this.f16171c = i12 + 1;
            this.f16172d = i13 - 8;
        }
        a();
    }
}
