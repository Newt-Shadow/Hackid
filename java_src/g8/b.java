package g8;

import java.io.OutputStream;
/* loaded from: classes.dex */
final class b extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private long f16303a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public long a() {
        return this.f16303a;
    }

    @Override // java.io.OutputStream
    public void write(int i10) {
        this.f16303a++;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.f16303a += bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) {
        int i12;
        if (i10 >= 0 && i10 <= bArr.length && i11 >= 0 && (i12 = i10 + i11) <= bArr.length && i12 >= 0) {
            this.f16303a += i11;
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
