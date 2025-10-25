package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes2.dex */
public final class g extends i {

    /* renamed from: b  reason: collision with root package name */
    protected volatile byte[] f27638b;

    /* renamed from: c  reason: collision with root package name */
    protected int f27639c;

    /* renamed from: d  reason: collision with root package name */
    protected int f27640d;

    /* renamed from: e  reason: collision with root package name */
    protected int f27641e;

    /* renamed from: f  reason: collision with root package name */
    protected int f27642f;

    /* loaded from: classes2.dex */
    public static class b extends df.d {
        public g l() {
            return new g(h(), g());
        }
    }

    private int a(InputStream inputStream, byte[] bArr) {
        int i10 = this.f27641e;
        if (i10 != -1) {
            int i11 = this.f27642f - i10;
            int i12 = this.f27640d;
            if (i11 < i12) {
                if (i10 == 0 && i12 > bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i12) {
                        i12 = length;
                    }
                    byte[] bArr2 = new byte[i12];
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f27638b = bArr2;
                    bArr = bArr2;
                } else if (i10 > 0) {
                    System.arraycopy(bArr, i10, bArr, 0, bArr.length - i10);
                }
                int i13 = this.f27642f - this.f27641e;
                this.f27642f = i13;
                this.f27641e = 0;
                this.f27639c = 0;
                int read = inputStream.read(bArr, i13, bArr.length - i13);
                int i14 = this.f27642f;
                if (read > 0) {
                    i14 += read;
                }
                this.f27639c = i14;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.f27641e = -1;
            this.f27642f = 0;
            this.f27639c = read2;
        }
        return read2;
    }

    @Override // java.io.InputStream
    public int available() {
        InputStream inputStream = this.f27649a;
        if (this.f27638b != null && inputStream != null) {
            return (this.f27639c - this.f27642f) + inputStream.available();
        }
        throw new IOException("Stream is closed");
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f27638b = null;
        InputStream inputStream = this.f27649a;
        this.f27649a = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        this.f27640d = i10;
        this.f27641e = this.f27642f;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() {
        byte[] bArr = this.f27638b;
        InputStream inputStream = this.f27649a;
        if (bArr != null && inputStream != null) {
            if (this.f27642f < this.f27639c || a(inputStream, bArr) != -1) {
                if (bArr != this.f27638b && (bArr = this.f27638b) == null) {
                    throw new IOException("Stream is closed");
                }
                int i10 = this.f27639c;
                int i11 = this.f27642f;
                if (i10 - i11 > 0) {
                    this.f27642f = i11 + 1;
                    return bArr[i11] & ForkServer.ERROR;
                }
                return -1;
            }
            return -1;
        }
        throw new IOException("Stream is closed");
    }

    @Override // java.io.InputStream
    public void reset() {
        if (this.f27638b != null) {
            int i10 = this.f27641e;
            if (-1 != i10) {
                this.f27642f = i10;
                return;
            }
            throw new IOException("Mark has been invalidated");
        }
        throw new IOException("Stream is closed");
    }

    @Override // java.io.InputStream
    public long skip(long j10) {
        byte[] bArr = this.f27638b;
        InputStream inputStream = this.f27649a;
        if (bArr != null) {
            if (j10 < 1) {
                return 0L;
            }
            if (inputStream != null) {
                int i10 = this.f27639c;
                int i11 = this.f27642f;
                if (i10 - i11 >= j10) {
                    this.f27642f = i11 + ((int) j10);
                    return j10;
                }
                int i12 = i10 - i11;
                this.f27642f = i10;
                if (this.f27641e != -1 && j10 <= this.f27640d) {
                    if (a(inputStream, bArr) == -1) {
                        return i12;
                    }
                    int i13 = this.f27639c;
                    int i14 = this.f27642f;
                    if (i13 - i14 >= j10 - i12) {
                        this.f27642f = i14 + (((int) j10) - i12);
                        return j10;
                    }
                    this.f27642f = i13;
                    return i12 + (i13 - i14);
                }
                long j11 = i12;
                return j11 + inputStream.skip(j10 - j11);
            }
            throw new IOException("Stream is closed");
        }
        throw new IOException("Stream is closed");
    }

    private g(InputStream inputStream, int i10) {
        super(inputStream);
        this.f27641e = -1;
        if (i10 > 0) {
            this.f27638b = new byte[i10];
            return;
        }
        throw new IllegalArgumentException("Size must be > 0");
    }

    @Override // org.apache.commons.io.input.i, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        int i12;
        int i13;
        byte[] bArr2 = this.f27638b;
        if (bArr2 != null) {
            if (i10 > bArr.length - i11 || i10 < 0 || i11 < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (i11 == 0) {
                return 0;
            }
            InputStream inputStream = this.f27649a;
            if (inputStream != null) {
                int i14 = this.f27642f;
                int i15 = this.f27639c;
                if (i14 < i15) {
                    int i16 = i15 - i14 >= i11 ? i11 : i15 - i14;
                    System.arraycopy(bArr2, i14, bArr, i10, i16);
                    this.f27642f += i16;
                    if (i16 == i11 || inputStream.available() == 0) {
                        return i16;
                    }
                    i10 += i16;
                    i12 = i11 - i16;
                } else {
                    i12 = i11;
                }
                while (true) {
                    if (this.f27641e == -1 && i12 >= bArr2.length) {
                        i13 = inputStream.read(bArr, i10, i12);
                        if (i13 == -1) {
                            if (i12 == i11) {
                                return -1;
                            }
                            return i11 - i12;
                        }
                    } else if (a(inputStream, bArr2) == -1) {
                        if (i12 == i11) {
                            return -1;
                        }
                        return i11 - i12;
                    } else if (bArr2 != this.f27638b && (bArr2 = this.f27638b) == null) {
                        throw new IOException("Stream is closed");
                    } else {
                        int i17 = this.f27639c;
                        int i18 = this.f27642f;
                        i13 = i17 - i18 >= i12 ? i12 : i17 - i18;
                        System.arraycopy(bArr2, i18, bArr, i10, i13);
                        this.f27642f += i13;
                    }
                    i12 -= i13;
                    if (i12 == 0) {
                        return i11;
                    }
                    if (inputStream.available() == 0) {
                        return i11 - i12;
                    }
                    i10 += i13;
                }
            } else {
                throw new IOException("Stream is closed");
            }
        } else {
            throw new IOException("Stream is closed");
        }
    }
}
