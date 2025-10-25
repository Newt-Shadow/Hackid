package z4;

import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Display;
import android.view.Surface;
import b3.u3;
import b3.x1;
import b3.y1;
import com.arthenica.ffmpegkit.StreamInformation;
import io.flutter.plugin.platform.PlatformPlugin;
import java.nio.ByteBuffer;
import java.util.List;
import org.apache.tika.mime.MimeTypesReaderMetKeys;
import org.apache.tika.pipes.PipesConfigBase;
import s3.f0;
import s3.l;
import y4.n0;
import y4.q0;
import z4.y;
/* loaded from: classes.dex */
public class i extends s3.u {
    private static final int[] C1 = {1920, 1600, 1440, PlatformPlugin.DEFAULT_SYSTEM_UI, 960, 854, 640, 540, 480};
    private static boolean D1;
    private static boolean E1;
    c A1;
    private k B1;
    private final Context S0;
    private final n T0;
    private final y.a U0;
    private final long V0;
    private final int W0;
    private final boolean X0;
    private b Y0;
    private boolean Z0;

    /* renamed from: a1  reason: collision with root package name */
    private boolean f33447a1;

    /* renamed from: b1  reason: collision with root package name */
    private Surface f33448b1;

    /* renamed from: c1  reason: collision with root package name */
    private j f33449c1;

    /* renamed from: d1  reason: collision with root package name */
    private boolean f33450d1;

    /* renamed from: e1  reason: collision with root package name */
    private int f33451e1;

    /* renamed from: f1  reason: collision with root package name */
    private boolean f33452f1;

    /* renamed from: g1  reason: collision with root package name */
    private boolean f33453g1;

    /* renamed from: h1  reason: collision with root package name */
    private boolean f33454h1;

    /* renamed from: i1  reason: collision with root package name */
    private long f33455i1;

    /* renamed from: j1  reason: collision with root package name */
    private long f33456j1;

    /* renamed from: k1  reason: collision with root package name */
    private long f33457k1;

    /* renamed from: l1  reason: collision with root package name */
    private int f33458l1;

    /* renamed from: m1  reason: collision with root package name */
    private int f33459m1;

    /* renamed from: n1  reason: collision with root package name */
    private int f33460n1;

    /* renamed from: o1  reason: collision with root package name */
    private long f33461o1;

    /* renamed from: p1  reason: collision with root package name */
    private long f33462p1;

    /* renamed from: q1  reason: collision with root package name */
    private long f33463q1;

    /* renamed from: r1  reason: collision with root package name */
    private int f33464r1;

    /* renamed from: s1  reason: collision with root package name */
    private long f33465s1;

    /* renamed from: t1  reason: collision with root package name */
    private int f33466t1;

    /* renamed from: u1  reason: collision with root package name */
    private int f33467u1;

    /* renamed from: v1  reason: collision with root package name */
    private int f33468v1;

    /* renamed from: w1  reason: collision with root package name */
    private float f33469w1;

    /* renamed from: x1  reason: collision with root package name */
    private a0 f33470x1;

    /* renamed from: y1  reason: collision with root package name */
    private boolean f33471y1;

    /* renamed from: z1  reason: collision with root package name */
    private int f33472z1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {
        public static boolean a(Context context) {
            Display display;
            boolean isHdr;
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager != null) {
                display = displayManager.getDisplay(0);
            } else {
                display = null;
            }
            if (display != null) {
                isHdr = display.isHdr();
                if (!isHdr) {
                    return false;
                }
                for (int i10 : display.getHdrCapabilities().getSupportedHdrTypes()) {
                    if (i10 == 1) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f33473a;

        /* renamed from: b  reason: collision with root package name */
        public final int f33474b;

        /* renamed from: c  reason: collision with root package name */
        public final int f33475c;

        public b(int i10, int i11, int i12) {
            this.f33473a = i10;
            this.f33474b = i11;
            this.f33475c = i12;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class c implements l.c, Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f33476a;

        public c(s3.l lVar) {
            Handler x10 = q0.x(this);
            this.f33476a = x10;
            lVar.h(this, x10);
        }

        private void b(long j10) {
            i iVar = i.this;
            if (this == iVar.A1 && iVar.w0() != null) {
                if (j10 == Long.MAX_VALUE) {
                    i.this.a2();
                    return;
                }
                try {
                    i.this.Z1(j10);
                } catch (b3.a0 e10) {
                    i.this.n1(e10);
                }
            }
        }

        @Override // s3.l.c
        public void a(s3.l lVar, long j10, long j11) {
            if (q0.f32946a < 30) {
                this.f33476a.sendMessageAtFrontOfQueue(Message.obtain(this.f33476a, 0, (int) (j10 >> 32), (int) j10));
                return;
            }
            b(j10);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            b(q0.U0(message.arg1, message.arg2));
            return true;
        }
    }

    public i(Context context, l.b bVar, s3.w wVar, long j10, boolean z10, Handler handler, y yVar, int i10) {
        this(context, bVar, wVar, j10, z10, handler, yVar, i10, 30.0f);
    }

    private void B1() {
        s3.l w02;
        this.f33452f1 = false;
        if (q0.f32946a >= 23 && this.f33471y1 && (w02 = w0()) != null) {
            this.A1 = new c(w02);
        }
    }

    private void C1() {
        this.f33470x1 = null;
    }

    private static void E1(MediaFormat mediaFormat, int i10) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i10);
    }

    private static boolean F1() {
        return "NVIDIA".equals(q0.f32948c);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:621:0x0844, code lost:
        if (r0.equals("PGN528") == false) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean H1() {
        /*
            Method dump skipped, instructions count: 3182
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: z4.i.H1():boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007a, code lost:
        if (r3.equals("video/av01") == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int I1(s3.s r9, b3.x1 r10) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: z4.i.I1(s3.s, b3.x1):int");
    }

    private static Point J1(s3.s sVar, x1 x1Var) {
        boolean z10;
        int i10;
        int[] iArr;
        int i11;
        int i12;
        int i13 = x1Var.f4520r;
        int i14 = x1Var.f4519q;
        if (i13 > i14) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            i10 = i13;
        } else {
            i10 = i14;
        }
        if (z10) {
            i13 = i14;
        }
        float f10 = i13 / i10;
        for (int i15 : C1) {
            int i16 = (int) (i15 * f10);
            if (i15 <= i10 || i16 <= i13) {
                break;
            }
            if (q0.f32946a >= 21) {
                if (z10) {
                    i12 = i16;
                } else {
                    i12 = i15;
                }
                if (!z10) {
                    i15 = i16;
                }
                Point c10 = sVar.c(i12, i15);
                if (sVar.w(c10.x, c10.y, x1Var.f4521s)) {
                    return c10;
                }
            } else {
                try {
                    int l10 = q0.l(i15, 16) * 16;
                    int l11 = q0.l(i16, 16) * 16;
                    if (l10 * l11 <= f0.N()) {
                        if (z10) {
                            i11 = l11;
                        } else {
                            i11 = l10;
                        }
                        if (!z10) {
                            l10 = l11;
                        }
                        return new Point(i11, l10);
                    }
                } catch (f0.c unused) {
                }
            }
        }
        return null;
    }

    private static List L1(Context context, s3.w wVar, x1 x1Var, boolean z10, boolean z11) {
        String str = x1Var.f4514l;
        if (str == null) {
            return o6.q.D();
        }
        List a10 = wVar.a(str, z10, z11);
        String m10 = f0.m(x1Var);
        if (m10 == null) {
            return o6.q.t(a10);
        }
        List a11 = wVar.a(m10, z10, z11);
        if (q0.f32946a >= 26 && "video/dolby-vision".equals(x1Var.f4514l) && !a11.isEmpty() && !a.a(context)) {
            return o6.q.t(a11);
        }
        return o6.q.r().j(a10).j(a11).k();
    }

    protected static int M1(s3.s sVar, x1 x1Var) {
        if (x1Var.f4515m != -1) {
            int size = x1Var.f4516n.size();
            int i10 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                i10 += ((byte[]) x1Var.f4516n.get(i11)).length;
            }
            return x1Var.f4515m + i10;
        }
        return I1(sVar, x1Var);
    }

    private static int N1(int i10, int i11) {
        return (i10 * 3) / (i11 * 2);
    }

    private static boolean P1(long j10) {
        return j10 < -30000;
    }

    private static boolean Q1(long j10) {
        return j10 < -500000;
    }

    private void S1() {
        if (this.f33458l1 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.U0.n(this.f33458l1, elapsedRealtime - this.f33457k1);
            this.f33458l1 = 0;
            this.f33457k1 = elapsedRealtime;
        }
    }

    private void U1() {
        int i10 = this.f33464r1;
        if (i10 != 0) {
            this.U0.B(this.f33463q1, i10);
            this.f33463q1 = 0L;
            this.f33464r1 = 0;
        }
    }

    private void V1() {
        int i10 = this.f33466t1;
        if (i10 != -1 || this.f33467u1 != -1) {
            a0 a0Var = this.f33470x1;
            if (a0Var == null || a0Var.f33404a != i10 || a0Var.f33405b != this.f33467u1 || a0Var.f33406c != this.f33468v1 || a0Var.f33407d != this.f33469w1) {
                a0 a0Var2 = new a0(this.f33466t1, this.f33467u1, this.f33468v1, this.f33469w1);
                this.f33470x1 = a0Var2;
                this.U0.D(a0Var2);
            }
        }
    }

    private void W1() {
        if (this.f33450d1) {
            this.U0.A(this.f33448b1);
        }
    }

    private void X1() {
        a0 a0Var = this.f33470x1;
        if (a0Var != null) {
            this.U0.D(a0Var);
        }
    }

    private void Y1(long j10, long j11, x1 x1Var) {
        k kVar = this.B1;
        if (kVar != null) {
            kVar.g(j10, j11, x1Var, A0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a2() {
        m1();
    }

    private void b2() {
        Surface surface = this.f33448b1;
        j jVar = this.f33449c1;
        if (surface == jVar) {
            this.f33448b1 = null;
        }
        jVar.release();
        this.f33449c1 = null;
    }

    private static void e2(s3.l lVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        lVar.c(bundle);
    }

    private void f2() {
        long j10;
        if (this.V0 > 0) {
            j10 = SystemClock.elapsedRealtime() + this.V0;
        } else {
            j10 = -9223372036854775807L;
        }
        this.f33456j1 = j10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [s3.u, z4.i, b3.o] */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.view.Surface] */
    private void g2(Object obj) {
        j jVar;
        if (obj instanceof Surface) {
            jVar = (Surface) obj;
        } else {
            jVar = null;
        }
        if (jVar == null) {
            j jVar2 = this.f33449c1;
            if (jVar2 != null) {
                jVar = jVar2;
            } else {
                s3.s x02 = x0();
                if (x02 != null && l2(x02)) {
                    jVar = j.c(this.S0, x02.f29363g);
                    this.f33449c1 = jVar;
                }
            }
        }
        if (this.f33448b1 != jVar) {
            this.f33448b1 = jVar;
            this.T0.m(jVar);
            this.f33450d1 = false;
            int state = getState();
            s3.l w02 = w0();
            if (w02 != null) {
                if (q0.f32946a >= 23 && jVar != null && !this.Z0) {
                    h2(w02, jVar);
                } else {
                    e1();
                    O0();
                }
            }
            if (jVar != null && jVar != this.f33449c1) {
                X1();
                B1();
                if (state == 2) {
                    f2();
                    return;
                }
                return;
            }
            C1();
            B1();
        } else if (jVar != null && jVar != this.f33449c1) {
            X1();
            W1();
        }
    }

    private boolean l2(s3.s sVar) {
        if (q0.f32946a >= 23 && !this.f33471y1 && !D1(sVar.f29357a) && (!sVar.f29363g || j.b(this.S0))) {
            return true;
        }
        return false;
    }

    @Override // s3.u
    protected List B0(s3.w wVar, x1 x1Var, boolean z10) {
        return f0.u(L1(this.S0, wVar, x1Var, z10, this.f33471y1), x1Var);
    }

    @Override // s3.u
    protected l.a D0(s3.s sVar, x1 x1Var, MediaCrypto mediaCrypto, float f10) {
        int i10;
        j jVar = this.f33449c1;
        if (jVar != null && jVar.f33480a != sVar.f29363g) {
            b2();
        }
        String str = sVar.f29359c;
        b K1 = K1(sVar, x1Var, M());
        this.Y0 = K1;
        boolean z10 = this.X0;
        if (this.f33471y1) {
            i10 = this.f33472z1;
        } else {
            i10 = 0;
        }
        MediaFormat O1 = O1(x1Var, str, K1, f10, z10, i10);
        if (this.f33448b1 == null) {
            if (l2(sVar)) {
                if (this.f33449c1 == null) {
                    this.f33449c1 = j.c(this.S0, sVar.f29363g);
                }
                this.f33448b1 = this.f33449c1;
            } else {
                throw new IllegalStateException();
            }
        }
        return l.a.b(sVar, O1, x1Var, this.f33448b1, mediaCrypto);
    }

    protected boolean D1(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (i.class) {
            if (!D1) {
                E1 = H1();
                D1 = true;
            }
        }
        return E1;
    }

    @Override // s3.u
    protected void G0(e3.g gVar) {
        if (!this.f33447a1) {
            return;
        }
        ByteBuffer byteBuffer = (ByteBuffer) y4.a.e(gVar.f15292f);
        if (byteBuffer.remaining() >= 7) {
            byte b10 = byteBuffer.get();
            short s10 = byteBuffer.getShort();
            short s11 = byteBuffer.getShort();
            byte b11 = byteBuffer.get();
            byte b12 = byteBuffer.get();
            byteBuffer.position(0);
            if (b10 == -75 && s10 == 60 && s11 == 1 && b11 == 4) {
                if (b12 == 0 || b12 == 1) {
                    byte[] bArr = new byte[byteBuffer.remaining()];
                    byteBuffer.get(bArr);
                    byteBuffer.position(0);
                    e2(w0(), bArr);
                }
            }
        }
    }

    protected void G1(s3.l lVar, int i10, long j10) {
        n0.a("dropVideoBuffer");
        lVar.g(i10, false);
        n0.c();
        n2(0, 1);
    }

    protected b K1(s3.s sVar, x1 x1Var, x1[] x1VarArr) {
        boolean z10;
        int I1;
        int i10 = x1Var.f4519q;
        int i11 = x1Var.f4520r;
        int M1 = M1(sVar, x1Var);
        if (x1VarArr.length == 1) {
            if (M1 != -1 && (I1 = I1(sVar, x1Var)) != -1) {
                M1 = Math.min((int) (M1 * 1.5f), I1);
            }
            return new b(i10, i11, M1);
        }
        int length = x1VarArr.length;
        boolean z11 = false;
        for (int i12 = 0; i12 < length; i12++) {
            x1 x1Var2 = x1VarArr[i12];
            if (x1Var.f4526x != null && x1Var2.f4526x == null) {
                x1Var2 = x1Var2.b().L(x1Var.f4526x).G();
            }
            if (sVar.f(x1Var, x1Var2).f15302d != 0) {
                int i13 = x1Var2.f4519q;
                if (i13 != -1 && x1Var2.f4520r != -1) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                z11 |= z10;
                i10 = Math.max(i10, i13);
                i11 = Math.max(i11, x1Var2.f4520r);
                M1 = Math.max(M1, M1(sVar, x1Var2));
            }
        }
        if (z11) {
            y4.r.i("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + i10 + "x" + i11);
            Point J1 = J1(sVar, x1Var);
            if (J1 != null) {
                i10 = Math.max(i10, J1.x);
                i11 = Math.max(i11, J1.y);
                M1 = Math.max(M1, I1(sVar, x1Var.b().n0(i10).S(i11).G()));
                y4.r.i("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + i10 + "x" + i11);
            }
        }
        return new b(i10, i11, M1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // s3.u, b3.o
    public void O() {
        C1();
        B1();
        this.f33450d1 = false;
        this.A1 = null;
        try {
            super.O();
        } finally {
            this.U0.m(this.N0);
        }
    }

    protected MediaFormat O1(x1 x1Var, String str, b bVar, float f10, boolean z10, int i10) {
        Pair q10;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger(StreamInformation.KEY_WIDTH, x1Var.f4519q);
        mediaFormat.setInteger(StreamInformation.KEY_HEIGHT, x1Var.f4520r);
        y4.u.e(mediaFormat, x1Var.f4516n);
        y4.u.c(mediaFormat, "frame-rate", x1Var.f4521s);
        y4.u.d(mediaFormat, "rotation-degrees", x1Var.f4522t);
        y4.u.b(mediaFormat, x1Var.f4526x);
        if ("video/dolby-vision".equals(x1Var.f4514l) && (q10 = f0.q(x1Var)) != null) {
            y4.u.d(mediaFormat, "profile", ((Integer) q10.first).intValue());
        }
        mediaFormat.setInteger("max-width", bVar.f33473a);
        mediaFormat.setInteger("max-height", bVar.f33474b);
        y4.u.d(mediaFormat, "max-input-size", bVar.f33475c);
        if (q0.f32946a >= 23) {
            mediaFormat.setInteger(MimeTypesReaderMetKeys.MAGIC_PRIORITY_ATTR, 0);
            if (f10 != -1.0f) {
                mediaFormat.setFloat("operating-rate", f10);
            }
        }
        if (z10) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i10 != 0) {
            E1(mediaFormat, i10);
        }
        return mediaFormat;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // s3.u, b3.o
    public void P(boolean z10, boolean z11) {
        boolean z12;
        super.P(z10, z11);
        boolean z13 = I().f4475a;
        if (z13 && this.f33472z1 == 0) {
            z12 = false;
        } else {
            z12 = true;
        }
        y4.a.f(z12);
        if (this.f33471y1 != z13) {
            this.f33471y1 = z13;
            e1();
        }
        this.U0.o(this.N0);
        this.f33453g1 = z11;
        this.f33454h1 = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // s3.u, b3.o
    public void Q(long j10, boolean z10) {
        super.Q(j10, z10);
        B1();
        this.T0.j();
        this.f33461o1 = -9223372036854775807L;
        this.f33455i1 = -9223372036854775807L;
        this.f33459m1 = 0;
        if (z10) {
            f2();
        } else {
            this.f33456j1 = -9223372036854775807L;
        }
    }

    @Override // s3.u
    protected void Q0(Exception exc) {
        y4.r.d("MediaCodecVideoRenderer", "Video codec error", exc);
        this.U0.C(exc);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // s3.u, b3.o
    public void R() {
        try {
            super.R();
        } finally {
            if (this.f33449c1 != null) {
                b2();
            }
        }
    }

    @Override // s3.u
    protected void R0(String str, l.a aVar, long j10, long j11) {
        this.U0.k(str, j10, j11);
        this.Z0 = D1(str);
        this.f33447a1 = ((s3.s) y4.a.e(x0())).p();
        if (q0.f32946a >= 23 && this.f33471y1) {
            this.A1 = new c((s3.l) y4.a.e(w0()));
        }
    }

    protected boolean R1(long j10, boolean z10) {
        int X = X(j10);
        if (X == 0) {
            return false;
        }
        if (z10) {
            e3.e eVar = this.N0;
            eVar.f15279d += X;
            eVar.f15281f += this.f33460n1;
        } else {
            this.N0.f15285j++;
            n2(X, this.f33460n1);
        }
        t0();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // s3.u, b3.o
    public void S() {
        super.S();
        this.f33458l1 = 0;
        this.f33457k1 = SystemClock.elapsedRealtime();
        this.f33462p1 = SystemClock.elapsedRealtime() * 1000;
        this.f33463q1 = 0L;
        this.f33464r1 = 0;
        this.T0.k();
    }

    @Override // s3.u
    protected void S0(String str) {
        this.U0.l(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // s3.u, b3.o
    public void T() {
        this.f33456j1 = -9223372036854775807L;
        S1();
        U1();
        this.T0.l();
        super.T();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // s3.u
    public e3.i T0(y1 y1Var) {
        e3.i T0 = super.T0(y1Var);
        this.U0.p(y1Var.f4575b, T0);
        return T0;
    }

    void T1() {
        this.f33454h1 = true;
        if (!this.f33452f1) {
            this.f33452f1 = true;
            this.U0.A(this.f33448b1);
            this.f33450d1 = true;
        }
    }

    @Override // s3.u
    protected void U0(x1 x1Var, MediaFormat mediaFormat) {
        boolean z10;
        int integer;
        int integer2;
        s3.l w02 = w0();
        if (w02 != null) {
            w02.i(this.f33451e1);
        }
        if (this.f33471y1) {
            this.f33466t1 = x1Var.f4519q;
            this.f33467u1 = x1Var.f4520r;
        } else {
            y4.a.e(mediaFormat);
            if (mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top")) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                integer = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
            } else {
                integer = mediaFormat.getInteger(StreamInformation.KEY_WIDTH);
            }
            this.f33466t1 = integer;
            if (z10) {
                integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
            } else {
                integer2 = mediaFormat.getInteger(StreamInformation.KEY_HEIGHT);
            }
            this.f33467u1 = integer2;
        }
        float f10 = x1Var.f4523u;
        this.f33469w1 = f10;
        if (q0.f32946a >= 21) {
            int i10 = x1Var.f4522t;
            if (i10 == 90 || i10 == 270) {
                int i11 = this.f33466t1;
                this.f33466t1 = this.f33467u1;
                this.f33467u1 = i11;
                this.f33469w1 = 1.0f / f10;
            }
        } else {
            this.f33468v1 = x1Var.f4522t;
        }
        this.T0.g(x1Var.f4521s);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // s3.u
    public void W0(long j10) {
        super.W0(j10);
        if (!this.f33471y1) {
            this.f33460n1--;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // s3.u
    public void X0() {
        super.X0();
        B1();
    }

    @Override // s3.u
    protected void Y0(e3.g gVar) {
        boolean z10 = this.f33471y1;
        if (!z10) {
            this.f33460n1++;
        }
        if (q0.f32946a < 23 && z10) {
            Z1(gVar.f15291e);
        }
    }

    protected void Z1(long j10) {
        x1(j10);
        V1();
        this.N0.f15280e++;
        T1();
        W0(j10);
    }

    @Override // s3.u
    protected e3.i a0(s3.s sVar, x1 x1Var, x1 x1Var2) {
        int i10;
        e3.i f10 = sVar.f(x1Var, x1Var2);
        int i11 = f10.f15303e;
        int i12 = x1Var2.f4519q;
        b bVar = this.Y0;
        if (i12 > bVar.f33473a || x1Var2.f4520r > bVar.f33474b) {
            i11 |= 256;
        }
        if (M1(sVar, x1Var2) > this.Y0.f33475c) {
            i11 |= 64;
        }
        int i13 = i11;
        String str = sVar.f29357a;
        if (i13 != 0) {
            i10 = 0;
        } else {
            i10 = f10.f15302d;
        }
        return new e3.i(str, x1Var, x1Var2, i10, i13);
    }

    @Override // s3.u
    protected boolean a1(long j10, long j11, s3.l lVar, ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, x1 x1Var) {
        boolean z12;
        boolean z13;
        long j13;
        boolean z14;
        boolean z15;
        y4.a.e(lVar);
        if (this.f33455i1 == -9223372036854775807L) {
            this.f33455i1 = j10;
        }
        if (j12 != this.f33461o1) {
            this.T0.h(j12);
            this.f33461o1 = j12;
        }
        long E0 = E0();
        long j14 = j12 - E0;
        if (z10 && !z11) {
            m2(lVar, i10, j14);
            return true;
        }
        double F0 = F0();
        if (getState() == 2) {
            z12 = true;
        } else {
            z12 = false;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long j15 = (long) ((j12 - j10) / F0);
        if (z12) {
            j15 -= elapsedRealtime - j11;
        }
        if (this.f33448b1 == this.f33449c1) {
            if (!P1(j15)) {
                return false;
            }
            m2(lVar, i10, j14);
            o2(j15);
            return true;
        }
        long j16 = elapsedRealtime - this.f33462p1;
        if (this.f33454h1 ? !this.f33452f1 : !(!z12 && !this.f33453g1)) {
            z13 = true;
            j13 = j16;
        } else {
            j13 = j16;
            z13 = false;
        }
        if (this.f33456j1 == -9223372036854775807L && j10 >= E0 && (z13 || (z12 && k2(j15, j13)))) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (z14) {
            long nanoTime = System.nanoTime();
            Y1(j14, nanoTime, x1Var);
            if (q0.f32946a >= 21) {
                d2(lVar, i10, j14, nanoTime);
            } else {
                c2(lVar, i10, j14);
            }
            o2(j15);
            return true;
        }
        if (z12 && j10 != this.f33455i1) {
            long nanoTime2 = System.nanoTime();
            long b10 = this.T0.b((j15 * 1000) + nanoTime2);
            long j17 = (b10 - nanoTime2) / 1000;
            if (this.f33456j1 != -9223372036854775807L) {
                z15 = true;
            } else {
                z15 = false;
            }
            boolean z16 = z15;
            if (i2(j17, j11, z11) && R1(j10, z16)) {
                return false;
            }
            if (j2(j17, j11, z11)) {
                if (z16) {
                    m2(lVar, i10, j14);
                } else {
                    G1(lVar, i10, j14);
                }
                o2(j17);
                return true;
            } else if (q0.f32946a >= 21) {
                if (j17 < 50000) {
                    if (b10 == this.f33465s1) {
                        m2(lVar, i10, j14);
                    } else {
                        Y1(j14, b10, x1Var);
                        d2(lVar, i10, j14, b10);
                    }
                    o2(j17);
                    this.f33465s1 = b10;
                    return true;
                }
            } else if (j17 < 30000) {
                if (j17 > 11000) {
                    try {
                        Thread.sleep((j17 - 10000) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return false;
                    }
                }
                Y1(j14, b10, x1Var);
                c2(lVar, i10, j14);
                o2(j17);
                return true;
            }
        }
        return false;
    }

    protected void c2(s3.l lVar, int i10, long j10) {
        V1();
        n0.a("releaseOutputBuffer");
        lVar.g(i10, true);
        n0.c();
        this.f33462p1 = SystemClock.elapsedRealtime() * 1000;
        this.N0.f15280e++;
        this.f33459m1 = 0;
        T1();
    }

    protected void d2(s3.l lVar, int i10, long j10, long j11) {
        V1();
        n0.a("releaseOutputBuffer");
        lVar.d(i10, j11);
        n0.c();
        this.f33462p1 = SystemClock.elapsedRealtime() * 1000;
        this.N0.f15280e++;
        this.f33459m1 = 0;
        T1();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // s3.u
    public void g1() {
        super.g1();
        this.f33460n1 = 0;
    }

    @Override // b3.t3, b3.u3
    public String getName() {
        return "MediaCodecVideoRenderer";
    }

    protected void h2(s3.l lVar, Surface surface) {
        lVar.l(surface);
    }

    protected boolean i2(long j10, long j11, boolean z10) {
        if (Q1(j10) && !z10) {
            return true;
        }
        return false;
    }

    @Override // s3.u, b3.t3
    public boolean isReady() {
        j jVar;
        if (super.isReady() && (this.f33452f1 || (((jVar = this.f33449c1) != null && this.f33448b1 == jVar) || w0() == null || this.f33471y1))) {
            this.f33456j1 = -9223372036854775807L;
            return true;
        } else if (this.f33456j1 == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.f33456j1) {
                return true;
            }
            this.f33456j1 = -9223372036854775807L;
            return false;
        }
    }

    protected boolean j2(long j10, long j11, boolean z10) {
        if (P1(j10) && !z10) {
            return true;
        }
        return false;
    }

    @Override // s3.u
    protected s3.m k0(Throwable th, s3.s sVar) {
        return new g(th, sVar, this.f33448b1);
    }

    protected boolean k2(long j10, long j11) {
        if (P1(j10) && j11 > PipesConfigBase.DEFAULT_MAX_FOR_EMIT_BATCH) {
            return true;
        }
        return false;
    }

    protected void m2(s3.l lVar, int i10, long j10) {
        n0.a("skipVideoBuffer");
        lVar.g(i10, false);
        n0.c();
        this.N0.f15281f++;
    }

    protected void n2(int i10, int i11) {
        e3.e eVar = this.N0;
        eVar.f15283h += i10;
        int i12 = i10 + i11;
        eVar.f15282g += i12;
        this.f33458l1 += i12;
        int i13 = this.f33459m1 + i12;
        this.f33459m1 = i13;
        eVar.f15284i = Math.max(i13, eVar.f15284i);
        int i14 = this.W0;
        if (i14 > 0 && this.f33458l1 >= i14) {
            S1();
        }
    }

    protected void o2(long j10) {
        this.N0.a(j10);
        this.f33463q1 += j10;
        this.f33464r1++;
    }

    @Override // s3.u
    protected boolean q1(s3.s sVar) {
        if (this.f33448b1 == null && !l2(sVar)) {
            return false;
        }
        return true;
    }

    @Override // s3.u, b3.t3
    public void t(float f10, float f11) {
        super.t(f10, f11);
        this.T0.i(f10);
    }

    @Override // s3.u
    protected int t1(s3.w wVar, x1 x1Var) {
        boolean z10;
        boolean z11;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14 = 0;
        if (!y4.v.s(x1Var.f4514l)) {
            return u3.v(0);
        }
        if (x1Var.f4517o != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        List L1 = L1(this.S0, wVar, x1Var, z10, false);
        if (z10 && L1.isEmpty()) {
            L1 = L1(this.S0, wVar, x1Var, false, false);
        }
        if (L1.isEmpty()) {
            return u3.v(1);
        }
        if (!s3.u.u1(x1Var)) {
            return u3.v(2);
        }
        s3.s sVar = (s3.s) L1.get(0);
        boolean o10 = sVar.o(x1Var);
        if (!o10) {
            for (int i15 = 1; i15 < L1.size(); i15++) {
                s3.s sVar2 = (s3.s) L1.get(i15);
                if (sVar2.o(x1Var)) {
                    z11 = false;
                    o10 = true;
                    sVar = sVar2;
                    break;
                }
            }
        }
        z11 = true;
        if (o10) {
            i10 = 4;
        } else {
            i10 = 3;
        }
        if (sVar.r(x1Var)) {
            i11 = 16;
        } else {
            i11 = 8;
        }
        if (sVar.f29364h) {
            i12 = 64;
        } else {
            i12 = 0;
        }
        if (z11) {
            i13 = 128;
        } else {
            i13 = 0;
        }
        if (q0.f32946a >= 26 && "video/dolby-vision".equals(x1Var.f4514l) && !a.a(this.S0)) {
            i13 = 256;
        }
        if (o10) {
            List L12 = L1(this.S0, wVar, x1Var, z10, true);
            if (!L12.isEmpty()) {
                s3.s sVar3 = (s3.s) f0.u(L12, x1Var).get(0);
                if (sVar3.o(x1Var) && sVar3.r(x1Var)) {
                    i14 = 32;
                }
            }
        }
        return u3.n(i10, i11, i14, i12, i13);
    }

    @Override // b3.o, b3.p3.b
    public void y(int i10, Object obj) {
        if (i10 != 1) {
            if (i10 != 7) {
                if (i10 != 10) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            super.y(i10, obj);
                            return;
                        } else {
                            this.T0.o(((Integer) obj).intValue());
                            return;
                        }
                    }
                    this.f33451e1 = ((Integer) obj).intValue();
                    s3.l w02 = w0();
                    if (w02 != null) {
                        w02.i(this.f33451e1);
                        return;
                    }
                    return;
                }
                int intValue = ((Integer) obj).intValue();
                if (this.f33472z1 != intValue) {
                    this.f33472z1 = intValue;
                    if (this.f33471y1) {
                        e1();
                        return;
                    }
                    return;
                }
                return;
            }
            this.B1 = (k) obj;
            return;
        }
        g2(obj);
    }

    @Override // s3.u
    protected boolean y0() {
        if (this.f33471y1 && q0.f32946a < 23) {
            return true;
        }
        return false;
    }

    @Override // s3.u
    protected float z0(float f10, x1 x1Var, x1[] x1VarArr) {
        float f11 = -1.0f;
        for (x1 x1Var2 : x1VarArr) {
            float f12 = x1Var2.f4521s;
            if (f12 != -1.0f) {
                f11 = Math.max(f11, f12);
            }
        }
        if (f11 == -1.0f) {
            return -1.0f;
        }
        return f11 * f10;
    }

    public i(Context context, l.b bVar, s3.w wVar, long j10, boolean z10, Handler handler, y yVar, int i10, float f10) {
        super(2, bVar, wVar, z10, f10);
        this.V0 = j10;
        this.W0 = i10;
        Context applicationContext = context.getApplicationContext();
        this.S0 = applicationContext;
        this.T0 = new n(applicationContext);
        this.U0 = new y.a(handler, yVar);
        this.X0 = F1();
        this.f33456j1 = -9223372036854775807L;
        this.f33466t1 = -1;
        this.f33467u1 = -1;
        this.f33469w1 = -1.0f;
        this.f33451e1 = 1;
        this.f33472z1 = 0;
        C1();
    }
}
