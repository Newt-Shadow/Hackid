package org.apache.tika.io;

import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public class BoundedInputStream extends InputStream {
    private static final int EOF = -1;
    private final InputStream in;
    private final long max;
    private long pos;

    public BoundedInputStream(long j10, InputStream inputStream) {
        this.max = j10;
        this.in = inputStream;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.in.available();
    }

    public long getPos() {
        return this.pos;
    }

    public boolean hasHitBound() {
        if (this.pos >= this.max) {
            return true;
        }
        return false;
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        this.in.mark(i10);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.in.markSupported();
    }

    @Override // java.io.InputStream
    public int read() {
        long j10 = this.max;
        if (j10 < 0 || this.pos < j10) {
            int read = this.in.read();
            this.pos++;
            return read;
        }
        return -1;
    }

    public byte[] readNBytes(int i10) {
        byte[] readNBytes;
        readNBytes = this.in.readNBytes(i10);
        return readNBytes;
    }

    @Override // java.io.InputStream
    public void reset() {
        this.in.reset();
        this.pos = 0L;
    }

    @Override // java.io.InputStream
    public long skip(long j10) {
        long j11 = this.max;
        if (j11 >= 0) {
            j10 = Math.min(j10, j11 - this.pos);
        }
        long skip = this.in.skip(j10);
        this.pos += skip;
        return skip;
    }

    public long transferTo(OutputStream outputStream) {
        return cf.g.n(this, outputStream);
    }

    public int readNBytes(byte[] bArr, int i10, int i11) {
        int readNBytes;
        readNBytes = this.in.readNBytes(bArr, i10, i11);
        return readNBytes;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        long j10 = this.max;
        if (j10 < 0 || this.pos < j10) {
            int read = this.in.read(bArr, i10, (int) (j10 >= 0 ? Math.min(i11, j10 - this.pos) : i11));
            if (read == -1) {
                return -1;
            }
            this.pos += read;
            return read;
        }
        return -1;
    }
}
