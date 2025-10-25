package af;

import java.io.RandomAccessFile;
/* loaded from: classes2.dex */
public final class s extends i {

    /* renamed from: e  reason: collision with root package name */
    private final RandomAccessFile f442e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(boolean z10, RandomAccessFile randomAccessFile) {
        super(z10);
        kotlin.jvm.internal.m.e(randomAccessFile, "randomAccessFile");
        this.f442e = randomAccessFile;
    }

    @Override // af.i
    protected synchronized void h() {
        this.f442e.close();
    }

    @Override // af.i
    protected synchronized void j() {
        this.f442e.getFD().sync();
    }

    @Override // af.i
    protected synchronized int k(long j10, byte[] array, int i10, int i11) {
        kotlin.jvm.internal.m.e(array, "array");
        this.f442e.seek(j10);
        int i12 = 0;
        while (true) {
            if (i12 >= i11) {
                break;
            }
            int read = this.f442e.read(array, i10, i11 - i12);
            if (read == -1) {
                if (i12 == 0) {
                    return -1;
                }
            } else {
                i12 += read;
            }
        }
        return i12;
    }

    @Override // af.i
    protected synchronized long q() {
        return this.f442e.length();
    }

    @Override // af.i
    protected synchronized void s(long j10, byte[] array, int i10, int i11) {
        kotlin.jvm.internal.m.e(array, "array");
        this.f442e.seek(j10);
        this.f442e.write(array, i10, i11);
    }
}
