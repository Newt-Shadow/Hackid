package s3;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Bundle;
import android.os.SystemClock;
import b3.x1;
import b3.y1;
import c3.t3;
import com.arthenica.ffmpegkit.StreamInformation;
import e3.g;
import f3.n;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import s3.f0;
import s3.l;
import y4.l0;
import y4.n0;
import y4.q0;
/* loaded from: classes.dex */
public abstract class u extends b3.o {
    private static final byte[] R0 = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    private f3.n A;
    private int A0;
    private f3.n B;
    private int B0;
    private MediaCrypto C;
    private int C0;
    private boolean D;
    private boolean D0;
    private long E;
    private boolean E0;
    private float F;
    private boolean F0;
    private float G;
    private long G0;
    private l H;
    private long H0;
    private x1 I;
    private boolean I0;
    private MediaFormat J;
    private boolean J0;
    private boolean K;
    private boolean K0;
    private float L;
    private boolean L0;
    private ArrayDeque M;
    private b3.a0 M0;
    private b N;
    protected e3.e N0;
    private s O;
    private c O0;
    private int P;
    private long P0;
    private boolean Q;
    private boolean Q0;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean X;
    private boolean Y;
    private boolean Z;

    /* renamed from: a0  reason: collision with root package name */
    private i f29368a0;

    /* renamed from: b0  reason: collision with root package name */
    private long f29369b0;

    /* renamed from: c0  reason: collision with root package name */
    private int f29370c0;

    /* renamed from: d0  reason: collision with root package name */
    private int f29371d0;

    /* renamed from: e0  reason: collision with root package name */
    private ByteBuffer f29372e0;

    /* renamed from: f0  reason: collision with root package name */
    private boolean f29373f0;

    /* renamed from: n  reason: collision with root package name */
    private final l.b f29374n;

    /* renamed from: o  reason: collision with root package name */
    private final w f29375o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f29376p;

    /* renamed from: q  reason: collision with root package name */
    private final float f29377q;

    /* renamed from: r  reason: collision with root package name */
    private final e3.g f29378r;

    /* renamed from: s  reason: collision with root package name */
    private final e3.g f29379s;

    /* renamed from: t  reason: collision with root package name */
    private final e3.g f29380t;

    /* renamed from: u  reason: collision with root package name */
    private final h f29381u;

    /* renamed from: v  reason: collision with root package name */
    private final ArrayList f29382v;

    /* renamed from: v0  reason: collision with root package name */
    private boolean f29383v0;

    /* renamed from: w  reason: collision with root package name */
    private final MediaCodec.BufferInfo f29384w;

    /* renamed from: w0  reason: collision with root package name */
    private boolean f29385w0;

    /* renamed from: x  reason: collision with root package name */
    private final ArrayDeque f29386x;

    /* renamed from: x0  reason: collision with root package name */
    private boolean f29387x0;

    /* renamed from: y  reason: collision with root package name */
    private x1 f29388y;

    /* renamed from: y0  reason: collision with root package name */
    private boolean f29389y0;

    /* renamed from: z  reason: collision with root package name */
    private x1 f29390z;

    /* renamed from: z0  reason: collision with root package name */
    private boolean f29391z0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {
        public static void a(l.a aVar, t3 t3Var) {
            LogSessionId logSessionId;
            boolean equals;
            String stringId;
            LogSessionId a10 = t3Var.a();
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            equals = a10.equals(logSessionId);
            if (!equals) {
                MediaFormat mediaFormat = aVar.f29350b;
                stringId = a10.getStringId();
                mediaFormat.setString("log-session-id", stringId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: e  reason: collision with root package name */
        public static final c f29397e = new c(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L);

        /* renamed from: a  reason: collision with root package name */
        public final long f29398a;

        /* renamed from: b  reason: collision with root package name */
        public final long f29399b;

        /* renamed from: c  reason: collision with root package name */
        public final long f29400c;

        /* renamed from: d  reason: collision with root package name */
        public final l0 f29401d = new l0();

        public c(long j10, long j11, long j12) {
            this.f29398a = j10;
            this.f29399b = j11;
            this.f29400c = j12;
        }
    }

    public u(int i10, l.b bVar, w wVar, boolean z10, float f10) {
        super(i10);
        this.f29374n = bVar;
        this.f29375o = (w) y4.a.e(wVar);
        this.f29376p = z10;
        this.f29377q = f10;
        this.f29378r = e3.g.z();
        this.f29379s = new e3.g(0);
        this.f29380t = new e3.g(2);
        h hVar = new h();
        this.f29381u = hVar;
        this.f29382v = new ArrayList();
        this.f29384w = new MediaCodec.BufferInfo();
        this.F = 1.0f;
        this.G = 1.0f;
        this.E = -9223372036854775807L;
        this.f29386x = new ArrayDeque();
        l1(c.f29397e);
        hVar.w(0);
        hVar.f15289c.order(ByteOrder.nativeOrder());
        this.L = -1.0f;
        this.P = 0;
        this.A0 = 0;
        this.f29370c0 = -1;
        this.f29371d0 = -1;
        this.f29369b0 = -9223372036854775807L;
        this.G0 = -9223372036854775807L;
        this.H0 = -9223372036854775807L;
        this.P0 = -9223372036854775807L;
        this.B0 = 0;
        this.C0 = 0;
    }

    private f3.c0 C0(f3.n nVar) {
        e3.b i10 = nVar.i();
        if (i10 != null && !(i10 instanceof f3.c0)) {
            throw G(new IllegalArgumentException("Expecting FrameworkCryptoConfig but found: " + i10), this.f29388y, 6001);
        }
        return (f3.c0) i10;
    }

    private boolean H0() {
        if (this.f29371d0 >= 0) {
            return true;
        }
        return false;
    }

    private void I0(x1 x1Var) {
        l0();
        String str = x1Var.f4514l;
        if (!"audio/mp4a-latm".equals(str) && !"audio/mpeg".equals(str) && !"audio/opus".equals(str)) {
            this.f29381u.H(1);
        } else {
            this.f29381u.H(32);
        }
        this.f29385w0 = true;
    }

    private void J0(s sVar, MediaCrypto mediaCrypto) {
        float z02;
        boolean z10;
        String str = sVar.f29357a;
        int i10 = q0.f32946a;
        float f10 = -1.0f;
        if (i10 < 23) {
            z02 = -1.0f;
        } else {
            z02 = z0(this.G, this.f29388y, M());
        }
        if (z02 > this.f29377q) {
            f10 = z02;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        l.a D0 = D0(sVar, this.f29388y, mediaCrypto, f10);
        if (i10 >= 31) {
            a.a(D0, L());
        }
        try {
            n0.a("createCodec:" + str);
            this.H = this.f29374n.a(D0);
            n0.c();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            if (!sVar.o(this.f29388y)) {
                y4.r.i("MediaCodecRenderer", q0.C("Format exceeds selected codec's capabilities [%s, %s]", x1.i(this.f29388y), str));
            }
            this.O = sVar;
            this.L = f10;
            this.I = this.f29388y;
            this.P = b0(str);
            this.Q = c0(str, this.I);
            this.R = h0(str);
            this.S = j0(str);
            this.T = e0(str);
            this.U = f0(str);
            this.V = d0(str);
            this.W = i0(str, this.I);
            boolean z11 = false;
            if (!g0(sVar) && !y0()) {
                z10 = false;
            } else {
                z10 = true;
            }
            this.Z = z10;
            if (this.H.a()) {
                this.f29391z0 = true;
                this.A0 = 1;
                if (this.P != 0) {
                    z11 = true;
                }
                this.X = z11;
            }
            if ("c2.android.mp3.decoder".equals(sVar.f29357a)) {
                this.f29368a0 = new i();
            }
            if (getState() == 2) {
                this.f29369b0 = SystemClock.elapsedRealtime() + 1000;
            }
            this.N0.f15276a++;
            R0(str, D0, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
        } catch (Throwable th) {
            n0.c();
            throw th;
        }
    }

    private boolean K0(long j10) {
        int size = this.f29382v.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (((Long) this.f29382v.get(i10)).longValue() == j10) {
                this.f29382v.remove(i10);
                return true;
            }
        }
        return false;
    }

    private static boolean L0(IllegalStateException illegalStateException) {
        if (q0.f32946a >= 21 && M0(illegalStateException)) {
            return true;
        }
        StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
        if (stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec")) {
            return true;
        }
        return false;
    }

    private static boolean M0(IllegalStateException illegalStateException) {
        return illegalStateException instanceof MediaCodec.CodecException;
    }

    private static boolean N0(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) illegalStateException).isRecoverable();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ae A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0049 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void P0(android.media.MediaCrypto r8, boolean r9) {
        /*
            r7 = this;
            java.util.ArrayDeque r0 = r7.M
            r1 = 0
            if (r0 != 0) goto L39
            java.util.List r0 = r7.v0(r9)     // Catch: s3.f0.c -> L2d
            java.util.ArrayDeque r2 = new java.util.ArrayDeque     // Catch: s3.f0.c -> L2d
            r2.<init>()     // Catch: s3.f0.c -> L2d
            r7.M = r2     // Catch: s3.f0.c -> L2d
            boolean r3 = r7.f29376p     // Catch: s3.f0.c -> L2d
            if (r3 == 0) goto L18
            r2.addAll(r0)     // Catch: s3.f0.c -> L2d
            goto L2a
        L18:
            boolean r2 = r0.isEmpty()     // Catch: s3.f0.c -> L2d
            if (r2 != 0) goto L2a
            java.util.ArrayDeque r2 = r7.M     // Catch: s3.f0.c -> L2d
            r3 = 0
            java.lang.Object r0 = r0.get(r3)     // Catch: s3.f0.c -> L2d
            s3.s r0 = (s3.s) r0     // Catch: s3.f0.c -> L2d
            r2.add(r0)     // Catch: s3.f0.c -> L2d
        L2a:
            r7.N = r1     // Catch: s3.f0.c -> L2d
            goto L39
        L2d:
            r8 = move-exception
            s3.u$b r0 = new s3.u$b
            b3.x1 r1 = r7.f29388y
            r2 = -49998(0xffffffffffff3cb2, float:NaN)
            r0.<init>(r1, r8, r9, r2)
            throw r0
        L39:
            java.util.ArrayDeque r0 = r7.M
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto Lb4
            java.util.ArrayDeque r0 = r7.M
            java.lang.Object r0 = r0.peekFirst()
            s3.s r0 = (s3.s) r0
        L49:
            s3.l r2 = r7.H
            if (r2 != 0) goto Lb1
            java.util.ArrayDeque r2 = r7.M
            java.lang.Object r2 = r2.peekFirst()
            s3.s r2 = (s3.s) r2
            boolean r3 = r7.q1(r2)
            if (r3 != 0) goto L5c
            return
        L5c:
            r7.J0(r2, r8)     // Catch: java.lang.Exception -> L60
            goto L49
        L60:
            r3 = move-exception
            java.lang.String r4 = "MediaCodecRenderer"
            if (r2 != r0) goto L73
            java.lang.String r3 = "Preferred decoder instantiation failed. Sleeping for 50ms then retrying."
            y4.r.i(r4, r3)     // Catch: java.lang.Exception -> L74
            r5 = 50
            java.lang.Thread.sleep(r5)     // Catch: java.lang.Exception -> L74
            r7.J0(r2, r8)     // Catch: java.lang.Exception -> L74
            goto L49
        L73:
            throw r3     // Catch: java.lang.Exception -> L74
        L74:
            r3 = move-exception
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Failed to initialize decoder: "
            r5.append(r6)
            r5.append(r2)
            java.lang.String r5 = r5.toString()
            y4.r.j(r4, r5, r3)
            java.util.ArrayDeque r4 = r7.M
            r4.removeFirst()
            s3.u$b r4 = new s3.u$b
            b3.x1 r5 = r7.f29388y
            r4.<init>(r5, r3, r9, r2)
            r7.Q0(r4)
            s3.u$b r2 = r7.N
            if (r2 != 0) goto L9f
            r7.N = r4
            goto La5
        L9f:
            s3.u$b r2 = s3.u.b.a(r2, r4)
            r7.N = r2
        La5:
            java.util.ArrayDeque r2 = r7.M
            boolean r2 = r2.isEmpty()
            if (r2 != 0) goto Lae
            goto L49
        Lae:
            s3.u$b r8 = r7.N
            throw r8
        Lb1:
            r7.M = r1
            return
        Lb4:
            s3.u$b r8 = new s3.u$b
            b3.x1 r0 = r7.f29388y
            r2 = -49999(0xffffffffffff3cb1, float:NaN)
            r8.<init>(r0, r1, r9, r2)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: s3.u.P0(android.media.MediaCrypto, boolean):void");
    }

    private void Y() {
        y4.a.f(!this.I0);
        y1 J = J();
        this.f29380t.l();
        do {
            this.f29380t.l();
            int V = V(J, this.f29380t, 0);
            if (V != -5) {
                if (V != -4) {
                    if (V == -3) {
                        return;
                    }
                    throw new IllegalStateException();
                } else if (this.f29380t.q()) {
                    this.I0 = true;
                    return;
                } else {
                    if (this.K0) {
                        x1 x1Var = (x1) y4.a.e(this.f29388y);
                        this.f29390z = x1Var;
                        U0(x1Var, null);
                        this.K0 = false;
                    }
                    this.f29380t.x();
                }
            } else {
                T0(J);
                return;
            }
        } while (this.f29381u.B(this.f29380t));
        this.f29387x0 = true;
    }

    private boolean Z(long j10, long j11) {
        boolean z10;
        y4.a.f(!this.J0);
        if (this.f29381u.G()) {
            h hVar = this.f29381u;
            if (a1(j10, j11, null, hVar.f15289c, this.f29371d0, 0, hVar.F(), this.f29381u.D(), this.f29381u.p(), this.f29381u.q(), this.f29390z)) {
                W0(this.f29381u.E());
                this.f29381u.l();
                z10 = false;
            } else {
                return false;
            }
        } else {
            z10 = false;
        }
        if (this.I0) {
            this.J0 = true;
            return z10;
        }
        if (this.f29387x0) {
            y4.a.f(this.f29381u.B(this.f29380t));
            this.f29387x0 = z10;
        }
        if (this.f29389y0) {
            if (this.f29381u.G()) {
                return true;
            }
            l0();
            this.f29389y0 = z10;
            O0();
            if (!this.f29385w0) {
                return z10;
            }
        }
        Y();
        if (this.f29381u.G()) {
            this.f29381u.x();
        }
        if (this.f29381u.G() || this.I0 || this.f29389y0) {
            return true;
        }
        return z10;
    }

    private void Z0() {
        int i10 = this.C0;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    this.J0 = true;
                    f1();
                    return;
                }
                d1();
                return;
            }
            s0();
            w1();
            return;
        }
        s0();
    }

    private int b0(String str) {
        int i10 = q0.f32946a;
        if (i10 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
            String str2 = q0.f32949d;
            if (str2.startsWith("SM-T585") || str2.startsWith("SM-A510") || str2.startsWith("SM-A520") || str2.startsWith("SM-J700")) {
                return 2;
            }
        }
        if (i10 < 24) {
            if ("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str)) {
                String str3 = q0.f32947b;
                if ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) {
                    return 1;
                }
                return 0;
            }
            return 0;
        }
        return 0;
    }

    private void b1() {
        this.F0 = true;
        MediaFormat b10 = this.H.b();
        if (this.P != 0 && b10.getInteger(StreamInformation.KEY_WIDTH) == 32 && b10.getInteger(StreamInformation.KEY_HEIGHT) == 32) {
            this.Y = true;
            return;
        }
        if (this.W) {
            b10.setInteger("channel-count", 1);
        }
        this.J = b10;
        this.K = true;
    }

    private static boolean c0(String str, x1 x1Var) {
        if (q0.f32946a < 21 && x1Var.f4516n.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str)) {
            return true;
        }
        return false;
    }

    private boolean c1(int i10) {
        y1 J = J();
        this.f29378r.l();
        int V = V(J, this.f29378r, i10 | 4);
        if (V == -5) {
            T0(J);
            return true;
        } else if (V == -4 && this.f29378r.q()) {
            this.I0 = true;
            Z0();
            return false;
        } else {
            return false;
        }
    }

    private static boolean d0(String str) {
        if (q0.f32946a < 21 && "OMX.SEC.mp3.dec".equals(str) && "samsung".equals(q0.f32948c)) {
            String str2 = q0.f32947b;
            if (str2.startsWith("baffin") || str2.startsWith("grand") || str2.startsWith("fortuna") || str2.startsWith("gprimelte") || str2.startsWith("j2y18lte") || str2.startsWith("ms01")) {
                return true;
            }
        }
        return false;
    }

    private void d1() {
        e1();
        O0();
    }

    private static boolean e0(String str) {
        int i10 = q0.f32946a;
        if (i10 > 23 || !"OMX.google.vorbis.decoder".equals(str)) {
            if (i10 <= 19) {
                String str2 = q0.f32947b;
                if (("hb2000".equals(str2) || "stvm8".equals(str2)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))) {
                }
            }
            return false;
        }
        return true;
    }

    private static boolean f0(String str) {
        if (q0.f32946a == 21 && "OMX.google.aac.decoder".equals(str)) {
            return true;
        }
        return false;
    }

    private static boolean g0(s sVar) {
        String str = sVar.f29357a;
        int i10 = q0.f32946a;
        if ((i10 <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || ((i10 <= 17 && "OMX.allwinner.video.decoder.avc".equals(str)) || ((i10 <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str) || "OMX.bcm.vdec.avc.tunnel".equals(str) || "OMX.bcm.vdec.avc.tunnel.secure".equals(str) || "OMX.bcm.vdec.hevc.tunnel".equals(str) || "OMX.bcm.vdec.hevc.tunnel.secure".equals(str))) || ("Amazon".equals(q0.f32948c) && "AFTS".equals(q0.f32949d) && sVar.f29363g)))) {
            return true;
        }
        return false;
    }

    private static boolean h0(String str) {
        int i10 = q0.f32946a;
        if (i10 >= 18 && ((i10 != 18 || (!"OMX.SEC.avc.dec".equals(str) && !"OMX.SEC.avc.dec.secure".equals(str))) && (i10 != 19 || !q0.f32949d.startsWith("SM-G800") || (!"OMX.Exynos.avc.dec".equals(str) && !"OMX.Exynos.avc.dec.secure".equals(str))))) {
            return false;
        }
        return true;
    }

    private static boolean i0(String str, x1 x1Var) {
        if (q0.f32946a <= 18 && x1Var.f4527y == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str)) {
            return true;
        }
        return false;
    }

    private void i1() {
        this.f29370c0 = -1;
        this.f29379s.f15289c = null;
    }

    private static boolean j0(String str) {
        if (q0.f32946a == 29 && "c2.android.aac.decoder".equals(str)) {
            return true;
        }
        return false;
    }

    private void j1() {
        this.f29371d0 = -1;
        this.f29372e0 = null;
    }

    private void k1(f3.n nVar) {
        f3.n.d(this.A, nVar);
        this.A = nVar;
    }

    private void l0() {
        this.f29389y0 = false;
        this.f29381u.l();
        this.f29380t.l();
        this.f29387x0 = false;
        this.f29385w0 = false;
    }

    private void l1(c cVar) {
        this.O0 = cVar;
        long j10 = cVar.f29400c;
        if (j10 != -9223372036854775807L) {
            this.Q0 = true;
            V0(j10);
        }
    }

    private boolean m0() {
        if (this.D0) {
            this.B0 = 1;
            if (!this.R && !this.T) {
                this.C0 = 1;
            } else {
                this.C0 = 3;
                return false;
            }
        }
        return true;
    }

    private void n0() {
        if (this.D0) {
            this.B0 = 1;
            this.C0 = 3;
            return;
        }
        d1();
    }

    private boolean o0() {
        if (this.D0) {
            this.B0 = 1;
            if (!this.R && !this.T) {
                this.C0 = 2;
            } else {
                this.C0 = 3;
                return false;
            }
        } else {
            w1();
        }
        return true;
    }

    private void o1(f3.n nVar) {
        f3.n.d(this.B, nVar);
        this.B = nVar;
    }

    private boolean p0(long j10, long j11) {
        boolean z10;
        boolean a12;
        boolean z11;
        l lVar;
        ByteBuffer byteBuffer;
        int i10;
        MediaCodec.BufferInfo bufferInfo;
        int f10;
        boolean z12;
        if (!H0()) {
            if (this.U && this.E0) {
                try {
                    f10 = this.H.f(this.f29384w);
                } catch (IllegalStateException unused) {
                    Z0();
                    if (this.J0) {
                        e1();
                    }
                    return false;
                }
            } else {
                f10 = this.H.f(this.f29384w);
            }
            if (f10 < 0) {
                if (f10 == -2) {
                    b1();
                    return true;
                }
                if (this.Z && (this.I0 || this.B0 == 2)) {
                    Z0();
                }
                return false;
            } else if (this.Y) {
                this.Y = false;
                this.H.g(f10, false);
                return true;
            } else {
                MediaCodec.BufferInfo bufferInfo2 = this.f29384w;
                if (bufferInfo2.size == 0 && (bufferInfo2.flags & 4) != 0) {
                    Z0();
                    return false;
                }
                this.f29371d0 = f10;
                ByteBuffer n10 = this.H.n(f10);
                this.f29372e0 = n10;
                if (n10 != null) {
                    n10.position(this.f29384w.offset);
                    ByteBuffer byteBuffer2 = this.f29372e0;
                    MediaCodec.BufferInfo bufferInfo3 = this.f29384w;
                    byteBuffer2.limit(bufferInfo3.offset + bufferInfo3.size);
                }
                if (this.V) {
                    MediaCodec.BufferInfo bufferInfo4 = this.f29384w;
                    if (bufferInfo4.presentationTimeUs == 0 && (bufferInfo4.flags & 4) != 0) {
                        long j12 = this.G0;
                        if (j12 != -9223372036854775807L) {
                            bufferInfo4.presentationTimeUs = j12;
                        }
                    }
                }
                this.f29373f0 = K0(this.f29384w.presentationTimeUs);
                long j13 = this.H0;
                long j14 = this.f29384w.presentationTimeUs;
                if (j13 == j14) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                this.f29383v0 = z12;
                x1(j14);
            }
        }
        if (this.U && this.E0) {
            try {
                lVar = this.H;
                byteBuffer = this.f29372e0;
                i10 = this.f29371d0;
                bufferInfo = this.f29384w;
                z10 = false;
            } catch (IllegalStateException unused2) {
                z10 = false;
            }
            try {
                a12 = a1(j10, j11, lVar, byteBuffer, i10, bufferInfo.flags, 1, bufferInfo.presentationTimeUs, this.f29373f0, this.f29383v0, this.f29390z);
            } catch (IllegalStateException unused3) {
                Z0();
                if (this.J0) {
                    e1();
                }
                return z10;
            }
        } else {
            z10 = false;
            l lVar2 = this.H;
            ByteBuffer byteBuffer3 = this.f29372e0;
            int i11 = this.f29371d0;
            MediaCodec.BufferInfo bufferInfo5 = this.f29384w;
            a12 = a1(j10, j11, lVar2, byteBuffer3, i11, bufferInfo5.flags, 1, bufferInfo5.presentationTimeUs, this.f29373f0, this.f29383v0, this.f29390z);
        }
        if (a12) {
            W0(this.f29384w.presentationTimeUs);
            if ((this.f29384w.flags & 4) != 0) {
                z11 = true;
            } else {
                z11 = z10;
            }
            j1();
            if (!z11) {
                return true;
            }
            Z0();
        }
        return z10;
    }

    private boolean p1(long j10) {
        if (this.E != -9223372036854775807L && SystemClock.elapsedRealtime() - j10 >= this.E) {
            return false;
        }
        return true;
    }

    private boolean q0(s sVar, x1 x1Var, f3.n nVar, f3.n nVar2) {
        f3.c0 C0;
        boolean g10;
        if (nVar == nVar2) {
            return false;
        }
        if (nVar2 == null || nVar == null || !nVar2.b().equals(nVar.b()) || q0.f32946a < 23) {
            return true;
        }
        UUID uuid = b3.s.f4355e;
        if (uuid.equals(nVar.b()) || uuid.equals(nVar2.b()) || (C0 = C0(nVar2)) == null) {
            return true;
        }
        if (C0.f15618c) {
            g10 = false;
        } else {
            g10 = nVar2.g(x1Var.f4514l);
        }
        if (sVar.f29363g || !g10) {
            return false;
        }
        return true;
    }

    private boolean r0() {
        int i10;
        if (this.H == null || (i10 = this.B0) == 2 || this.I0) {
            return false;
        }
        if (i10 == 0 && r1()) {
            n0();
        }
        if (this.f29370c0 < 0) {
            int e10 = this.H.e();
            this.f29370c0 = e10;
            if (e10 < 0) {
                return false;
            }
            this.f29379s.f15289c = this.H.k(e10);
            this.f29379s.l();
        }
        if (this.B0 == 1) {
            if (!this.Z) {
                this.E0 = true;
                this.H.m(this.f29370c0, 0, 0, 0L, 4);
                i1();
            }
            this.B0 = 2;
            return false;
        } else if (this.X) {
            this.X = false;
            ByteBuffer byteBuffer = this.f29379s.f15289c;
            byte[] bArr = R0;
            byteBuffer.put(bArr);
            this.H.m(this.f29370c0, 0, bArr.length, 0L, 0);
            i1();
            this.D0 = true;
            return true;
        } else {
            if (this.A0 == 1) {
                for (int i11 = 0; i11 < this.I.f4516n.size(); i11++) {
                    this.f29379s.f15289c.put((byte[]) this.I.f4516n.get(i11));
                }
                this.A0 = 2;
            }
            int position = this.f29379s.f15289c.position();
            y1 J = J();
            try {
                int V = V(J, this.f29379s, 0);
                if (j() || this.f29379s.t()) {
                    this.H0 = this.G0;
                }
                if (V == -3) {
                    return false;
                }
                if (V == -5) {
                    if (this.A0 == 2) {
                        this.f29379s.l();
                        this.A0 = 1;
                    }
                    T0(J);
                    return true;
                } else if (this.f29379s.q()) {
                    if (this.A0 == 2) {
                        this.f29379s.l();
                        this.A0 = 1;
                    }
                    this.I0 = true;
                    if (!this.D0) {
                        Z0();
                        return false;
                    }
                    try {
                        if (!this.Z) {
                            this.E0 = true;
                            this.H.m(this.f29370c0, 0, 0, 0L, 4);
                            i1();
                        }
                        return false;
                    } catch (MediaCodec.CryptoException e11) {
                        throw G(e11, this.f29388y, q0.U(e11.getErrorCode()));
                    }
                } else if (!this.D0 && !this.f29379s.s()) {
                    this.f29379s.l();
                    if (this.A0 == 2) {
                        this.A0 = 1;
                    }
                    return true;
                } else {
                    boolean y10 = this.f29379s.y();
                    if (y10) {
                        this.f29379s.f15288b.b(position);
                    }
                    if (this.Q && !y10) {
                        y4.w.b(this.f29379s.f15289c);
                        if (this.f29379s.f15289c.position() == 0) {
                            return true;
                        }
                        this.Q = false;
                    }
                    e3.g gVar = this.f29379s;
                    long j10 = gVar.f15291e;
                    i iVar = this.f29368a0;
                    if (iVar != null) {
                        j10 = iVar.d(this.f29388y, gVar);
                        this.G0 = Math.max(this.G0, this.f29368a0.b(this.f29388y));
                    }
                    long j11 = j10;
                    if (this.f29379s.p()) {
                        this.f29382v.add(Long.valueOf(j11));
                    }
                    if (this.K0) {
                        if (!this.f29386x.isEmpty()) {
                            ((c) this.f29386x.peekLast()).f29401d.a(j11, this.f29388y);
                        } else {
                            this.O0.f29401d.a(j11, this.f29388y);
                        }
                        this.K0 = false;
                    }
                    this.G0 = Math.max(this.G0, j11);
                    this.f29379s.x();
                    if (this.f29379s.o()) {
                        G0(this.f29379s);
                    }
                    Y0(this.f29379s);
                    try {
                        if (y10) {
                            this.H.j(this.f29370c0, 0, this.f29379s.f15288b, j11, 0);
                        } else {
                            this.H.m(this.f29370c0, 0, this.f29379s.f15289c.limit(), j11, 0);
                        }
                        i1();
                        this.D0 = true;
                        this.A0 = 0;
                        this.N0.f15278c++;
                        return true;
                    } catch (MediaCodec.CryptoException e12) {
                        throw G(e12, this.f29388y, q0.U(e12.getErrorCode()));
                    }
                }
            } catch (g.a e13) {
                Q0(e13);
                c1(0);
                s0();
                return true;
            }
        }
    }

    private void s0() {
        try {
            this.H.flush();
        } finally {
            g1();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean u1(x1 x1Var) {
        int i10 = x1Var.G;
        if (i10 != 0 && i10 != 2) {
            return false;
        }
        return true;
    }

    private List v0(boolean z10) {
        List B0 = B0(this.f29375o, this.f29388y, z10);
        if (B0.isEmpty() && z10) {
            B0 = B0(this.f29375o, this.f29388y, false);
            if (!B0.isEmpty()) {
                y4.r.i("MediaCodecRenderer", "Drm session requires secure decoder for " + this.f29388y.f4514l + ", but no secure decoder available. Trying to proceed with " + B0 + ".");
            }
        }
        return B0;
    }

    private boolean v1(x1 x1Var) {
        if (q0.f32946a >= 23 && this.H != null && this.C0 != 3 && getState() != 0) {
            float z02 = z0(this.G, x1Var, M());
            float f10 = this.L;
            if (f10 == z02) {
                return true;
            }
            if (z02 == -1.0f) {
                n0();
                return false;
            } else if (f10 == -1.0f && z02 <= this.f29377q) {
                return true;
            } else {
                Bundle bundle = new Bundle();
                bundle.putFloat("operating-rate", z02);
                this.H.c(bundle);
                this.L = z02;
            }
        }
        return true;
    }

    private void w1() {
        try {
            this.C.setMediaDrmSession(C0(this.B).f15617b);
            k1(this.B);
            this.B0 = 0;
            this.C0 = 0;
        } catch (MediaCryptoException e10) {
            throw G(e10, this.f29388y, 6006);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MediaFormat A0() {
        return this.J;
    }

    protected abstract List B0(w wVar, x1 x1Var, boolean z10);

    protected abstract l.a D0(s sVar, x1 x1Var, MediaCrypto mediaCrypto, float f10);

    /* JADX INFO: Access modifiers changed from: protected */
    public final long E0() {
        return this.O0.f29400c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float F0() {
        return this.F;
    }

    protected void G0(e3.g gVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // b3.o
    public void O() {
        this.f29388y = null;
        l1(c.f29397e);
        this.f29386x.clear();
        u0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void O0() {
        x1 x1Var;
        boolean z10;
        if (this.H == null && !this.f29385w0 && (x1Var = this.f29388y) != null) {
            if (this.B == null && s1(x1Var)) {
                I0(this.f29388y);
                return;
            }
            k1(this.B);
            String str = this.f29388y.f4514l;
            f3.n nVar = this.A;
            if (nVar != null) {
                if (this.C == null) {
                    f3.c0 C0 = C0(nVar);
                    if (C0 == null) {
                        if (this.A.h() == null) {
                            return;
                        }
                    } else {
                        try {
                            MediaCrypto mediaCrypto = new MediaCrypto(C0.f15616a, C0.f15617b);
                            this.C = mediaCrypto;
                            if (!C0.f15618c && mediaCrypto.requiresSecureDecoderComponent(str)) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            this.D = z10;
                        } catch (MediaCryptoException e10) {
                            throw G(e10, this.f29388y, 6006);
                        }
                    }
                }
                if (f3.c0.f15615d) {
                    int state = this.A.getState();
                    if (state != 1) {
                        if (state != 4) {
                            return;
                        }
                    } else {
                        n.a aVar = (n.a) y4.a.e(this.A.h());
                        throw G(aVar, this.f29388y, aVar.f15723a);
                    }
                }
            }
            try {
                P0(this.C, this.D);
            } catch (b e11) {
                throw G(e11, this.f29388y, 4001);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // b3.o
    public void P(boolean z10, boolean z11) {
        this.N0 = new e3.e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // b3.o
    public void Q(long j10, boolean z10) {
        this.I0 = false;
        this.J0 = false;
        this.L0 = false;
        if (this.f29385w0) {
            this.f29381u.l();
            this.f29380t.l();
            this.f29387x0 = false;
        } else {
            t0();
        }
        if (this.O0.f29401d.k() > 0) {
            this.K0 = true;
        }
        this.O0.f29401d.c();
        this.f29386x.clear();
    }

    protected abstract void Q0(Exception exc);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // b3.o
    public void R() {
        try {
            l0();
            e1();
        } finally {
            o1(null);
        }
    }

    protected abstract void R0(String str, l.a aVar, long j10, long j11);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // b3.o
    public void S() {
    }

    protected abstract void S0(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // b3.o
    public void T() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0080, code lost:
        if (o0() == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00b2, code lost:
        if (o0() == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00ce, code lost:
        r7 = 2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public e3.i T0(b3.y1 r12) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: s3.u.T0(b3.y1):e3.i");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
        if (r5 >= r1) goto L14;
     */
    @Override // b3.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void U(b3.x1[] r13, long r14, long r16) {
        /*
            r12 = this;
            r0 = r12
            s3.u$c r1 = r0.O0
            long r1 = r1.f29400c
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 != 0) goto L20
            s3.u$c r1 = new s3.u$c
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = r1
            r8 = r14
            r10 = r16
            r5.<init>(r6, r8, r10)
            r12.l1(r1)
            goto L65
        L20:
            java.util.ArrayDeque r1 = r0.f29386x
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L55
            long r1 = r0.G0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L38
            long r5 = r0.P0
            int r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r7 == 0) goto L55
            int r1 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r1 < 0) goto L55
        L38:
            s3.u$c r1 = new s3.u$c
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = r1
            r8 = r14
            r10 = r16
            r5.<init>(r6, r8, r10)
            r12.l1(r1)
            s3.u$c r1 = r0.O0
            long r1 = r1.f29400c
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 == 0) goto L65
            r12.X0()
            goto L65
        L55:
            java.util.ArrayDeque r1 = r0.f29386x
            s3.u$c r9 = new s3.u$c
            long r3 = r0.G0
            r2 = r9
            r5 = r14
            r7 = r16
            r2.<init>(r3, r5, r7)
            r1.add(r9)
        L65:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: s3.u.U(b3.x1[], long, long):void");
    }

    protected abstract void U0(x1 x1Var, MediaFormat mediaFormat);

    protected void V0(long j10) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void W0(long j10) {
        this.P0 = j10;
        while (!this.f29386x.isEmpty() && j10 >= ((c) this.f29386x.peek()).f29398a) {
            l1((c) this.f29386x.poll());
            X0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void X0() {
    }

    protected abstract void Y0(e3.g gVar);

    protected abstract e3.i a0(s sVar, x1 x1Var, x1 x1Var2);

    protected abstract boolean a1(long j10, long j11, l lVar, ByteBuffer byteBuffer, int i10, int i11, int i12, long j12, boolean z10, boolean z11, x1 x1Var);

    @Override // b3.u3
    public final int b(x1 x1Var) {
        try {
            return t1(this.f29375o, x1Var);
        } catch (f0.c e10) {
            throw G(e10, x1Var, 4002);
        }
    }

    @Override // b3.t3
    public boolean d() {
        return this.J0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [f3.n, android.media.MediaCrypto] */
    public void e1() {
        try {
            l lVar = this.H;
            if (lVar != null) {
                lVar.release();
                this.N0.f15277b++;
                S0(this.O.f29357a);
            }
            this.H = null;
            try {
                MediaCrypto mediaCrypto = this.C;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.H = null;
            try {
                MediaCrypto mediaCrypto2 = this.C;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
            }
        }
    }

    protected void f1() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void g1() {
        i1();
        j1();
        this.f29369b0 = -9223372036854775807L;
        this.E0 = false;
        this.D0 = false;
        this.X = false;
        this.Y = false;
        this.f29373f0 = false;
        this.f29383v0 = false;
        this.f29382v.clear();
        this.G0 = -9223372036854775807L;
        this.H0 = -9223372036854775807L;
        this.P0 = -9223372036854775807L;
        i iVar = this.f29368a0;
        if (iVar != null) {
            iVar.c();
        }
        this.B0 = 0;
        this.C0 = 0;
        this.A0 = this.f29391z0 ? 1 : 0;
    }

    protected void h1() {
        g1();
        this.M0 = null;
        this.f29368a0 = null;
        this.M = null;
        this.O = null;
        this.I = null;
        this.J = null;
        this.K = false;
        this.F0 = false;
        this.L = -1.0f;
        this.P = 0;
        this.Q = false;
        this.R = false;
        this.S = false;
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.Z = false;
        this.f29391z0 = false;
        this.A0 = 0;
        this.D = false;
    }

    @Override // b3.t3
    public boolean isReady() {
        if (this.f29388y != null && (N() || H0() || (this.f29369b0 != -9223372036854775807L && SystemClock.elapsedRealtime() < this.f29369b0))) {
            return true;
        }
        return false;
    }

    protected m k0(Throwable th, s sVar) {
        return new m(th, sVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void m1() {
        this.L0 = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void n1(b3.a0 a0Var) {
        this.M0 = a0Var;
    }

    protected boolean q1(s sVar) {
        return true;
    }

    protected boolean r1() {
        return false;
    }

    protected boolean s1(x1 x1Var) {
        return false;
    }

    @Override // b3.t3
    public void t(float f10, float f11) {
        this.F = f10;
        this.G = f11;
        v1(this.I);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean t0() {
        boolean u02 = u0();
        if (u02) {
            O0();
        }
        return u02;
    }

    protected abstract int t1(w wVar, x1 x1Var);

    protected boolean u0() {
        boolean z10;
        if (this.H == null) {
            return false;
        }
        int i10 = this.C0;
        if (i10 != 3 && !this.R && ((!this.S || this.F0) && (!this.T || !this.E0))) {
            if (i10 == 2) {
                int i11 = q0.f32946a;
                if (i11 >= 23) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                y4.a.f(z10);
                if (i11 >= 23) {
                    try {
                        w1();
                    } catch (b3.a0 e10) {
                        y4.r.j("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e10);
                        e1();
                        return true;
                    }
                }
            }
            s0();
            return false;
        }
        e1();
        return true;
    }

    @Override // b3.o, b3.u3
    public final int w() {
        return 8;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final l w0() {
        return this.H;
    }

    @Override // b3.t3
    public void x(long j10, long j11) {
        boolean z10 = false;
        if (this.L0) {
            this.L0 = false;
            Z0();
        }
        b3.a0 a0Var = this.M0;
        if (a0Var == null) {
            try {
                if (this.J0) {
                    f1();
                    return;
                } else if (this.f29388y == null && !c1(2)) {
                    return;
                } else {
                    O0();
                    if (this.f29385w0) {
                        n0.a("bypassRender");
                        while (Z(j10, j11)) {
                        }
                        n0.c();
                    } else if (this.H != null) {
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        n0.a("drainAndFeed");
                        while (p0(j10, j11) && p1(elapsedRealtime)) {
                        }
                        while (r0() && p1(elapsedRealtime)) {
                        }
                        n0.c();
                    } else {
                        this.N0.f15279d += X(j10);
                        c1(1);
                    }
                    this.N0.c();
                    return;
                }
            } catch (IllegalStateException e10) {
                if (L0(e10)) {
                    Q0(e10);
                    if (q0.f32946a >= 21 && N0(e10)) {
                        z10 = true;
                    }
                    if (z10) {
                        e1();
                    }
                    throw H(k0(e10, x0()), this.f29388y, z10, 4003);
                }
                throw e10;
            }
        }
        this.M0 = null;
        throw a0Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final s x0() {
        return this.O;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void x1(long j10) {
        boolean z10;
        x1 x1Var = (x1) this.O0.f29401d.i(j10);
        if (x1Var == null && this.Q0 && this.J != null) {
            x1Var = (x1) this.O0.f29401d.h();
        }
        if (x1Var != null) {
            this.f29390z = x1Var;
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10 || (this.K && this.f29390z != null)) {
            U0(this.f29390z, this.J);
            this.K = false;
            this.Q0 = false;
        }
    }

    protected boolean y0() {
        return false;
    }

    protected abstract float z0(float f10, x1 x1Var, x1[] x1VarArr);

    /* loaded from: classes.dex */
    public static class b extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final String f29392a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f29393b;

        /* renamed from: c  reason: collision with root package name */
        public final s f29394c;

        /* renamed from: d  reason: collision with root package name */
        public final String f29395d;

        /* renamed from: e  reason: collision with root package name */
        public final b f29396e;

        public b(x1 x1Var, Throwable th, boolean z10, int i10) {
            this("Decoder init failed: [" + i10 + "], " + x1Var, th, x1Var.f4514l, z10, null, b(i10), null);
        }

        private static String b(int i10) {
            String str;
            if (i10 < 0) {
                str = "neg_";
            } else {
                str = "";
            }
            return "com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_" + str + Math.abs(i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public b c(b bVar) {
            return new b(getMessage(), getCause(), this.f29392a, this.f29393b, this.f29394c, this.f29395d, bVar);
        }

        private static String d(Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }

        public b(x1 x1Var, Throwable th, boolean z10, s sVar) {
            this("Decoder init failed: " + sVar.f29357a + ", " + x1Var, th, x1Var.f4514l, z10, sVar, q0.f32946a >= 21 ? d(th) : null, null);
        }

        private b(String str, Throwable th, String str2, boolean z10, s sVar, String str3, b bVar) {
            super(str, th);
            this.f29392a = str2;
            this.f29393b = z10;
            this.f29394c = sVar;
            this.f29395d = str3;
            this.f29396e = bVar;
        }
    }
}
