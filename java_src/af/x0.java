package af;

import java.security.MessageDigest;
/* loaded from: classes2.dex */
public final class x0 extends g {

    /* renamed from: f  reason: collision with root package name */
    private final transient byte[][] f467f;

    /* renamed from: g  reason: collision with root package name */
    private final transient int[] f468g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x0(byte[][] segments, int[] directory) {
        super(g.f388e.l());
        kotlin.jvm.internal.m.e(segments, "segments");
        kotlin.jvm.internal.m.e(directory, "directory");
        this.f467f = segments;
        this.f468g = directory;
    }

    private final g M() {
        return new g(L());
    }

    @Override // af.g
    public g E(int i10, int i11) {
        boolean z10;
        boolean z11;
        boolean z12;
        Object[] l10;
        int d10 = b.d(this, i11);
        int i12 = 0;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (d10 <= size()) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z11) {
                int i13 = d10 - i10;
                if (i13 >= 0) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                if (z12) {
                    if (i10 == 0 && d10 == size()) {
                        return this;
                    }
                    if (i10 == d10) {
                        return g.f388e;
                    }
                    int b10 = bf.e.b(this, i10);
                    int b11 = bf.e.b(this, d10 - 1);
                    l10 = yc.j.l(K(), b10, b11 + 1);
                    byte[][] bArr = (byte[][]) l10;
                    int[] iArr = new int[bArr.length * 2];
                    if (b10 <= b11) {
                        int i14 = 0;
                        int i15 = b10;
                        while (true) {
                            iArr[i14] = Math.min(J()[i15] - i10, i13);
                            int i16 = i14 + 1;
                            iArr[i14 + bArr.length] = J()[K().length + i15];
                            if (i15 == b11) {
                                break;
                            }
                            i15++;
                            i14 = i16;
                        }
                    }
                    if (b10 != 0) {
                        i12 = J()[b10 - 1];
                    }
                    int length = bArr.length;
                    iArr[length] = iArr[length] + (i10 - i12);
                    return new x0(bArr, iArr);
                }
                throw new IllegalArgumentException(("endIndex=" + d10 + " < beginIndex=" + i10).toString());
            }
            throw new IllegalArgumentException(("endIndex=" + d10 + " > length(" + size() + ')').toString());
        }
        throw new IllegalArgumentException(("beginIndex=" + i10 + " < 0").toString());
    }

    @Override // af.g
    public g G() {
        return M().G();
    }

    @Override // af.g
    public void I(d buffer, int i10, int i11) {
        int i12;
        kotlin.jvm.internal.m.e(buffer, "buffer");
        int i13 = i10 + i11;
        int b10 = bf.e.b(this, i10);
        while (i10 < i13) {
            if (b10 == 0) {
                i12 = 0;
            } else {
                i12 = J()[b10 - 1];
            }
            int i14 = J()[K().length + b10];
            int min = Math.min(i13, (J()[b10] - i12) + i12) - i10;
            int i15 = i14 + (i10 - i12);
            v0 v0Var = new v0(K()[b10], i15, i15 + min, true, false);
            v0 v0Var2 = buffer.f371a;
            if (v0Var2 == null) {
                v0Var.f461g = v0Var;
                v0Var.f460f = v0Var;
                buffer.f371a = v0Var;
            } else {
                kotlin.jvm.internal.m.b(v0Var2);
                v0 v0Var3 = v0Var2.f461g;
                kotlin.jvm.internal.m.b(v0Var3);
                v0Var3.c(v0Var);
            }
            i10 += min;
            b10++;
        }
        buffer.d0(buffer.k0() + i11);
    }

    public final int[] J() {
        return this.f468g;
    }

    public final byte[][] K() {
        return this.f467f;
    }

    public byte[] L() {
        byte[] bArr = new byte[size()];
        int length = K().length;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < length) {
            int i13 = J()[length + i10];
            int i14 = J()[i10];
            int i15 = i14 - i11;
            yc.j.d(K()[i10], bArr, i12, i13, i13 + i15);
            i12 += i15;
            i10++;
            i11 = i14;
        }
        return bArr;
    }

    @Override // af.g
    public String a() {
        return M().a();
    }

    @Override // af.g
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (gVar.size() == size() && y(0, gVar, 0, size())) {
                return true;
            }
        }
        return false;
    }

    @Override // af.g
    public g f(String algorithm) {
        kotlin.jvm.internal.m.e(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        int length = K().length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = J()[length + i10];
            int i13 = J()[i10];
            messageDigest.update(K()[i10], i12, i13 - i11);
            i10++;
            i11 = i13;
        }
        byte[] digestBytes = messageDigest.digest();
        kotlin.jvm.internal.m.d(digestBytes, "digestBytes");
        return new g(digestBytes);
    }

    @Override // af.g
    public int hashCode() {
        int m10 = m();
        if (m10 == 0) {
            int length = K().length;
            int i10 = 0;
            int i11 = 1;
            int i12 = 0;
            while (i10 < length) {
                int i13 = J()[length + i10];
                int i14 = J()[i10];
                byte[] bArr = K()[i10];
                int i15 = (i14 - i12) + i13;
                while (i13 < i15) {
                    i11 = (i11 * 31) + bArr[i13];
                    i13++;
                }
                i10++;
                i12 = i14;
            }
            A(i11);
            return i11;
        }
        return m10;
    }

    @Override // af.g
    public int n() {
        return J()[K().length - 1];
    }

    @Override // af.g
    public String p() {
        return M().p();
    }

    @Override // af.g
    public int r(byte[] other, int i10) {
        kotlin.jvm.internal.m.e(other, "other");
        return M().r(other, i10);
    }

    @Override // af.g
    public byte[] t() {
        return L();
    }

    @Override // af.g
    public String toString() {
        return M().toString();
    }

    @Override // af.g
    public byte u(int i10) {
        int i11;
        b.b(J()[K().length - 1], i10, 1L);
        int b10 = bf.e.b(this, i10);
        if (b10 == 0) {
            i11 = 0;
        } else {
            i11 = J()[b10 - 1];
        }
        return K()[b10][(i10 - i11) + J()[K().length + b10]];
    }

    @Override // af.g
    public int w(byte[] other, int i10) {
        kotlin.jvm.internal.m.e(other, "other");
        return M().w(other, i10);
    }

    @Override // af.g
    public boolean y(int i10, g other, int i11, int i12) {
        int i13;
        kotlin.jvm.internal.m.e(other, "other");
        if (i10 < 0 || i10 > size() - i12) {
            return false;
        }
        int i14 = i12 + i10;
        int b10 = bf.e.b(this, i10);
        while (i10 < i14) {
            if (b10 == 0) {
                i13 = 0;
            } else {
                i13 = J()[b10 - 1];
            }
            int i15 = J()[K().length + b10];
            int min = Math.min(i14, (J()[b10] - i13) + i13) - i10;
            if (!other.z(i11, K()[b10], i15 + (i10 - i13), min)) {
                return false;
            }
            i11 += min;
            i10 += min;
            b10++;
        }
        return true;
    }

    @Override // af.g
    public boolean z(int i10, byte[] other, int i11, int i12) {
        int i13;
        kotlin.jvm.internal.m.e(other, "other");
        if (i10 < 0 || i10 > size() - i12 || i11 < 0 || i11 > other.length - i12) {
            return false;
        }
        int i14 = i12 + i10;
        int b10 = bf.e.b(this, i10);
        while (i10 < i14) {
            if (b10 == 0) {
                i13 = 0;
            } else {
                i13 = J()[b10 - 1];
            }
            int i15 = J()[K().length + b10];
            int min = Math.min(i14, (J()[b10] - i13) + i13) - i10;
            if (!b.a(K()[b10], i15 + (i10 - i13), other, i11, min)) {
                return false;
            }
            i11 += min;
            i10 += min;
            b10++;
        }
        return true;
    }
}
