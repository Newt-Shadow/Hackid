package af;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public class g implements Serializable, Comparable {

    /* renamed from: d  reason: collision with root package name */
    public static final a f387d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    public static final g f388e = new g(new byte[0]);

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f389a;

    /* renamed from: b  reason: collision with root package name */
    private transient int f390b;

    /* renamed from: c  reason: collision with root package name */
    private transient String f391c;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ g e(a aVar, byte[] bArr, int i10, int i11, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                i10 = 0;
            }
            if ((i12 & 2) != 0) {
                i11 = b.c();
            }
            return aVar.d(bArr, i10, i11);
        }

        public final g a(String str) {
            boolean z10;
            kotlin.jvm.internal.m.e(str, "<this>");
            if (str.length() % 2 == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                int length = str.length() / 2;
                byte[] bArr = new byte[length];
                for (int i10 = 0; i10 < length; i10++) {
                    int i11 = i10 * 2;
                    bArr[i10] = (byte) ((bf.b.b(str.charAt(i11)) << 4) + bf.b.b(str.charAt(i11 + 1)));
                }
                return new g(bArr);
            }
            throw new IllegalArgumentException(("Unexpected hex string: " + str).toString());
        }

        public final g b(String str, Charset charset) {
            kotlin.jvm.internal.m.e(str, "<this>");
            kotlin.jvm.internal.m.e(charset, "charset");
            byte[] bytes = str.getBytes(charset);
            kotlin.jvm.internal.m.d(bytes, "this as java.lang.String).getBytes(charset)");
            return new g(bytes);
        }

        public final g c(String str) {
            kotlin.jvm.internal.m.e(str, "<this>");
            g gVar = new g(e1.a(str));
            gVar.B(str);
            return gVar;
        }

        public final g d(byte[] bArr, int i10, int i11) {
            byte[] k10;
            kotlin.jvm.internal.m.e(bArr, "<this>");
            int e10 = b.e(bArr, i11);
            b.b(bArr.length, i10, e10);
            k10 = yc.j.k(bArr, i10, e10 + i10);
            return new g(k10);
        }
    }

    public g(byte[] data) {
        kotlin.jvm.internal.m.e(data, "data");
        this.f389a = data;
    }

    public static /* synthetic */ g F(g gVar, int i10, int i11, int i12, Object obj) {
        if (obj == null) {
            if ((i12 & 1) != 0) {
                i10 = 0;
            }
            if ((i12 & 2) != 0) {
                i11 = b.c();
            }
            return gVar.E(i10, i11);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: substring");
    }

    public static /* synthetic */ int s(g gVar, g gVar2, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i10 = 0;
            }
            return gVar.q(gVar2, i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
    }

    public static /* synthetic */ int x(g gVar, g gVar2, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i10 = b.c();
            }
            return gVar.v(gVar2, i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
    }

    public final void A(int i10) {
        this.f390b = i10;
    }

    public final void B(String str) {
        this.f391c = str;
    }

    public final g C() {
        return f("SHA-256");
    }

    public final boolean D(g prefix) {
        kotlin.jvm.internal.m.e(prefix, "prefix");
        return y(0, prefix, 0, prefix.size());
    }

    public g E(int i10, int i11) {
        boolean z10;
        boolean z11;
        byte[] k10;
        int d10 = b.d(this, i11);
        boolean z12 = true;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (d10 <= l().length) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z11) {
                if (d10 - i10 < 0) {
                    z12 = false;
                }
                if (z12) {
                    if (i10 != 0 || d10 != l().length) {
                        k10 = yc.j.k(l(), i10, d10);
                        return new g(k10);
                    }
                    return this;
                }
                throw new IllegalArgumentException("endIndex < beginIndex".toString());
            }
            throw new IllegalArgumentException(("endIndex > length(" + l().length + ')').toString());
        }
        throw new IllegalArgumentException("beginIndex < 0".toString());
    }

    public g G() {
        for (int i10 = 0; i10 < l().length; i10++) {
            byte b10 = l()[i10];
            if (b10 >= 65 && b10 <= 90) {
                byte[] l10 = l();
                byte[] copyOf = Arrays.copyOf(l10, l10.length);
                kotlin.jvm.internal.m.d(copyOf, "copyOf(this, size)");
                copyOf[i10] = (byte) (b10 + 32);
                for (int i11 = i10 + 1; i11 < copyOf.length; i11++) {
                    byte b11 = copyOf[i11];
                    if (b11 >= 65 && b11 <= 90) {
                        copyOf[i11] = (byte) (b11 + 32);
                    }
                }
                return new g(copyOf);
            }
        }
        return this;
    }

    public String H() {
        String o10 = o();
        if (o10 == null) {
            String c10 = e1.c(t());
            B(c10);
            return c10;
        }
        return o10;
    }

    public void I(d buffer, int i10, int i11) {
        kotlin.jvm.internal.m.e(buffer, "buffer");
        bf.b.d(this, buffer, i10, i11);
    }

    public String a() {
        return af.a.b(l(), null, 1, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
        if (r0 < r1) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0033, code lost:
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:?, code lost:
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0028, code lost:
        if (r7 < r8) goto L12;
     */
    @Override // java.lang.Comparable
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int compareTo(af.g r10) {
        /*
            r9 = this;
            java.lang.String r0 = "other"
            kotlin.jvm.internal.m.e(r10, r0)
            int r0 = r9.size()
            int r1 = r10.size()
            int r2 = java.lang.Math.min(r0, r1)
            r3 = 0
            r4 = r3
        L13:
            r5 = -1
            r6 = 1
            if (r4 >= r2) goto L2b
            byte r7 = r9.j(r4)
            r7 = r7 & 255(0xff, float:3.57E-43)
            byte r8 = r10.j(r4)
            r8 = r8 & 255(0xff, float:3.57E-43)
            if (r7 != r8) goto L28
            int r4 = r4 + 1
            goto L13
        L28:
            if (r7 >= r8) goto L32
            goto L30
        L2b:
            if (r0 != r1) goto L2e
            goto L33
        L2e:
            if (r0 >= r1) goto L32
        L30:
            r3 = r5
            goto L33
        L32:
            r3 = r6
        L33:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: af.g.compareTo(af.g):int");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (gVar.size() == l().length && gVar.z(0, l(), 0, l().length)) {
                return true;
            }
        }
        return false;
    }

    public g f(String algorithm) {
        kotlin.jvm.internal.m.e(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        messageDigest.update(this.f389a, 0, size());
        byte[] digestBytes = messageDigest.digest();
        kotlin.jvm.internal.m.d(digestBytes, "digestBytes");
        return new g(digestBytes);
    }

    public int hashCode() {
        int m10 = m();
        if (m10 == 0) {
            int hashCode = Arrays.hashCode(l());
            A(hashCode);
            return hashCode;
        }
        return m10;
    }

    public final boolean i(g suffix) {
        kotlin.jvm.internal.m.e(suffix, "suffix");
        return y(size() - suffix.size(), suffix, 0, suffix.size());
    }

    public final byte j(int i10) {
        return u(i10);
    }

    public final byte[] l() {
        return this.f389a;
    }

    public final int m() {
        return this.f390b;
    }

    public int n() {
        return l().length;
    }

    public final String o() {
        return this.f391c;
    }

    public String p() {
        byte[] l10;
        String r10;
        char[] cArr = new char[l().length * 2];
        int i10 = 0;
        for (byte b10 : l()) {
            int i11 = i10 + 1;
            cArr[i10] = bf.b.f()[(b10 >> 4) & 15];
            i10 = i11 + 1;
            cArr[i11] = bf.b.f()[b10 & 15];
        }
        r10 = rd.y.r(cArr);
        return r10;
    }

    public final int q(g other, int i10) {
        kotlin.jvm.internal.m.e(other, "other");
        return r(other.t(), i10);
    }

    public int r(byte[] other, int i10) {
        kotlin.jvm.internal.m.e(other, "other");
        int length = l().length - other.length;
        int max = Math.max(i10, 0);
        if (max <= length) {
            while (!b.a(l(), max, other, 0, other.length)) {
                if (max != length) {
                    max++;
                }
            }
            return max;
        }
        return -1;
    }

    public final int size() {
        return n();
    }

    public byte[] t() {
        return l();
    }

    public String toString() {
        boolean z10;
        String D;
        String D2;
        String D3;
        boolean z11;
        g gVar;
        byte[] k10;
        String str;
        boolean z12 = true;
        if (l().length == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            str = "[size=0]";
        } else {
            int a10 = bf.b.a(l(), 64);
            if (a10 == -1) {
                if (l().length <= 64) {
                    str = "[hex=" + p() + ']';
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("[size=");
                    sb2.append(l().length);
                    sb2.append(" hex=");
                    int d10 = b.d(this, 64);
                    if (d10 <= l().length) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        if (d10 + 0 < 0) {
                            z12 = false;
                        }
                        if (z12) {
                            if (d10 != l().length) {
                                k10 = yc.j.k(l(), 0, d10);
                                gVar = new g(k10);
                            } else {
                                gVar = this;
                            }
                            sb2.append(gVar.p());
                            sb2.append("…]");
                            return sb2.toString();
                        }
                        throw new IllegalArgumentException("endIndex < beginIndex".toString());
                    }
                    throw new IllegalArgumentException(("endIndex > length(" + l().length + ')').toString());
                }
            } else {
                String H = H();
                String substring = H.substring(0, a10);
                kotlin.jvm.internal.m.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                D = rd.y.D(substring, "\\", "\\\\", false, 4, null);
                D2 = rd.y.D(D, "\n", "\\n", false, 4, null);
                D3 = rd.y.D(D2, "\r", "\\r", false, 4, null);
                if (a10 < H.length()) {
                    return "[size=" + l().length + " text=" + D3 + "…]";
                }
                return "[text=" + D3 + ']';
            }
        }
        return str;
    }

    public byte u(int i10) {
        return l()[i10];
    }

    public final int v(g other, int i10) {
        kotlin.jvm.internal.m.e(other, "other");
        return w(other.t(), i10);
    }

    public int w(byte[] other, int i10) {
        kotlin.jvm.internal.m.e(other, "other");
        for (int min = Math.min(b.d(this, i10), l().length - other.length); -1 < min; min--) {
            if (b.a(l(), min, other, 0, other.length)) {
                return min;
            }
        }
        return -1;
    }

    public boolean y(int i10, g other, int i11, int i12) {
        kotlin.jvm.internal.m.e(other, "other");
        return other.z(i11, l(), i10, i12);
    }

    public boolean z(int i10, byte[] other, int i11, int i12) {
        kotlin.jvm.internal.m.e(other, "other");
        if (i10 >= 0 && i10 <= l().length - i12 && i11 >= 0 && i11 <= other.length - i12 && b.a(l(), i10, other, i11, i12)) {
            return true;
        }
        return false;
    }
}
