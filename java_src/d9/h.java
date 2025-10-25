package d9;

import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    private final int f15092a;

    /* renamed from: b  reason: collision with root package name */
    private final int f15093b;

    /* JADX INFO: Access modifiers changed from: protected */
    public h(int i10, int i11) {
        this.f15092a = i10;
        this.f15093b = i11;
    }

    public final int a() {
        return this.f15093b;
    }

    public abstract byte[] b();

    public abstract byte[] c(int i10, byte[] bArr);

    public final int d() {
        return this.f15092a;
    }

    public h e() {
        return new g(this);
    }

    public boolean f() {
        return false;
    }

    public h g() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 90 degrees.");
    }

    public final String toString() {
        char c10;
        int i10 = this.f15092a;
        byte[] bArr = new byte[i10];
        StringBuilder sb2 = new StringBuilder(this.f15093b * (i10 + 1));
        for (int i11 = 0; i11 < this.f15093b; i11++) {
            bArr = c(i11, bArr);
            for (int i12 = 0; i12 < this.f15092a; i12++) {
                int i13 = bArr[i12] & ForkServer.ERROR;
                if (i13 < 64) {
                    c10 = '#';
                } else if (i13 < 128) {
                    c10 = '+';
                } else if (i13 < 192) {
                    c10 = '.';
                } else {
                    c10 = ' ';
                }
                sb2.append(c10);
            }
            sb2.append('\n');
        }
        return sb2.toString();
    }
}
