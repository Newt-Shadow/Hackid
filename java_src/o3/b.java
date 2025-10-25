package o3;

import android.util.Pair;
import b3.e3;
import b3.x1;
import g3.v;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.KotlinVersion;
import o3.a;
import t3.a;
import y4.e0;
import y4.q0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f27153a = q0.l0("OpusHead");

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f27154a;

        /* renamed from: b  reason: collision with root package name */
        public int f27155b;

        /* renamed from: c  reason: collision with root package name */
        public int f27156c;

        /* renamed from: d  reason: collision with root package name */
        public long f27157d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f27158e;

        /* renamed from: f  reason: collision with root package name */
        private final e0 f27159f;

        /* renamed from: g  reason: collision with root package name */
        private final e0 f27160g;

        /* renamed from: h  reason: collision with root package name */
        private int f27161h;

        /* renamed from: i  reason: collision with root package name */
        private int f27162i;

        public a(e0 e0Var, e0 e0Var2, boolean z10) {
            this.f27160g = e0Var;
            this.f27159f = e0Var2;
            this.f27158e = z10;
            e0Var2.T(12);
            this.f27154a = e0Var2.K();
            e0Var.T(12);
            this.f27162i = e0Var.K();
            g3.n.a(e0Var.p() == 1, "first_chunk must be 1");
            this.f27155b = -1;
        }

        public boolean a() {
            long I;
            int i10;
            int i11 = this.f27155b + 1;
            this.f27155b = i11;
            if (i11 == this.f27154a) {
                return false;
            }
            if (this.f27158e) {
                I = this.f27159f.L();
            } else {
                I = this.f27159f.I();
            }
            this.f27157d = I;
            if (this.f27155b == this.f27161h) {
                this.f27156c = this.f27160g.K();
                this.f27160g.U(4);
                int i12 = this.f27162i - 1;
                this.f27162i = i12;
                if (i12 > 0) {
                    i10 = this.f27160g.K() - 1;
                } else {
                    i10 = -1;
                }
                this.f27161h = i10;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0270b {

        /* renamed from: a  reason: collision with root package name */
        private final String f27163a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f27164b;

        /* renamed from: c  reason: collision with root package name */
        private final long f27165c;

        /* renamed from: d  reason: collision with root package name */
        private final long f27166d;

        public C0270b(String str, byte[] bArr, long j10, long j11) {
            this.f27163a = str;
            this.f27164b = bArr;
            this.f27165c = j10;
            this.f27166d = j11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface c {
        int a();

        int b();

        int c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final p[] f27167a;

        /* renamed from: b  reason: collision with root package name */
        public x1 f27168b;

        /* renamed from: c  reason: collision with root package name */
        public int f27169c;

        /* renamed from: d  reason: collision with root package name */
        public int f27170d = 0;

        public d(int i10) {
            this.f27167a = new p[i10];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class e implements c {

        /* renamed from: a  reason: collision with root package name */
        private final int f27171a;

        /* renamed from: b  reason: collision with root package name */
        private final int f27172b;

        /* renamed from: c  reason: collision with root package name */
        private final e0 f27173c;

        public e(a.b bVar, x1 x1Var) {
            e0 e0Var = bVar.f27152b;
            this.f27173c = e0Var;
            e0Var.T(12);
            int K = e0Var.K();
            if ("audio/raw".equals(x1Var.f4514l)) {
                int d02 = q0.d0(x1Var.A, x1Var.f4527y);
                if (K == 0 || K % d02 != 0) {
                    y4.r.i("AtomParsers", "Audio sample size mismatch. stsd sample size: " + d02 + ", stsz sample size: " + K);
                    K = d02;
                }
            }
            this.f27171a = K == 0 ? -1 : K;
            this.f27172b = e0Var.K();
        }

        @Override // o3.b.c
        public int a() {
            return this.f27171a;
        }

        @Override // o3.b.c
        public int b() {
            return this.f27172b;
        }

        @Override // o3.b.c
        public int c() {
            int i10 = this.f27171a;
            if (i10 == -1) {
                return this.f27173c.K();
            }
            return i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class f implements c {

        /* renamed from: a  reason: collision with root package name */
        private final e0 f27174a;

        /* renamed from: b  reason: collision with root package name */
        private final int f27175b;

        /* renamed from: c  reason: collision with root package name */
        private final int f27176c;

        /* renamed from: d  reason: collision with root package name */
        private int f27177d;

        /* renamed from: e  reason: collision with root package name */
        private int f27178e;

        public f(a.b bVar) {
            e0 e0Var = bVar.f27152b;
            this.f27174a = e0Var;
            e0Var.T(12);
            this.f27176c = e0Var.K() & KotlinVersion.MAX_COMPONENT_VALUE;
            this.f27175b = e0Var.K();
        }

        @Override // o3.b.c
        public int a() {
            return -1;
        }

        @Override // o3.b.c
        public int b() {
            return this.f27175b;
        }

        @Override // o3.b.c
        public int c() {
            int i10 = this.f27176c;
            if (i10 == 8) {
                return this.f27174a.G();
            }
            if (i10 == 16) {
                return this.f27174a.M();
            }
            int i11 = this.f27177d;
            this.f27177d = i11 + 1;
            if (i11 % 2 == 0) {
                int G = this.f27174a.G();
                this.f27178e = G;
                return (G & 240) >> 4;
            }
            return this.f27178e & 15;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        private final int f27179a;

        /* renamed from: b  reason: collision with root package name */
        private final long f27180b;

        /* renamed from: c  reason: collision with root package name */
        private final int f27181c;

        public g(int i10, long j10, int i11) {
            this.f27179a = i10;
            this.f27180b = j10;
            this.f27181c = i11;
        }
    }

    public static List A(a.C0269a c0269a, v vVar, long j10, f3.m mVar, boolean z10, boolean z11, n6.g gVar) {
        o oVar;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < c0269a.f27151d.size(); i10++) {
            a.C0269a c0269a2 = (a.C0269a) c0269a.f27151d.get(i10);
            if (c0269a2.f27148a == 1953653099 && (oVar = (o) gVar.apply(z(c0269a2, (a.b) y4.a.e(c0269a.g(1836476516)), j10, mVar, z10, z11))) != null) {
                arrayList.add(v(oVar, (a.C0269a) y4.a.e(((a.C0269a) y4.a.e(((a.C0269a) y4.a.e(c0269a2.f(1835297121))).f(1835626086))).f(1937007212)), vVar));
            }
        }
        return arrayList;
    }

    public static Pair B(a.b bVar) {
        e0 e0Var = bVar.f27152b;
        e0Var.T(8);
        t3.a aVar = null;
        t3.a aVar2 = null;
        while (e0Var.a() >= 8) {
            int f10 = e0Var.f();
            int p10 = e0Var.p();
            int p11 = e0Var.p();
            if (p11 == 1835365473) {
                e0Var.T(f10);
                aVar = C(e0Var, f10 + p10);
            } else if (p11 == 1936553057) {
                e0Var.T(f10);
                aVar2 = u(e0Var, f10 + p10);
            }
            e0Var.T(f10 + p10);
        }
        return Pair.create(aVar, aVar2);
    }

    private static t3.a C(e0 e0Var, int i10) {
        e0Var.U(8);
        e(e0Var);
        while (e0Var.f() < i10) {
            int f10 = e0Var.f();
            int p10 = e0Var.p();
            if (e0Var.p() == 1768715124) {
                e0Var.T(f10);
                return l(e0Var, f10 + p10);
            }
            e0Var.T(f10 + p10);
        }
        return null;
    }

    private static void D(e0 e0Var, int i10, int i11, int i12, int i13, int i14, f3.m mVar, d dVar, int i15) {
        String str;
        byte[] bArr;
        String str2;
        boolean z10;
        f3.m mVar2;
        int i16;
        int i17;
        float f10;
        List list;
        int i18;
        int i19;
        int i20;
        boolean z11;
        boolean z12;
        boolean z13;
        ByteBuffer byteBuffer;
        ByteBuffer byteBuffer2;
        boolean z14;
        String str3;
        boolean z15;
        boolean z16;
        boolean z17;
        boolean z18;
        int i21 = i11;
        int i22 = i12;
        f3.m mVar3 = mVar;
        d dVar2 = dVar;
        e0Var.T(i21 + 8 + 8);
        e0Var.U(16);
        int M = e0Var.M();
        int M2 = e0Var.M();
        e0Var.U(50);
        int f11 = e0Var.f();
        int i23 = i10;
        if (i23 == 1701733238) {
            Pair s10 = s(e0Var, i21, i22);
            if (s10 != null) {
                i23 = ((Integer) s10.first).intValue();
                if (mVar3 == null) {
                    mVar3 = null;
                } else {
                    mVar3 = mVar3.c(((p) s10.second).f27289b);
                }
                dVar2.f27167a[i15] = (p) s10.second;
            }
            e0Var.T(f11);
        }
        String str4 = "video/3gpp";
        if (i23 == 1831958048) {
            str = "video/mpeg";
        } else if (i23 == 1211250227) {
            str = "video/3gpp";
        } else {
            str = null;
        }
        float f12 = 1.0f;
        String str5 = null;
        List list2 = null;
        byte[] bArr2 = null;
        int i24 = -1;
        int i25 = -1;
        int i26 = -1;
        int i27 = -1;
        ByteBuffer byteBuffer3 = null;
        C0270b c0270b = null;
        boolean z19 = false;
        while (f11 - i21 < i22) {
            e0Var.T(f11);
            int f13 = e0Var.f();
            int p10 = e0Var.p();
            if (p10 == 0) {
                str2 = str4;
                if (e0Var.f() - i21 == i22) {
                    break;
                }
            } else {
                str2 = str4;
            }
            if (p10 > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            g3.n.a(z10, "childAtomSize must be positive");
            int p11 = e0Var.p();
            if (p11 == 1635148611) {
                if (str == null) {
                    z18 = true;
                } else {
                    z18 = false;
                }
                g3.n.a(z18, null);
                e0Var.T(f13 + 8);
                z4.a b10 = z4.a.b(e0Var);
                list2 = b10.f33392a;
                dVar2.f27169c = b10.f33393b;
                if (!z19) {
                    f12 = b10.f33396e;
                }
                str5 = b10.f33397f;
                str3 = "video/avc";
            } else {
                if (p11 == 1752589123) {
                    if (str == null) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    g3.n.a(z17, null);
                    e0Var.T(f13 + 8);
                    z4.f a10 = z4.f.a(e0Var);
                    list2 = a10.f33436a;
                    dVar2.f27169c = a10.f33437b;
                    if (!z19) {
                        f12 = a10.f33440e;
                    }
                    str5 = a10.f33444i;
                    int i28 = a10.f33441f;
                    int i29 = a10.f33442g;
                    i27 = a10.f33443h;
                    mVar2 = mVar3;
                    i16 = M2;
                    i25 = i28;
                    i17 = i23;
                    i26 = i29;
                    str = "video/hevc";
                } else {
                    if (p11 != 1685480259 && p11 != 1685485123) {
                        if (p11 == 1987076931) {
                            if (str == null) {
                                z15 = true;
                            } else {
                                z15 = false;
                            }
                            g3.n.a(z15, null);
                            if (i23 == 1987063864) {
                                str3 = "video/x-vnd.on2.vp8";
                            } else {
                                str3 = "video/x-vnd.on2.vp9";
                            }
                            e0Var.T(f13 + 12);
                            e0Var.U(2);
                            if ((e0Var.G() & 1) != 0) {
                                z16 = true;
                            } else {
                                z16 = false;
                            }
                            int G = e0Var.G();
                            int G2 = e0Var.G();
                            i25 = z4.c.b(G);
                            if (z16) {
                                i26 = 1;
                            } else {
                                i26 = 2;
                            }
                            i27 = z4.c.c(G2);
                        } else if (p11 == 1635135811) {
                            if (str == null) {
                                z14 = true;
                            } else {
                                z14 = false;
                            }
                            g3.n.a(z14, null);
                            str3 = "video/av01";
                        } else if (p11 == 1668050025) {
                            if (byteBuffer3 == null) {
                                byteBuffer2 = a();
                            } else {
                                byteBuffer2 = byteBuffer3;
                            }
                            byteBuffer2.position(21);
                            byteBuffer2.putShort(e0Var.C());
                            byteBuffer2.putShort(e0Var.C());
                            byteBuffer3 = byteBuffer2;
                            mVar2 = mVar3;
                            i16 = M2;
                            i17 = i23;
                        } else if (p11 == 1835295606) {
                            if (byteBuffer3 == null) {
                                byteBuffer = a();
                            } else {
                                byteBuffer = byteBuffer3;
                            }
                            short C = e0Var.C();
                            short C2 = e0Var.C();
                            short C3 = e0Var.C();
                            i17 = i23;
                            short C4 = e0Var.C();
                            short C5 = e0Var.C();
                            mVar2 = mVar3;
                            short C6 = e0Var.C();
                            List list3 = list2;
                            short C7 = e0Var.C();
                            float f14 = f12;
                            short C8 = e0Var.C();
                            long I = e0Var.I();
                            long I2 = e0Var.I();
                            i16 = M2;
                            byteBuffer.position(1);
                            byteBuffer.putShort(C5);
                            byteBuffer.putShort(C6);
                            byteBuffer.putShort(C);
                            byteBuffer.putShort(C2);
                            byteBuffer.putShort(C3);
                            byteBuffer.putShort(C4);
                            byteBuffer.putShort(C7);
                            byteBuffer.putShort(C8);
                            byteBuffer.putShort((short) (I / 10000));
                            byteBuffer.putShort((short) (I2 / 10000));
                            byteBuffer3 = byteBuffer;
                            list2 = list3;
                            f12 = f14;
                        } else {
                            mVar2 = mVar3;
                            i16 = M2;
                            i17 = i23;
                            f10 = f12;
                            list = list2;
                            if (p11 == 1681012275) {
                                if (str == null) {
                                    z13 = true;
                                } else {
                                    z13 = false;
                                }
                                g3.n.a(z13, null);
                                str = str2;
                            } else if (p11 == 1702061171) {
                                if (str == null) {
                                    z12 = true;
                                } else {
                                    z12 = false;
                                }
                                g3.n.a(z12, null);
                                c0270b = i(e0Var, f13);
                                String str6 = c0270b.f27163a;
                                byte[] bArr3 = c0270b.f27164b;
                                if (bArr3 != null) {
                                    list2 = o6.q.F(bArr3);
                                } else {
                                    list2 = list;
                                }
                                str = str6;
                                f12 = f10;
                                f11 += p10;
                                i21 = i11;
                                i22 = i12;
                                dVar2 = dVar;
                                str4 = str2;
                                i23 = i17;
                                mVar3 = mVar2;
                                M2 = i16;
                            } else if (p11 == 1885434736) {
                                f12 = q(e0Var, f13);
                                list2 = list;
                                z19 = true;
                                f11 += p10;
                                i21 = i11;
                                i22 = i12;
                                dVar2 = dVar;
                                str4 = str2;
                                i23 = i17;
                                mVar3 = mVar2;
                                M2 = i16;
                            } else if (p11 == 1937126244) {
                                bArr2 = r(e0Var, f13, p10);
                            } else if (p11 == 1936995172) {
                                int G3 = e0Var.G();
                                e0Var.U(3);
                                if (G3 == 0) {
                                    int G4 = e0Var.G();
                                    if (G4 != 0) {
                                        if (G4 != 1) {
                                            if (G4 != 2) {
                                                if (G4 == 3) {
                                                    i24 = 3;
                                                }
                                            } else {
                                                i24 = 2;
                                            }
                                        } else {
                                            i24 = 1;
                                        }
                                    } else {
                                        i24 = 0;
                                    }
                                }
                            } else {
                                i18 = i25;
                                if (p11 == 1668246642) {
                                    i19 = i26;
                                    if (i18 == -1) {
                                        i20 = i27;
                                        if (i19 == -1 && i20 == -1) {
                                            int p12 = e0Var.p();
                                            if (p12 != 1852009592 && p12 != 1852009571) {
                                                y4.r.i("AtomParsers", "Unsupported color type: " + o3.a.a(p12));
                                            } else {
                                                int M3 = e0Var.M();
                                                int M4 = e0Var.M();
                                                e0Var.U(2);
                                                if (p10 == 19 && (e0Var.G() & 128) != 0) {
                                                    z11 = true;
                                                } else {
                                                    z11 = false;
                                                }
                                                i25 = z4.c.b(M3);
                                                if (z11) {
                                                    i26 = 1;
                                                } else {
                                                    i26 = 2;
                                                }
                                                i27 = z4.c.c(M4);
                                            }
                                        }
                                    }
                                } else {
                                    i19 = i26;
                                }
                                i20 = i27;
                            }
                            list2 = list;
                            f12 = f10;
                            f11 += p10;
                            i21 = i11;
                            i22 = i12;
                            dVar2 = dVar;
                            str4 = str2;
                            i23 = i17;
                            mVar3 = mVar2;
                            M2 = i16;
                        }
                    } else {
                        mVar2 = mVar3;
                        i16 = M2;
                        i17 = i23;
                        f10 = f12;
                        list = list2;
                        i18 = i25;
                        i19 = i26;
                        i20 = i27;
                        z4.d a11 = z4.d.a(e0Var);
                        if (a11 != null) {
                            str5 = a11.f33421c;
                            str = "video/dolby-vision";
                        }
                    }
                    i26 = i19;
                    i27 = i20;
                    i25 = i18;
                    list2 = list;
                    f12 = f10;
                    f11 += p10;
                    i21 = i11;
                    i22 = i12;
                    dVar2 = dVar;
                    str4 = str2;
                    i23 = i17;
                    mVar3 = mVar2;
                    M2 = i16;
                }
                f11 += p10;
                i21 = i11;
                i22 = i12;
                dVar2 = dVar;
                str4 = str2;
                i23 = i17;
                mVar3 = mVar2;
                M2 = i16;
            }
            str = str3;
            mVar2 = mVar3;
            i16 = M2;
            i17 = i23;
            f11 += p10;
            i21 = i11;
            i22 = i12;
            dVar2 = dVar;
            str4 = str2;
            i23 = i17;
            mVar3 = mVar2;
            M2 = i16;
        }
        f3.m mVar4 = mVar3;
        int i30 = M2;
        float f15 = f12;
        List list4 = list2;
        int i31 = i25;
        int i32 = i26;
        int i33 = i27;
        if (str == null) {
            return;
        }
        x1.b O = new x1.b().T(i13).g0(str).K(str5).n0(M).S(i30).c0(f15).f0(i14).d0(bArr2).j0(i24).V(list4).O(mVar4);
        if (i31 != -1 || i32 != -1 || i33 != -1 || byteBuffer3 != null) {
            if (byteBuffer3 != null) {
                bArr = byteBuffer3.array();
            } else {
                bArr = null;
            }
            O.L(new z4.c(i31, i32, i33, bArr));
        }
        if (c0270b != null) {
            O.I(q6.e.j(c0270b.f27165c)).b0(q6.e.j(c0270b.f27166d));
        }
        dVar.f27168b = O.G();
    }

    private static ByteBuffer a() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    private static boolean b(long[] jArr, long j10, long j11, long j12) {
        int length = jArr.length - 1;
        int q10 = q0.q(4, 0, length);
        int q11 = q0.q(jArr.length - 4, 0, length);
        if (jArr[0] <= j11 && j11 < jArr[q10] && jArr[q11] < j12 && j12 <= j10) {
            return true;
        }
        return false;
    }

    private static int c(e0 e0Var, int i10, int i11, int i12) {
        boolean z10;
        boolean z11;
        int f10 = e0Var.f();
        if (f10 >= i11) {
            z10 = true;
        } else {
            z10 = false;
        }
        g3.n.a(z10, null);
        while (f10 - i11 < i12) {
            e0Var.T(f10);
            int p10 = e0Var.p();
            if (p10 > 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            g3.n.a(z11, "childAtomSize must be positive");
            if (e0Var.p() == i10) {
                return f10;
            }
            f10 += p10;
        }
        return -1;
    }

    private static int d(int i10) {
        if (i10 == 1936684398) {
            return 1;
        }
        if (i10 == 1986618469) {
            return 2;
        }
        if (i10 == 1952807028 || i10 == 1935832172 || i10 == 1937072756 || i10 == 1668047728) {
            return 3;
        }
        return i10 == 1835365473 ? 5 : -1;
    }

    public static void e(e0 e0Var) {
        int f10 = e0Var.f();
        e0Var.U(4);
        if (e0Var.p() != 1751411826) {
            f10 += 4;
        }
        e0Var.T(f10);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0167  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void f(y4.e0 r22, int r23, int r24, int r25, int r26, java.lang.String r27, boolean r28, f3.m r29, o3.b.d r30, int r31) {
        /*
            Method dump skipped, instructions count: 880
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o3.b.f(y4.e0, int, int, int, int, java.lang.String, boolean, f3.m, o3.b$d, int):void");
    }

    static Pair g(e0 e0Var, int i10, int i11) {
        boolean z10;
        boolean z11;
        int i12 = i10 + 8;
        boolean z12 = false;
        int i13 = -1;
        int i14 = 0;
        String str = null;
        Integer num = null;
        while (i12 - i10 < i11) {
            e0Var.T(i12);
            int p10 = e0Var.p();
            int p11 = e0Var.p();
            if (p11 == 1718775137) {
                num = Integer.valueOf(e0Var.p());
            } else if (p11 == 1935894637) {
                e0Var.U(4);
                str = e0Var.D(4);
            } else if (p11 == 1935894633) {
                i13 = i12;
                i14 = p10;
            }
            i12 += p10;
        }
        if (!"cenc".equals(str) && !"cbc1".equals(str) && !"cens".equals(str) && !"cbcs".equals(str)) {
            return null;
        }
        if (num != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        g3.n.a(z10, "frma atom is mandatory");
        if (i13 != -1) {
            z11 = true;
        } else {
            z11 = false;
        }
        g3.n.a(z11, "schi atom is mandatory");
        p t10 = t(e0Var, i13, i14, str);
        if (t10 != null) {
            z12 = true;
        }
        g3.n.a(z12, "tenc atom is mandatory");
        return Pair.create(num, (p) q0.j(t10));
    }

    private static Pair h(a.C0269a c0269a) {
        long I;
        long p10;
        a.b g10 = c0269a.g(1701606260);
        if (g10 == null) {
            return null;
        }
        e0 e0Var = g10.f27152b;
        e0Var.T(8);
        int c10 = o3.a.c(e0Var.p());
        int K = e0Var.K();
        long[] jArr = new long[K];
        long[] jArr2 = new long[K];
        for (int i10 = 0; i10 < K; i10++) {
            if (c10 == 1) {
                I = e0Var.L();
            } else {
                I = e0Var.I();
            }
            jArr[i10] = I;
            if (c10 == 1) {
                p10 = e0Var.z();
            } else {
                p10 = e0Var.p();
            }
            jArr2[i10] = p10;
            if (e0Var.C() == 1) {
                e0Var.U(2);
            } else {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
        }
        return Pair.create(jArr, jArr2);
    }

    private static C0270b i(e0 e0Var, int i10) {
        long j10;
        long j11;
        e0Var.T(i10 + 8 + 4);
        e0Var.U(1);
        j(e0Var);
        e0Var.U(2);
        int G = e0Var.G();
        if ((G & 128) != 0) {
            e0Var.U(2);
        }
        if ((G & 64) != 0) {
            e0Var.U(e0Var.G());
        }
        if ((G & 32) != 0) {
            e0Var.U(2);
        }
        e0Var.U(1);
        j(e0Var);
        String h10 = y4.v.h(e0Var.G());
        if (!"audio/mpeg".equals(h10) && !"audio/vnd.dts".equals(h10) && !"audio/vnd.dts.hd".equals(h10)) {
            e0Var.U(4);
            long I = e0Var.I();
            long I2 = e0Var.I();
            e0Var.U(1);
            int j12 = j(e0Var);
            byte[] bArr = new byte[j12];
            e0Var.l(bArr, 0, j12);
            if (I2 > 0) {
                j10 = I2;
            } else {
                j10 = -1;
            }
            if (I > 0) {
                j11 = I;
            } else {
                j11 = -1;
            }
            return new C0270b(h10, bArr, j10, j11);
        }
        return new C0270b(h10, null, -1L, -1L);
    }

    private static int j(e0 e0Var) {
        int G = e0Var.G();
        int i10 = G & 127;
        while ((G & 128) == 128) {
            G = e0Var.G();
            i10 = (i10 << 7) | (G & 127);
        }
        return i10;
    }

    private static int k(e0 e0Var) {
        e0Var.T(16);
        return e0Var.p();
    }

    private static t3.a l(e0 e0Var, int i10) {
        e0Var.U(8);
        ArrayList arrayList = new ArrayList();
        while (e0Var.f() < i10) {
            a.b c10 = h.c(e0Var);
            if (c10 != null) {
                arrayList.add(c10);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new t3.a(arrayList);
    }

    private static Pair m(e0 e0Var) {
        int i10;
        int i11 = 8;
        e0Var.T(8);
        int c10 = o3.a.c(e0Var.p());
        if (c10 == 0) {
            i10 = 8;
        } else {
            i10 = 16;
        }
        e0Var.U(i10);
        long I = e0Var.I();
        if (c10 == 0) {
            i11 = 4;
        }
        e0Var.U(i11);
        int M = e0Var.M();
        return Pair.create(Long.valueOf(I), "" + ((char) (((M >> 10) & 31) + 96)) + ((char) (((M >> 5) & 31) + 96)) + ((char) ((M & 31) + 96)));
    }

    public static t3.a n(a.C0269a c0269a) {
        a.b g10 = c0269a.g(1751411826);
        a.b g11 = c0269a.g(1801812339);
        a.b g12 = c0269a.g(1768715124);
        if (g10 == null || g11 == null || g12 == null || k(g10.f27152b) != 1835299937) {
            return null;
        }
        e0 e0Var = g11.f27152b;
        e0Var.T(12);
        int p10 = e0Var.p();
        String[] strArr = new String[p10];
        for (int i10 = 0; i10 < p10; i10++) {
            int p11 = e0Var.p();
            e0Var.U(4);
            strArr[i10] = e0Var.D(p11 - 8);
        }
        e0 e0Var2 = g12.f27152b;
        e0Var2.T(8);
        ArrayList arrayList = new ArrayList();
        while (e0Var2.a() > 8) {
            int f10 = e0Var2.f();
            int p12 = e0Var2.p();
            int p13 = e0Var2.p() - 1;
            if (p13 >= 0 && p13 < p10) {
                z3.a f11 = h.f(e0Var2, f10 + p12, strArr[p13]);
                if (f11 != null) {
                    arrayList.add(f11);
                }
            } else {
                y4.r.i("AtomParsers", "Skipped metadata with unknown key index: " + p13);
            }
            e0Var2.T(f10 + p12);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new t3.a(arrayList);
    }

    private static void o(e0 e0Var, int i10, int i11, int i12, d dVar) {
        e0Var.T(i11 + 8 + 8);
        if (i10 == 1835365492) {
            e0Var.A();
            String A = e0Var.A();
            if (A != null) {
                dVar.f27168b = new x1.b().T(i12).g0(A).G();
            }
        }
    }

    private static long p(e0 e0Var) {
        int i10 = 8;
        e0Var.T(8);
        if (o3.a.c(e0Var.p()) != 0) {
            i10 = 16;
        }
        e0Var.U(i10);
        return e0Var.I();
    }

    private static float q(e0 e0Var, int i10) {
        e0Var.T(i10 + 8);
        return e0Var.K() / e0Var.K();
    }

    private static byte[] r(e0 e0Var, int i10, int i11) {
        int i12 = i10 + 8;
        while (i12 - i10 < i11) {
            e0Var.T(i12);
            int p10 = e0Var.p();
            if (e0Var.p() == 1886547818) {
                return Arrays.copyOfRange(e0Var.e(), i12, p10 + i12);
            }
            i12 += p10;
        }
        return null;
    }

    private static Pair s(e0 e0Var, int i10, int i11) {
        boolean z10;
        Pair g10;
        int f10 = e0Var.f();
        while (f10 - i10 < i11) {
            e0Var.T(f10);
            int p10 = e0Var.p();
            if (p10 > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            g3.n.a(z10, "childAtomSize must be positive");
            if (e0Var.p() == 1936289382 && (g10 = g(e0Var, f10, p10)) != null) {
                return g10;
            }
            f10 += p10;
        }
        return null;
    }

    private static p t(e0 e0Var, int i10, int i11, String str) {
        int i12;
        int i13;
        boolean z10;
        int i14 = i10 + 8;
        while (true) {
            byte[] bArr = null;
            if (i14 - i10 >= i11) {
                return null;
            }
            e0Var.T(i14);
            int p10 = e0Var.p();
            if (e0Var.p() == 1952804451) {
                int c10 = o3.a.c(e0Var.p());
                e0Var.U(1);
                if (c10 == 0) {
                    e0Var.U(1);
                    i13 = 0;
                    i12 = 0;
                } else {
                    int G = e0Var.G();
                    i12 = G & 15;
                    i13 = (G & 240) >> 4;
                }
                if (e0Var.G() == 1) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                int G2 = e0Var.G();
                byte[] bArr2 = new byte[16];
                e0Var.l(bArr2, 0, 16);
                if (z10 && G2 == 0) {
                    int G3 = e0Var.G();
                    bArr = new byte[G3];
                    e0Var.l(bArr, 0, G3);
                }
                return new p(z10, str, G2, bArr2, i13, i12, bArr);
            }
            i14 += p10;
        }
    }

    private static t3.a u(e0 e0Var, int i10) {
        float f10;
        e0Var.U(12);
        while (e0Var.f() < i10) {
            int f11 = e0Var.f();
            int p10 = e0Var.p();
            if (e0Var.p() == 1935766900) {
                if (p10 < 14) {
                    return null;
                }
                e0Var.U(5);
                int G = e0Var.G();
                if (G != 12 && G != 13) {
                    return null;
                }
                if (G == 12) {
                    f10 = 240.0f;
                } else {
                    f10 = 120.0f;
                }
                e0Var.U(1);
                return new t3.a(new z3.e(f10, e0Var.G()));
            }
            e0Var.T(f11 + p10);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:149:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0431  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x043f  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0444  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0448  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0426 A[EDGE_INSN: B:210:0x0426->B:169:0x0426 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static o3.r v(o3.o r38, o3.a.C0269a r39, g3.v r40) {
        /*
            Method dump skipped, instructions count: 1308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: o3.b.v(o3.o, o3.a$a, g3.v):o3.r");
    }

    private static d w(e0 e0Var, int i10, int i11, String str, f3.m mVar, boolean z10) {
        boolean z11;
        int i12;
        e0Var.T(12);
        int p10 = e0Var.p();
        d dVar = new d(p10);
        for (int i13 = 0; i13 < p10; i13++) {
            int f10 = e0Var.f();
            int p11 = e0Var.p();
            if (p11 > 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            g3.n.a(z11, "childAtomSize must be positive");
            int p12 = e0Var.p();
            if (p12 != 1635148593 && p12 != 1635148595 && p12 != 1701733238 && p12 != 1831958048 && p12 != 1836070006 && p12 != 1752589105 && p12 != 1751479857 && p12 != 1932670515 && p12 != 1211250227 && p12 != 1987063864 && p12 != 1987063865 && p12 != 1635135537 && p12 != 1685479798 && p12 != 1685479729 && p12 != 1685481573 && p12 != 1685481521) {
                if (p12 != 1836069985 && p12 != 1701733217 && p12 != 1633889587 && p12 != 1700998451 && p12 != 1633889588 && p12 != 1835823201 && p12 != 1685353315 && p12 != 1685353317 && p12 != 1685353320 && p12 != 1685353324 && p12 != 1685353336 && p12 != 1935764850 && p12 != 1935767394 && p12 != 1819304813 && p12 != 1936684916 && p12 != 1953984371 && p12 != 778924082 && p12 != 778924083 && p12 != 1835557169 && p12 != 1835560241 && p12 != 1634492771 && p12 != 1634492791 && p12 != 1970037111 && p12 != 1332770163 && p12 != 1716281667) {
                    if (p12 != 1414810956 && p12 != 1954034535 && p12 != 2004251764 && p12 != 1937010800 && p12 != 1664495672) {
                        if (p12 == 1835365492) {
                            o(e0Var, p12, f10, i10, dVar);
                        } else if (p12 == 1667329389) {
                            dVar.f27168b = new x1.b().T(i10).g0("application/x-camera-motion").G();
                        }
                    } else {
                        x(e0Var, p12, f10, p11, i10, str, dVar);
                    }
                    i12 = f10;
                } else {
                    i12 = f10;
                    f(e0Var, p12, f10, p11, i10, str, z10, mVar, dVar, i13);
                }
            } else {
                i12 = f10;
                D(e0Var, p12, i12, p11, i10, i11, mVar, dVar, i13);
            }
            e0Var.T(i12 + p11);
        }
        return dVar;
    }

    private static void x(e0 e0Var, int i10, int i11, int i12, int i13, String str, d dVar) {
        e0Var.T(i11 + 8 + 8);
        String str2 = "application/ttml+xml";
        o6.q qVar = null;
        long j10 = Long.MAX_VALUE;
        if (i10 != 1414810956) {
            if (i10 == 1954034535) {
                int i14 = (i12 - 8) - 8;
                byte[] bArr = new byte[i14];
                e0Var.l(bArr, 0, i14);
                qVar = o6.q.F(bArr);
                str2 = "application/x-quicktime-tx3g";
            } else if (i10 == 2004251764) {
                str2 = "application/x-mp4-vtt";
            } else if (i10 == 1937010800) {
                j10 = 0;
            } else if (i10 == 1664495672) {
                dVar.f27170d = 1;
                str2 = "application/x-mp4-cea-608";
            } else {
                throw new IllegalStateException();
            }
        }
        dVar.f27168b = new x1.b().T(i13).g0(str2).X(str).k0(j10).V(qVar).G();
    }

    private static g y(e0 e0Var) {
        int i10;
        boolean z10;
        long L;
        int i11 = 8;
        e0Var.T(8);
        int c10 = o3.a.c(e0Var.p());
        if (c10 == 0) {
            i10 = 8;
        } else {
            i10 = 16;
        }
        e0Var.U(i10);
        int p10 = e0Var.p();
        e0Var.U(4);
        int f10 = e0Var.f();
        if (c10 == 0) {
            i11 = 4;
        }
        int i12 = 0;
        int i13 = 0;
        while (true) {
            if (i13 < i11) {
                if (e0Var.e()[f10 + i13] != -1) {
                    z10 = false;
                    break;
                }
                i13++;
            } else {
                z10 = true;
                break;
            }
        }
        long j10 = -9223372036854775807L;
        if (z10) {
            e0Var.U(i11);
        } else {
            if (c10 == 0) {
                L = e0Var.I();
            } else {
                L = e0Var.L();
            }
            if (L != 0) {
                j10 = L;
            }
        }
        e0Var.U(16);
        int p11 = e0Var.p();
        int p12 = e0Var.p();
        e0Var.U(4);
        int p13 = e0Var.p();
        int p14 = e0Var.p();
        if (p11 == 0 && p12 == 65536 && p13 == -65536 && p14 == 0) {
            i12 = 90;
        } else if (p11 == 0 && p12 == -65536 && p13 == 65536 && p14 == 0) {
            i12 = 270;
        } else if (p11 == -65536 && p12 == 0 && p13 == 0 && p14 == -65536) {
            i12 = 180;
        }
        return new g(p10, j10, i12);
    }

    private static o z(a.C0269a c0269a, a.b bVar, long j10, f3.m mVar, boolean z10, boolean z11) {
        a.b bVar2;
        long j11;
        long[] jArr;
        long[] jArr2;
        a.C0269a f10;
        Pair h10;
        a.C0269a c0269a2 = (a.C0269a) y4.a.e(c0269a.f(1835297121));
        int d10 = d(k(((a.b) y4.a.e(c0269a2.g(1751411826))).f27152b));
        if (d10 == -1) {
            return null;
        }
        g y10 = y(((a.b) y4.a.e(c0269a.g(1953196132))).f27152b);
        long j12 = -9223372036854775807L;
        if (j10 == -9223372036854775807L) {
            bVar2 = bVar;
            j11 = y10.f27180b;
        } else {
            bVar2 = bVar;
            j11 = j10;
        }
        long p10 = p(bVar2.f27152b);
        if (j11 != -9223372036854775807L) {
            j12 = q0.M0(j11, 1000000L, p10);
        }
        long j13 = j12;
        Pair m10 = m(((a.b) y4.a.e(c0269a2.g(1835296868))).f27152b);
        a.b g10 = ((a.C0269a) y4.a.e(((a.C0269a) y4.a.e(c0269a2.f(1835626086))).f(1937007212))).g(1937011556);
        if (g10 != null) {
            d w10 = w(g10.f27152b, y10.f27179a, y10.f27181c, (String) m10.second, mVar, z11);
            if (!z10 && (f10 = c0269a.f(1701082227)) != null && (h10 = h(f10)) != null) {
                jArr2 = (long[]) h10.second;
                jArr = (long[]) h10.first;
            } else {
                jArr = null;
                jArr2 = null;
            }
            if (w10.f27168b == null) {
                return null;
            }
            return new o(y10.f27179a, d10, ((Long) m10.first).longValue(), p10, j13, w10.f27168b, w10.f27170d, w10.f27167a, w10.f27169c, jArr, jArr2);
        }
        throw e3.a("Malformed sample table (stbl) missing sample description (stsd)", null);
    }
}
