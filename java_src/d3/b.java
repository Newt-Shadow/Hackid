package d3;

import b3.x1;
import java.nio.ByteBuffer;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f14426a = {1, 2, 3, 6};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f14427b = {48000, 44100, 32000};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f14428c = {24000, 22050, 16000};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f14429d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f14430e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, 640};

    /* renamed from: f  reason: collision with root package name */
    private static final int[] f14431f = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* renamed from: d3.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0143b {

        /* renamed from: a  reason: collision with root package name */
        public final String f14432a;

        /* renamed from: b  reason: collision with root package name */
        public final int f14433b;

        /* renamed from: c  reason: collision with root package name */
        public final int f14434c;

        /* renamed from: d  reason: collision with root package name */
        public final int f14435d;

        /* renamed from: e  reason: collision with root package name */
        public final int f14436e;

        /* renamed from: f  reason: collision with root package name */
        public final int f14437f;

        /* renamed from: g  reason: collision with root package name */
        public final int f14438g;

        private C0143b(String str, int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f14432a = str;
            this.f14433b = i10;
            this.f14435d = i11;
            this.f14434c = i12;
            this.f14436e = i13;
            this.f14437f = i14;
            this.f14438g = i15;
        }
    }

    private static int a(int i10, int i11, int i12) {
        return (i10 * i11) / (i12 * 32);
    }

    public static int b(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit() - 10;
        for (int i10 = position; i10 <= limit; i10++) {
            if ((y4.q0.I(byteBuffer, i10 + 4) & (-2)) == -126718022) {
                return i10 - position;
            }
        }
        return -1;
    }

    private static int c(int i10, int i11) {
        int i12 = i11 / 2;
        if (i10 >= 0) {
            int[] iArr = f14427b;
            if (i10 < iArr.length && i11 >= 0) {
                int[] iArr2 = f14431f;
                if (i12 < iArr2.length) {
                    int i13 = iArr[i10];
                    if (i13 == 44100) {
                        return (iArr2[i12] + (i11 % 2)) * 2;
                    }
                    int i14 = f14430e[i12];
                    if (i13 == 32000) {
                        return i14 * 6;
                    }
                    return i14 * 4;
                }
                return -1;
            }
            return -1;
        }
        return -1;
    }

    public static x1 d(y4.e0 e0Var, String str, String str2, f3.m mVar) {
        y4.d0 d0Var = new y4.d0();
        d0Var.m(e0Var);
        int i10 = f14427b[d0Var.h(2)];
        d0Var.r(8);
        int i11 = f14429d[d0Var.h(3)];
        if (d0Var.h(1) != 0) {
            i11++;
        }
        int i12 = f14430e[d0Var.h(5)] * 1000;
        d0Var.c();
        e0Var.T(d0Var.d());
        return new x1.b().U(str).g0("audio/ac3").J(i11).h0(i10).O(mVar).X(str2).I(i12).b0(i12).G();
    }

    public static int e(ByteBuffer byteBuffer) {
        boolean z10;
        int i10 = 3;
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
                i10 = (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4;
            }
            return f14426a[i10] * 256;
        }
        return 1536;
    }

    public static C0143b f(y4.d0 d0Var) {
        boolean z10;
        String str;
        int i10;
        int i11;
        int i12;
        String str2;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        String str3;
        int i21;
        int i22;
        int e10 = d0Var.e();
        d0Var.r(40);
        if (d0Var.h(5) > 10) {
            z10 = true;
        } else {
            z10 = false;
        }
        d0Var.p(e10);
        int i23 = -1;
        if (z10) {
            d0Var.r(16);
            int h10 = d0Var.h(2);
            if (h10 != 0) {
                if (h10 != 1) {
                    if (h10 == 2) {
                        i23 = 2;
                    }
                } else {
                    i23 = 1;
                }
            } else {
                i23 = 0;
            }
            d0Var.r(3);
            int h11 = (d0Var.h(11) + 1) * 2;
            int h12 = d0Var.h(2);
            if (h12 == 3) {
                i18 = f14428c[d0Var.h(2)];
                i17 = 3;
                i19 = 6;
            } else {
                int h13 = d0Var.h(2);
                int i24 = f14426a[h13];
                i17 = h13;
                i18 = f14427b[h12];
                i19 = i24;
            }
            int i25 = i19 * 256;
            int a10 = a(h11, i18, i19);
            int h14 = d0Var.h(3);
            boolean g10 = d0Var.g();
            i11 = f14429d[h14] + (g10 ? 1 : 0);
            d0Var.r(10);
            if (d0Var.g()) {
                d0Var.r(8);
            }
            if (h14 == 0) {
                d0Var.r(5);
                if (d0Var.g()) {
                    d0Var.r(8);
                }
            }
            if (i23 == 1 && d0Var.g()) {
                d0Var.r(16);
            }
            if (d0Var.g()) {
                if (h14 > 2) {
                    d0Var.r(2);
                }
                if ((h14 & 1) != 0 && h14 > 2) {
                    i21 = 6;
                    d0Var.r(6);
                } else {
                    i21 = 6;
                }
                if ((h14 & 4) != 0) {
                    d0Var.r(i21);
                }
                if (g10 && d0Var.g()) {
                    d0Var.r(5);
                }
                if (i23 == 0) {
                    if (d0Var.g()) {
                        i22 = 6;
                        d0Var.r(6);
                    } else {
                        i22 = 6;
                    }
                    if (h14 == 0 && d0Var.g()) {
                        d0Var.r(i22);
                    }
                    if (d0Var.g()) {
                        d0Var.r(i22);
                    }
                    int h15 = d0Var.h(2);
                    if (h15 == 1) {
                        d0Var.r(5);
                    } else if (h15 == 2) {
                        d0Var.r(12);
                    } else if (h15 == 3) {
                        int h16 = d0Var.h(5);
                        if (d0Var.g()) {
                            d0Var.r(5);
                            if (d0Var.g()) {
                                d0Var.r(4);
                            }
                            if (d0Var.g()) {
                                d0Var.r(4);
                            }
                            if (d0Var.g()) {
                                d0Var.r(4);
                            }
                            if (d0Var.g()) {
                                d0Var.r(4);
                            }
                            if (d0Var.g()) {
                                d0Var.r(4);
                            }
                            if (d0Var.g()) {
                                d0Var.r(4);
                            }
                            if (d0Var.g()) {
                                d0Var.r(4);
                            }
                            if (d0Var.g()) {
                                if (d0Var.g()) {
                                    d0Var.r(4);
                                }
                                if (d0Var.g()) {
                                    d0Var.r(4);
                                }
                            }
                        }
                        if (d0Var.g()) {
                            d0Var.r(5);
                            if (d0Var.g()) {
                                d0Var.r(7);
                                if (d0Var.g()) {
                                    d0Var.r(8);
                                }
                            }
                        }
                        d0Var.r((h16 + 2) * 8);
                        d0Var.c();
                    }
                    if (h14 < 2) {
                        if (d0Var.g()) {
                            d0Var.r(14);
                        }
                        if (h14 == 0 && d0Var.g()) {
                            d0Var.r(14);
                        }
                    }
                    if (d0Var.g()) {
                        if (i17 == 0) {
                            d0Var.r(5);
                        } else {
                            for (int i26 = 0; i26 < i19; i26++) {
                                if (d0Var.g()) {
                                    d0Var.r(5);
                                }
                            }
                        }
                    }
                }
            }
            if (d0Var.g()) {
                d0Var.r(5);
                if (h14 == 2) {
                    d0Var.r(4);
                }
                if (h14 >= 6) {
                    d0Var.r(2);
                }
                if (d0Var.g()) {
                    d0Var.r(8);
                }
                if (h14 == 0 && d0Var.g()) {
                    d0Var.r(8);
                }
                if (h12 < 3) {
                    d0Var.q();
                }
            }
            if (i23 == 0 && i17 != 3) {
                d0Var.q();
            }
            if (i23 == 2 && (i17 == 3 || d0Var.g())) {
                i20 = 6;
                d0Var.r(6);
            } else {
                i20 = 6;
            }
            if (d0Var.g() && d0Var.h(i20) == 1 && d0Var.h(8) == 1) {
                str3 = "audio/eac3-joc";
            } else {
                str3 = "audio/eac3";
            }
            str2 = str3;
            i12 = i23;
            i13 = i25;
            i15 = h11;
            i16 = i18;
            i14 = a10;
        } else {
            d0Var.r(32);
            int h17 = d0Var.h(2);
            if (h17 == 3) {
                str = null;
            } else {
                str = "audio/ac3";
            }
            int h18 = d0Var.h(6);
            int i27 = f14430e[h18 / 2] * 1000;
            int c10 = c(h17, h18);
            d0Var.r(8);
            int h19 = d0Var.h(3);
            if ((h19 & 1) != 0 && h19 != 1) {
                d0Var.r(2);
            }
            if ((h19 & 4) != 0) {
                d0Var.r(2);
            }
            if (h19 == 2) {
                d0Var.r(2);
            }
            int[] iArr = f14427b;
            if (h17 < iArr.length) {
                i10 = iArr[h17];
            } else {
                i10 = -1;
            }
            i11 = f14429d[h19] + (d0Var.g() ? 1 : 0);
            i12 = -1;
            str2 = str;
            i13 = 1536;
            i14 = i27;
            i15 = c10;
            i16 = i10;
        }
        return new C0143b(str2, i12, i11, i16, i15, i13, i14);
    }

    public static int g(byte[] bArr) {
        boolean z10;
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return (((bArr[3] & ForkServer.ERROR) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        byte b10 = bArr[4];
        return c((b10 & 192) >> 6, b10 & 63);
    }

    public static x1 h(y4.e0 e0Var, String str, String str2, f3.m mVar) {
        String str3;
        y4.d0 d0Var = new y4.d0();
        d0Var.m(e0Var);
        int h10 = d0Var.h(13) * 1000;
        d0Var.r(3);
        int i10 = f14427b[d0Var.h(2)];
        d0Var.r(10);
        int i11 = f14429d[d0Var.h(3)];
        if (d0Var.h(1) != 0) {
            i11++;
        }
        d0Var.r(3);
        int h11 = d0Var.h(4);
        d0Var.r(1);
        if (h11 > 0) {
            d0Var.s(6);
            if (d0Var.h(1) != 0) {
                i11 += 2;
            }
            d0Var.r(1);
        }
        if (d0Var.b() > 7) {
            d0Var.r(7);
            if (d0Var.h(1) != 0) {
                str3 = "audio/eac3-joc";
                d0Var.c();
                e0Var.T(d0Var.d());
                return new x1.b().U(str).g0(str3).J(i11).h0(i10).O(mVar).X(str2).b0(h10).G();
            }
        }
        str3 = "audio/eac3";
        d0Var.c();
        e0Var.T(d0Var.d());
        return new x1.b().U(str).g0(str3).J(i11).h0(i10).O(mVar).X(str2).b0(h10).G();
    }

    public static int i(ByteBuffer byteBuffer, int i10) {
        boolean z10;
        int i11;
        if ((byteBuffer.get(byteBuffer.position() + i10 + 7) & ForkServer.ERROR) == 187) {
            z10 = true;
        } else {
            z10 = false;
        }
        int position = byteBuffer.position() + i10;
        if (z10) {
            i11 = 9;
        } else {
            i11 = 8;
        }
        return 40 << ((byteBuffer.get(position + i11) >> 4) & 7);
    }

    public static int j(byte[] bArr) {
        char c10;
        boolean z10 = false;
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b10 = bArr[7];
            if ((b10 & 254) == 186) {
                if ((b10 & ForkServer.ERROR) == 187) {
                    z10 = true;
                }
                if (z10) {
                    c10 = '\t';
                } else {
                    c10 = '\b';
                }
                return 40 << ((bArr[c10] >> 4) & 7);
            }
        }
        return 0;
    }
}
