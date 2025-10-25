package org.apache.commons.io.input;

import java.io.InputStream;
import java.util.Objects;
import org.apache.tika.fork.ForkServer;
import org.apache.tika.mime.MimeTypesReaderMetKeys;
/* loaded from: classes2.dex */
public class h extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f27643a;

    /* renamed from: b  reason: collision with root package name */
    private final int f27644b;

    /* renamed from: c  reason: collision with root package name */
    private int f27645c;

    /* renamed from: d  reason: collision with root package name */
    private int f27646d;

    /* loaded from: classes2.dex */
    public static class a extends df.d {

        /* renamed from: k  reason: collision with root package name */
        private int f27647k;

        /* renamed from: l  reason: collision with root package name */
        private int f27648l;

        public h l() {
            return new h(b().c(), this.f27647k, this.f27648l);
        }

        public a m(byte[] bArr) {
            Objects.requireNonNull(bArr, "origin");
            this.f27648l = bArr.length;
            return (a) super.d(bArr);
        }

        public a n(int i10) {
            if (i10 >= 0) {
                this.f27648l = i10;
                return this;
            }
            throw new IllegalArgumentException("length cannot be negative");
        }

        public a o(int i10) {
            if (i10 >= 0) {
                this.f27647k = i10;
                return this;
            }
            throw new IllegalArgumentException("offset cannot be negative");
        }
    }

    public h(byte[] bArr) {
        this(bArr, bArr.length, 0, 0);
    }

    public static a a() {
        return new a();
    }

    private static int b(byte[] bArr, int i10) {
        int i11;
        c(i10, "defaultValue");
        if (bArr.length > 0) {
            i11 = bArr.length;
        } else {
            i11 = i10;
        }
        return Math.min(i10, i11);
    }

    private static int c(int i10, String str) {
        if (i10 >= 0) {
            return i10;
        }
        throw new IllegalArgumentException(str + " cannot be negative");
    }

    @Override // java.io.InputStream
    public int available() {
        int i10 = this.f27645c;
        int i11 = this.f27644b;
        if (i10 < i11) {
            return i11 - i10;
        }
        return 0;
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        this.f27646d = this.f27645c;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() {
        int i10 = this.f27645c;
        if (i10 < this.f27644b) {
            byte[] bArr = this.f27643a;
            this.f27645c = i10 + 1;
            return bArr[i10] & ForkServer.ERROR;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public void reset() {
        this.f27645c = this.f27646d;
    }

    @Override // java.io.InputStream
    public long skip(long j10) {
        if (j10 >= 0) {
            int i10 = this.f27644b;
            int i11 = this.f27645c;
            long j11 = i10 - i11;
            if (j10 < j11) {
                j11 = j10;
            }
            this.f27645c = Math.addExact(i11, Math.toIntExact(j10));
            return j11;
        }
        throw new IllegalArgumentException("Skipping backward is not supported");
    }

    public h(byte[] bArr, int i10, int i11) {
        c(i10, MimeTypesReaderMetKeys.MATCH_OFFSET_ATTR);
        c(i11, "length");
        Objects.requireNonNull(bArr, "data");
        this.f27643a = bArr;
        this.f27644b = Math.min(b(bArr, i10) + i11, bArr.length);
        this.f27645c = b(bArr, i10);
        this.f27646d = b(bArr, i10);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        Objects.requireNonNull(bArr, "dest");
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        Objects.requireNonNull(bArr, "dest");
        if (i10 >= 0 && i11 >= 0 && i10 + i11 <= bArr.length) {
            int i12 = this.f27645c;
            int i13 = this.f27644b;
            if (i12 >= i13) {
                return -1;
            }
            int i14 = i13 - i12;
            if (i11 >= i14) {
                i11 = i14;
            }
            if (i11 <= 0) {
                return 0;
            }
            System.arraycopy(this.f27643a, i12, bArr, i10, i11);
            this.f27645c += i11;
            return i11;
        }
        throw new IndexOutOfBoundsException();
    }

    private h(byte[] bArr, int i10, int i11, int i12) {
        Objects.requireNonNull(bArr, "data");
        this.f27643a = bArr;
        this.f27644b = i10;
        this.f27645c = i11;
        this.f27646d = i12;
    }
}
