package af;

import io.flutter.embedding.android.KeyboardMap;
import java.io.Closeable;
import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import kotlin.KotlinVersion;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes2.dex */
public final class d implements f, e, Cloneable, ByteChannel {

    /* renamed from: a  reason: collision with root package name */
    public v0 f371a;

    /* renamed from: b  reason: collision with root package name */
    private long f372b;

    /* loaded from: classes2.dex */
    public static final class a implements Closeable {

        /* renamed from: a  reason: collision with root package name */
        public d f373a;

        /* renamed from: b  reason: collision with root package name */
        private v0 f374b;

        /* renamed from: d  reason: collision with root package name */
        public byte[] f376d;

        /* renamed from: c  reason: collision with root package name */
        public long f375c = -1;

        /* renamed from: e  reason: collision with root package name */
        public int f377e = -1;

        /* renamed from: f  reason: collision with root package name */
        public int f378f = -1;

        public final void a(v0 v0Var) {
            this.f374b = v0Var;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            boolean z10;
            if (this.f373a != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                this.f373a = null;
                a(null);
                this.f375c = -1L;
                this.f376d = null;
                this.f377e = -1;
                this.f378f = -1;
                return;
            }
            throw new IllegalStateException("not attached to a buffer".toString());
        }
    }

    /* loaded from: classes2.dex */
    public static final class c extends OutputStream {
        c() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
        }

        public String toString() {
            return d.this + ".outputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i10) {
            d.this.O(i10);
        }

        @Override // java.io.OutputStream
        public void write(byte[] data, int i10, int i11) {
            kotlin.jvm.internal.m.e(data, "data");
            d.this.l0(data, i10, i11);
        }
    }

    @Override // af.f
    public String A(long j10) {
        return W(j10, rd.d.f29089b);
    }

    public final g A0() {
        boolean z10;
        if (k0() <= 2147483647L) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return D0((int) k0());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + k0()).toString());
    }

    @Override // af.f
    public g D(long j10) {
        boolean z10;
        if (j10 >= 0 && j10 <= 2147483647L) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (k0() >= j10) {
                if (j10 >= 4096) {
                    g D0 = D0((int) j10);
                    skip(j10);
                    return D0;
                }
                return new g(x0(j10));
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(("byteCount: " + j10).toString());
    }

    public final g D0(int i10) {
        if (i10 == 0) {
            return g.f388e;
        }
        af.b.b(k0(), 0L, i10);
        v0 v0Var = this.f371a;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            kotlin.jvm.internal.m.b(v0Var);
            int i14 = v0Var.f457c;
            int i15 = v0Var.f456b;
            if (i14 != i15) {
                i12 += i14 - i15;
                i13++;
                v0Var = v0Var.f460f;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[][] bArr = new byte[i13];
        int[] iArr = new int[i13 * 2];
        v0 v0Var2 = this.f371a;
        int i16 = 0;
        while (i11 < i10) {
            kotlin.jvm.internal.m.b(v0Var2);
            bArr[i16] = v0Var2.f455a;
            i11 += v0Var2.f457c - v0Var2.f456b;
            iArr[i16] = Math.min(i11, i10);
            iArr[i16 + i13] = v0Var2.f456b;
            v0Var2.f458d = true;
            i16++;
            v0Var2 = v0Var2.f460f;
        }
        return new x0(bArr, iArr);
    }

    public g E() {
        return D(k0());
    }

    @Override // af.f
    public short F0() {
        return af.b.h(readShort());
    }

    @Override // af.f
    public long G0() {
        return af.b.g(P());
    }

    public void H(byte[] sink) {
        kotlin.jvm.internal.m.e(sink, "sink");
        int i10 = 0;
        while (i10 < sink.length) {
            int read = read(sink, i10, sink.length - i10);
            if (read != -1) {
                i10 += read;
            } else {
                throw new EOFException();
            }
        }
    }

    public final v0 J0(int i10) {
        boolean z10 = true;
        if ((i10 < 1 || i10 > 8192) ? false : false) {
            v0 v0Var = this.f371a;
            if (v0Var == null) {
                v0 c10 = w0.c();
                this.f371a = c10;
                c10.f461g = c10;
                c10.f460f = c10;
                return c10;
            }
            kotlin.jvm.internal.m.b(v0Var);
            v0 v0Var2 = v0Var.f461g;
            kotlin.jvm.internal.m.b(v0Var2);
            if (v0Var2.f457c + i10 <= 8192 && v0Var2.f459e) {
                return v0Var2;
            }
            return v0Var2.c(w0.c());
        }
        throw new IllegalArgumentException("unexpected capacity".toString());
    }

    @Override // af.a1
    public long L0(d sink, long j10) {
        boolean z10;
        kotlin.jvm.internal.m.e(sink, "sink");
        if (j10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (k0() == 0) {
                return -1L;
            }
            if (j10 > k0()) {
                j10 = k0();
            }
            sink.c0(this, j10);
            return j10;
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    @Override // af.f
    public boolean N() {
        if (this.f372b == 0) {
            return true;
        }
        return false;
    }

    @Override // af.f
    public void O0(long j10) {
        if (this.f372b >= j10) {
            return;
        }
        throw new EOFException();
    }

    public long P() {
        if (k0() >= 8) {
            v0 v0Var = this.f371a;
            kotlin.jvm.internal.m.b(v0Var);
            int i10 = v0Var.f456b;
            int i11 = v0Var.f457c;
            if (i11 - i10 < 8) {
                return ((readInt() & KeyboardMap.kValueMask) << 32) | (KeyboardMap.kValueMask & readInt());
            }
            byte[] bArr = v0Var.f455a;
            int i12 = i10 + 1;
            int i13 = i12 + 1;
            int i14 = i13 + 1;
            int i15 = i14 + 1;
            int i16 = i15 + 1;
            int i17 = i16 + 1;
            long j10 = ((bArr[i10] & 255) << 56) | ((bArr[i12] & 255) << 48) | ((bArr[i13] & 255) << 40) | ((bArr[i14] & 255) << 32) | ((bArr[i15] & 255) << 24) | ((bArr[i16] & 255) << 16);
            int i18 = i17 + 1;
            int i19 = i18 + 1;
            long j11 = j10 | ((bArr[i17] & 255) << 8) | (bArr[i18] & 255);
            d0(k0() - 8);
            if (i19 == i11) {
                this.f371a = v0Var.b();
                w0.b(v0Var);
            } else {
                v0Var.f456b = i19;
            }
            return j11;
        }
        throw new EOFException();
    }

    @Override // af.e
    public OutputStream P0() {
        return new c();
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00aa A[EDGE_INSN: B:43:0x00aa->B:38:0x00aa ?: BREAK  , SYNTHETIC] */
    @Override // af.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long Q0() {
        /*
            r14 = this;
            long r0 = r14.k0()
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto Lb4
            r0 = 0
            r1 = r0
            r4 = r2
        Ld:
            af.v0 r6 = r14.f371a
            kotlin.jvm.internal.m.b(r6)
            byte[] r7 = r6.f455a
            int r8 = r6.f456b
            int r9 = r6.f457c
        L18:
            if (r8 >= r9) goto L96
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L27
            r11 = 57
            if (r10 > r11) goto L27
            int r11 = r10 + (-48)
            goto L3f
        L27:
            r11 = 97
            if (r10 < r11) goto L34
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L34
            int r11 = r10 + (-97)
        L31:
            int r11 = r11 + 10
            goto L3f
        L34:
            r11 = 65
            if (r10 < r11) goto L77
            r11 = 70
            if (r10 > r11) goto L77
            int r11 = r10 + (-65)
            goto L31
        L3f:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 != 0) goto L4f
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L18
        L4f:
            af.d r0 = new af.d
            r0.<init>()
            af.d r0 = r0.n0(r4)
            af.d r0 = r0.O(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Number too large: "
            r2.append(r3)
            java.lang.String r0 = r0.X()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L77:
            if (r0 == 0) goto L7b
            r1 = 1
            goto L96
        L7b:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.append(r2)
            java.lang.String r2 = af.b.i(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L96:
            if (r8 != r9) goto La2
            af.v0 r7 = r6.b()
            r14.f371a = r7
            af.w0.b(r6)
            goto La4
        La2:
            r6.f456b = r8
        La4:
            if (r1 != 0) goto Laa
            af.v0 r6 = r14.f371a
            if (r6 != 0) goto Ld
        Laa:
            long r1 = r14.k0()
            long r6 = (long) r0
            long r1 = r1 - r6
            r14.d0(r1)
            return r4
        Lb4:
            java.io.EOFException r0 = new java.io.EOFException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: af.d.Q0():long");
    }

    @Override // af.f
    public int R0(p0 options) {
        kotlin.jvm.internal.m.e(options, "options");
        int d10 = bf.a.d(this, options, false, 2, null);
        if (d10 == -1) {
            return -1;
        }
        skip(options.o()[d10].size());
        return d10;
    }

    @Override // af.f
    public InputStream S0() {
        return new b();
    }

    @Override // af.e
    /* renamed from: T0 */
    public d s0(g byteString) {
        kotlin.jvm.internal.m.e(byteString, "byteString");
        byteString.I(this, 0, byteString.size());
        return this;
    }

    @Override // af.e
    /* renamed from: U0 */
    public d C0(byte[] source) {
        kotlin.jvm.internal.m.e(source, "source");
        return l0(source, 0, source.length);
    }

    @Override // af.e
    /* renamed from: V0 */
    public d l0(byte[] source, int i10, int i11) {
        kotlin.jvm.internal.m.e(source, "source");
        long j10 = i11;
        af.b.b(source.length, i10, j10);
        int i12 = i11 + i10;
        while (i10 < i12) {
            v0 J0 = J0(1);
            int min = Math.min(i12 - i10, 8192 - J0.f457c);
            int i13 = i10 + min;
            yc.j.d(source, J0.f455a, J0.f457c, i10, i13);
            J0.f457c += min;
            i10 = i13;
        }
        d0(k0() + j10);
        return this;
    }

    public String W(long j10, Charset charset) {
        boolean z10;
        kotlin.jvm.internal.m.e(charset, "charset");
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 >= 0 && j10 <= 2147483647L) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (this.f372b >= j10) {
                if (i10 == 0) {
                    return "";
                }
                v0 v0Var = this.f371a;
                kotlin.jvm.internal.m.b(v0Var);
                int i11 = v0Var.f456b;
                if (i11 + j10 > v0Var.f457c) {
                    return new String(x0(j10), charset);
                }
                int i12 = (int) j10;
                String str = new String(v0Var.f455a, i11, i12, charset);
                int i13 = v0Var.f456b + i12;
                v0Var.f456b = i13;
                this.f372b -= j10;
                if (i13 == v0Var.f457c) {
                    this.f371a = v0Var.b();
                    w0.b(v0Var);
                }
                return str;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(("byteCount: " + j10).toString());
    }

    public long W0(a1 source) {
        kotlin.jvm.internal.m.e(source, "source");
        long j10 = 0;
        while (true) {
            long L0 = source.L0(this, 8192L);
            if (L0 != -1) {
                j10 += L0;
            } else {
                return j10;
            }
        }
    }

    public String X() {
        return W(this.f372b, rd.d.f29089b);
    }

    @Override // af.e
    /* renamed from: X0 */
    public d O(int i10) {
        v0 J0 = J0(1);
        byte[] bArr = J0.f455a;
        int i11 = J0.f457c;
        J0.f457c = i11 + 1;
        bArr[i11] = (byte) i10;
        d0(k0() + 1);
        return this;
    }

    @Override // af.e
    /* renamed from: Y0 */
    public d n0(long j10) {
        if (j10 == 0) {
            return O(48);
        }
        long j11 = (j10 >>> 1) | j10;
        long j12 = j11 | (j11 >>> 2);
        long j13 = j12 | (j12 >>> 4);
        long j14 = j13 | (j13 >>> 8);
        long j15 = j14 | (j14 >>> 16);
        long j16 = j15 | (j15 >>> 32);
        long j17 = j16 - ((j16 >>> 1) & 6148914691236517205L);
        long j18 = ((j17 >>> 2) & 3689348814741910323L) + (j17 & 3689348814741910323L);
        long j19 = ((j18 >>> 4) + j18) & 1085102592571150095L;
        long j20 = j19 + (j19 >>> 8);
        long j21 = j20 + (j20 >>> 16);
        int i10 = (int) ((((j21 & 63) + ((j21 >>> 32) & 63)) + 3) / 4);
        v0 J0 = J0(i10);
        byte[] bArr = J0.f455a;
        int i11 = J0.f457c;
        for (int i12 = (i11 + i10) - 1; i12 >= i11; i12--) {
            bArr[i12] = bf.a.a()[(int) (15 & j10)];
            j10 >>>= 4;
        }
        J0.f457c += i10;
        d0(k0() + i10);
        return this;
    }

    @Override // af.e
    /* renamed from: Z0 */
    public d K(int i10) {
        v0 J0 = J0(4);
        byte[] bArr = J0.f455a;
        int i11 = J0.f457c;
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i10 >>> 24) & KotlinVersion.MAX_COMPONENT_VALUE);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((i10 >>> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
        int i14 = i13 + 1;
        bArr[i13] = (byte) ((i10 >>> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
        bArr[i14] = (byte) (i10 & KotlinVersion.MAX_COMPONENT_VALUE);
        J0.f457c = i14 + 1;
        d0(k0() + 4);
        return this;
    }

    public final void a() {
        skip(k0());
    }

    @Override // af.f
    public String a0(long j10) {
        boolean z10;
        if (j10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            long j11 = Long.MAX_VALUE;
            if (j10 != Long.MAX_VALUE) {
                j11 = j10 + 1;
            }
            long q10 = q((byte) 10, 0L, j11);
            if (q10 != -1) {
                return bf.a.b(this, q10);
            }
            if (j11 < k0() && k(j11 - 1) == 13 && k(j11) == 10) {
                return bf.a.b(this, j11);
            }
            d dVar = new d();
            f(dVar, 0L, Math.min(32, k0()));
            throw new EOFException("\\n not found: limit=" + Math.min(k0(), j10) + " content=" + dVar.E().p() + (char) 8230);
        }
        throw new IllegalArgumentException(("limit < 0: " + j10).toString());
    }

    public d a1(int i10) {
        return K(af.b.f(i10));
    }

    /* renamed from: b */
    public d clone() {
        return e();
    }

    @Override // af.e
    /* renamed from: b1 */
    public d F(int i10) {
        v0 J0 = J0(2);
        byte[] bArr = J0.f455a;
        int i11 = J0.f457c;
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i10 >>> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
        bArr[i12] = (byte) (i10 & KotlinVersion.MAX_COMPONENT_VALUE);
        J0.f457c = i12 + 1;
        d0(k0() + 2);
        return this;
    }

    public final long c() {
        long k02 = k0();
        if (k02 == 0) {
            return 0L;
        }
        v0 v0Var = this.f371a;
        kotlin.jvm.internal.m.b(v0Var);
        v0 v0Var2 = v0Var.f461g;
        kotlin.jvm.internal.m.b(v0Var2);
        int i10 = v0Var2.f457c;
        if (i10 < 8192 && v0Var2.f459e) {
            k02 -= i10 - v0Var2.f456b;
        }
        return k02;
    }

    @Override // af.y0
    public void c0(d source, long j10) {
        boolean z10;
        v0 v0Var;
        v0 v0Var2;
        int i10;
        kotlin.jvm.internal.m.e(source, "source");
        if (source != this) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            af.b.b(source.k0(), 0L, j10);
            while (j10 > 0) {
                v0 v0Var3 = source.f371a;
                kotlin.jvm.internal.m.b(v0Var3);
                int i11 = v0Var3.f457c;
                kotlin.jvm.internal.m.b(source.f371a);
                if (j10 < i11 - v0Var.f456b) {
                    v0 v0Var4 = this.f371a;
                    if (v0Var4 != null) {
                        kotlin.jvm.internal.m.b(v0Var4);
                        v0Var2 = v0Var4.f461g;
                    } else {
                        v0Var2 = null;
                    }
                    if (v0Var2 != null && v0Var2.f459e) {
                        long j11 = v0Var2.f457c + j10;
                        if (v0Var2.f458d) {
                            i10 = 0;
                        } else {
                            i10 = v0Var2.f456b;
                        }
                        if (j11 - i10 <= 8192) {
                            v0 v0Var5 = source.f371a;
                            kotlin.jvm.internal.m.b(v0Var5);
                            v0Var5.f(v0Var2, (int) j10);
                            source.d0(source.k0() - j10);
                            d0(k0() + j10);
                            return;
                        }
                    }
                    v0 v0Var6 = source.f371a;
                    kotlin.jvm.internal.m.b(v0Var6);
                    source.f371a = v0Var6.e((int) j10);
                }
                v0 v0Var7 = source.f371a;
                kotlin.jvm.internal.m.b(v0Var7);
                long j12 = v0Var7.f457c - v0Var7.f456b;
                source.f371a = v0Var7.b();
                v0 v0Var8 = this.f371a;
                if (v0Var8 == null) {
                    this.f371a = v0Var7;
                    v0Var7.f461g = v0Var7;
                    v0Var7.f460f = v0Var7;
                } else {
                    kotlin.jvm.internal.m.b(v0Var8);
                    v0 v0Var9 = v0Var8.f461g;
                    kotlin.jvm.internal.m.b(v0Var9);
                    v0Var9.c(v0Var7).a();
                }
                source.d0(source.k0() - j12);
                d0(k0() + j12);
                j10 -= j12;
            }
            return;
        }
        throw new IllegalArgumentException("source == this".toString());
    }

    public d c1(String string, int i10, int i11, Charset charset) {
        boolean z10;
        boolean z11;
        kotlin.jvm.internal.m.e(string, "string");
        kotlin.jvm.internal.m.e(charset, "charset");
        boolean z12 = true;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (i11 >= i10) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z11) {
                if (i11 > string.length()) {
                    z12 = false;
                }
                if (z12) {
                    if (kotlin.jvm.internal.m.a(charset, rd.d.f29089b)) {
                        return e1(string, i10, i11);
                    }
                    String substring = string.substring(i10, i11);
                    kotlin.jvm.internal.m.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    byte[] bytes = substring.getBytes(charset);
                    kotlin.jvm.internal.m.d(bytes, "this as java.lang.String).getBytes(charset)");
                    return l0(bytes, 0, bytes.length);
                }
                throw new IllegalArgumentException(("endIndex > string.length: " + i11 + " > " + string.length()).toString());
            }
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i11 + " < " + i10).toString());
        }
        throw new IllegalArgumentException(("beginIndex < 0: " + i10).toString());
    }

    @Override // af.a1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // af.f, af.e
    public d d() {
        return this;
    }

    public final void d0(long j10) {
        this.f372b = j10;
    }

    @Override // af.e
    /* renamed from: d1 */
    public d g0(String string) {
        kotlin.jvm.internal.m.e(string, "string");
        return e1(string, 0, string.length());
    }

    public final d e() {
        d dVar = new d();
        if (k0() != 0) {
            v0 v0Var = this.f371a;
            kotlin.jvm.internal.m.b(v0Var);
            v0 d10 = v0Var.d();
            dVar.f371a = d10;
            d10.f461g = d10;
            d10.f460f = d10;
            for (v0 v0Var2 = v0Var.f460f; v0Var2 != v0Var; v0Var2 = v0Var2.f460f) {
                v0 v0Var3 = d10.f461g;
                kotlin.jvm.internal.m.b(v0Var3);
                kotlin.jvm.internal.m.b(v0Var2);
                v0Var3.c(v0Var2.d());
            }
            dVar.d0(k0());
        }
        return dVar;
    }

    public d e1(String string, int i10, int i11) {
        boolean z10;
        boolean z11;
        boolean z12;
        char charAt;
        char c10;
        boolean z13;
        kotlin.jvm.internal.m.e(string, "string");
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (i11 >= i10) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z11) {
                if (i11 <= string.length()) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                if (z12) {
                    while (i10 < i11) {
                        char charAt2 = string.charAt(i10);
                        if (charAt2 < 128) {
                            v0 J0 = J0(1);
                            byte[] bArr = J0.f455a;
                            int i12 = J0.f457c - i10;
                            int min = Math.min(i11, 8192 - i12);
                            int i13 = i10 + 1;
                            bArr[i10 + i12] = (byte) charAt2;
                            while (true) {
                                i10 = i13;
                                if (i10 >= min || (charAt = string.charAt(i10)) >= 128) {
                                    break;
                                }
                                i13 = i10 + 1;
                                bArr[i10 + i12] = (byte) charAt;
                            }
                            int i14 = J0.f457c;
                            int i15 = (i12 + i10) - i14;
                            J0.f457c = i14 + i15;
                            d0(k0() + i15);
                        } else {
                            if (charAt2 < 2048) {
                                v0 J02 = J0(2);
                                byte[] bArr2 = J02.f455a;
                                int i16 = J02.f457c;
                                bArr2[i16] = (byte) ((charAt2 >> 6) | 192);
                                bArr2[i16 + 1] = (byte) ((charAt2 & '?') | 128);
                                J02.f457c = i16 + 2;
                                d0(k0() + 2);
                            } else if (charAt2 >= 55296 && charAt2 <= 57343) {
                                int i17 = i10 + 1;
                                if (i17 < i11) {
                                    c10 = string.charAt(i17);
                                } else {
                                    c10 = 0;
                                }
                                if (charAt2 <= 56319) {
                                    if (56320 <= c10 && c10 < 57344) {
                                        z13 = true;
                                    } else {
                                        z13 = false;
                                    }
                                    if (z13) {
                                        int i18 = (((charAt2 & 1023) << 10) | (c10 & 1023)) + 65536;
                                        v0 J03 = J0(4);
                                        byte[] bArr3 = J03.f455a;
                                        int i19 = J03.f457c;
                                        bArr3[i19] = (byte) ((i18 >> 18) | 240);
                                        bArr3[i19 + 1] = (byte) (((i18 >> 12) & 63) | 128);
                                        bArr3[i19 + 2] = (byte) (((i18 >> 6) & 63) | 128);
                                        bArr3[i19 + 3] = (byte) ((i18 & 63) | 128);
                                        J03.f457c = i19 + 4;
                                        d0(k0() + 4);
                                        i10 += 2;
                                    }
                                }
                                O(63);
                                i10 = i17;
                            } else {
                                v0 J04 = J0(3);
                                byte[] bArr4 = J04.f455a;
                                int i20 = J04.f457c;
                                bArr4[i20] = (byte) ((charAt2 >> '\f') | 224);
                                bArr4[i20 + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                                bArr4[i20 + 2] = (byte) ((charAt2 & '?') | 128);
                                J04.f457c = i20 + 3;
                                d0(k0() + 3);
                            }
                            i10++;
                        }
                    }
                    return this;
                }
                throw new IllegalArgumentException(("endIndex > string.length: " + i11 + " > " + string.length()).toString());
            }
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i11 + " < " + i10).toString());
        }
        throw new IllegalArgumentException(("beginIndex < 0: " + i10).toString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (k0() == dVar.k0()) {
                if (k0() == 0) {
                    return true;
                }
                v0 v0Var = this.f371a;
                kotlin.jvm.internal.m.b(v0Var);
                v0 v0Var2 = dVar.f371a;
                kotlin.jvm.internal.m.b(v0Var2);
                int i10 = v0Var.f456b;
                int i11 = v0Var2.f456b;
                long j10 = 0;
                while (j10 < k0()) {
                    long min = Math.min(v0Var.f457c - i10, v0Var2.f457c - i11);
                    long j11 = 0;
                    while (j11 < min) {
                        int i12 = i10 + 1;
                        int i13 = i11 + 1;
                        if (v0Var.f455a[i10] == v0Var2.f455a[i11]) {
                            j11++;
                            i10 = i12;
                            i11 = i13;
                        }
                    }
                    if (i10 == v0Var.f457c) {
                        v0Var = v0Var.f460f;
                        kotlin.jvm.internal.m.b(v0Var);
                        i10 = v0Var.f456b;
                    }
                    if (i11 == v0Var2.f457c) {
                        v0Var2 = v0Var2.f460f;
                        kotlin.jvm.internal.m.b(v0Var2);
                        i11 = v0Var2.f456b;
                    }
                    j10 += min;
                }
                return true;
            }
        }
        return false;
    }

    public final d f(d out, long j10, long j11) {
        kotlin.jvm.internal.m.e(out, "out");
        af.b.b(k0(), j10, j11);
        if (j11 != 0) {
            out.d0(out.k0() + j11);
            v0 v0Var = this.f371a;
            while (true) {
                kotlin.jvm.internal.m.b(v0Var);
                int i10 = v0Var.f457c;
                int i11 = v0Var.f456b;
                if (j10 < i10 - i11) {
                    break;
                }
                j10 -= i10 - i11;
                v0Var = v0Var.f460f;
            }
            while (j11 > 0) {
                kotlin.jvm.internal.m.b(v0Var);
                v0 d10 = v0Var.d();
                int i12 = d10.f456b + ((int) j10);
                d10.f456b = i12;
                d10.f457c = Math.min(i12 + ((int) j11), d10.f457c);
                v0 v0Var2 = out.f371a;
                if (v0Var2 == null) {
                    d10.f461g = d10;
                    d10.f460f = d10;
                    out.f371a = d10;
                } else {
                    kotlin.jvm.internal.m.b(v0Var2);
                    v0 v0Var3 = v0Var2.f461g;
                    kotlin.jvm.internal.m.b(v0Var3);
                    v0Var3.c(d10);
                }
                j11 -= d10.f457c - d10.f456b;
                v0Var = v0Var.f460f;
                j10 = 0;
            }
        }
        return this;
    }

    public d f1(int i10) {
        if (i10 < 128) {
            O(i10);
        } else if (i10 < 2048) {
            v0 J0 = J0(2);
            byte[] bArr = J0.f455a;
            int i11 = J0.f457c;
            bArr[i11] = (byte) ((i10 >> 6) | 192);
            bArr[i11 + 1] = (byte) ((i10 & 63) | 128);
            J0.f457c = i11 + 2;
            d0(k0() + 2);
        } else {
            boolean z10 = false;
            if (55296 <= i10 && i10 < 57344) {
                z10 = true;
            }
            if (z10) {
                O(63);
            } else if (i10 < 65536) {
                v0 J02 = J0(3);
                byte[] bArr2 = J02.f455a;
                int i12 = J02.f457c;
                bArr2[i12] = (byte) ((i10 >> 12) | 224);
                bArr2[i12 + 1] = (byte) (((i10 >> 6) & 63) | 128);
                bArr2[i12 + 2] = (byte) ((i10 & 63) | 128);
                J02.f457c = i12 + 3;
                d0(k0() + 3);
            } else if (i10 <= 1114111) {
                v0 J03 = J0(4);
                byte[] bArr3 = J03.f455a;
                int i13 = J03.f457c;
                bArr3[i13] = (byte) ((i10 >> 18) | 240);
                bArr3[i13 + 1] = (byte) (((i10 >> 12) & 63) | 128);
                bArr3[i13 + 2] = (byte) (((i10 >> 6) & 63) | 128);
                bArr3[i13 + 3] = (byte) ((i10 & 63) | 128);
                J03.f457c = i13 + 4;
                d0(k0() + 4);
            } else {
                throw new IllegalArgumentException("Unexpected code point: 0x" + af.b.j(i10));
            }
        }
        return this;
    }

    @Override // af.e, af.y0, java.io.Flushable
    public void flush() {
    }

    @Override // af.f
    public String h0(Charset charset) {
        kotlin.jvm.internal.m.e(charset, "charset");
        return W(this.f372b, charset);
    }

    public int hashCode() {
        v0 v0Var = this.f371a;
        if (v0Var == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = v0Var.f457c;
            for (int i12 = v0Var.f456b; i12 < i11; i12++) {
                i10 = (i10 * 31) + v0Var.f455a[i12];
            }
            v0Var = v0Var.f460f;
            kotlin.jvm.internal.m.b(v0Var);
        } while (v0Var != this.f371a);
        return i10;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @Override // af.e
    /* renamed from: j */
    public d Y() {
        return this;
    }

    public final byte k(long j10) {
        af.b.b(k0(), j10, 1L);
        v0 v0Var = this.f371a;
        if (v0Var != null) {
            if (k0() - j10 < j10) {
                long k02 = k0();
                while (k02 > j10) {
                    v0Var = v0Var.f461g;
                    kotlin.jvm.internal.m.b(v0Var);
                    k02 -= v0Var.f457c - v0Var.f456b;
                }
                kotlin.jvm.internal.m.b(v0Var);
                return v0Var.f455a[(int) ((v0Var.f456b + j10) - k02)];
            }
            long j11 = 0;
            while (true) {
                long j12 = (v0Var.f457c - v0Var.f456b) + j11;
                if (j12 <= j10) {
                    v0Var = v0Var.f460f;
                    kotlin.jvm.internal.m.b(v0Var);
                    j11 = j12;
                } else {
                    kotlin.jvm.internal.m.b(v0Var);
                    return v0Var.f455a[(int) ((v0Var.f456b + j10) - j11)];
                }
            }
        } else {
            kotlin.jvm.internal.m.b(null);
            throw null;
        }
    }

    public final long k0() {
        return this.f372b;
    }

    @Override // af.a1
    public b1 n() {
        return b1.f354e;
    }

    public long q(byte b10, long j10, long j11) {
        v0 v0Var;
        int i10;
        long j12 = 0;
        boolean z10 = false;
        if (0 <= j10 && j10 <= j11) {
            z10 = true;
        }
        if (z10) {
            if (j11 > k0()) {
                j11 = k0();
            }
            if (j10 == j11 || (v0Var = this.f371a) == null) {
                return -1L;
            }
            if (k0() - j10 < j10) {
                j12 = k0();
                while (j12 > j10) {
                    v0Var = v0Var.f461g;
                    kotlin.jvm.internal.m.b(v0Var);
                    j12 -= v0Var.f457c - v0Var.f456b;
                }
                while (j12 < j11) {
                    byte[] bArr = v0Var.f455a;
                    int min = (int) Math.min(v0Var.f457c, (v0Var.f456b + j11) - j12);
                    i10 = (int) ((v0Var.f456b + j10) - j12);
                    while (i10 < min) {
                        if (bArr[i10] != b10) {
                            i10++;
                        }
                    }
                    j12 += v0Var.f457c - v0Var.f456b;
                    v0Var = v0Var.f460f;
                    kotlin.jvm.internal.m.b(v0Var);
                    j10 = j12;
                }
                return -1L;
            }
            while (true) {
                long j13 = (v0Var.f457c - v0Var.f456b) + j12;
                if (j13 > j10) {
                    break;
                }
                v0Var = v0Var.f460f;
                kotlin.jvm.internal.m.b(v0Var);
                j12 = j13;
            }
            while (j12 < j11) {
                byte[] bArr2 = v0Var.f455a;
                int min2 = (int) Math.min(v0Var.f457c, (v0Var.f456b + j11) - j12);
                i10 = (int) ((v0Var.f456b + j10) - j12);
                while (i10 < min2) {
                    if (bArr2[i10] != b10) {
                        i10++;
                    }
                }
                j12 += v0Var.f457c - v0Var.f456b;
                v0Var = v0Var.f460f;
                kotlin.jvm.internal.m.b(v0Var);
                j10 = j12;
            }
            return -1L;
            return (i10 - v0Var.f456b) + j12;
        }
        throw new IllegalArgumentException(("size=" + k0() + " fromIndex=" + j10 + " toIndex=" + j11).toString());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer sink) {
        kotlin.jvm.internal.m.e(sink, "sink");
        v0 v0Var = this.f371a;
        if (v0Var == null) {
            return -1;
        }
        int min = Math.min(sink.remaining(), v0Var.f457c - v0Var.f456b);
        sink.put(v0Var.f455a, v0Var.f456b, min);
        int i10 = v0Var.f456b + min;
        v0Var.f456b = i10;
        this.f372b -= min;
        if (i10 == v0Var.f457c) {
            this.f371a = v0Var.b();
            w0.b(v0Var);
        }
        return min;
    }

    @Override // af.f
    public byte readByte() {
        if (k0() != 0) {
            v0 v0Var = this.f371a;
            kotlin.jvm.internal.m.b(v0Var);
            int i10 = v0Var.f456b;
            int i11 = v0Var.f457c;
            int i12 = i10 + 1;
            byte b10 = v0Var.f455a[i10];
            d0(k0() - 1);
            if (i12 == i11) {
                this.f371a = v0Var.b();
                w0.b(v0Var);
            } else {
                v0Var.f456b = i12;
            }
            return b10;
        }
        throw new EOFException();
    }

    @Override // af.f
    public int readInt() {
        if (k0() >= 4) {
            v0 v0Var = this.f371a;
            kotlin.jvm.internal.m.b(v0Var);
            int i10 = v0Var.f456b;
            int i11 = v0Var.f457c;
            if (i11 - i10 < 4) {
                return ((readByte() & ForkServer.ERROR) << 24) | ((readByte() & ForkServer.ERROR) << 16) | ((readByte() & ForkServer.ERROR) << 8) | (readByte() & ForkServer.ERROR);
            }
            byte[] bArr = v0Var.f455a;
            int i12 = i10 + 1;
            int i13 = i12 + 1;
            int i14 = ((bArr[i10] & ForkServer.ERROR) << 24) | ((bArr[i12] & ForkServer.ERROR) << 16);
            int i15 = i13 + 1;
            int i16 = i14 | ((bArr[i13] & ForkServer.ERROR) << 8);
            int i17 = i15 + 1;
            int i18 = i16 | (bArr[i15] & ForkServer.ERROR);
            d0(k0() - 4);
            if (i17 == i11) {
                this.f371a = v0Var.b();
                w0.b(v0Var);
            } else {
                v0Var.f456b = i17;
            }
            return i18;
        }
        throw new EOFException();
    }

    @Override // af.f
    public short readShort() {
        if (k0() >= 2) {
            v0 v0Var = this.f371a;
            kotlin.jvm.internal.m.b(v0Var);
            int i10 = v0Var.f456b;
            int i11 = v0Var.f457c;
            if (i11 - i10 < 2) {
                return (short) (((readByte() & ForkServer.ERROR) << 8) | (readByte() & ForkServer.ERROR));
            }
            byte[] bArr = v0Var.f455a;
            int i12 = i10 + 1;
            int i13 = i12 + 1;
            int i14 = ((bArr[i10] & ForkServer.ERROR) << 8) | (bArr[i12] & ForkServer.ERROR);
            d0(k0() - 2);
            if (i13 == i11) {
                this.f371a = v0Var.b();
                w0.b(v0Var);
            } else {
                v0Var.f456b = i13;
            }
            return (short) i14;
        }
        throw new EOFException();
    }

    @Override // af.f
    public void skip(long j10) {
        while (j10 > 0) {
            v0 v0Var = this.f371a;
            if (v0Var != null) {
                int min = (int) Math.min(j10, v0Var.f457c - v0Var.f456b);
                long j11 = min;
                d0(k0() - j11);
                j10 -= j11;
                int i10 = v0Var.f456b + min;
                v0Var.f456b = i10;
                if (i10 == v0Var.f457c) {
                    this.f371a = v0Var.b();
                    w0.b(v0Var);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    public String toString() {
        return A0().toString();
    }

    public long u(g targetBytes) {
        kotlin.jvm.internal.m.e(targetBytes, "targetBytes");
        return v(targetBytes, 0L);
    }

    public long v(g targetBytes, long j10) {
        boolean z10;
        int i10;
        int i11;
        kotlin.jvm.internal.m.e(targetBytes, "targetBytes");
        long j11 = 0;
        if (j10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            v0 v0Var = this.f371a;
            if (v0Var == null) {
                return -1L;
            }
            if (k0() - j10 < j10) {
                j11 = k0();
                while (j11 > j10) {
                    v0Var = v0Var.f461g;
                    kotlin.jvm.internal.m.b(v0Var);
                    j11 -= v0Var.f457c - v0Var.f456b;
                }
                if (targetBytes.size() == 2) {
                    byte j12 = targetBytes.j(0);
                    byte j13 = targetBytes.j(1);
                    while (j11 < k0()) {
                        byte[] bArr = v0Var.f455a;
                        i10 = (int) ((v0Var.f456b + j10) - j11);
                        int i12 = v0Var.f457c;
                        while (i10 < i12) {
                            byte b10 = bArr[i10];
                            if (b10 != j12 && b10 != j13) {
                                i10++;
                            }
                            i11 = v0Var.f456b;
                        }
                        j11 += v0Var.f457c - v0Var.f456b;
                        v0Var = v0Var.f460f;
                        kotlin.jvm.internal.m.b(v0Var);
                        j10 = j11;
                    }
                    return -1L;
                }
                byte[] t10 = targetBytes.t();
                while (j11 < k0()) {
                    byte[] bArr2 = v0Var.f455a;
                    i10 = (int) ((v0Var.f456b + j10) - j11);
                    int i13 = v0Var.f457c;
                    while (i10 < i13) {
                        byte b11 = bArr2[i10];
                        for (byte b12 : t10) {
                            if (b11 == b12) {
                                i11 = v0Var.f456b;
                            }
                        }
                        i10++;
                    }
                    j11 += v0Var.f457c - v0Var.f456b;
                    v0Var = v0Var.f460f;
                    kotlin.jvm.internal.m.b(v0Var);
                    j10 = j11;
                }
                return -1L;
            }
            while (true) {
                long j14 = (v0Var.f457c - v0Var.f456b) + j11;
                if (j14 > j10) {
                    break;
                }
                v0Var = v0Var.f460f;
                kotlin.jvm.internal.m.b(v0Var);
                j11 = j14;
            }
            if (targetBytes.size() == 2) {
                byte j15 = targetBytes.j(0);
                byte j16 = targetBytes.j(1);
                while (j11 < k0()) {
                    byte[] bArr3 = v0Var.f455a;
                    i10 = (int) ((v0Var.f456b + j10) - j11);
                    int i14 = v0Var.f457c;
                    while (i10 < i14) {
                        byte b13 = bArr3[i10];
                        if (b13 != j15 && b13 != j16) {
                            i10++;
                        }
                        i11 = v0Var.f456b;
                    }
                    j11 += v0Var.f457c - v0Var.f456b;
                    v0Var = v0Var.f460f;
                    kotlin.jvm.internal.m.b(v0Var);
                    j10 = j11;
                }
                return -1L;
            }
            byte[] t11 = targetBytes.t();
            while (j11 < k0()) {
                byte[] bArr4 = v0Var.f455a;
                i10 = (int) ((v0Var.f456b + j10) - j11);
                int i15 = v0Var.f457c;
                while (i10 < i15) {
                    byte b14 = bArr4[i10];
                    for (byte b15 : t11) {
                        if (b14 == b15) {
                            i11 = v0Var.f456b;
                        }
                    }
                    i10++;
                }
                j11 += v0Var.f457c - v0Var.f456b;
                v0Var = v0Var.f460f;
                kotlin.jvm.internal.m.b(v0Var);
                j10 = j11;
            }
            return -1L;
            return (i10 - i11) + j11;
        }
        throw new IllegalArgumentException(("fromIndex < 0: " + j10).toString());
    }

    @Override // af.f
    public String v0() {
        return a0(Long.MAX_VALUE);
    }

    public boolean w(long j10, g bytes) {
        kotlin.jvm.internal.m.e(bytes, "bytes");
        return x(j10, bytes, 0, bytes.size());
    }

    @Override // af.f
    public int w0() {
        return af.b.f(readInt());
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer source) {
        kotlin.jvm.internal.m.e(source, "source");
        int remaining = source.remaining();
        int i10 = remaining;
        while (i10 > 0) {
            v0 J0 = J0(1);
            int min = Math.min(i10, 8192 - J0.f457c);
            source.get(J0.f455a, J0.f457c, min);
            i10 -= min;
            J0.f457c += min;
        }
        this.f372b += remaining;
        return remaining;
    }

    public boolean x(long j10, g bytes, int i10, int i11) {
        kotlin.jvm.internal.m.e(bytes, "bytes");
        if (j10 < 0 || i10 < 0 || i11 < 0 || k0() - j10 < i11 || bytes.size() - i10 < i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (k(i12 + j10) != bytes.j(i10 + i12)) {
                return false;
            }
        }
        return true;
    }

    @Override // af.f
    public byte[] x0(long j10) {
        boolean z10;
        if (j10 >= 0 && j10 <= 2147483647L) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (k0() >= j10) {
                byte[] bArr = new byte[(int) j10];
                H(bArr);
                return bArr;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(("byteCount: " + j10).toString());
    }

    public byte[] z() {
        return x0(k0());
    }

    /* loaded from: classes2.dex */
    public static final class b extends InputStream {
        b() {
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(d.this.k0(), Integer.MAX_VALUE);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.InputStream
        public int read() {
            if (d.this.k0() > 0) {
                return d.this.readByte() & ForkServer.ERROR;
            }
            return -1;
        }

        public String toString() {
            return d.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] sink, int i10, int i11) {
            kotlin.jvm.internal.m.e(sink, "sink");
            return d.this.read(sink, i10, i11);
        }
    }

    public int read(byte[] sink, int i10, int i11) {
        kotlin.jvm.internal.m.e(sink, "sink");
        af.b.b(sink.length, i10, i11);
        v0 v0Var = this.f371a;
        if (v0Var == null) {
            return -1;
        }
        int min = Math.min(i11, v0Var.f457c - v0Var.f456b);
        byte[] bArr = v0Var.f455a;
        int i12 = v0Var.f456b;
        yc.j.d(bArr, sink, i10, i12, i12 + min);
        v0Var.f456b += min;
        d0(k0() - min);
        if (v0Var.f456b == v0Var.f457c) {
            this.f371a = v0Var.b();
            w0.b(v0Var);
        }
        return min;
    }
}
