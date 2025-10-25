package m3;

import android.util.Pair;
import android.util.SparseArray;
import b3.e3;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import f3.m;
import g3.b0;
import g3.c0;
import g3.k;
import g3.l;
import g3.m;
import g3.p;
import g3.y;
import g3.z;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import kotlin.KotlinVersion;
import y4.e0;
import y4.q0;
import y4.r;
import y4.s;
import y4.w;
/* loaded from: classes.dex */
public class e implements k {

    /* renamed from: c0  reason: collision with root package name */
    public static final p f25608c0 = new p() { // from class: m3.d
        @Override // g3.p
        public final k[] b() {
            k[] A;
            A = e.A();
            return A;
        }
    };

    /* renamed from: d0  reason: collision with root package name */
    private static final byte[] f25609d0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: e0  reason: collision with root package name */
    private static final byte[] f25610e0 = q0.l0("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    /* renamed from: f0  reason: collision with root package name */
    private static final byte[] f25611f0 = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    /* renamed from: g0  reason: collision with root package name */
    private static final byte[] f25612g0 = {87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};

    /* renamed from: h0  reason: collision with root package name */
    private static final UUID f25613h0 = new UUID(72057594037932032L, -9223371306706625679L);

    /* renamed from: i0  reason: collision with root package name */
    private static final Map f25614i0;
    private long A;
    private long B;
    private s C;
    private s D;
    private boolean E;
    private boolean F;
    private int G;
    private long H;
    private long I;
    private int J;
    private int K;
    private int[] L;
    private int M;
    private int N;
    private int O;
    private int P;
    private boolean Q;
    private long R;
    private int S;
    private int T;
    private int U;
    private boolean V;
    private boolean W;
    private boolean X;
    private int Y;
    private byte Z;

    /* renamed from: a  reason: collision with root package name */
    private final m3.c f25615a;

    /* renamed from: a0  reason: collision with root package name */
    private boolean f25616a0;

    /* renamed from: b  reason: collision with root package name */
    private final g f25617b;

    /* renamed from: b0  reason: collision with root package name */
    private m f25618b0;

    /* renamed from: c  reason: collision with root package name */
    private final SparseArray f25619c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f25620d;

    /* renamed from: e  reason: collision with root package name */
    private final e0 f25621e;

    /* renamed from: f  reason: collision with root package name */
    private final e0 f25622f;

    /* renamed from: g  reason: collision with root package name */
    private final e0 f25623g;

    /* renamed from: h  reason: collision with root package name */
    private final e0 f25624h;

    /* renamed from: i  reason: collision with root package name */
    private final e0 f25625i;

    /* renamed from: j  reason: collision with root package name */
    private final e0 f25626j;

    /* renamed from: k  reason: collision with root package name */
    private final e0 f25627k;

    /* renamed from: l  reason: collision with root package name */
    private final e0 f25628l;

    /* renamed from: m  reason: collision with root package name */
    private final e0 f25629m;

    /* renamed from: n  reason: collision with root package name */
    private final e0 f25630n;

    /* renamed from: o  reason: collision with root package name */
    private ByteBuffer f25631o;

    /* renamed from: p  reason: collision with root package name */
    private long f25632p;

    /* renamed from: q  reason: collision with root package name */
    private long f25633q;

    /* renamed from: r  reason: collision with root package name */
    private long f25634r;

    /* renamed from: s  reason: collision with root package name */
    private long f25635s;

    /* renamed from: t  reason: collision with root package name */
    private long f25636t;

    /* renamed from: u  reason: collision with root package name */
    private c f25637u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f25638v;

    /* renamed from: w  reason: collision with root package name */
    private int f25639w;

    /* renamed from: x  reason: collision with root package name */
    private long f25640x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f25641y;

    /* renamed from: z  reason: collision with root package name */
    private long f25642z;

    /* loaded from: classes.dex */
    private final class b implements m3.b {
        private b() {
        }

        @Override // m3.b
        public void a(int i10) {
            e.this.o(i10);
        }

        @Override // m3.b
        public int b(int i10) {
            return e.this.u(i10);
        }

        @Override // m3.b
        public boolean c(int i10) {
            return e.this.z(i10);
        }

        @Override // m3.b
        public void d(int i10, String str) {
            e.this.H(i10, str);
        }

        @Override // m3.b
        public void e(int i10, double d10) {
            e.this.r(i10, d10);
        }

        @Override // m3.b
        public void f(int i10, int i11, l lVar) {
            e.this.l(i10, i11, lVar);
        }

        @Override // m3.b
        public void g(int i10, long j10, long j11) {
            e.this.G(i10, j10, j11);
        }

        @Override // m3.b
        public void h(int i10, long j10) {
            e.this.x(i10, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static final class c {
        public byte[] N;
        public c0 T;
        public boolean U;
        public b0 X;
        public int Y;

        /* renamed from: a  reason: collision with root package name */
        public String f25644a;

        /* renamed from: b  reason: collision with root package name */
        public String f25645b;

        /* renamed from: c  reason: collision with root package name */
        public int f25646c;

        /* renamed from: d  reason: collision with root package name */
        public int f25647d;

        /* renamed from: e  reason: collision with root package name */
        public int f25648e;

        /* renamed from: f  reason: collision with root package name */
        public int f25649f;

        /* renamed from: g  reason: collision with root package name */
        private int f25650g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f25651h;

        /* renamed from: i  reason: collision with root package name */
        public byte[] f25652i;

        /* renamed from: j  reason: collision with root package name */
        public b0.a f25653j;

        /* renamed from: k  reason: collision with root package name */
        public byte[] f25654k;

        /* renamed from: l  reason: collision with root package name */
        public f3.m f25655l;

        /* renamed from: m  reason: collision with root package name */
        public int f25656m = -1;

        /* renamed from: n  reason: collision with root package name */
        public int f25657n = -1;

        /* renamed from: o  reason: collision with root package name */
        public int f25658o = -1;

        /* renamed from: p  reason: collision with root package name */
        public int f25659p = -1;

        /* renamed from: q  reason: collision with root package name */
        public int f25660q = 0;

        /* renamed from: r  reason: collision with root package name */
        public int f25661r = -1;

        /* renamed from: s  reason: collision with root package name */
        public float f25662s = 0.0f;

        /* renamed from: t  reason: collision with root package name */
        public float f25663t = 0.0f;

        /* renamed from: u  reason: collision with root package name */
        public float f25664u = 0.0f;

        /* renamed from: v  reason: collision with root package name */
        public byte[] f25665v = null;

        /* renamed from: w  reason: collision with root package name */
        public int f25666w = -1;

        /* renamed from: x  reason: collision with root package name */
        public boolean f25667x = false;

        /* renamed from: y  reason: collision with root package name */
        public int f25668y = -1;

        /* renamed from: z  reason: collision with root package name */
        public int f25669z = -1;
        public int A = -1;
        public int B = 1000;
        public int C = 200;
        public float D = -1.0f;
        public float E = -1.0f;
        public float F = -1.0f;
        public float G = -1.0f;
        public float H = -1.0f;
        public float I = -1.0f;
        public float J = -1.0f;
        public float K = -1.0f;
        public float L = -1.0f;
        public float M = -1.0f;
        public int O = 1;
        public int P = -1;
        public int Q = 8000;
        public long R = 0;
        public long S = 0;
        public boolean V = true;
        private String W = "eng";

        protected c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            y4.a.e(this.X);
        }

        private byte[] g(String str) {
            byte[] bArr = this.f25654k;
            if (bArr != null) {
                return bArr;
            }
            throw e3.a("Missing CodecPrivate for codec " + str, null);
        }

        private byte[] h() {
            if (this.D != -1.0f && this.E != -1.0f && this.F != -1.0f && this.G != -1.0f && this.H != -1.0f && this.I != -1.0f && this.J != -1.0f && this.K != -1.0f && this.L != -1.0f && this.M != -1.0f) {
                byte[] bArr = new byte[25];
                ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                order.put((byte) 0);
                order.putShort((short) ((this.D * 50000.0f) + 0.5f));
                order.putShort((short) ((this.E * 50000.0f) + 0.5f));
                order.putShort((short) ((this.F * 50000.0f) + 0.5f));
                order.putShort((short) ((this.G * 50000.0f) + 0.5f));
                order.putShort((short) ((this.H * 50000.0f) + 0.5f));
                order.putShort((short) ((this.I * 50000.0f) + 0.5f));
                order.putShort((short) ((this.J * 50000.0f) + 0.5f));
                order.putShort((short) ((this.K * 50000.0f) + 0.5f));
                order.putShort((short) (this.L + 0.5f));
                order.putShort((short) (this.M + 0.5f));
                order.putShort((short) this.B);
                order.putShort((short) this.C);
                return bArr;
            }
            return null;
        }

        private static Pair k(e0 e0Var) {
            try {
                e0Var.U(16);
                long w10 = e0Var.w();
                if (w10 == 1482049860) {
                    return new Pair("video/divx", null);
                }
                if (w10 == 859189832) {
                    return new Pair("video/3gpp", null);
                }
                if (w10 == 826496599) {
                    byte[] e10 = e0Var.e();
                    for (int f10 = e0Var.f() + 20; f10 < e10.length - 4; f10++) {
                        if (e10[f10] == 0 && e10[f10 + 1] == 0 && e10[f10 + 2] == 1 && e10[f10 + 3] == 15) {
                            return new Pair("video/wvc1", Collections.singletonList(Arrays.copyOfRange(e10, f10, e10.length)));
                        }
                    }
                    throw e3.a("Failed to find FourCC VC1 initialization data", null);
                }
                r.i("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair("video/x-unknown", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw e3.a("Error parsing FourCC private data", null);
            }
        }

        private static boolean l(e0 e0Var) {
            try {
                int y10 = e0Var.y();
                if (y10 == 1) {
                    return true;
                }
                if (y10 != 65534) {
                    return false;
                }
                e0Var.T(24);
                if (e0Var.z() == e.f25613h0.getMostSignificantBits()) {
                    if (e0Var.z() == e.f25613h0.getLeastSignificantBits()) {
                        return true;
                    }
                }
                return false;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw e3.a("Error parsing MS/ACM codec private", null);
            }
        }

        private static List m(byte[] bArr) {
            int i10;
            int i11;
            try {
                if (bArr[0] == 2) {
                    int i12 = 0;
                    int i13 = 1;
                    while (true) {
                        i10 = bArr[i13];
                        if ((i10 & KotlinVersion.MAX_COMPONENT_VALUE) != 255) {
                            break;
                        }
                        i12 += KotlinVersion.MAX_COMPONENT_VALUE;
                        i13++;
                    }
                    int i14 = i13 + 1;
                    int i15 = i12 + (i10 & KotlinVersion.MAX_COMPONENT_VALUE);
                    int i16 = 0;
                    while (true) {
                        i11 = bArr[i14];
                        if ((i11 & KotlinVersion.MAX_COMPONENT_VALUE) != 255) {
                            break;
                        }
                        i16 += KotlinVersion.MAX_COMPONENT_VALUE;
                        i14++;
                    }
                    int i17 = i14 + 1;
                    int i18 = i16 + (i11 & KotlinVersion.MAX_COMPONENT_VALUE);
                    if (bArr[i17] == 1) {
                        byte[] bArr2 = new byte[i15];
                        System.arraycopy(bArr, i17, bArr2, 0, i15);
                        int i19 = i17 + i15;
                        if (bArr[i19] == 3) {
                            int i20 = i19 + i18;
                            if (bArr[i20] == 5) {
                                byte[] bArr3 = new byte[bArr.length - i20];
                                System.arraycopy(bArr, i20, bArr3, 0, bArr.length - i20);
                                ArrayList arrayList = new ArrayList(2);
                                arrayList.add(bArr2);
                                arrayList.add(bArr3);
                                return arrayList;
                            }
                            throw e3.a("Error parsing vorbis codec private", null);
                        }
                        throw e3.a("Error parsing vorbis codec private", null);
                    }
                    throw e3.a("Error parsing vorbis codec private", null);
                }
                throw e3.a("Error parsing vorbis codec private", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw e3.a("Error parsing vorbis codec private", null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean o(boolean z10) {
            if ("A_OPUS".equals(this.f25645b)) {
                return z10;
            }
            if (this.f25649f > 0) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:202:0x0417  */
        /* JADX WARN: Removed duplicated region for block: B:207:0x0432  */
        /* JADX WARN: Removed duplicated region for block: B:208:0x0434  */
        /* JADX WARN: Removed duplicated region for block: B:211:0x0441  */
        /* JADX WARN: Removed duplicated region for block: B:212:0x0453  */
        /* JADX WARN: Removed duplicated region for block: B:278:0x055d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void i(g3.m r20, int r21) {
            /*
                Method dump skipped, instructions count: 1650
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: m3.e.c.i(g3.m, int):void");
        }

        public void j() {
            c0 c0Var = this.T;
            if (c0Var != null) {
                c0Var.a(this.X, this.f25653j);
            }
        }

        public void n() {
            c0 c0Var = this.T;
            if (c0Var != null) {
                c0Var.b();
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("htc_video_rotA-000", 0);
        hashMap.put("htc_video_rotA-090", 90);
        hashMap.put("htc_video_rotA-180", 180);
        hashMap.put("htc_video_rotA-270", 270);
        f25614i0 = Collections.unmodifiableMap(hashMap);
    }

    public e() {
        this(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] A() {
        return new k[]{new e()};
    }

    private boolean B(y yVar, long j10) {
        if (this.f25641y) {
            this.A = j10;
            yVar.f16251a = this.f25642z;
            this.f25641y = false;
            return true;
        }
        if (this.f25638v) {
            long j11 = this.A;
            if (j11 != -1) {
                yVar.f16251a = j11;
                this.A = -1L;
                return true;
            }
        }
        return false;
    }

    private void C(l lVar, int i10) {
        if (this.f25623g.g() >= i10) {
            return;
        }
        if (this.f25623g.b() < i10) {
            e0 e0Var = this.f25623g;
            e0Var.c(Math.max(e0Var.b() * 2, i10));
        }
        lVar.readFully(this.f25623g.e(), this.f25623g.g(), i10 - this.f25623g.g());
        this.f25623g.S(i10);
    }

    private void D() {
        this.S = 0;
        this.T = 0;
        this.U = 0;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = 0;
        this.Z = (byte) 0;
        this.f25616a0 = false;
        this.f25626j.P(0);
    }

    private long E(long j10) {
        long j11 = this.f25634r;
        if (j11 != -9223372036854775807L) {
            return q0.M0(j10, j11, 1000L);
        }
        throw e3.a("Can't scale timecode prior to timecodeScale being set.", null);
    }

    private static void F(String str, long j10, byte[] bArr) {
        byte[] s10;
        int i10;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 738597099:
                if (str.equals("S_TEXT/ASS")) {
                    c10 = 0;
                    break;
                }
                break;
            case 1045209816:
                if (str.equals("S_TEXT/WEBVTT")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1422270023:
                if (str.equals("S_TEXT/UTF8")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                s10 = s(j10, "%01d:%02d:%02d:%02d", 10000L);
                i10 = 21;
                break;
            case 1:
                s10 = s(j10, "%02d:%02d:%02d.%03d", 1000L);
                i10 = 25;
                break;
            case 2:
                s10 = s(j10, "%02d:%02d:%02d,%03d", 1000L);
                i10 = 19;
                break;
            default:
                throw new IllegalArgumentException();
        }
        System.arraycopy(s10, 0, bArr, i10, s10.length);
    }

    private int I(l lVar, c cVar, int i10, boolean z10) {
        boolean z11;
        boolean z12;
        int i11;
        if ("S_TEXT/UTF8".equals(cVar.f25645b)) {
            J(lVar, f25609d0, i10);
            return q();
        } else if ("S_TEXT/ASS".equals(cVar.f25645b)) {
            J(lVar, f25611f0, i10);
            return q();
        } else if ("S_TEXT/WEBVTT".equals(cVar.f25645b)) {
            J(lVar, f25612g0, i10);
            return q();
        } else {
            b0 b0Var = cVar.X;
            boolean z13 = true;
            if (!this.V) {
                if (cVar.f25651h) {
                    this.O &= -1073741825;
                    int i12 = 128;
                    if (!this.W) {
                        lVar.readFully(this.f25623g.e(), 0, 1);
                        this.S++;
                        if ((this.f25623g.e()[0] & 128) != 128) {
                            this.Z = this.f25623g.e()[0];
                            this.W = true;
                        } else {
                            throw e3.a("Extension bit is set in signal byte", null);
                        }
                    }
                    byte b10 = this.Z;
                    if ((b10 & 1) == 1) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        if ((b10 & 2) == 2) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        this.O |= 1073741824;
                        if (!this.f25616a0) {
                            lVar.readFully(this.f25628l.e(), 0, 8);
                            this.S += 8;
                            this.f25616a0 = true;
                            byte[] e10 = this.f25623g.e();
                            if (!z12) {
                                i12 = 0;
                            }
                            e10[0] = (byte) (i12 | 8);
                            this.f25623g.T(0);
                            b0Var.a(this.f25623g, 1, 1);
                            this.T++;
                            this.f25628l.T(0);
                            b0Var.a(this.f25628l, 8, 1);
                            this.T += 8;
                        }
                        if (z12) {
                            if (!this.X) {
                                lVar.readFully(this.f25623g.e(), 0, 1);
                                this.S++;
                                this.f25623g.T(0);
                                this.Y = this.f25623g.G();
                                this.X = true;
                            }
                            int i13 = this.Y * 4;
                            this.f25623g.P(i13);
                            lVar.readFully(this.f25623g.e(), 0, i13);
                            this.S += i13;
                            short s10 = (short) ((this.Y / 2) + 1);
                            int i14 = (s10 * 6) + 2;
                            ByteBuffer byteBuffer = this.f25631o;
                            if (byteBuffer == null || byteBuffer.capacity() < i14) {
                                this.f25631o = ByteBuffer.allocate(i14);
                            }
                            this.f25631o.position(0);
                            this.f25631o.putShort(s10);
                            int i15 = 0;
                            int i16 = 0;
                            while (true) {
                                i11 = this.Y;
                                if (i15 >= i11) {
                                    break;
                                }
                                int K = this.f25623g.K();
                                if (i15 % 2 == 0) {
                                    this.f25631o.putShort((short) (K - i16));
                                } else {
                                    this.f25631o.putInt(K - i16);
                                }
                                i15++;
                                i16 = K;
                            }
                            int i17 = (i10 - this.S) - i16;
                            if (i11 % 2 == 1) {
                                this.f25631o.putInt(i17);
                            } else {
                                this.f25631o.putShort((short) i17);
                                this.f25631o.putInt(0);
                            }
                            this.f25629m.R(this.f25631o.array(), i14);
                            b0Var.a(this.f25629m, i14, 1);
                            this.T += i14;
                        }
                    }
                } else {
                    byte[] bArr = cVar.f25652i;
                    if (bArr != null) {
                        this.f25626j.R(bArr, bArr.length);
                    }
                }
                if (cVar.o(z10)) {
                    this.O |= 268435456;
                    this.f25630n.P(0);
                    int g10 = (this.f25626j.g() + i10) - this.S;
                    this.f25623g.P(4);
                    this.f25623g.e()[0] = (byte) ((g10 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE);
                    this.f25623g.e()[1] = (byte) ((g10 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
                    this.f25623g.e()[2] = (byte) ((g10 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
                    this.f25623g.e()[3] = (byte) (g10 & KotlinVersion.MAX_COMPONENT_VALUE);
                    b0Var.a(this.f25623g, 4, 2);
                    this.T += 4;
                }
                this.V = true;
            }
            int g11 = i10 + this.f25626j.g();
            if (!"V_MPEG4/ISO/AVC".equals(cVar.f25645b) && !"V_MPEGH/ISO/HEVC".equals(cVar.f25645b)) {
                if (cVar.T != null) {
                    if (this.f25626j.g() != 0) {
                        z13 = false;
                    }
                    y4.a.f(z13);
                    cVar.T.d(lVar);
                }
                while (true) {
                    int i18 = this.S;
                    if (i18 >= g11) {
                        break;
                    }
                    int K2 = K(lVar, b0Var, g11 - i18);
                    this.S += K2;
                    this.T += K2;
                }
            } else {
                byte[] e11 = this.f25622f.e();
                e11[0] = 0;
                e11[1] = 0;
                e11[2] = 0;
                int i19 = cVar.Y;
                int i20 = 4 - i19;
                while (this.S < g11) {
                    int i21 = this.U;
                    if (i21 == 0) {
                        L(lVar, e11, i20, i19);
                        this.S += i19;
                        this.f25622f.T(0);
                        this.U = this.f25622f.K();
                        this.f25621e.T(0);
                        b0Var.b(this.f25621e, 4);
                        this.T += 4;
                    } else {
                        int K3 = K(lVar, b0Var, i21);
                        this.S += K3;
                        this.T += K3;
                        this.U -= K3;
                    }
                }
            }
            if ("A_VORBIS".equals(cVar.f25645b)) {
                this.f25624h.T(0);
                b0Var.b(this.f25624h, 4);
                this.T += 4;
            }
            return q();
        }
    }

    private void J(l lVar, byte[] bArr, int i10) {
        int length = bArr.length + i10;
        if (this.f25627k.b() < length) {
            this.f25627k.Q(Arrays.copyOf(bArr, length + i10));
        } else {
            System.arraycopy(bArr, 0, this.f25627k.e(), 0, bArr.length);
        }
        lVar.readFully(this.f25627k.e(), bArr.length, i10);
        this.f25627k.T(0);
        this.f25627k.S(length);
    }

    private int K(l lVar, b0 b0Var, int i10) {
        int a10 = this.f25626j.a();
        if (a10 > 0) {
            int min = Math.min(i10, a10);
            b0Var.b(this.f25626j, min);
            return min;
        }
        return b0Var.e(lVar, i10, false);
    }

    private void L(l lVar, byte[] bArr, int i10, int i11) {
        int min = Math.min(i11, this.f25626j.a());
        lVar.readFully(bArr, i10 + min, i11 - min);
        if (min > 0) {
            this.f25626j.l(bArr, i10, min);
        }
    }

    private void i(int i10) {
        if (this.C != null && this.D != null) {
            return;
        }
        throw e3.a("Element " + i10 + " must be in a Cues", null);
    }

    private void j(int i10) {
        if (this.f25637u != null) {
            return;
        }
        throw e3.a("Element " + i10 + " must be in a TrackEntry", null);
    }

    private void k() {
        y4.a.h(this.f25618b0);
    }

    private z m(s sVar, s sVar2) {
        int i10;
        if (this.f25633q != -1 && this.f25636t != -9223372036854775807L && sVar != null && sVar.c() != 0 && sVar2 != null && sVar2.c() == sVar.c()) {
            int c10 = sVar.c();
            int[] iArr = new int[c10];
            long[] jArr = new long[c10];
            long[] jArr2 = new long[c10];
            long[] jArr3 = new long[c10];
            int i11 = 0;
            for (int i12 = 0; i12 < c10; i12++) {
                jArr3[i12] = sVar.b(i12);
                jArr[i12] = this.f25633q + sVar2.b(i12);
            }
            while (true) {
                i10 = c10 - 1;
                if (i11 >= i10) {
                    break;
                }
                int i13 = i11 + 1;
                iArr[i11] = (int) (jArr[i13] - jArr[i11]);
                jArr2[i11] = jArr3[i13] - jArr3[i11];
                i11 = i13;
            }
            iArr[i10] = (int) ((this.f25633q + this.f25632p) - jArr[i10]);
            long j10 = this.f25636t - jArr3[i10];
            jArr2[i10] = j10;
            if (j10 <= 0) {
                r.i("MatroskaExtractor", "Discarding last cue point with unexpected duration: " + j10);
                iArr = Arrays.copyOf(iArr, i10);
                jArr = Arrays.copyOf(jArr, i10);
                jArr2 = Arrays.copyOf(jArr2, i10);
                jArr3 = Arrays.copyOf(jArr3, i10);
            }
            return new g3.c(iArr, jArr, jArr2, jArr3);
        }
        return new z.b(this.f25636t);
    }

    private void n(c cVar, long j10, int i10, int i11, int i12) {
        c0 c0Var = cVar.T;
        if (c0Var != null) {
            c0Var.c(cVar.X, j10, i10, i11, i12, cVar.f25653j);
        } else {
            if ("S_TEXT/UTF8".equals(cVar.f25645b) || "S_TEXT/ASS".equals(cVar.f25645b) || "S_TEXT/WEBVTT".equals(cVar.f25645b)) {
                if (this.K > 1) {
                    r.i("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j11 = this.I;
                    if (j11 == -9223372036854775807L) {
                        r.i("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        F(cVar.f25645b, j11, this.f25627k.e());
                        int f10 = this.f25627k.f();
                        while (true) {
                            if (f10 >= this.f25627k.g()) {
                                break;
                            } else if (this.f25627k.e()[f10] == 0) {
                                this.f25627k.S(f10);
                                break;
                            } else {
                                f10++;
                            }
                        }
                        b0 b0Var = cVar.X;
                        e0 e0Var = this.f25627k;
                        b0Var.b(e0Var, e0Var.g());
                        i11 += this.f25627k.g();
                    }
                }
            }
            if ((268435456 & i10) != 0) {
                if (this.K > 1) {
                    this.f25630n.P(0);
                } else {
                    int g10 = this.f25630n.g();
                    cVar.X.a(this.f25630n, g10, 2);
                    i11 += g10;
                }
            }
            cVar.X.f(j10, i10, i11, i12, cVar.f25653j);
        }
        this.F = true;
    }

    private static int[] p(int[] iArr, int i10) {
        if (iArr == null) {
            return new int[i10];
        }
        if (iArr.length >= i10) {
            return iArr;
        }
        return new int[Math.max(iArr.length * 2, i10)];
    }

    private int q() {
        int i10 = this.T;
        D();
        return i10;
    }

    private static byte[] s(long j10, String str, long j11) {
        boolean z10;
        if (j10 != -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        int i10 = (int) (j10 / 3600000000L);
        long j12 = j10 - ((i10 * 3600) * 1000000);
        int i11 = (int) (j12 / 60000000);
        long j13 = j12 - ((i11 * 60) * 1000000);
        int i12 = (int) (j13 / 1000000);
        return q0.l0(String.format(Locale.US, str, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf((int) ((j13 - (i12 * 1000000)) / j11))));
    }

    private static boolean y(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2095576542:
                if (str.equals("V_MPEG4/ISO/AP")) {
                    c10 = 0;
                    break;
                }
                break;
            case -2095575984:
                if (str.equals("V_MPEG4/ISO/SP")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1985379776:
                if (str.equals("A_MS/ACM")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1784763192:
                if (str.equals("A_TRUEHD")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1730367663:
                if (str.equals("A_VORBIS")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1482641358:
                if (str.equals("A_MPEG/L2")) {
                    c10 = 5;
                    break;
                }
                break;
            case -1482641357:
                if (str.equals("A_MPEG/L3")) {
                    c10 = 6;
                    break;
                }
                break;
            case -1373388978:
                if (str.equals("V_MS/VFW/FOURCC")) {
                    c10 = 7;
                    break;
                }
                break;
            case -933872740:
                if (str.equals("S_DVBSUB")) {
                    c10 = '\b';
                    break;
                }
                break;
            case -538363189:
                if (str.equals("V_MPEG4/ISO/ASP")) {
                    c10 = '\t';
                    break;
                }
                break;
            case -538363109:
                if (str.equals("V_MPEG4/ISO/AVC")) {
                    c10 = '\n';
                    break;
                }
                break;
            case -425012669:
                if (str.equals("S_VOBSUB")) {
                    c10 = 11;
                    break;
                }
                break;
            case -356037306:
                if (str.equals("A_DTS/LOSSLESS")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 62923557:
                if (str.equals("A_AAC")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 62923603:
                if (str.equals("A_AC3")) {
                    c10 = 14;
                    break;
                }
                break;
            case 62927045:
                if (str.equals("A_DTS")) {
                    c10 = 15;
                    break;
                }
                break;
            case 82318131:
                if (str.equals("V_AV1")) {
                    c10 = 16;
                    break;
                }
                break;
            case 82338133:
                if (str.equals("V_VP8")) {
                    c10 = 17;
                    break;
                }
                break;
            case 82338134:
                if (str.equals("V_VP9")) {
                    c10 = 18;
                    break;
                }
                break;
            case 99146302:
                if (str.equals("S_HDMV/PGS")) {
                    c10 = 19;
                    break;
                }
                break;
            case 444813526:
                if (str.equals("V_THEORA")) {
                    c10 = 20;
                    break;
                }
                break;
            case 542569478:
                if (str.equals("A_DTS/EXPRESS")) {
                    c10 = 21;
                    break;
                }
                break;
            case 635596514:
                if (str.equals("A_PCM/FLOAT/IEEE")) {
                    c10 = 22;
                    break;
                }
                break;
            case 725948237:
                if (str.equals("A_PCM/INT/BIG")) {
                    c10 = 23;
                    break;
                }
                break;
            case 725957860:
                if (str.equals("A_PCM/INT/LIT")) {
                    c10 = 24;
                    break;
                }
                break;
            case 738597099:
                if (str.equals("S_TEXT/ASS")) {
                    c10 = 25;
                    break;
                }
                break;
            case 855502857:
                if (str.equals("V_MPEGH/ISO/HEVC")) {
                    c10 = 26;
                    break;
                }
                break;
            case 1045209816:
                if (str.equals("S_TEXT/WEBVTT")) {
                    c10 = 27;
                    break;
                }
                break;
            case 1422270023:
                if (str.equals("S_TEXT/UTF8")) {
                    c10 = 28;
                    break;
                }
                break;
            case 1809237540:
                if (str.equals("V_MPEG2")) {
                    c10 = 29;
                    break;
                }
                break;
            case 1950749482:
                if (str.equals("A_EAC3")) {
                    c10 = 30;
                    break;
                }
                break;
            case 1950789798:
                if (str.equals("A_FLAC")) {
                    c10 = 31;
                    break;
                }
                break;
            case 1951062397:
                if (str.equals("A_OPUS")) {
                    c10 = ' ';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case C1415p9.C /* 19 */:
            case 20:
            case 21:
            case Build.API_LEVELS.API_22 /* 22 */:
            case Build.API_LEVELS.API_23 /* 23 */:
            case Build.API_LEVELS.API_24 /* 24 */:
            case 25:
            case 26:
            case 27:
            case Build.API_LEVELS.API_28 /* 28 */:
            case 29:
            case Build.API_LEVELS.API_30 /* 30 */:
            case Build.API_LEVELS.API_31 /* 31 */:
            case Build.API_LEVELS.API_32 /* 32 */:
                return true;
            default:
                return false;
        }
    }

    protected void G(int i10, long j10, long j11) {
        k();
        if (i10 != 160) {
            if (i10 != 174) {
                if (i10 != 187) {
                    if (i10 != 19899) {
                        if (i10 != 20533) {
                            if (i10 != 21968) {
                                if (i10 != 408125543) {
                                    if (i10 != 475249515) {
                                        if (i10 == 524531317 && !this.f25638v) {
                                            if (this.f25620d && this.f25642z != -1) {
                                                this.f25641y = true;
                                                return;
                                            }
                                            this.f25618b0.l(new z.b(this.f25636t));
                                            this.f25638v = true;
                                            return;
                                        }
                                        return;
                                    }
                                    this.C = new s();
                                    this.D = new s();
                                    return;
                                }
                                long j12 = this.f25633q;
                                if (j12 != -1 && j12 != j10) {
                                    throw e3.a("Multiple Segment elements not supported", null);
                                }
                                this.f25633q = j10;
                                this.f25632p = j11;
                                return;
                            }
                            t(i10).f25667x = true;
                            return;
                        }
                        t(i10).f25651h = true;
                        return;
                    }
                    this.f25639w = -1;
                    this.f25640x = -1L;
                    return;
                }
                this.E = false;
                return;
            }
            this.f25637u = new c();
            return;
        }
        this.Q = false;
        this.R = 0L;
    }

    protected void H(int i10, String str) {
        if (i10 != 134) {
            if (i10 != 17026) {
                if (i10 != 21358) {
                    if (i10 == 2274716) {
                        t(i10).W = str;
                        return;
                    }
                    return;
                }
                t(i10).f25644a = str;
                return;
            } else if (!"webm".equals(str) && !"matroska".equals(str)) {
                throw e3.a("DocType " + str + " not supported", null);
            } else {
                return;
            }
        }
        t(i10).f25645b = str;
    }

    @Override // g3.k
    public void b(long j10, long j11) {
        this.B = -9223372036854775807L;
        this.G = 0;
        this.f25615a.a();
        this.f25617b.e();
        D();
        for (int i10 = 0; i10 < this.f25619c.size(); i10++) {
            ((c) this.f25619c.valueAt(i10)).n();
        }
    }

    @Override // g3.k
    public final void c(m mVar) {
        this.f25618b0 = mVar;
    }

    @Override // g3.k
    public final boolean f(l lVar) {
        return new f().b(lVar);
    }

    @Override // g3.k
    public final int g(l lVar, y yVar) {
        this.F = false;
        boolean z10 = true;
        while (z10 && !this.F) {
            z10 = this.f25615a.b(lVar);
            if (z10 && B(yVar, lVar.c())) {
                return 1;
            }
        }
        if (z10) {
            return 0;
        }
        for (int i10 = 0; i10 < this.f25619c.size(); i10++) {
            c cVar = (c) this.f25619c.valueAt(i10);
            cVar.f();
            cVar.j();
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x0237, code lost:
        throw b3.e3.a("EBML lacing sample size out of range.", null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void l(int r23, int r24, g3.l r25) {
        /*
            Method dump skipped, instructions count: 756
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: m3.e.l(int, int, g3.l):void");
    }

    protected void o(int i10) {
        k();
        if (i10 != 160) {
            if (i10 != 174) {
                if (i10 != 19899) {
                    if (i10 != 25152) {
                        if (i10 != 28032) {
                            if (i10 != 357149030) {
                                if (i10 != 374648427) {
                                    if (i10 == 475249515) {
                                        if (!this.f25638v) {
                                            this.f25618b0.l(m(this.C, this.D));
                                            this.f25638v = true;
                                        }
                                        this.C = null;
                                        this.D = null;
                                        return;
                                    }
                                    return;
                                } else if (this.f25619c.size() != 0) {
                                    this.f25618b0.n();
                                    return;
                                } else {
                                    throw e3.a("No valid tracks were found", null);
                                }
                            }
                            if (this.f25634r == -9223372036854775807L) {
                                this.f25634r = 1000000L;
                            }
                            long j10 = this.f25635s;
                            if (j10 != -9223372036854775807L) {
                                this.f25636t = E(j10);
                                return;
                            }
                            return;
                        }
                        j(i10);
                        c cVar = this.f25637u;
                        if (cVar.f25651h && cVar.f25652i != null) {
                            throw e3.a("Combining encryption and compression is not supported", null);
                        }
                        return;
                    }
                    j(i10);
                    c cVar2 = this.f25637u;
                    if (cVar2.f25651h) {
                        if (cVar2.f25653j != null) {
                            cVar2.f25655l = new f3.m(new m.b(b3.s.f4351a, "video/webm", this.f25637u.f25653j.f16146b));
                            return;
                        }
                        throw e3.a("Encrypted Track found but ContentEncKeyID was not found", null);
                    }
                    return;
                }
                int i11 = this.f25639w;
                if (i11 != -1) {
                    long j11 = this.f25640x;
                    if (j11 != -1) {
                        if (i11 == 475249515) {
                            this.f25642z = j11;
                            return;
                        }
                        return;
                    }
                }
                throw e3.a("Mandatory element SeekID or SeekPosition not found", null);
            }
            c cVar3 = (c) y4.a.h(this.f25637u);
            String str = cVar3.f25645b;
            if (str != null) {
                if (y(str)) {
                    cVar3.i(this.f25618b0, cVar3.f25646c);
                    this.f25619c.put(cVar3.f25646c, cVar3);
                }
                this.f25637u = null;
                return;
            }
            throw e3.a("CodecId is missing in TrackEntry element", null);
        } else if (this.G == 2) {
            c cVar4 = (c) this.f25619c.get(this.M);
            cVar4.f();
            if (this.R > 0 && "A_OPUS".equals(cVar4.f25645b)) {
                this.f25630n.Q(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.R).array());
            }
            int i12 = 0;
            for (int i13 = 0; i13 < this.K; i13++) {
                i12 += this.L[i13];
            }
            int i14 = 0;
            while (i14 < this.K) {
                long j12 = this.H + ((cVar4.f25648e * i14) / 1000);
                int i15 = this.O;
                if (i14 == 0 && !this.Q) {
                    i15 |= 1;
                }
                int i16 = this.L[i14];
                int i17 = i12 - i16;
                n(cVar4, j12, i15, i16, i17);
                i14++;
                i12 = i17;
            }
            this.G = 0;
        }
    }

    protected void r(int i10, double d10) {
        if (i10 != 181) {
            if (i10 != 17545) {
                switch (i10) {
                    case 21969:
                        t(i10).D = (float) d10;
                        return;
                    case 21970:
                        t(i10).E = (float) d10;
                        return;
                    case 21971:
                        t(i10).F = (float) d10;
                        return;
                    case 21972:
                        t(i10).G = (float) d10;
                        return;
                    case 21973:
                        t(i10).H = (float) d10;
                        return;
                    case 21974:
                        t(i10).I = (float) d10;
                        return;
                    case 21975:
                        t(i10).J = (float) d10;
                        return;
                    case 21976:
                        t(i10).K = (float) d10;
                        return;
                    case 21977:
                        t(i10).L = (float) d10;
                        return;
                    case 21978:
                        t(i10).M = (float) d10;
                        return;
                    default:
                        switch (i10) {
                            case 30323:
                                t(i10).f25662s = (float) d10;
                                return;
                            case 30324:
                                t(i10).f25663t = (float) d10;
                                return;
                            case 30325:
                                t(i10).f25664u = (float) d10;
                                return;
                            default:
                                return;
                        }
                }
            }
            this.f25635s = (long) d10;
            return;
        }
        t(i10).Q = (int) d10;
    }

    @Override // g3.k
    public final void release() {
    }

    protected c t(int i10) {
        j(i10);
        return this.f25637u;
    }

    protected int u(int i10) {
        switch (i10) {
            case 131:
            case 136:
            case ModuleDescriptor.MODULE_VERSION /* 155 */:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 238:
            case 241:
            case 251:
            case 16871:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30114:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 21358:
            case 2274716:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 16868:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30113:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 165:
            case 16877:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
            case 30323:
            case 30324:
            case 30325:
                return 5;
            default:
                return 0;
        }
    }

    protected void v(c cVar, l lVar, int i10) {
        if (cVar.f25650g != 1685485123 && cVar.f25650g != 1685480259) {
            lVar.m(i10);
            return;
        }
        byte[] bArr = new byte[i10];
        cVar.N = bArr;
        lVar.readFully(bArr, 0, i10);
    }

    protected void w(c cVar, int i10, l lVar, int i11) {
        if (i10 == 4 && "V_VP9".equals(cVar.f25645b)) {
            this.f25630n.P(i11);
            lVar.readFully(this.f25630n.e(), 0, i11);
            return;
        }
        lVar.m(i11);
    }

    protected void x(int i10, long j10) {
        if (i10 != 20529) {
            if (i10 != 20530) {
                boolean z10 = false;
                switch (i10) {
                    case 131:
                        t(i10).f25647d = (int) j10;
                        return;
                    case 136:
                        c t10 = t(i10);
                        if (j10 == 1) {
                            z10 = true;
                        }
                        t10.V = z10;
                        return;
                    case ModuleDescriptor.MODULE_VERSION /* 155 */:
                        this.I = E(j10);
                        return;
                    case 159:
                        t(i10).O = (int) j10;
                        return;
                    case 176:
                        t(i10).f25656m = (int) j10;
                        return;
                    case 179:
                        i(i10);
                        this.C.a(E(j10));
                        return;
                    case 186:
                        t(i10).f25657n = (int) j10;
                        return;
                    case 215:
                        t(i10).f25646c = (int) j10;
                        return;
                    case 231:
                        this.B = E(j10);
                        return;
                    case 238:
                        this.P = (int) j10;
                        return;
                    case 241:
                        if (!this.E) {
                            i(i10);
                            this.D.a(j10);
                            this.E = true;
                            return;
                        }
                        return;
                    case 251:
                        this.Q = true;
                        return;
                    case 16871:
                        t(i10).f25650g = (int) j10;
                        return;
                    case 16980:
                        if (j10 != 3) {
                            throw e3.a("ContentCompAlgo " + j10 + " not supported", null);
                        }
                        return;
                    case 17029:
                        if (j10 < 1 || j10 > 2) {
                            throw e3.a("DocTypeReadVersion " + j10 + " not supported", null);
                        }
                        return;
                    case 17143:
                        if (j10 != 1) {
                            throw e3.a("EBMLReadVersion " + j10 + " not supported", null);
                        }
                        return;
                    case 18401:
                        if (j10 != 5) {
                            throw e3.a("ContentEncAlgo " + j10 + " not supported", null);
                        }
                        return;
                    case 18408:
                        if (j10 != 1) {
                            throw e3.a("AESSettingsCipherMode " + j10 + " not supported", null);
                        }
                        return;
                    case 21420:
                        this.f25640x = j10 + this.f25633q;
                        return;
                    case 21432:
                        int i11 = (int) j10;
                        j(i10);
                        if (i11 != 0) {
                            if (i11 != 1) {
                                if (i11 != 3) {
                                    if (i11 == 15) {
                                        this.f25637u.f25666w = 3;
                                        return;
                                    }
                                    return;
                                }
                                this.f25637u.f25666w = 1;
                                return;
                            }
                            this.f25637u.f25666w = 2;
                            return;
                        }
                        this.f25637u.f25666w = 0;
                        return;
                    case 21680:
                        t(i10).f25658o = (int) j10;
                        return;
                    case 21682:
                        t(i10).f25660q = (int) j10;
                        return;
                    case 21690:
                        t(i10).f25659p = (int) j10;
                        return;
                    case 21930:
                        c t11 = t(i10);
                        if (j10 == 1) {
                            z10 = true;
                        }
                        t11.U = z10;
                        return;
                    case 21998:
                        t(i10).f25649f = (int) j10;
                        return;
                    case 22186:
                        t(i10).R = j10;
                        return;
                    case 22203:
                        t(i10).S = j10;
                        return;
                    case 25188:
                        t(i10).P = (int) j10;
                        return;
                    case 30114:
                        this.R = j10;
                        return;
                    case 30321:
                        j(i10);
                        int i12 = (int) j10;
                        if (i12 != 0) {
                            if (i12 != 1) {
                                if (i12 != 2) {
                                    if (i12 == 3) {
                                        this.f25637u.f25661r = 3;
                                        return;
                                    }
                                    return;
                                }
                                this.f25637u.f25661r = 2;
                                return;
                            }
                            this.f25637u.f25661r = 1;
                            return;
                        }
                        this.f25637u.f25661r = 0;
                        return;
                    case 2352003:
                        t(i10).f25648e = (int) j10;
                        return;
                    case 2807729:
                        this.f25634r = j10;
                        return;
                    default:
                        switch (i10) {
                            case 21945:
                                j(i10);
                                int i13 = (int) j10;
                                if (i13 != 1) {
                                    if (i13 == 2) {
                                        this.f25637u.A = 1;
                                        return;
                                    }
                                    return;
                                }
                                this.f25637u.A = 2;
                                return;
                            case 21946:
                                j(i10);
                                int c10 = z4.c.c((int) j10);
                                if (c10 != -1) {
                                    this.f25637u.f25669z = c10;
                                    return;
                                }
                                return;
                            case 21947:
                                j(i10);
                                this.f25637u.f25667x = true;
                                int b10 = z4.c.b((int) j10);
                                if (b10 != -1) {
                                    this.f25637u.f25668y = b10;
                                    return;
                                }
                                return;
                            case 21948:
                                t(i10).B = (int) j10;
                                return;
                            case 21949:
                                t(i10).C = (int) j10;
                                return;
                            default:
                                return;
                        }
                }
            } else if (j10 != 1) {
                throw e3.a("ContentEncodingScope " + j10 + " not supported", null);
            }
        } else if (j10 == 0) {
        } else {
            throw e3.a("ContentEncodingOrder " + j10 + " not supported", null);
        }
    }

    protected boolean z(int i10) {
        return i10 == 357149030 || i10 == 524531317 || i10 == 475249515 || i10 == 374648427;
    }

    public e(int i10) {
        this(new m3.a(), i10);
    }

    e(m3.c cVar, int i10) {
        this.f25633q = -1L;
        this.f25634r = -9223372036854775807L;
        this.f25635s = -9223372036854775807L;
        this.f25636t = -9223372036854775807L;
        this.f25642z = -1L;
        this.A = -1L;
        this.B = -9223372036854775807L;
        this.f25615a = cVar;
        cVar.c(new b());
        this.f25620d = (i10 & 1) == 0;
        this.f25617b = new g();
        this.f25619c = new SparseArray();
        this.f25623g = new e0(4);
        this.f25624h = new e0(ByteBuffer.allocate(4).putInt(-1).array());
        this.f25625i = new e0(4);
        this.f25621e = new e0(w.f32972a);
        this.f25622f = new e0(4);
        this.f25626j = new e0();
        this.f25627k = new e0();
        this.f25628l = new e0(8);
        this.f25629m = new e0();
        this.f25630n = new e0();
        this.L = new int[1];
    }
}
