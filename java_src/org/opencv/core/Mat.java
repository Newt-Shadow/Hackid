package org.opencv.core;

import java.nio.ByteBuffer;
import lf.a;
/* loaded from: classes2.dex */
public class Mat {

    /* renamed from: a  reason: collision with root package name */
    public final long f27680a;

    public Mat(long j10) {
        if (j10 != 0) {
            this.f27680a = j10;
            return;
        }
        throw new UnsupportedOperationException("Native object address is NULL");
    }

    private static native int nPutB(long j10, int i10, int i11, int i12, byte[] bArr);

    private static native long n_Mat();

    private static native long n_Mat(int i10, int i11, int i12);

    private static native long n_Mat(int i10, int i11, int i12, ByteBuffer byteBuffer, long j10);

    private static native long n_clone(long j10);

    private static native long n_dataAddr(long j10);

    private static native void n_delete(long j10);

    private static native int n_dims(long j10);

    private static native boolean n_isContinuous(long j10);

    private static native boolean n_isSubmatrix(long j10);

    private static native void n_release(long j10);

    private static native int n_size_i(long j10, int i10);

    private static native int n_type(long j10);

    /* renamed from: a */
    public Mat clone() {
        return new Mat(n_clone(this.f27680a));
    }

    public long b() {
        return n_dataAddr(this.f27680a);
    }

    public int c() {
        return n_dims(this.f27680a);
    }

    public long d() {
        return this.f27680a;
    }

    public boolean e() {
        return n_isContinuous(this.f27680a);
    }

    public boolean f() {
        return n_isSubmatrix(this.f27680a);
    }

    protected void finalize() {
        n_delete(this.f27680a);
        super.finalize();
    }

    public int g(int i10, int i11, byte[] bArr) {
        int length;
        int j10 = j();
        if (bArr != null && bArr.length % a.i(j10) == 0) {
            if (a.j(j10) != 0 && a.j(j10) != 1) {
                throw new UnsupportedOperationException("Mat data type is not compatible: " + j10);
            }
            return nPutB(this.f27680a, i10, i11, bArr.length, bArr);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Provided data element number (");
        if (bArr == null) {
            length = 0;
        } else {
            length = bArr.length;
        }
        sb2.append(length);
        sb2.append(") should be multiple of the Mat channels count (");
        sb2.append(a.i(j10));
        sb2.append(")");
        throw new UnsupportedOperationException(sb2.toString());
    }

    public void h() {
        n_release(this.f27680a);
    }

    public int i(int i10) {
        return n_size_i(this.f27680a, i10);
    }

    public int j() {
        return n_type(this.f27680a);
    }

    public String toString() {
        String str;
        if (c() > 0) {
            str = "";
        } else {
            str = "-1*-1*";
        }
        for (int i10 = 0; i10 < c(); i10++) {
            str = str + i(i10) + "*";
        }
        return "Mat [ " + str + a.l(j()) + ", isCont=" + e() + ", isSubmat=" + f() + ", nativeObj=0x" + Long.toHexString(this.f27680a) + ", dataAddr=0x" + Long.toHexString(b()) + " ]";
    }

    public Mat() {
        this.f27680a = n_Mat();
    }

    public Mat(int i10, int i11, int i12) {
        this.f27680a = n_Mat(i10, i11, i12);
    }

    public Mat(int i10, int i11, int i12, ByteBuffer byteBuffer, long j10) {
        this.f27680a = n_Mat(i10, i11, i12, byteBuffer, j10);
    }
}
