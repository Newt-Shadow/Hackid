package org.apache.tika.io;

import java.io.FilterInputStream;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class TailStream extends FilterInputStream {
    private static final int SKIP_SIZE = 4096;
    private long bytesRead;
    private int currentIndex;
    private byte[] markBuffer;
    private long markBytesRead;
    private int markIndex;
    private final byte[] tailBuffer;
    private final int tailSize;

    public TailStream(InputStream inputStream, int i10) {
        super(inputStream);
        this.tailSize = i10;
        this.tailBuffer = new byte[i10];
    }

    private void appendBuf(byte[] bArr, int i10, int i11) {
        if (i11 >= this.tailSize) {
            replaceTailBuffer(bArr, i10, i11);
        } else {
            copyToTailBuffer(bArr, i10, i11);
        }
        this.bytesRead += i11;
    }

    private void appendByte(byte b10) {
        byte[] bArr = this.tailBuffer;
        int i10 = this.currentIndex;
        int i11 = i10 + 1;
        this.currentIndex = i11;
        bArr[i10] = b10;
        if (i11 >= this.tailSize) {
            this.currentIndex = 0;
        }
        this.bytesRead++;
    }

    private void copyToTailBuffer(byte[] bArr, int i10, int i11) {
        int min = Math.min(this.tailSize - this.currentIndex, i11);
        System.arraycopy(bArr, i10, this.tailBuffer, this.currentIndex, min);
        System.arraycopy(bArr, i10 + min, this.tailBuffer, 0, i11 - min);
        this.currentIndex = (this.currentIndex + i11) % this.tailSize;
    }

    private void replaceTailBuffer(byte[] bArr, int i10, int i11) {
        int i12 = i10 + i11;
        int i13 = this.tailSize;
        System.arraycopy(bArr, i12 - i13, this.tailBuffer, 0, i13);
        this.currentIndex = 0;
    }

    public byte[] getTail() {
        int min = (int) Math.min(this.tailSize, this.bytesRead);
        byte[] bArr = new byte[min];
        byte[] bArr2 = this.tailBuffer;
        int i10 = this.currentIndex;
        System.arraycopy(bArr2, i10, bArr, 0, min - i10);
        byte[] bArr3 = this.tailBuffer;
        int i11 = this.currentIndex;
        System.arraycopy(bArr3, 0, bArr, min - i11, i11);
        return bArr;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i10) {
        int i11 = this.tailSize;
        byte[] bArr = new byte[i11];
        this.markBuffer = bArr;
        System.arraycopy(this.tailBuffer, 0, bArr, 0, i11);
        this.markIndex = this.currentIndex;
        this.markBytesRead = this.bytesRead;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int read = super.read();
        if (read != -1) {
            appendByte((byte) read);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        byte[] bArr = this.markBuffer;
        if (bArr != null) {
            System.arraycopy(bArr, 0, this.tailBuffer, 0, this.tailSize);
            this.currentIndex = this.markIndex;
            this.bytesRead = this.markBytesRead;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j10) {
        int min = (int) Math.min(j10, 4096L);
        byte[] bArr = new byte[min];
        long j11 = 0;
        int i10 = 0;
        while (j11 < j10 && i10 != -1) {
            i10 = read(bArr, 0, (int) Math.min(min, j10 - j11));
            if (i10 != -1) {
                j11 += i10;
            }
        }
        if (i10 < 0 && j11 == 0) {
            return -1L;
        }
        return j11;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        int read = super.read(bArr);
        if (read > 0) {
            appendBuf(bArr, 0, read);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        int read = super.read(bArr, i10, i11);
        if (read > 0) {
            appendBuf(bArr, i10, read);
        }
        return read;
    }
}
