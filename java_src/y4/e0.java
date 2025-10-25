package y4;

import java.nio.charset.Charset;
import java.util.Arrays;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public final class e0 {

    /* renamed from: d  reason: collision with root package name */
    private static final char[] f32868d = {'\r', '\n'};

    /* renamed from: e  reason: collision with root package name */
    private static final char[] f32869e = {'\n'};

    /* renamed from: f  reason: collision with root package name */
    private static final o6.s f32870f = o6.s.G(n6.e.f26425a, n6.e.f26427c, n6.e.f26430f, n6.e.f26428d, n6.e.f26429e);

    /* renamed from: a  reason: collision with root package name */
    private byte[] f32871a;

    /* renamed from: b  reason: collision with root package name */
    private int f32872b;

    /* renamed from: c  reason: collision with root package name */
    private int f32873c;

    public e0() {
        this.f32871a = q0.f32951f;
    }

    private void V(Charset charset) {
        if (m(charset, f32868d) == '\r') {
            m(charset, f32869e);
        }
    }

    private int d(Charset charset) {
        int i10;
        if (!charset.equals(n6.e.f26427c) && !charset.equals(n6.e.f26425a)) {
            if (!charset.equals(n6.e.f26430f) && !charset.equals(n6.e.f26429e) && !charset.equals(n6.e.f26428d)) {
                throw new IllegalArgumentException("Unsupported charset: " + charset);
            }
            i10 = 2;
        } else {
            i10 = 1;
        }
        int i11 = this.f32872b;
        while (true) {
            int i12 = this.f32873c;
            if (i11 < i12 - (i10 - 1)) {
                if ((charset.equals(n6.e.f26427c) || charset.equals(n6.e.f26425a)) && q0.u0(this.f32871a[i11])) {
                    return i11;
                }
                if (charset.equals(n6.e.f26430f) || charset.equals(n6.e.f26428d)) {
                    byte[] bArr = this.f32871a;
                    if (bArr[i11] == 0 && q0.u0(bArr[i11 + 1])) {
                        return i11;
                    }
                }
                if (charset.equals(n6.e.f26429e)) {
                    byte[] bArr2 = this.f32871a;
                    if (bArr2[i11 + 1] == 0 && q0.u0(bArr2[i11])) {
                        return i11;
                    }
                }
                i11 += i10;
            } else {
                return i12;
            }
        }
    }

    private int i(Charset charset) {
        byte a10;
        char c10;
        int i10 = 1;
        if ((charset.equals(n6.e.f26427c) || charset.equals(n6.e.f26425a)) && a() >= 1) {
            a10 = (byte) q6.b.a(q6.h.a(this.f32871a[this.f32872b]));
        } else {
            if ((charset.equals(n6.e.f26430f) || charset.equals(n6.e.f26428d)) && a() >= 2) {
                byte[] bArr = this.f32871a;
                int i11 = this.f32872b;
                c10 = q6.b.c(bArr[i11], bArr[i11 + 1]);
            } else if (charset.equals(n6.e.f26429e) && a() >= 2) {
                byte[] bArr2 = this.f32871a;
                int i12 = this.f32872b;
                c10 = q6.b.c(bArr2[i12 + 1], bArr2[i12]);
            } else {
                return 0;
            }
            a10 = (byte) c10;
            i10 = 2;
        }
        return (q6.b.a(a10) << 16) + i10;
    }

    private char m(Charset charset, char[] cArr) {
        int i10 = i(charset);
        if (i10 != 0) {
            char c10 = (char) (i10 >> 16);
            if (q6.b.b(cArr, c10)) {
                this.f32872b += i10 & 65535;
                return c10;
            }
            return (char) 0;
        }
        return (char) 0;
    }

    public String A() {
        return n((char) 0);
    }

    public String B(int i10) {
        int i11;
        if (i10 == 0) {
            return "";
        }
        int i12 = this.f32872b;
        int i13 = (i12 + i10) - 1;
        if (i13 < this.f32873c && this.f32871a[i13] == 0) {
            i11 = i10 - 1;
        } else {
            i11 = i10;
        }
        String E = q0.E(this.f32871a, i12, i11);
        this.f32872b += i10;
        return E;
    }

    public short C() {
        byte[] bArr = this.f32871a;
        int i10 = this.f32872b;
        int i11 = i10 + 1;
        this.f32872b = i11 + 1;
        return (short) ((bArr[i11] & ForkServer.ERROR) | ((bArr[i10] & ForkServer.ERROR) << 8));
    }

    public String D(int i10) {
        return E(i10, n6.e.f26427c);
    }

    public String E(int i10, Charset charset) {
        String str = new String(this.f32871a, this.f32872b, i10, charset);
        this.f32872b += i10;
        return str;
    }

    public int F() {
        return (G() << 21) | (G() << 14) | (G() << 7) | G();
    }

    public int G() {
        byte[] bArr = this.f32871a;
        int i10 = this.f32872b;
        this.f32872b = i10 + 1;
        return bArr[i10] & ForkServer.ERROR;
    }

    public int H() {
        byte[] bArr = this.f32871a;
        int i10 = this.f32872b;
        int i11 = i10 + 1;
        int i12 = (bArr[i11] & ForkServer.ERROR) | ((bArr[i10] & ForkServer.ERROR) << 8);
        this.f32872b = i11 + 1 + 2;
        return i12;
    }

    public long I() {
        byte[] bArr = this.f32871a;
        int i10 = this.f32872b;
        int i11 = i10 + 1;
        int i12 = i11 + 1;
        int i13 = i12 + 1;
        this.f32872b = i13 + 1;
        return ((bArr[i10] & 255) << 24) | ((bArr[i11] & 255) << 16) | ((bArr[i12] & 255) << 8) | (bArr[i13] & 255);
    }

    public int J() {
        byte[] bArr = this.f32871a;
        int i10 = this.f32872b;
        int i11 = i10 + 1;
        int i12 = i11 + 1;
        int i13 = ((bArr[i10] & ForkServer.ERROR) << 16) | ((bArr[i11] & ForkServer.ERROR) << 8);
        this.f32872b = i12 + 1;
        return (bArr[i12] & ForkServer.ERROR) | i13;
    }

    public int K() {
        int p10 = p();
        if (p10 >= 0) {
            return p10;
        }
        throw new IllegalStateException("Top bit not zero: " + p10);
    }

    public long L() {
        long z10 = z();
        if (z10 >= 0) {
            return z10;
        }
        throw new IllegalStateException("Top bit not zero: " + z10);
    }

    public int M() {
        byte[] bArr = this.f32871a;
        int i10 = this.f32872b;
        int i11 = i10 + 1;
        this.f32872b = i11 + 1;
        return (bArr[i11] & ForkServer.ERROR) | ((bArr[i10] & ForkServer.ERROR) << 8);
    }

    public long N() {
        int i10;
        int i11;
        byte b10;
        int i12;
        long j10 = this.f32871a[this.f32872b];
        int i13 = 7;
        while (true) {
            if (i13 < 0) {
                break;
            }
            if (((1 << i13) & j10) != 0) {
                i13--;
            } else if (i13 < 6) {
                j10 &= i12 - 1;
                i11 = 7 - i13;
            } else if (i13 == 7) {
                i11 = 1;
            }
        }
        i11 = 0;
        if (i11 != 0) {
            for (i10 = 1; i10 < i11; i10++) {
                if ((this.f32871a[this.f32872b + i10] & 192) == 128) {
                    j10 = (j10 << 6) | (b10 & 63);
                } else {
                    throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j10);
                }
            }
            this.f32872b += i11;
            return j10;
        }
        throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j10);
    }

    public Charset O() {
        if (a() >= 3) {
            byte[] bArr = this.f32871a;
            int i10 = this.f32872b;
            if (bArr[i10] == -17 && bArr[i10 + 1] == -69 && bArr[i10 + 2] == -65) {
                this.f32872b = i10 + 3;
                return n6.e.f26427c;
            }
        }
        if (a() >= 2) {
            byte[] bArr2 = this.f32871a;
            int i11 = this.f32872b;
            byte b10 = bArr2[i11];
            if (b10 == -2 && bArr2[i11 + 1] == -1) {
                this.f32872b = i11 + 2;
                return n6.e.f26428d;
            } else if (b10 == -1 && bArr2[i11 + 1] == -2) {
                this.f32872b = i11 + 2;
                return n6.e.f26429e;
            } else {
                return null;
            }
        }
        return null;
    }

    public void P(int i10) {
        byte[] bArr;
        if (b() < i10) {
            bArr = new byte[i10];
        } else {
            bArr = this.f32871a;
        }
        R(bArr, i10);
    }

    public void Q(byte[] bArr) {
        R(bArr, bArr.length);
    }

    public void R(byte[] bArr, int i10) {
        this.f32871a = bArr;
        this.f32873c = i10;
        this.f32872b = 0;
    }

    public void S(int i10) {
        boolean z10;
        if (i10 >= 0 && i10 <= this.f32871a.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.a(z10);
        this.f32873c = i10;
    }

    public void T(int i10) {
        boolean z10;
        if (i10 >= 0 && i10 <= this.f32873c) {
            z10 = true;
        } else {
            z10 = false;
        }
        a.a(z10);
        this.f32872b = i10;
    }

    public void U(int i10) {
        T(this.f32872b + i10);
    }

    public int a() {
        return this.f32873c - this.f32872b;
    }

    public int b() {
        return this.f32871a.length;
    }

    public void c(int i10) {
        if (i10 > b()) {
            this.f32871a = Arrays.copyOf(this.f32871a, i10);
        }
    }

    public byte[] e() {
        return this.f32871a;
    }

    public int f() {
        return this.f32872b;
    }

    public int g() {
        return this.f32873c;
    }

    public char h(Charset charset) {
        boolean contains = f32870f.contains(charset);
        a.b(contains, "Unsupported charset: " + charset);
        return (char) (i(charset) >> 16);
    }

    public int j() {
        return this.f32871a[this.f32872b] & ForkServer.ERROR;
    }

    public void k(d0 d0Var, int i10) {
        l(d0Var.f32862a, 0, i10);
        d0Var.p(0);
    }

    public void l(byte[] bArr, int i10, int i11) {
        System.arraycopy(this.f32871a, this.f32872b, bArr, i10, i11);
        this.f32872b += i11;
    }

    public String n(char c10) {
        if (a() == 0) {
            return null;
        }
        int i10 = this.f32872b;
        while (i10 < this.f32873c && this.f32871a[i10] != c10) {
            i10++;
        }
        byte[] bArr = this.f32871a;
        int i11 = this.f32872b;
        String E = q0.E(bArr, i11, i10 - i11);
        this.f32872b = i10;
        if (i10 < this.f32873c) {
            this.f32872b = i10 + 1;
        }
        return E;
    }

    public double o() {
        return Double.longBitsToDouble(z());
    }

    public int p() {
        byte[] bArr = this.f32871a;
        int i10 = this.f32872b;
        int i11 = i10 + 1;
        int i12 = i11 + 1;
        int i13 = ((bArr[i10] & ForkServer.ERROR) << 24) | ((bArr[i11] & ForkServer.ERROR) << 16);
        int i14 = i12 + 1;
        int i15 = i13 | ((bArr[i12] & ForkServer.ERROR) << 8);
        this.f32872b = i14 + 1;
        return (bArr[i14] & ForkServer.ERROR) | i15;
    }

    public int q() {
        byte[] bArr = this.f32871a;
        int i10 = this.f32872b;
        int i11 = i10 + 1;
        int i12 = i11 + 1;
        int i13 = (((bArr[i10] & ForkServer.ERROR) << 24) >> 8) | ((bArr[i11] & ForkServer.ERROR) << 8);
        this.f32872b = i12 + 1;
        return (bArr[i12] & ForkServer.ERROR) | i13;
    }

    public String r() {
        return s(n6.e.f26427c);
    }

    public String s(Charset charset) {
        boolean contains = f32870f.contains(charset);
        a.b(contains, "Unsupported charset: " + charset);
        if (a() == 0) {
            return null;
        }
        if (!charset.equals(n6.e.f26425a)) {
            O();
        }
        String E = E(d(charset) - this.f32872b, charset);
        if (this.f32872b == this.f32873c) {
            return E;
        }
        V(charset);
        return E;
    }

    public int t() {
        byte[] bArr = this.f32871a;
        int i10 = this.f32872b;
        int i11 = i10 + 1;
        int i12 = i11 + 1;
        int i13 = (bArr[i10] & ForkServer.ERROR) | ((bArr[i11] & ForkServer.ERROR) << 8);
        int i14 = i12 + 1;
        int i15 = i13 | ((bArr[i12] & ForkServer.ERROR) << 16);
        this.f32872b = i14 + 1;
        return ((bArr[i14] & ForkServer.ERROR) << 24) | i15;
    }

    public long u() {
        byte[] bArr = this.f32871a;
        int i10 = this.f32872b;
        int i11 = i10 + 1;
        int i12 = i11 + 1;
        int i13 = i12 + 1;
        int i14 = i13 + 1;
        int i15 = i14 + 1;
        int i16 = i15 + 1;
        int i17 = i16 + 1;
        this.f32872b = i17 + 1;
        return (bArr[i10] & 255) | ((bArr[i11] & 255) << 8) | ((bArr[i12] & 255) << 16) | ((bArr[i13] & 255) << 24) | ((bArr[i14] & 255) << 32) | ((bArr[i15] & 255) << 40) | ((bArr[i16] & 255) << 48) | ((bArr[i17] & 255) << 56);
    }

    public short v() {
        byte[] bArr = this.f32871a;
        int i10 = this.f32872b;
        int i11 = i10 + 1;
        int i12 = bArr[i10] & ForkServer.ERROR;
        this.f32872b = i11 + 1;
        return (short) (((bArr[i11] & ForkServer.ERROR) << 8) | i12);
    }

    public long w() {
        byte[] bArr = this.f32871a;
        int i10 = this.f32872b;
        int i11 = i10 + 1;
        int i12 = i11 + 1;
        int i13 = i12 + 1;
        this.f32872b = i13 + 1;
        return (bArr[i10] & 255) | ((bArr[i11] & 255) << 8) | ((bArr[i12] & 255) << 16) | ((bArr[i13] & 255) << 24);
    }

    public int x() {
        int t10 = t();
        if (t10 >= 0) {
            return t10;
        }
        throw new IllegalStateException("Top bit not zero: " + t10);
    }

    public int y() {
        byte[] bArr = this.f32871a;
        int i10 = this.f32872b;
        int i11 = i10 + 1;
        int i12 = bArr[i10] & ForkServer.ERROR;
        this.f32872b = i11 + 1;
        return ((bArr[i11] & ForkServer.ERROR) << 8) | i12;
    }

    public long z() {
        byte[] bArr = this.f32871a;
        int i10 = this.f32872b;
        int i11 = i10 + 1;
        int i12 = i11 + 1;
        int i13 = i12 + 1;
        int i14 = i13 + 1;
        int i15 = i14 + 1;
        int i16 = i15 + 1;
        int i17 = i16 + 1;
        this.f32872b = i17 + 1;
        return ((bArr[i10] & 255) << 56) | ((bArr[i11] & 255) << 48) | ((bArr[i12] & 255) << 40) | ((bArr[i13] & 255) << 32) | ((bArr[i14] & 255) << 24) | ((bArr[i15] & 255) << 16) | ((bArr[i16] & 255) << 8) | (bArr[i17] & 255);
    }

    public e0(int i10) {
        this.f32871a = new byte[i10];
        this.f32873c = i10;
    }

    public e0(byte[] bArr) {
        this.f32871a = bArr;
        this.f32873c = bArr.length;
    }

    public e0(byte[] bArr, int i10) {
        this.f32871a = bArr;
        this.f32873c = i10;
    }
}
