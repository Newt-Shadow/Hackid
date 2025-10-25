package sf;

import android.media.MediaDataSource;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class a extends MediaDataSource {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f29695a;

    public a(byte[] data) {
        m.e(data, "data");
        this.f29695a = data;
    }

    private final int a(int i10, long j10) {
        long j11 = i10;
        long j12 = j10 + j11;
        byte[] bArr = this.f29695a;
        if (j12 > bArr.length) {
            j11 -= j12 - bArr.length;
        }
        return (int) j11;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
    }

    @Override // android.media.MediaDataSource
    public synchronized long getSize() {
        return this.f29695a.length;
    }

    @Override // android.media.MediaDataSource
    public synchronized int readAt(long j10, byte[] buffer, int i10, int i11) {
        m.e(buffer, "buffer");
        if (j10 >= this.f29695a.length) {
            return -1;
        }
        int a10 = a(i11, j10);
        System.arraycopy(this.f29695a, (int) j10, buffer, i10, a10);
        return a10;
    }
}
