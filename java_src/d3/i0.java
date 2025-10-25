package d3;

import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import b3.b0;
import b3.l3;
import b3.x1;
import c3.t3;
import d3.j;
import d3.p0;
import d3.w;
import d3.y;
import io.appmetrica.analytics.impl.C1415p9;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
/* loaded from: classes.dex */
public final class i0 implements w {

    /* renamed from: e0  reason: collision with root package name */
    public static boolean f14474e0 = false;

    /* renamed from: f0  reason: collision with root package name */
    private static final Object f14475f0 = new Object();

    /* renamed from: g0  reason: collision with root package name */
    private static ExecutorService f14476g0;

    /* renamed from: h0  reason: collision with root package name */
    private static int f14477h0;
    private ByteBuffer A;
    private int B;
    private long C;
    private long D;
    private long E;
    private long F;
    private int G;
    private boolean H;
    private boolean I;
    private long J;
    private float K;
    private d3.j[] L;
    private ByteBuffer[] M;
    private ByteBuffer N;
    private int O;
    private ByteBuffer P;
    private byte[] Q;
    private int R;
    private int S;
    private boolean T;
    private boolean U;
    private boolean V;
    private boolean W;
    private int X;
    private z Y;
    private d Z;

    /* renamed from: a  reason: collision with root package name */
    private final d3.i f14478a;

    /* renamed from: a0  reason: collision with root package name */
    private boolean f14479a0;

    /* renamed from: b  reason: collision with root package name */
    private final d3.k f14480b;

    /* renamed from: b0  reason: collision with root package name */
    private long f14481b0;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f14482c;

    /* renamed from: c0  reason: collision with root package name */
    private boolean f14483c0;

    /* renamed from: d  reason: collision with root package name */
    private final b0 f14484d;

    /* renamed from: d0  reason: collision with root package name */
    private boolean f14485d0;

    /* renamed from: e  reason: collision with root package name */
    private final z0 f14486e;

    /* renamed from: f  reason: collision with root package name */
    private final d3.j[] f14487f;

    /* renamed from: g  reason: collision with root package name */
    private final d3.j[] f14488g;

    /* renamed from: h  reason: collision with root package name */
    private final y4.g f14489h;

    /* renamed from: i  reason: collision with root package name */
    private final y f14490i;

    /* renamed from: j  reason: collision with root package name */
    private final ArrayDeque f14491j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f14492k;

    /* renamed from: l  reason: collision with root package name */
    private final int f14493l;

    /* renamed from: m  reason: collision with root package name */
    private m f14494m;

    /* renamed from: n  reason: collision with root package name */
    private final k f14495n;

    /* renamed from: o  reason: collision with root package name */
    private final k f14496o;

    /* renamed from: p  reason: collision with root package name */
    private final e f14497p;

    /* renamed from: q  reason: collision with root package name */
    private final b0.a f14498q;

    /* renamed from: r  reason: collision with root package name */
    private t3 f14499r;

    /* renamed from: s  reason: collision with root package name */
    private w.c f14500s;

    /* renamed from: t  reason: collision with root package name */
    private g f14501t;

    /* renamed from: u  reason: collision with root package name */
    private g f14502u;

    /* renamed from: v  reason: collision with root package name */
    private AudioTrack f14503v;

    /* renamed from: w  reason: collision with root package name */
    private d3.e f14504w;

    /* renamed from: x  reason: collision with root package name */
    private j f14505x;

    /* renamed from: y  reason: collision with root package name */
    private j f14506y;

    /* renamed from: z  reason: collision with root package name */
    private l3 f14507z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {
        public static void a(AudioTrack audioTrack, d dVar) {
            AudioDeviceInfo audioDeviceInfo;
            if (dVar == null) {
                audioDeviceInfo = null;
            } else {
                audioDeviceInfo = dVar.f14508a;
            }
            audioTrack.setPreferredDevice(audioDeviceInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {
        public static void a(AudioTrack audioTrack, t3 t3Var) {
            LogSessionId logSessionId;
            boolean equals;
            LogSessionId a10 = t3Var.a();
            logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
            equals = a10.equals(logSessionId);
            if (!equals) {
                audioTrack.setLogSessionId(a10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final AudioDeviceInfo f14508a;

        public d(AudioDeviceInfo audioDeviceInfo) {
            this.f14508a = audioDeviceInfo;
        }
    }

    /* loaded from: classes.dex */
    public interface e {

        /* renamed from: a  reason: collision with root package name */
        public static final e f14509a = new p0.a().g();

        int a(int i10, int i11, int i12, int i13, int i14, int i15, double d10);
    }

    /* loaded from: classes.dex */
    public static final class f {

        /* renamed from: b  reason: collision with root package name */
        private d3.k f14511b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f14512c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f14513d;

        /* renamed from: g  reason: collision with root package name */
        b0.a f14516g;

        /* renamed from: a  reason: collision with root package name */
        private d3.i f14510a = d3.i.f14468c;

        /* renamed from: e  reason: collision with root package name */
        private int f14514e = 0;

        /* renamed from: f  reason: collision with root package name */
        e f14515f = e.f14509a;

        public i0 f() {
            if (this.f14511b == null) {
                this.f14511b = new h(new d3.j[0]);
            }
            return new i0(this);
        }

        public f g(d3.i iVar) {
            y4.a.e(iVar);
            this.f14510a = iVar;
            return this;
        }

        public f h(boolean z10) {
            this.f14513d = z10;
            return this;
        }

        public f i(boolean z10) {
            this.f14512c = z10;
            return this;
        }

        public f j(int i10) {
            this.f14514e = i10;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final x1 f14517a;

        /* renamed from: b  reason: collision with root package name */
        public final int f14518b;

        /* renamed from: c  reason: collision with root package name */
        public final int f14519c;

        /* renamed from: d  reason: collision with root package name */
        public final int f14520d;

        /* renamed from: e  reason: collision with root package name */
        public final int f14521e;

        /* renamed from: f  reason: collision with root package name */
        public final int f14522f;

        /* renamed from: g  reason: collision with root package name */
        public final int f14523g;

        /* renamed from: h  reason: collision with root package name */
        public final int f14524h;

        /* renamed from: i  reason: collision with root package name */
        public final d3.j[] f14525i;

        public g(x1 x1Var, int i10, int i11, int i12, int i13, int i14, int i15, int i16, d3.j[] jVarArr) {
            this.f14517a = x1Var;
            this.f14518b = i10;
            this.f14519c = i11;
            this.f14520d = i12;
            this.f14521e = i13;
            this.f14522f = i14;
            this.f14523g = i15;
            this.f14524h = i16;
            this.f14525i = jVarArr;
        }

        private AudioTrack d(boolean z10, d3.e eVar, int i10) {
            int i11 = y4.q0.f32946a;
            if (i11 >= 29) {
                return f(z10, eVar, i10);
            }
            if (i11 >= 21) {
                return e(z10, eVar, i10);
            }
            return g(eVar, i10);
        }

        private AudioTrack e(boolean z10, d3.e eVar, int i10) {
            return new AudioTrack(i(eVar, z10), i0.O(this.f14521e, this.f14522f, this.f14523g), this.f14524h, 1, i10);
        }

        private AudioTrack f(boolean z10, d3.e eVar, int i10) {
            AudioTrack.Builder offloadedPlayback;
            AudioFormat O = i0.O(this.f14521e, this.f14522f, this.f14523g);
            AudioAttributes i11 = i(eVar, z10);
            boolean z11 = true;
            AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(i11).setAudioFormat(O).setTransferMode(1).setBufferSizeInBytes(this.f14524h).setSessionId(i10);
            if (this.f14519c != 1) {
                z11 = false;
            }
            offloadedPlayback = sessionId.setOffloadedPlayback(z11);
            return offloadedPlayback.build();
        }

        private AudioTrack g(d3.e eVar, int i10) {
            int f02 = y4.q0.f0(eVar.f14456c);
            if (i10 == 0) {
                return new AudioTrack(f02, this.f14521e, this.f14522f, this.f14523g, this.f14524h, 1);
            }
            return new AudioTrack(f02, this.f14521e, this.f14522f, this.f14523g, this.f14524h, 1, i10);
        }

        private static AudioAttributes i(d3.e eVar, boolean z10) {
            if (z10) {
                return j();
            }
            return eVar.b().f14460a;
        }

        private static AudioAttributes j() {
            return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        }

        public AudioTrack a(boolean z10, d3.e eVar, int i10) {
            try {
                AudioTrack d10 = d(z10, eVar, i10);
                int state = d10.getState();
                if (state == 1) {
                    return d10;
                }
                try {
                    d10.release();
                } catch (Exception unused) {
                }
                throw new w.b(state, this.f14521e, this.f14522f, this.f14524h, this.f14517a, l(), null);
            } catch (IllegalArgumentException | UnsupportedOperationException e10) {
                throw new w.b(0, this.f14521e, this.f14522f, this.f14524h, this.f14517a, l(), e10);
            }
        }

        public boolean b(g gVar) {
            if (gVar.f14519c == this.f14519c && gVar.f14523g == this.f14523g && gVar.f14521e == this.f14521e && gVar.f14522f == this.f14522f && gVar.f14520d == this.f14520d) {
                return true;
            }
            return false;
        }

        public g c(int i10) {
            return new g(this.f14517a, this.f14518b, this.f14519c, this.f14520d, this.f14521e, this.f14522f, this.f14523g, i10, this.f14525i);
        }

        public long h(long j10) {
            return (j10 * 1000000) / this.f14521e;
        }

        public long k(long j10) {
            return (j10 * 1000000) / this.f14517a.f4528z;
        }

        public boolean l() {
            if (this.f14519c == 1) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class h implements d3.k {

        /* renamed from: a  reason: collision with root package name */
        private final d3.j[] f14526a;

        /* renamed from: b  reason: collision with root package name */
        private final w0 f14527b;

        /* renamed from: c  reason: collision with root package name */
        private final y0 f14528c;

        public h(d3.j... jVarArr) {
            this(jVarArr, new w0(), new y0());
        }

        @Override // d3.k
        public long a(long j10) {
            return this.f14528c.f(j10);
        }

        @Override // d3.k
        public l3 b(l3 l3Var) {
            this.f14528c.h(l3Var.f4209a);
            this.f14528c.g(l3Var.f4210b);
            return l3Var;
        }

        @Override // d3.k
        public long c() {
            return this.f14527b.o();
        }

        @Override // d3.k
        public boolean d(boolean z10) {
            this.f14527b.u(z10);
            return z10;
        }

        @Override // d3.k
        public d3.j[] e() {
            return this.f14526a;
        }

        public h(d3.j[] jVarArr, w0 w0Var, y0 y0Var) {
            d3.j[] jVarArr2 = new d3.j[jVarArr.length + 2];
            this.f14526a = jVarArr2;
            System.arraycopy(jVarArr, 0, jVarArr2, 0, jVarArr.length);
            this.f14527b = w0Var;
            this.f14528c = y0Var;
            jVarArr2[jVarArr.length] = w0Var;
            jVarArr2[jVarArr.length + 1] = y0Var;
        }
    }

    /* loaded from: classes.dex */
    public static final class i extends RuntimeException {
        private i(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class j {

        /* renamed from: a  reason: collision with root package name */
        public final l3 f14529a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f14530b;

        /* renamed from: c  reason: collision with root package name */
        public final long f14531c;

        /* renamed from: d  reason: collision with root package name */
        public final long f14532d;

        private j(l3 l3Var, boolean z10, long j10, long j11) {
            this.f14529a = l3Var;
            this.f14530b = z10;
            this.f14531c = j10;
            this.f14532d = j11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class k {

        /* renamed from: a  reason: collision with root package name */
        private final long f14533a;

        /* renamed from: b  reason: collision with root package name */
        private Exception f14534b;

        /* renamed from: c  reason: collision with root package name */
        private long f14535c;

        public k(long j10) {
            this.f14533a = j10;
        }

        public void a() {
            this.f14534b = null;
        }

        public void b(Exception exc) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f14534b == null) {
                this.f14534b = exc;
                this.f14535c = this.f14533a + elapsedRealtime;
            }
            if (elapsedRealtime >= this.f14535c) {
                Exception exc2 = this.f14534b;
                if (exc2 != exc) {
                    exc2.addSuppressed(exc);
                }
                Exception exc3 = this.f14534b;
                a();
                throw exc3;
            }
        }
    }

    /* loaded from: classes.dex */
    private final class l implements y.a {
        private l() {
        }

        @Override // d3.y.a
        public void a(int i10, long j10) {
            if (i0.this.f14500s != null) {
                i0.this.f14500s.d(i10, j10, SystemClock.elapsedRealtime() - i0.this.f14481b0);
            }
        }

        @Override // d3.y.a
        public void b(long j10) {
            if (i0.this.f14500s != null) {
                i0.this.f14500s.b(j10);
            }
        }

        @Override // d3.y.a
        public void c(long j10) {
            y4.r.i("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j10);
        }

        @Override // d3.y.a
        public void d(long j10, long j11, long j12, long j13) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j10 + ", " + j11 + ", " + j12 + ", " + j13 + ", " + i0.this.V() + ", " + i0.this.W();
            if (!i0.f14474e0) {
                y4.r.i("DefaultAudioSink", str);
                return;
            }
            throw new i(str);
        }

        @Override // d3.y.a
        public void e(long j10, long j11, long j12, long j13) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j10 + ", " + j11 + ", " + j12 + ", " + j13 + ", " + i0.this.V() + ", " + i0.this.W();
            if (!i0.f14474e0) {
                y4.r.i("DefaultAudioSink", str);
                return;
            }
            throw new i(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class m {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f14537a = new Handler(Looper.myLooper());

        /* renamed from: b  reason: collision with root package name */
        private final AudioTrack$StreamEventCallback f14538b;

        /* loaded from: classes.dex */
        class a extends AudioTrack$StreamEventCallback {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ i0 f14540a;

            a(i0 i0Var) {
                this.f14540a = i0Var;
            }

            public void onDataRequest(AudioTrack audioTrack, int i10) {
                if (audioTrack.equals(i0.this.f14503v) && i0.this.f14500s != null && i0.this.V) {
                    i0.this.f14500s.f();
                }
            }

            public void onTearDown(AudioTrack audioTrack) {
                if (audioTrack.equals(i0.this.f14503v) && i0.this.f14500s != null && i0.this.V) {
                    i0.this.f14500s.f();
                }
            }
        }

        public m() {
            this.f14538b = new a(i0.this);
        }

        public void a(AudioTrack audioTrack) {
            Handler handler = this.f14537a;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new o0(handler), this.f14538b);
        }

        public void b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.f14538b);
            this.f14537a.removeCallbacksAndMessages(null);
        }
    }

    private void H(long j10) {
        l3 l3Var;
        boolean z10;
        if (o0()) {
            l3Var = this.f14480b.b(P());
        } else {
            l3Var = l3.f4205d;
        }
        l3 l3Var2 = l3Var;
        if (o0()) {
            z10 = this.f14480b.d(U());
        } else {
            z10 = false;
        }
        this.f14491j.add(new j(l3Var2, z10, Math.max(0L, j10), this.f14502u.h(W())));
        n0();
        w.c cVar = this.f14500s;
        if (cVar != null) {
            cVar.onSkipSilenceEnabledChanged(z10);
        }
    }

    private long I(long j10) {
        while (!this.f14491j.isEmpty() && j10 >= ((j) this.f14491j.getFirst()).f14532d) {
            this.f14506y = (j) this.f14491j.remove();
        }
        j jVar = this.f14506y;
        long j11 = j10 - jVar.f14532d;
        if (jVar.f14529a.equals(l3.f4205d)) {
            return this.f14506y.f14531c + j11;
        }
        if (this.f14491j.isEmpty()) {
            return this.f14506y.f14531c + this.f14480b.a(j11);
        }
        j jVar2 = (j) this.f14491j.getFirst();
        return jVar2.f14531c - y4.q0.Z(jVar2.f14532d - j10, this.f14506y.f14529a.f4209a);
    }

    private long J(long j10) {
        return j10 + this.f14502u.h(this.f14480b.c());
    }

    private AudioTrack K(g gVar) {
        try {
            AudioTrack a10 = gVar.a(this.f14479a0, this.f14504w, this.X);
            b0.a aVar = this.f14498q;
            if (aVar != null) {
                aVar.A(a0(a10));
            }
            return a10;
        } catch (w.b e10) {
            w.c cVar = this.f14500s;
            if (cVar != null) {
                cVar.a(e10);
            }
            throw e10;
        }
    }

    private AudioTrack L() {
        try {
            return K((g) y4.a.e(this.f14502u));
        } catch (w.b e10) {
            g gVar = this.f14502u;
            if (gVar.f14524h > 1000000) {
                g c10 = gVar.c(1000000);
                try {
                    AudioTrack K = K(c10);
                    this.f14502u = c10;
                    return K;
                } catch (w.b e11) {
                    e10.addSuppressed(e11);
                    c0();
                    throw e10;
                }
            }
            c0();
            throw e10;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0029 -> B:5:0x0009). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean M() {
        /*
            r9 = this;
            int r0 = r9.S
            r1 = 1
            r2 = 0
            r3 = -1
            if (r0 != r3) goto Lb
            r9.S = r2
        L9:
            r0 = r1
            goto Lc
        Lb:
            r0 = r2
        Lc:
            int r4 = r9.S
            d3.j[] r5 = r9.L
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L2f
            r4 = r5[r4]
            if (r0 == 0) goto L1f
            r4.c()
        L1f:
            r9.e0(r7)
            boolean r0 = r4.d()
            if (r0 != 0) goto L29
            return r2
        L29:
            int r0 = r9.S
            int r0 = r0 + r1
            r9.S = r0
            goto L9
        L2f:
            java.nio.ByteBuffer r0 = r9.P
            if (r0 == 0) goto L3b
            r9.r0(r0, r7)
            java.nio.ByteBuffer r0 = r9.P
            if (r0 == 0) goto L3b
            return r2
        L3b:
            r9.S = r3
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d3.i0.M():boolean");
    }

    private void N() {
        int i10 = 0;
        while (true) {
            d3.j[] jVarArr = this.L;
            if (i10 < jVarArr.length) {
                d3.j jVar = jVarArr[i10];
                jVar.flush();
                this.M[i10] = jVar.getOutput();
                i10++;
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AudioFormat O(int i10, int i11, int i12) {
        return new AudioFormat.Builder().setSampleRate(i10).setChannelMask(i11).setEncoding(i12).build();
    }

    private l3 P() {
        return S().f14529a;
    }

    private static int Q(int i10, int i11, int i12) {
        boolean z10;
        int minBufferSize = AudioTrack.getMinBufferSize(i10, i11, i12);
        if (minBufferSize != -2) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        return minBufferSize;
    }

    private static int R(int i10, ByteBuffer byteBuffer) {
        switch (i10) {
            case 5:
            case 6:
            case 18:
                return d3.b.e(byteBuffer);
            case 7:
            case 8:
                return q0.e(byteBuffer);
            case 9:
                int m10 = t0.m(y4.q0.I(byteBuffer, byteBuffer.position()));
                if (m10 != -1) {
                    return m10;
                }
                throw new IllegalArgumentException();
            case 10:
                return 1024;
            case 11:
            case 12:
                return 2048;
            case 13:
            case C1415p9.C /* 19 */:
            default:
                throw new IllegalStateException("Unexpected audio encoding: " + i10);
            case 14:
                int b10 = d3.b.b(byteBuffer);
                if (b10 == -1) {
                    return 0;
                }
                return d3.b.i(byteBuffer, b10) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return d3.c.c(byteBuffer);
            case 20:
                return u0.g(byteBuffer);
        }
    }

    private j S() {
        j jVar = this.f14505x;
        if (jVar == null) {
            if (!this.f14491j.isEmpty()) {
                return (j) this.f14491j.getLast();
            }
            return this.f14506y;
        }
        return jVar;
    }

    private int T(AudioFormat audioFormat, AudioAttributes audioAttributes) {
        boolean isOffloadedPlaybackSupported;
        int playbackOffloadSupport;
        int i10 = y4.q0.f32946a;
        if (i10 >= 31) {
            playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
            return playbackOffloadSupport;
        }
        isOffloadedPlaybackSupported = AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes);
        if (!isOffloadedPlaybackSupported) {
            return 0;
        }
        if (i10 == 30 && y4.q0.f32949d.startsWith("Pixel")) {
            return 2;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long V() {
        g gVar = this.f14502u;
        if (gVar.f14519c == 0) {
            return this.C / gVar.f14518b;
        }
        return this.D;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long W() {
        g gVar = this.f14502u;
        if (gVar.f14519c == 0) {
            return this.E / gVar.f14520d;
        }
        return this.F;
    }

    private boolean X() {
        boolean z10;
        t3 t3Var;
        if (!this.f14489h.d()) {
            return false;
        }
        AudioTrack L = L();
        this.f14503v = L;
        if (a0(L)) {
            f0(this.f14503v);
            if (this.f14493l != 3) {
                AudioTrack audioTrack = this.f14503v;
                x1 x1Var = this.f14502u.f14517a;
                audioTrack.setOffloadDelayPadding(x1Var.B, x1Var.C);
            }
        }
        int i10 = y4.q0.f32946a;
        if (i10 >= 31 && (t3Var = this.f14499r) != null) {
            c.a(this.f14503v, t3Var);
        }
        this.X = this.f14503v.getAudioSessionId();
        y yVar = this.f14490i;
        AudioTrack audioTrack2 = this.f14503v;
        g gVar = this.f14502u;
        if (gVar.f14519c == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        yVar.s(audioTrack2, z10, gVar.f14523g, gVar.f14520d, gVar.f14524h);
        k0();
        int i11 = this.Y.f14707a;
        if (i11 != 0) {
            this.f14503v.attachAuxEffect(i11);
            this.f14503v.setAuxEffectSendLevel(this.Y.f14708b);
        }
        d dVar = this.Z;
        if (dVar != null && i10 >= 23) {
            b.a(this.f14503v, dVar);
        }
        this.I = true;
        return true;
    }

    private static boolean Y(int i10) {
        if ((y4.q0.f32946a >= 24 && i10 == -6) || i10 == -32) {
            return true;
        }
        return false;
    }

    private boolean Z() {
        if (this.f14503v != null) {
            return true;
        }
        return false;
    }

    private static boolean a0(AudioTrack audioTrack) {
        boolean isOffloadedPlayback;
        if (y4.q0.f32946a >= 29) {
            isOffloadedPlayback = audioTrack.isOffloadedPlayback();
            if (isOffloadedPlayback) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b0(AudioTrack audioTrack, y4.g gVar) {
        try {
            audioTrack.flush();
            audioTrack.release();
            gVar.e();
            synchronized (f14475f0) {
                int i10 = f14477h0 - 1;
                f14477h0 = i10;
                if (i10 == 0) {
                    f14476g0.shutdown();
                    f14476g0 = null;
                }
            }
        } catch (Throwable th) {
            gVar.e();
            synchronized (f14475f0) {
                int i11 = f14477h0 - 1;
                f14477h0 = i11;
                if (i11 == 0) {
                    f14476g0.shutdown();
                    f14476g0 = null;
                }
                throw th;
            }
        }
    }

    private void c0() {
        if (!this.f14502u.l()) {
            return;
        }
        this.f14483c0 = true;
    }

    private void d0() {
        if (!this.U) {
            this.U = true;
            this.f14490i.g(W());
            this.f14503v.stop();
            this.B = 0;
        }
    }

    private void e0(long j10) {
        ByteBuffer byteBuffer;
        int length = this.L.length;
        int i10 = length;
        while (i10 >= 0) {
            if (i10 > 0) {
                byteBuffer = this.M[i10 - 1];
            } else {
                byteBuffer = this.N;
                if (byteBuffer == null) {
                    byteBuffer = d3.j.f14542a;
                }
            }
            if (i10 == length) {
                r0(byteBuffer, j10);
            } else {
                d3.j jVar = this.L[i10];
                if (i10 > this.S) {
                    jVar.b(byteBuffer);
                }
                ByteBuffer output = jVar.getOutput();
                this.M[i10] = output;
                if (output.hasRemaining()) {
                    i10++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i10--;
        }
    }

    private void f0(AudioTrack audioTrack) {
        if (this.f14494m == null) {
            this.f14494m = new m();
        }
        this.f14494m.a(audioTrack);
    }

    private static void g0(final AudioTrack audioTrack, final y4.g gVar) {
        gVar.c();
        synchronized (f14475f0) {
            if (f14476g0 == null) {
                f14476g0 = y4.q0.B0("ExoPlayer:AudioTrackReleaseThread");
            }
            f14477h0++;
            f14476g0.execute(new Runnable() { // from class: d3.h0
                @Override // java.lang.Runnable
                public final void run() {
                    i0.b0(audioTrack, gVar);
                }
            });
        }
    }

    private void h0() {
        this.C = 0L;
        this.D = 0L;
        this.E = 0L;
        this.F = 0L;
        this.f14485d0 = false;
        this.G = 0;
        this.f14506y = new j(P(), U(), 0L, 0L);
        this.J = 0L;
        this.f14505x = null;
        this.f14491j.clear();
        this.N = null;
        this.O = 0;
        this.P = null;
        this.U = false;
        this.T = false;
        this.S = -1;
        this.A = null;
        this.B = 0;
        this.f14486e.m();
        N();
    }

    private void i0(l3 l3Var, boolean z10) {
        j S = S();
        if (!l3Var.equals(S.f14529a) || z10 != S.f14530b) {
            j jVar = new j(l3Var, z10, -9223372036854775807L, -9223372036854775807L);
            if (Z()) {
                this.f14505x = jVar;
            } else {
                this.f14506y = jVar;
            }
        }
    }

    private void j0(l3 l3Var) {
        if (Z()) {
            try {
                this.f14503v.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(l3Var.f4209a).setPitch(l3Var.f4210b).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e10) {
                y4.r.j("DefaultAudioSink", "Failed to set playback params", e10);
            }
            l3Var = new l3(this.f14503v.getPlaybackParams().getSpeed(), this.f14503v.getPlaybackParams().getPitch());
            this.f14490i.t(l3Var.f4209a);
        }
        this.f14507z = l3Var;
    }

    private void k0() {
        if (Z()) {
            if (y4.q0.f32946a >= 21) {
                l0(this.f14503v, this.K);
            } else {
                m0(this.f14503v, this.K);
            }
        }
    }

    private static void l0(AudioTrack audioTrack, float f10) {
        audioTrack.setVolume(f10);
    }

    private static void m0(AudioTrack audioTrack, float f10) {
        audioTrack.setStereoVolume(f10, f10);
    }

    private void n0() {
        d3.j[] jVarArr = this.f14502u.f14525i;
        ArrayList arrayList = new ArrayList();
        for (d3.j jVar : jVarArr) {
            if (jVar.isActive()) {
                arrayList.add(jVar);
            } else {
                jVar.flush();
            }
        }
        int size = arrayList.size();
        this.L = (d3.j[]) arrayList.toArray(new d3.j[size]);
        this.M = new ByteBuffer[size];
        N();
    }

    private boolean o0() {
        if (!this.f14479a0 && "audio/raw".equals(this.f14502u.f14517a.f4514l) && !p0(this.f14502u.f14517a.A)) {
            return true;
        }
        return false;
    }

    private boolean p0(int i10) {
        if (this.f14482c && y4.q0.s0(i10)) {
            return true;
        }
        return false;
    }

    private boolean q0(x1 x1Var, d3.e eVar) {
        int f10;
        int G;
        int T;
        boolean z10;
        boolean z11;
        if (y4.q0.f32946a < 29 || this.f14493l == 0 || (f10 = y4.v.f((String) y4.a.e(x1Var.f4514l), x1Var.f4511i)) == 0 || (G = y4.q0.G(x1Var.f4527y)) == 0 || (T = T(O(x1Var.f4528z, G, f10), eVar.b().f14460a)) == 0) {
            return false;
        }
        if (T != 1) {
            if (T == 2) {
                return true;
            }
            throw new IllegalStateException();
        }
        if (x1Var.B == 0 && x1Var.C == 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (this.f14493l == 1) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10 && z11) {
            return false;
        }
        return true;
    }

    private void r0(ByteBuffer byteBuffer, long j10) {
        int s02;
        boolean z10;
        w.c cVar;
        boolean z11;
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        ByteBuffer byteBuffer2 = this.P;
        boolean z12 = true;
        if (byteBuffer2 != null) {
            if (byteBuffer2 == byteBuffer) {
                z11 = true;
            } else {
                z11 = false;
            }
            y4.a.a(z11);
        } else {
            this.P = byteBuffer;
            if (y4.q0.f32946a < 21) {
                int remaining = byteBuffer.remaining();
                byte[] bArr = this.Q;
                if (bArr == null || bArr.length < remaining) {
                    this.Q = new byte[remaining];
                }
                int position = byteBuffer.position();
                byteBuffer.get(this.Q, 0, remaining);
                byteBuffer.position(position);
                this.R = 0;
            }
        }
        int remaining2 = byteBuffer.remaining();
        if (y4.q0.f32946a < 21) {
            int c10 = this.f14490i.c(this.E);
            if (c10 > 0) {
                s02 = this.f14503v.write(this.Q, this.R, Math.min(remaining2, c10));
                if (s02 > 0) {
                    this.R += s02;
                    byteBuffer.position(byteBuffer.position() + s02);
                }
            } else {
                s02 = 0;
            }
        } else if (this.f14479a0) {
            if (j10 != -9223372036854775807L) {
                z10 = true;
            } else {
                z10 = false;
            }
            y4.a.f(z10);
            s02 = t0(this.f14503v, byteBuffer, remaining2, j10);
        } else {
            s02 = s0(this.f14503v, byteBuffer, remaining2);
        }
        this.f14481b0 = SystemClock.elapsedRealtime();
        if (s02 < 0) {
            if (!Y(s02) || this.F <= 0) {
                z12 = false;
            }
            w.e eVar = new w.e(s02, this.f14502u.f14517a, z12);
            w.c cVar2 = this.f14500s;
            if (cVar2 != null) {
                cVar2.a(eVar);
            }
            if (!eVar.f14619b) {
                this.f14496o.b(eVar);
                return;
            }
            throw eVar;
        }
        this.f14496o.a();
        if (a0(this.f14503v)) {
            if (this.F > 0) {
                this.f14485d0 = false;
            }
            if (this.V && (cVar = this.f14500s) != null && s02 < remaining2 && !this.f14485d0) {
                cVar.c();
            }
        }
        int i10 = this.f14502u.f14519c;
        if (i10 == 0) {
            this.E += s02;
        }
        if (s02 == remaining2) {
            if (i10 != 0) {
                if (byteBuffer != this.N) {
                    z12 = false;
                }
                y4.a.f(z12);
                this.F += this.G * this.O;
            }
            this.P = null;
        }
    }

    private static int s0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i10) {
        return audioTrack.write(byteBuffer, i10, 1);
    }

    private int t0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i10, long j10) {
        if (y4.q0.f32946a >= 26) {
            return audioTrack.write(byteBuffer, i10, 1, j10 * 1000);
        }
        if (this.A == null) {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            this.A = allocate;
            allocate.order(ByteOrder.BIG_ENDIAN);
            this.A.putInt(1431633921);
        }
        if (this.B == 0) {
            this.A.putInt(4, i10);
            this.A.putLong(8, j10 * 1000);
            this.A.position(0);
            this.B = i10;
        }
        int remaining = this.A.remaining();
        if (remaining > 0) {
            int write = audioTrack.write(this.A, remaining, 1);
            if (write < 0) {
                this.B = 0;
                return write;
            } else if (write < remaining) {
                return 0;
            }
        }
        int s02 = s0(audioTrack, byteBuffer, i10);
        if (s02 < 0) {
            this.B = 0;
            return s02;
        }
        this.B -= s02;
        return s02;
    }

    public boolean U() {
        return S().f14530b;
    }

    @Override // d3.w
    public void a() {
        flush();
        for (d3.j jVar : this.f14487f) {
            jVar.a();
        }
        for (d3.j jVar2 : this.f14488g) {
            jVar2.a();
        }
        this.V = false;
        this.f14483c0 = false;
    }

    @Override // d3.w
    public boolean b(x1 x1Var) {
        if (v(x1Var) != 0) {
            return true;
        }
        return false;
    }

    @Override // d3.w
    public void c(l3 l3Var) {
        l3 l3Var2 = new l3(y4.q0.p(l3Var.f4209a, 0.1f, 8.0f), y4.q0.p(l3Var.f4210b, 0.1f, 8.0f));
        if (this.f14492k && y4.q0.f32946a >= 23) {
            j0(l3Var2);
        } else {
            i0(l3Var2, U());
        }
    }

    @Override // d3.w
    public boolean d() {
        if (Z() && (!this.T || j())) {
            return false;
        }
        return true;
    }

    @Override // d3.w
    public void e(float f10) {
        if (this.K != f10) {
            this.K = f10;
            k0();
        }
    }

    @Override // d3.w
    public void flush() {
        if (Z()) {
            h0();
            if (this.f14490i.i()) {
                this.f14503v.pause();
            }
            if (a0(this.f14503v)) {
                ((m) y4.a.e(this.f14494m)).b(this.f14503v);
            }
            if (y4.q0.f32946a < 21 && !this.W) {
                this.X = 0;
            }
            g gVar = this.f14501t;
            if (gVar != null) {
                this.f14502u = gVar;
                this.f14501t = null;
            }
            this.f14490i.q();
            g0(this.f14503v, this.f14489h);
            this.f14503v = null;
        }
        this.f14496o.a();
        this.f14495n.a();
    }

    @Override // d3.w
    public l3 g() {
        if (this.f14492k) {
            return this.f14507z;
        }
        return P();
    }

    @Override // d3.w
    public void h(AudioDeviceInfo audioDeviceInfo) {
        d dVar;
        if (audioDeviceInfo == null) {
            dVar = null;
        } else {
            dVar = new d(audioDeviceInfo);
        }
        this.Z = dVar;
        AudioTrack audioTrack = this.f14503v;
        if (audioTrack != null) {
            b.a(audioTrack, dVar);
        }
    }

    @Override // d3.w
    public void i() {
        if (!this.T && Z() && M()) {
            d0();
            this.T = true;
        }
    }

    @Override // d3.w
    public boolean j() {
        if (Z() && this.f14490i.h(W())) {
            return true;
        }
        return false;
    }

    @Override // d3.w
    public void k(d3.e eVar) {
        if (this.f14504w.equals(eVar)) {
            return;
        }
        this.f14504w = eVar;
        if (this.f14479a0) {
            return;
        }
        flush();
    }

    @Override // d3.w
    public void l(int i10) {
        boolean z10;
        if (this.X != i10) {
            this.X = i10;
            if (i10 != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.W = z10;
            flush();
        }
    }

    @Override // d3.w
    public long m(boolean z10) {
        if (Z() && !this.I) {
            return J(I(Math.min(this.f14490i.d(z10), this.f14502u.h(W()))));
        }
        return Long.MIN_VALUE;
    }

    @Override // d3.w
    public void n() {
        if (this.f14479a0) {
            this.f14479a0 = false;
            flush();
        }
    }

    @Override // d3.w
    public void o(w.c cVar) {
        this.f14500s = cVar;
    }

    @Override // d3.w
    public void p(t3 t3Var) {
        this.f14499r = t3Var;
    }

    @Override // d3.w
    public void pause() {
        this.V = false;
        if (Z() && this.f14490i.p()) {
            this.f14503v.pause();
        }
    }

    @Override // d3.w
    public void r(z zVar) {
        if (this.Y.equals(zVar)) {
            return;
        }
        int i10 = zVar.f14707a;
        float f10 = zVar.f14708b;
        AudioTrack audioTrack = this.f14503v;
        if (audioTrack != null) {
            if (this.Y.f14707a != i10) {
                audioTrack.attachAuxEffect(i10);
            }
            if (i10 != 0) {
                this.f14503v.setAuxEffectSendLevel(f10);
            }
        }
        this.Y = zVar;
    }

    @Override // d3.w
    public void s() {
        this.H = true;
    }

    @Override // d3.w
    public void t() {
        boolean z10;
        if (y4.q0.f32946a >= 21) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        y4.a.f(this.W);
        if (!this.f14479a0) {
            this.f14479a0 = true;
            flush();
        }
    }

    @Override // d3.w
    public void u() {
        this.V = true;
        if (Z()) {
            this.f14490i.u();
            this.f14503v.play();
        }
    }

    @Override // d3.w
    public int v(x1 x1Var) {
        if ("audio/raw".equals(x1Var.f4514l)) {
            if (!y4.q0.t0(x1Var.A)) {
                y4.r.i("DefaultAudioSink", "Invalid PCM encoding: " + x1Var.A);
                return 0;
            }
            int i10 = x1Var.A;
            if (i10 == 2 || (this.f14482c && i10 == 4)) {
                return 2;
            }
            return 1;
        } else if ((this.f14483c0 || !q0(x1Var, this.f14504w)) && !this.f14478a.h(x1Var)) {
            return 0;
        } else {
            return 2;
        }
    }

    @Override // d3.w
    public boolean w(ByteBuffer byteBuffer, long j10, int i10) {
        boolean z10;
        boolean z11;
        ByteBuffer byteBuffer2 = this.N;
        if (byteBuffer2 != null && byteBuffer != byteBuffer2) {
            z10 = false;
        } else {
            z10 = true;
        }
        y4.a.a(z10);
        if (this.f14501t != null) {
            if (!M()) {
                return false;
            }
            if (!this.f14501t.b(this.f14502u)) {
                d0();
                if (j()) {
                    return false;
                }
                flush();
            } else {
                this.f14502u = this.f14501t;
                this.f14501t = null;
                if (a0(this.f14503v) && this.f14493l != 3) {
                    if (this.f14503v.getPlayState() == 3) {
                        this.f14503v.setOffloadEndOfStream();
                    }
                    AudioTrack audioTrack = this.f14503v;
                    x1 x1Var = this.f14502u.f14517a;
                    audioTrack.setOffloadDelayPadding(x1Var.B, x1Var.C);
                    this.f14485d0 = true;
                }
            }
            H(j10);
        }
        if (!Z()) {
            try {
                if (!X()) {
                    return false;
                }
            } catch (w.b e10) {
                if (!e10.f14614b) {
                    this.f14495n.b(e10);
                    return false;
                }
                throw e10;
            }
        }
        this.f14495n.a();
        if (this.I) {
            this.J = Math.max(0L, j10);
            this.H = false;
            this.I = false;
            if (this.f14492k && y4.q0.f32946a >= 23) {
                j0(this.f14507z);
            }
            H(j10);
            if (this.V) {
                u();
            }
        }
        if (!this.f14490i.k(W())) {
            return false;
        }
        if (this.N == null) {
            if (byteBuffer.order() == ByteOrder.LITTLE_ENDIAN) {
                z11 = true;
            } else {
                z11 = false;
            }
            y4.a.a(z11);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            g gVar = this.f14502u;
            if (gVar.f14519c != 0 && this.G == 0) {
                int R = R(gVar.f14523g, byteBuffer);
                this.G = R;
                if (R == 0) {
                    return true;
                }
            }
            if (this.f14505x != null) {
                if (!M()) {
                    return false;
                }
                H(j10);
                this.f14505x = null;
            }
            long k10 = this.J + this.f14502u.k(V() - this.f14486e.l());
            if (!this.H && Math.abs(k10 - j10) > 200000) {
                w.c cVar = this.f14500s;
                if (cVar != null) {
                    cVar.a(new w.d(j10, k10));
                }
                this.H = true;
            }
            if (this.H) {
                if (!M()) {
                    return false;
                }
                long j11 = j10 - k10;
                this.J += j11;
                this.H = false;
                H(j10);
                w.c cVar2 = this.f14500s;
                if (cVar2 != null && j11 != 0) {
                    cVar2.e();
                }
            }
            if (this.f14502u.f14519c == 0) {
                this.C += byteBuffer.remaining();
            } else {
                this.D += this.G * i10;
            }
            this.N = byteBuffer;
            this.O = i10;
        }
        e0(j10);
        if (!this.N.hasRemaining()) {
            this.N = null;
            this.O = 0;
            return true;
        } else if (!this.f14490i.j(W())) {
            return false;
        } else {
            y4.r.i("DefaultAudioSink", "Resetting stalled audio track");
            flush();
            return true;
        }
    }

    @Override // d3.w
    public void x() {
        boolean z10;
        if (y4.q0.f32946a < 25) {
            flush();
            return;
        }
        this.f14496o.a();
        this.f14495n.a();
        if (!Z()) {
            return;
        }
        h0();
        if (this.f14490i.i()) {
            this.f14503v.pause();
        }
        this.f14503v.flush();
        this.f14490i.q();
        y yVar = this.f14490i;
        AudioTrack audioTrack = this.f14503v;
        g gVar = this.f14502u;
        if (gVar.f14519c == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        yVar.s(audioTrack, z10, gVar.f14523g, gVar.f14520d, gVar.f14524h);
        this.I = true;
    }

    @Override // d3.w
    public void y(boolean z10) {
        i0(P(), z10);
    }

    @Override // d3.w
    public void z(x1 x1Var, int i10, int[] iArr) {
        d3.j[] jVarArr;
        int i11;
        int i12;
        int i13;
        int intValue;
        int i14;
        int i15;
        int i16;
        double d10;
        int i17;
        int i18;
        int i19;
        int i20;
        int a10;
        d3.j[] jVarArr2;
        int[] iArr2;
        if ("audio/raw".equals(x1Var.f4514l)) {
            y4.a.a(y4.q0.t0(x1Var.A));
            i11 = y4.q0.d0(x1Var.A, x1Var.f4527y);
            if (p0(x1Var.A)) {
                jVarArr2 = this.f14488g;
            } else {
                jVarArr2 = this.f14487f;
            }
            this.f14486e.n(x1Var.B, x1Var.C);
            if (y4.q0.f32946a < 21 && x1Var.f4527y == 8 && iArr == null) {
                iArr2 = new int[6];
                for (int i21 = 0; i21 < 6; i21++) {
                    iArr2[i21] = i21;
                }
            } else {
                iArr2 = iArr;
            }
            this.f14484d.l(iArr2);
            j.a aVar = new j.a(x1Var.f4528z, x1Var.f4527y, x1Var.A);
            for (d3.j jVar : jVarArr2) {
                try {
                    j.a e10 = jVar.e(aVar);
                    if (jVar.isActive()) {
                        aVar = e10;
                    }
                } catch (j.b e11) {
                    throw new w.a(e11, x1Var);
                }
            }
            int i22 = aVar.f14546c;
            int i23 = aVar.f14544a;
            int G = y4.q0.G(aVar.f14545b);
            i15 = 0;
            jVarArr = jVarArr2;
            i12 = y4.q0.d0(i22, aVar.f14545b);
            i14 = i22;
            i13 = i23;
            intValue = G;
        } else {
            d3.j[] jVarArr3 = new d3.j[0];
            int i24 = x1Var.f4528z;
            if (q0(x1Var, this.f14504w)) {
                jVarArr = jVarArr3;
                i11 = -1;
                i12 = -1;
                i15 = 1;
                i13 = i24;
                i14 = y4.v.f((String) y4.a.e(x1Var.f4514l), x1Var.f4511i);
                intValue = y4.q0.G(x1Var.f4527y);
            } else {
                Pair f10 = this.f14478a.f(x1Var);
                if (f10 != null) {
                    int intValue2 = ((Integer) f10.first).intValue();
                    jVarArr = jVarArr3;
                    i11 = -1;
                    i12 = -1;
                    i13 = i24;
                    intValue = ((Integer) f10.second).intValue();
                    i14 = intValue2;
                    i15 = 2;
                } else {
                    throw new w.a("Unable to configure passthrough for: " + x1Var, x1Var);
                }
            }
        }
        if (i14 != 0) {
            if (intValue != 0) {
                if (i10 != 0) {
                    a10 = i10;
                    i17 = i14;
                    i18 = intValue;
                    i19 = i12;
                    i20 = i13;
                } else {
                    e eVar = this.f14497p;
                    int Q = Q(i13, intValue, i14);
                    if (i12 != -1) {
                        i16 = i12;
                    } else {
                        i16 = 1;
                    }
                    int i25 = x1Var.f4510h;
                    if (this.f14492k) {
                        d10 = 8.0d;
                    } else {
                        d10 = 1.0d;
                    }
                    i17 = i14;
                    i18 = intValue;
                    i19 = i12;
                    i20 = i13;
                    a10 = eVar.a(Q, i14, i15, i16, i13, i25, d10);
                }
                this.f14483c0 = false;
                g gVar = new g(x1Var, i11, i15, i19, i20, i18, i17, a10, jVarArr);
                if (Z()) {
                    this.f14501t = gVar;
                    return;
                } else {
                    this.f14502u = gVar;
                    return;
                }
            }
            throw new w.a("Invalid output channel config (mode=" + i15 + ") for: " + x1Var, x1Var);
        }
        throw new w.a("Invalid output encoding (mode=" + i15 + ") for: " + x1Var, x1Var);
    }

    private i0(f fVar) {
        this.f14478a = fVar.f14510a;
        d3.k kVar = fVar.f14511b;
        this.f14480b = kVar;
        int i10 = y4.q0.f32946a;
        this.f14482c = i10 >= 21 && fVar.f14512c;
        this.f14492k = i10 >= 23 && fVar.f14513d;
        this.f14493l = i10 >= 29 ? fVar.f14514e : 0;
        this.f14497p = fVar.f14515f;
        y4.g gVar = new y4.g(y4.d.f32861a);
        this.f14489h = gVar;
        gVar.e();
        this.f14490i = new y(new l());
        b0 b0Var = new b0();
        this.f14484d = b0Var;
        z0 z0Var = new z0();
        this.f14486e = z0Var;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new v0(), b0Var, z0Var);
        Collections.addAll(arrayList, kVar.e());
        this.f14487f = (d3.j[]) arrayList.toArray(new d3.j[0]);
        this.f14488g = new d3.j[]{new r0()};
        this.K = 1.0f;
        this.f14504w = d3.e.f14447g;
        this.X = 0;
        this.Y = new z(0, 0.0f);
        l3 l3Var = l3.f4205d;
        this.f14506y = new j(l3Var, false, 0L, 0L);
        this.f14507z = l3Var;
        this.S = -1;
        this.L = new d3.j[0];
        this.M = new ByteBuffer[0];
        this.f14491j = new ArrayDeque();
        this.f14495n = new k(100L);
        this.f14496o = new k(100L);
        this.f14498q = fVar.f14516g;
    }
}
