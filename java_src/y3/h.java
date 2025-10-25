package y3;

import io.flutter.embedding.android.KeyboardMap;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import o6.q;
import org.apache.tika.fork.ForkServer;
import y4.d0;
import y4.e0;
import y4.q0;
import y4.r;
/* loaded from: classes.dex */
public final class h extends t3.g {

    /* renamed from: b  reason: collision with root package name */
    public static final a f32839b = new a() { // from class: y3.g
        @Override // y3.h.a
        public final boolean a(int i10, int i11, int i12, int i13, int i14) {
            boolean A;
            A = h.A(i10, i11, i12, i13, i14);
            return A;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final a f32840a;

    /* loaded from: classes.dex */
    public interface a {
        boolean a(int i10, int i11, int i12, int i13, int i14);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f32841a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f32842b;

        /* renamed from: c  reason: collision with root package name */
        private final int f32843c;

        public b(int i10, boolean z10, int i11) {
            this.f32841a = i10;
            this.f32842b = z10;
            this.f32843c = i11;
        }
    }

    public h() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean A(int i10, int i11, int i12, int i13, int i14) {
        return false;
    }

    private static int B(e0 e0Var, int i10) {
        byte[] e10 = e0Var.e();
        int f10 = e0Var.f();
        int i11 = f10;
        while (true) {
            int i12 = i11 + 1;
            if (i12 < f10 + i10) {
                if ((e10[i11] & ForkServer.ERROR) == 255 && e10[i12] == 0) {
                    System.arraycopy(e10, i11 + 2, e10, i12, (i10 - (i11 - f10)) - 2);
                    i10--;
                }
                i11 = i12;
            } else {
                return i10;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0076, code lost:
        if ((r10 & 1) != 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0079, code lost:
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0086, code lost:
        if ((r10 & 128) != 0) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean C(y4.e0 r18, int r19, int r20, boolean r21) {
        /*
            r1 = r18
            r0 = r19
            int r2 = r18.f()
        L8:
            int r3 = r18.a()     // Catch: java.lang.Throwable -> Laf
            r4 = 1
            r5 = r20
            if (r3 < r5) goto Lab
            r3 = 3
            r6 = 0
            if (r0 < r3) goto L22
            int r7 = r18.p()     // Catch: java.lang.Throwable -> Laf
            long r8 = r18.I()     // Catch: java.lang.Throwable -> Laf
            int r10 = r18.M()     // Catch: java.lang.Throwable -> Laf
            goto L2c
        L22:
            int r7 = r18.J()     // Catch: java.lang.Throwable -> Laf
            int r8 = r18.J()     // Catch: java.lang.Throwable -> Laf
            long r8 = (long) r8
            r10 = r6
        L2c:
            r11 = 0
            if (r7 != 0) goto L3a
            int r7 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r7 != 0) goto L3a
            if (r10 != 0) goto L3a
            r1.T(r2)
            return r4
        L3a:
            r7 = 4
            if (r0 != r7) goto L6b
            if (r21 != 0) goto L6b
            r13 = 8421504(0x808080, double:4.160776E-317)
            long r13 = r13 & r8
            int r11 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r11 == 0) goto L4b
            r1.T(r2)
            return r6
        L4b:
            r11 = 255(0xff, double:1.26E-321)
            long r13 = r8 & r11
            r15 = 8
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 7
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 16
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 14
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 24
            long r8 = r8 >> r15
            long r8 = r8 & r11
            r11 = 21
            long r8 = r8 << r11
            long r8 = r8 | r13
        L6b:
            if (r0 != r7) goto L7b
            r3 = r10 & 64
            if (r3 == 0) goto L73
            r3 = r4
            goto L74
        L73:
            r3 = r6
        L74:
            r7 = r10 & 1
            if (r7 == 0) goto L79
            goto L8b
        L79:
            r4 = r6
            goto L8b
        L7b:
            if (r0 != r3) goto L89
            r3 = r10 & 32
            if (r3 == 0) goto L83
            r3 = r4
            goto L84
        L83:
            r3 = r6
        L84:
            r7 = r10 & 128(0x80, float:1.794E-43)
            if (r7 == 0) goto L79
            goto L8b
        L89:
            r3 = r6
            r4 = r3
        L8b:
            if (r4 == 0) goto L8f
            int r3 = r3 + 4
        L8f:
            long r3 = (long) r3
            int r3 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r3 >= 0) goto L98
            r1.T(r2)
            return r6
        L98:
            int r3 = r18.a()     // Catch: java.lang.Throwable -> Laf
            long r3 = (long) r3
            int r3 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r3 >= 0) goto La5
            r1.T(r2)
            return r6
        La5:
            int r3 = (int) r8
            r1.U(r3)     // Catch: java.lang.Throwable -> Laf
            goto L8
        Lab:
            r1.T(r2)
            return r4
        Laf:
            r0 = move-exception
            r1.T(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: y3.h.C(y4.e0, int, int, boolean):boolean");
    }

    private static byte[] d(byte[] bArr, int i10, int i11) {
        if (i11 <= i10) {
            return q0.f32951f;
        }
        return Arrays.copyOfRange(bArr, i10, i11);
    }

    private static y3.a f(e0 e0Var, int i10, int i11) {
        int z10;
        String str;
        int G = e0Var.G();
        Charset w10 = w(G);
        int i12 = i10 - 1;
        byte[] bArr = new byte[i12];
        e0Var.l(bArr, 0, i12);
        if (i11 == 2) {
            str = "image/" + n6.c.e(new String(bArr, 0, 3, n6.e.f26426b));
            if ("image/jpg".equals(str)) {
                str = "image/jpeg";
            }
            z10 = 2;
        } else {
            z10 = z(bArr, 0);
            String e10 = n6.c.e(new String(bArr, 0, z10, n6.e.f26426b));
            if (e10.indexOf(47) == -1) {
                str = "image/" + e10;
            } else {
                str = e10;
            }
        }
        int i13 = bArr[z10 + 1] & ForkServer.ERROR;
        int i14 = z10 + 2;
        int y10 = y(bArr, i14, G);
        return new y3.a(str, new String(bArr, i14, y10 - i14, w10), i13, d(bArr, y10 + v(G), i12));
    }

    private static y3.b g(e0 e0Var, int i10, String str) {
        byte[] bArr = new byte[i10];
        e0Var.l(bArr, 0, i10);
        return new y3.b(str, bArr);
    }

    private static c h(e0 e0Var, int i10, int i11, boolean z10, int i12, a aVar) {
        long j10;
        long j11;
        int f10 = e0Var.f();
        int z11 = z(e0Var.e(), f10);
        String str = new String(e0Var.e(), f10, z11 - f10, n6.e.f26426b);
        e0Var.T(z11 + 1);
        int p10 = e0Var.p();
        int p11 = e0Var.p();
        long I = e0Var.I();
        if (I == KeyboardMap.kValueMask) {
            j10 = -1;
        } else {
            j10 = I;
        }
        long I2 = e0Var.I();
        if (I2 == KeyboardMap.kValueMask) {
            j11 = -1;
        } else {
            j11 = I2;
        }
        ArrayList arrayList = new ArrayList();
        int i13 = f10 + i10;
        while (e0Var.f() < i13) {
            i k10 = k(i11, e0Var, z10, i12, aVar);
            if (k10 != null) {
                arrayList.add(k10);
            }
        }
        return new c(str, p10, p11, j10, j11, (i[]) arrayList.toArray(new i[0]));
    }

    private static d i(e0 e0Var, int i10, int i11, boolean z10, int i12, a aVar) {
        boolean z11;
        boolean z12;
        int f10 = e0Var.f();
        int z13 = z(e0Var.e(), f10);
        String str = new String(e0Var.e(), f10, z13 - f10, n6.e.f26426b);
        e0Var.T(z13 + 1);
        int G = e0Var.G();
        if ((G & 2) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if ((G & 1) != 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        int G2 = e0Var.G();
        String[] strArr = new String[G2];
        for (int i13 = 0; i13 < G2; i13++) {
            int f11 = e0Var.f();
            int z14 = z(e0Var.e(), f11);
            strArr[i13] = new String(e0Var.e(), f11, z14 - f11, n6.e.f26426b);
            e0Var.T(z14 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i14 = f10 + i10;
        while (e0Var.f() < i14) {
            i k10 = k(i11, e0Var, z10, i12, aVar);
            if (k10 != null) {
                arrayList.add(k10);
            }
        }
        return new d(str, z11, z12, strArr, (i[]) arrayList.toArray(new i[0]));
    }

    private static e j(e0 e0Var, int i10) {
        if (i10 < 4) {
            return null;
        }
        int G = e0Var.G();
        Charset w10 = w(G);
        byte[] bArr = new byte[3];
        e0Var.l(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i11 = i10 - 4;
        byte[] bArr2 = new byte[i11];
        e0Var.l(bArr2, 0, i11);
        int y10 = y(bArr2, 0, G);
        String str2 = new String(bArr2, 0, y10, w10);
        int v10 = y10 + v(G);
        return new e(str, str2, p(bArr2, v10, y(bArr2, v10, G), w10));
    }

    /* JADX WARN: Code restructure failed: missing block: B:131:0x0190, code lost:
        if (r13 == 67) goto L98;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static y3.i k(int r19, y4.e0 r20, boolean r21, int r22, y3.h.a r23) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: y3.h.k(int, y4.e0, boolean, int, y3.h$a):y3.i");
    }

    private static f l(e0 e0Var, int i10) {
        int G = e0Var.G();
        Charset w10 = w(G);
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        e0Var.l(bArr, 0, i11);
        int z10 = z(bArr, 0);
        String str = new String(bArr, 0, z10, n6.e.f26426b);
        int i12 = z10 + 1;
        int y10 = y(bArr, i12, G);
        String p10 = p(bArr, i12, y10, w10);
        int v10 = y10 + v(G);
        int y11 = y(bArr, v10, G);
        return new f(str, p10, p(bArr, v10, y11, w10), d(bArr, y11 + v(G), i11));
    }

    private static b m(e0 e0Var) {
        int J;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        if (e0Var.a() < 10) {
            r.i("Id3Decoder", "Data too short to be an ID3 tag");
            return null;
        }
        if (e0Var.J() != 4801587) {
            r.i("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x" + String.format("%06X", Integer.valueOf(J)));
            return null;
        }
        int G = e0Var.G();
        boolean z14 = true;
        e0Var.U(1);
        int G2 = e0Var.G();
        int F = e0Var.F();
        if (G == 2) {
            if ((G2 & 64) != 0) {
                z13 = true;
            } else {
                z13 = false;
            }
            if (z13) {
                r.i("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (G == 3) {
            if ((G2 & 64) != 0) {
                z12 = true;
            } else {
                z12 = false;
            }
            if (z12) {
                int p10 = e0Var.p();
                e0Var.U(p10);
                F -= p10 + 4;
            }
        } else if (G == 4) {
            if ((G2 & 64) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                int F2 = e0Var.F();
                e0Var.U(F2 - 4);
                F -= F2;
            }
            if ((G2 & 16) != 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z11) {
                F -= 10;
            }
        } else {
            r.i("Id3Decoder", "Skipped ID3 tag with unsupported majorVersion=" + G);
            return null;
        }
        if (G >= 4 || (G2 & 128) == 0) {
            z14 = false;
        }
        return new b(G, z14, F);
    }

    private static k n(e0 e0Var, int i10) {
        int M = e0Var.M();
        int J = e0Var.J();
        int J2 = e0Var.J();
        int G = e0Var.G();
        int G2 = e0Var.G();
        d0 d0Var = new d0();
        d0Var.m(e0Var);
        int i11 = ((i10 - 10) * 8) / (G + G2);
        int[] iArr = new int[i11];
        int[] iArr2 = new int[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            int h10 = d0Var.h(G);
            int h11 = d0Var.h(G2);
            iArr[i12] = h10;
            iArr2[i12] = h11;
        }
        return new k(M, J, J2, iArr, iArr2);
    }

    private static l o(e0 e0Var, int i10) {
        byte[] bArr = new byte[i10];
        e0Var.l(bArr, 0, i10);
        int z10 = z(bArr, 0);
        return new l(new String(bArr, 0, z10, n6.e.f26426b), d(bArr, z10 + 1, i10));
    }

    private static String p(byte[] bArr, int i10, int i11, Charset charset) {
        if (i11 > i10 && i11 <= bArr.length) {
            return new String(bArr, i10, i11 - i10, charset);
        }
        return "";
    }

    private static m q(e0 e0Var, int i10, String str) {
        if (i10 < 1) {
            return null;
        }
        int G = e0Var.G();
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        e0Var.l(bArr, 0, i11);
        return new m(str, null, r(bArr, G, 0));
    }

    private static q r(byte[] bArr, int i10, int i11) {
        if (i11 >= bArr.length) {
            return q.F("");
        }
        q.a r10 = q.r();
        int y10 = y(bArr, i11, i10);
        while (i11 < y10) {
            r10.a(new String(bArr, i11, y10 - i11, w(i10)));
            i11 = v(i10) + y10;
            y10 = y(bArr, i11, i10);
        }
        q k10 = r10.k();
        if (k10.isEmpty()) {
            return q.F("");
        }
        return k10;
    }

    private static m s(e0 e0Var, int i10) {
        if (i10 < 1) {
            return null;
        }
        int G = e0Var.G();
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        e0Var.l(bArr, 0, i11);
        int y10 = y(bArr, 0, G);
        return new m("TXXX", new String(bArr, 0, y10, w(G)), r(bArr, G, y10 + v(G)));
    }

    private static n t(e0 e0Var, int i10, String str) {
        byte[] bArr = new byte[i10];
        e0Var.l(bArr, 0, i10);
        return new n(str, null, new String(bArr, 0, z(bArr, 0), n6.e.f26426b));
    }

    private static n u(e0 e0Var, int i10) {
        if (i10 < 1) {
            return null;
        }
        int G = e0Var.G();
        int i11 = i10 - 1;
        byte[] bArr = new byte[i11];
        e0Var.l(bArr, 0, i11);
        int y10 = y(bArr, 0, G);
        String str = new String(bArr, 0, y10, w(G));
        int v10 = y10 + v(G);
        return new n("WXXX", str, p(bArr, v10, z(bArr, v10), n6.e.f26426b));
    }

    private static int v(int i10) {
        return (i10 == 0 || i10 == 3) ? 1 : 2;
    }

    private static Charset w(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return n6.e.f26426b;
                }
                return n6.e.f26427c;
            }
            return n6.e.f26428d;
        }
        return n6.e.f26430f;
    }

    private static String x(int i10, int i11, int i12, int i13, int i14) {
        if (i10 == 2) {
            return String.format(Locale.US, "%c%c%c", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13));
        }
        return String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(i14));
    }

    private static int y(byte[] bArr, int i10, int i11) {
        int z10 = z(bArr, i10);
        if (i11 != 0 && i11 != 3) {
            while (z10 < bArr.length - 1) {
                if ((z10 - i10) % 2 == 0 && bArr[z10 + 1] == 0) {
                    return z10;
                }
                z10 = z(bArr, z10 + 1);
            }
            return bArr.length;
        }
        return z10;
    }

    private static int z(byte[] bArr, int i10) {
        while (i10 < bArr.length) {
            if (bArr[i10] == 0) {
                return i10;
            }
            i10++;
        }
        return bArr.length;
    }

    @Override // t3.g
    protected t3.a b(t3.d dVar, ByteBuffer byteBuffer) {
        return e(byteBuffer.array(), byteBuffer.limit());
    }

    public t3.a e(byte[] bArr, int i10) {
        int i11;
        ArrayList arrayList = new ArrayList();
        e0 e0Var = new e0(bArr, i10);
        b m10 = m(e0Var);
        if (m10 == null) {
            return null;
        }
        int f10 = e0Var.f();
        if (m10.f32841a == 2) {
            i11 = 6;
        } else {
            i11 = 10;
        }
        int i12 = m10.f32843c;
        if (m10.f32842b) {
            i12 = B(e0Var, m10.f32843c);
        }
        e0Var.S(f10 + i12);
        boolean z10 = false;
        if (!C(e0Var, m10.f32841a, i11, false)) {
            if (m10.f32841a == 4 && C(e0Var, 4, i11, true)) {
                z10 = true;
            } else {
                r.i("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + m10.f32841a);
                return null;
            }
        }
        while (e0Var.a() >= i11) {
            i k10 = k(m10.f32841a, e0Var, z10, i11, this.f32840a);
            if (k10 != null) {
                arrayList.add(k10);
            }
        }
        return new t3.a(arrayList);
    }

    public h(a aVar) {
        this.f32840a = aVar;
    }
}
