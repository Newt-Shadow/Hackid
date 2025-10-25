package c3;

import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import b3.f2;
import b3.g4;
import b3.l4;
import b3.m3;
import c3.b;
import c3.s3;
import d3.w;
import d4.t;
import f3.h;
import f3.n;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.UUID;
import s3.u;
import x4.n0;
import x4.w;
/* loaded from: classes.dex */
public final class r3 implements c3.b, s3.a {
    private boolean A;

    /* renamed from: a  reason: collision with root package name */
    private final Context f4955a;

    /* renamed from: b  reason: collision with root package name */
    private final s3 f4956b;

    /* renamed from: c  reason: collision with root package name */
    private final PlaybackSession f4957c;

    /* renamed from: i  reason: collision with root package name */
    private String f4963i;

    /* renamed from: j  reason: collision with root package name */
    private PlaybackMetrics.Builder f4964j;

    /* renamed from: k  reason: collision with root package name */
    private int f4965k;

    /* renamed from: n  reason: collision with root package name */
    private b3.i3 f4968n;

    /* renamed from: o  reason: collision with root package name */
    private b f4969o;

    /* renamed from: p  reason: collision with root package name */
    private b f4970p;

    /* renamed from: q  reason: collision with root package name */
    private b f4971q;

    /* renamed from: r  reason: collision with root package name */
    private b3.x1 f4972r;

    /* renamed from: s  reason: collision with root package name */
    private b3.x1 f4973s;

    /* renamed from: t  reason: collision with root package name */
    private b3.x1 f4974t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f4975u;

    /* renamed from: v  reason: collision with root package name */
    private int f4976v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f4977w;

    /* renamed from: x  reason: collision with root package name */
    private int f4978x;

    /* renamed from: y  reason: collision with root package name */
    private int f4979y;

    /* renamed from: z  reason: collision with root package name */
    private int f4980z;

    /* renamed from: e  reason: collision with root package name */
    private final g4.d f4959e = new g4.d();

    /* renamed from: f  reason: collision with root package name */
    private final g4.b f4960f = new g4.b();

    /* renamed from: h  reason: collision with root package name */
    private final HashMap f4962h = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    private final HashMap f4961g = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final long f4958d = SystemClock.elapsedRealtime();

    /* renamed from: l  reason: collision with root package name */
    private int f4966l = 0;

    /* renamed from: m  reason: collision with root package name */
    private int f4967m = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f4981a;

        /* renamed from: b  reason: collision with root package name */
        public final int f4982b;

        public a(int i10, int i11) {
            this.f4981a = i10;
            this.f4982b = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final b3.x1 f4983a;

        /* renamed from: b  reason: collision with root package name */
        public final int f4984b;

        /* renamed from: c  reason: collision with root package name */
        public final String f4985c;

        public b(b3.x1 x1Var, int i10, String str) {
            this.f4983a = x1Var;
            this.f4984b = i10;
            this.f4985c = str;
        }
    }

    private r3(Context context, PlaybackSession playbackSession) {
        this.f4955a = context.getApplicationContext();
        this.f4957c = playbackSession;
        p1 p1Var = new p1();
        this.f4956b = p1Var;
        p1Var.f(this);
    }

    public static r3 A0(Context context) {
        PlaybackSession createPlaybackSession;
        MediaMetricsManager a10 = m3.a(context.getSystemService("media_metrics"));
        if (a10 != null) {
            createPlaybackSession = a10.createPlaybackSession();
            return new r3(context, createPlaybackSession);
        }
        return null;
    }

    private void B0() {
        long longValue;
        long longValue2;
        int i10;
        PlaybackMetrics build;
        PlaybackMetrics.Builder builder = this.f4964j;
        if (builder != null && this.A) {
            builder.setAudioUnderrunCount(this.f4980z);
            this.f4964j.setVideoFramesDropped(this.f4978x);
            this.f4964j.setVideoFramesPlayed(this.f4979y);
            Long l10 = (Long) this.f4961g.get(this.f4963i);
            PlaybackMetrics.Builder builder2 = this.f4964j;
            if (l10 == null) {
                longValue = 0;
            } else {
                longValue = l10.longValue();
            }
            builder2.setNetworkTransferDurationMillis(longValue);
            Long l11 = (Long) this.f4962h.get(this.f4963i);
            PlaybackMetrics.Builder builder3 = this.f4964j;
            if (l11 == null) {
                longValue2 = 0;
            } else {
                longValue2 = l11.longValue();
            }
            builder3.setNetworkBytesRead(longValue2);
            PlaybackMetrics.Builder builder4 = this.f4964j;
            if (l11 != null && l11.longValue() > 0) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            builder4.setStreamSource(i10);
            PlaybackSession playbackSession = this.f4957c;
            build = this.f4964j.build();
            playbackSession.reportPlaybackMetrics(build);
        }
        this.f4964j = null;
        this.f4963i = null;
        this.f4980z = 0;
        this.f4978x = 0;
        this.f4979y = 0;
        this.f4972r = null;
        this.f4973s = null;
        this.f4974t = null;
        this.A = false;
    }

    private static int C0(int i10) {
        switch (y4.q0.U(i10)) {
            case 6002:
                return 24;
            case 6003:
                return 28;
            case 6004:
                return 25;
            case 6005:
                return 26;
            default:
                return 27;
        }
    }

    private static f3.m D0(o6.q qVar) {
        f3.m mVar;
        o6.r0 it = qVar.iterator();
        while (it.hasNext()) {
            l4.a aVar = (l4.a) it.next();
            for (int i10 = 0; i10 < aVar.f4221a; i10++) {
                if (aVar.e(i10) && (mVar = aVar.b(i10).f4517o) != null) {
                    return mVar;
                }
            }
        }
        return null;
    }

    private static int E0(f3.m mVar) {
        for (int i10 = 0; i10 < mVar.f15717d; i10++) {
            UUID uuid = mVar.e(i10).f15719b;
            if (uuid.equals(b3.s.f4354d)) {
                return 3;
            }
            if (uuid.equals(b3.s.f4355e)) {
                return 2;
            }
            if (uuid.equals(b3.s.f4353c)) {
                return 6;
            }
        }
        return 1;
    }

    private static a F0(b3.i3 i3Var, Context context, boolean z10) {
        int i10;
        boolean z11;
        int i11;
        if (i3Var.f4099a == 1001) {
            return new a(20, 0);
        }
        if (i3Var instanceof b3.a0) {
            b3.a0 a0Var = (b3.a0) i3Var;
            if (a0Var.f3767i == 1) {
                z11 = true;
            } else {
                z11 = false;
            }
            i10 = a0Var.f3771m;
        } else {
            i10 = 0;
            z11 = false;
        }
        Throwable th = (Throwable) y4.a.e(i3Var.getCause());
        if (th instanceof IOException) {
            if (th instanceof x4.a0) {
                return new a(5, ((x4.a0) th).f32270d);
            }
            if (!(th instanceof x4.z) && !(th instanceof b3.e3)) {
                if (!(th instanceof x4.y) && !(th instanceof n0.a)) {
                    if (i3Var.f4099a == 1002) {
                        return new a(21, 0);
                    }
                    if (th instanceof n.a) {
                        Throwable th2 = (Throwable) y4.a.e(th.getCause());
                        int i12 = y4.q0.f32946a;
                        if (i12 >= 21 && (th2 instanceof MediaDrm.MediaDrmStateException)) {
                            int V = y4.q0.V(((MediaDrm.MediaDrmStateException) th2).getDiagnosticInfo());
                            return new a(C0(V), V);
                        } else if (i12 >= 23 && (th2 instanceof MediaDrmResetException)) {
                            return new a(27, 0);
                        } else {
                            if (i12 >= 18 && (th2 instanceof NotProvisionedException)) {
                                return new a(24, 0);
                            }
                            if (i12 >= 18 && (th2 instanceof DeniedByServerException)) {
                                return new a(29, 0);
                            }
                            if (th2 instanceof f3.o0) {
                                return new a(23, 0);
                            }
                            if (th2 instanceof h.e) {
                                return new a(28, 0);
                            }
                            return new a(30, 0);
                        }
                    } else if ((th instanceof w.b) && (th.getCause() instanceof FileNotFoundException)) {
                        Throwable cause = ((Throwable) y4.a.e(th.getCause())).getCause();
                        if (y4.q0.f32946a >= 21 && (cause instanceof ErrnoException) && ((ErrnoException) cause).errno == OsConstants.EACCES) {
                            return new a(32, 0);
                        }
                        return new a(31, 0);
                    } else {
                        return new a(9, 0);
                    }
                } else if (y4.y.d(context).f() == 1) {
                    return new a(3, 0);
                } else {
                    Throwable cause2 = th.getCause();
                    if (cause2 instanceof UnknownHostException) {
                        return new a(6, 0);
                    }
                    if (cause2 instanceof SocketTimeoutException) {
                        return new a(7, 0);
                    }
                    if ((th instanceof x4.y) && ((x4.y) th).f32480c == 1) {
                        return new a(4, 0);
                    }
                    return new a(8, 0);
                }
            }
            if (z10) {
                i11 = 10;
            } else {
                i11 = 11;
            }
            return new a(i11, 0);
        } else if (z11 && (i10 == 0 || i10 == 1)) {
            return new a(35, 0);
        } else {
            if (z11 && i10 == 3) {
                return new a(15, 0);
            }
            if (z11 && i10 == 2) {
                return new a(23, 0);
            }
            if (th instanceof u.b) {
                return new a(13, y4.q0.V(((u.b) th).f29395d));
            }
            if (th instanceof s3.m) {
                return new a(14, y4.q0.V(((s3.m) th).f29356b));
            }
            if (th instanceof OutOfMemoryError) {
                return new a(14, 0);
            }
            if (th instanceof w.b) {
                return new a(17, ((w.b) th).f14613a);
            }
            if (th instanceof w.e) {
                return new a(18, ((w.e) th).f14618a);
            }
            if (y4.q0.f32946a >= 16 && (th instanceof MediaCodec.CryptoException)) {
                int errorCode = ((MediaCodec.CryptoException) th).getErrorCode();
                return new a(C0(errorCode), errorCode);
            }
            return new a(22, 0);
        }
    }

    private static Pair G0(String str) {
        String str2;
        String[] P0 = y4.q0.P0(str, "-");
        String str3 = P0[0];
        if (P0.length >= 2) {
            str2 = P0[1];
        } else {
            str2 = null;
        }
        return Pair.create(str3, str2);
    }

    private static int I0(Context context) {
        switch (y4.y.d(context).f()) {
            case 0:
                return 0;
            case 1:
                return 9;
            case 2:
                return 2;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
            case 8:
            default:
                return 1;
            case 7:
                return 3;
            case 9:
                return 8;
            case 10:
                return 7;
        }
    }

    private static int J0(b3.f2 f2Var) {
        f2.h hVar = f2Var.f3880b;
        if (hVar == null) {
            return 0;
        }
        int o02 = y4.q0.o0(hVar.f3953a, hVar.f3954b);
        if (o02 != 0) {
            if (o02 != 1) {
                if (o02 != 2) {
                    return 1;
                }
                return 4;
            }
            return 5;
        }
        return 3;
    }

    private static int K0(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                return i10 != 3 ? 1 : 4;
            }
            return 3;
        }
        return 2;
    }

    private void L0(b.C0088b c0088b) {
        for (int i10 = 0; i10 < c0088b.d(); i10++) {
            int b10 = c0088b.b(i10);
            b.a c10 = c0088b.c(b10);
            if (b10 == 0) {
                this.f4956b.e(c10);
            } else if (b10 == 11) {
                this.f4956b.a(c10, this.f4965k);
            } else {
                this.f4956b.g(c10);
            }
        }
    }

    private void M0(long j10) {
        NetworkEvent.Builder networkType;
        NetworkEvent.Builder timeSinceCreatedMillis;
        NetworkEvent build;
        int I0 = I0(this.f4955a);
        if (I0 != this.f4967m) {
            this.f4967m = I0;
            PlaybackSession playbackSession = this.f4957c;
            networkType = m2.a().setNetworkType(I0);
            timeSinceCreatedMillis = networkType.setTimeSinceCreatedMillis(j10 - this.f4958d);
            build = timeSinceCreatedMillis.build();
            playbackSession.reportNetworkEvent(build);
        }
    }

    private void N0(long j10) {
        boolean z10;
        PlaybackErrorEvent.Builder timeSinceCreatedMillis;
        PlaybackErrorEvent.Builder errorCode;
        PlaybackErrorEvent.Builder subErrorCode;
        PlaybackErrorEvent.Builder exception;
        PlaybackErrorEvent build;
        b3.i3 i3Var = this.f4968n;
        if (i3Var == null) {
            return;
        }
        Context context = this.f4955a;
        if (this.f4976v == 4) {
            z10 = true;
        } else {
            z10 = false;
        }
        a F0 = F0(i3Var, context, z10);
        PlaybackSession playbackSession = this.f4957c;
        timeSinceCreatedMillis = q1.a().setTimeSinceCreatedMillis(j10 - this.f4958d);
        errorCode = timeSinceCreatedMillis.setErrorCode(F0.f4981a);
        subErrorCode = errorCode.setSubErrorCode(F0.f4982b);
        exception = subErrorCode.setException(i3Var);
        build = exception.build();
        playbackSession.reportPlaybackErrorEvent(build);
        this.A = true;
        this.f4968n = null;
    }

    private void O0(b3.m3 m3Var, b.C0088b c0088b, long j10) {
        PlaybackStateEvent.Builder state;
        PlaybackStateEvent.Builder timeSinceCreatedMillis;
        PlaybackStateEvent build;
        if (m3Var.u() != 2) {
            this.f4975u = false;
        }
        if (m3Var.p() == null) {
            this.f4977w = false;
        } else if (c0088b.a(10)) {
            this.f4977w = true;
        }
        int W0 = W0(m3Var);
        if (this.f4966l != W0) {
            this.f4966l = W0;
            this.A = true;
            PlaybackSession playbackSession = this.f4957c;
            state = b2.a().setState(this.f4966l);
            timeSinceCreatedMillis = state.setTimeSinceCreatedMillis(j10 - this.f4958d);
            build = timeSinceCreatedMillis.build();
            playbackSession.reportPlaybackStateEvent(build);
        }
    }

    private void P0(b3.m3 m3Var, b.C0088b c0088b, long j10) {
        if (c0088b.a(2)) {
            l4 v10 = m3Var.v();
            boolean c10 = v10.c(2);
            boolean c11 = v10.c(1);
            boolean c12 = v10.c(3);
            if (c10 || c11 || c12) {
                if (!c10) {
                    U0(j10, null, 0);
                }
                if (!c11) {
                    Q0(j10, null, 0);
                }
                if (!c12) {
                    S0(j10, null, 0);
                }
            }
        }
        if (z0(this.f4969o)) {
            b bVar = this.f4969o;
            b3.x1 x1Var = bVar.f4983a;
            if (x1Var.f4520r != -1) {
                U0(j10, x1Var, bVar.f4984b);
                this.f4969o = null;
            }
        }
        if (z0(this.f4970p)) {
            b bVar2 = this.f4970p;
            Q0(j10, bVar2.f4983a, bVar2.f4984b);
            this.f4970p = null;
        }
        if (z0(this.f4971q)) {
            b bVar3 = this.f4971q;
            S0(j10, bVar3.f4983a, bVar3.f4984b);
            this.f4971q = null;
        }
    }

    private void Q0(long j10, b3.x1 x1Var, int i10) {
        if (y4.q0.c(this.f4973s, x1Var)) {
            return;
        }
        if (this.f4973s == null && i10 == 0) {
            i10 = 1;
        }
        this.f4973s = x1Var;
        V0(0, j10, x1Var, i10);
    }

    private void R0(b3.m3 m3Var, b.C0088b c0088b) {
        f3.m D0;
        if (c0088b.a(0)) {
            b.a c10 = c0088b.c(0);
            if (this.f4964j != null) {
                T0(c10.f4816b, c10.f4818d);
            }
        }
        if (c0088b.a(2) && this.f4964j != null && (D0 = D0(m3Var.v().b())) != null) {
            p2.a(y4.q0.j(this.f4964j)).setDrmType(E0(D0));
        }
        if (c0088b.a(1011)) {
            this.f4980z++;
        }
    }

    private void S0(long j10, b3.x1 x1Var, int i10) {
        if (y4.q0.c(this.f4974t, x1Var)) {
            return;
        }
        if (this.f4974t == null && i10 == 0) {
            i10 = 1;
        }
        this.f4974t = x1Var;
        V0(2, j10, x1Var, i10);
    }

    private void T0(g4 g4Var, t.b bVar) {
        int f10;
        int i10;
        PlaybackMetrics.Builder builder = this.f4964j;
        if (bVar == null || (f10 = g4Var.f(bVar.f14942a)) == -1) {
            return;
        }
        g4Var.j(f10, this.f4960f);
        g4Var.r(this.f4960f.f4055c, this.f4959e);
        builder.setStreamType(J0(this.f4959e.f4075c));
        g4.d dVar = this.f4959e;
        if (dVar.f4086n != -9223372036854775807L && !dVar.f4084l && !dVar.f4081i && !dVar.g()) {
            builder.setMediaDurationMillis(this.f4959e.f());
        }
        if (this.f4959e.g()) {
            i10 = 2;
        } else {
            i10 = 1;
        }
        builder.setPlaybackType(i10);
        this.A = true;
    }

    private void U0(long j10, b3.x1 x1Var, int i10) {
        if (y4.q0.c(this.f4972r, x1Var)) {
            return;
        }
        if (this.f4972r == null && i10 == 0) {
            i10 = 1;
        }
        this.f4972r = x1Var;
        V0(1, j10, x1Var, i10);
    }

    private void V0(int i10, long j10, b3.x1 x1Var, int i11) {
        TrackChangeEvent.Builder timeSinceCreatedMillis;
        TrackChangeEvent build;
        timeSinceCreatedMillis = i3.a(i10).setTimeSinceCreatedMillis(j10 - this.f4958d);
        if (x1Var != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(K0(i11));
            String str = x1Var.f4513k;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = x1Var.f4514l;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = x1Var.f4511i;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i12 = x1Var.f4510h;
            if (i12 != -1) {
                timeSinceCreatedMillis.setBitrate(i12);
            }
            int i13 = x1Var.f4519q;
            if (i13 != -1) {
                timeSinceCreatedMillis.setWidth(i13);
            }
            int i14 = x1Var.f4520r;
            if (i14 != -1) {
                timeSinceCreatedMillis.setHeight(i14);
            }
            int i15 = x1Var.f4527y;
            if (i15 != -1) {
                timeSinceCreatedMillis.setChannelCount(i15);
            }
            int i16 = x1Var.f4528z;
            if (i16 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i16);
            }
            String str4 = x1Var.f4505c;
            if (str4 != null) {
                Pair G0 = G0(str4);
                timeSinceCreatedMillis.setLanguage((String) G0.first);
                Object obj = G0.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f10 = x1Var.f4521s;
            if (f10 != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f10);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.A = true;
        PlaybackSession playbackSession = this.f4957c;
        build = timeSinceCreatedMillis.build();
        playbackSession.reportTrackChangeEvent(build);
    }

    private int W0(b3.m3 m3Var) {
        int u10 = m3Var.u();
        if (this.f4975u) {
            return 5;
        }
        if (this.f4977w) {
            return 13;
        }
        if (u10 == 4) {
            return 11;
        }
        if (u10 == 2) {
            int i10 = this.f4966l;
            if (i10 == 0 || i10 == 2) {
                return 2;
            }
            if (!m3Var.j()) {
                return 7;
            }
            if (m3Var.D() != 0) {
                return 10;
            }
            return 6;
        } else if (u10 == 3) {
            if (!m3Var.j()) {
                return 4;
            }
            if (m3Var.D() == 0) {
                return 3;
            }
            return 9;
        } else if (u10 == 1 && this.f4966l != 0) {
            return 12;
        } else {
            return this.f4966l;
        }
    }

    private boolean z0(b bVar) {
        if (bVar != null && bVar.f4985c.equals(this.f4956b.b())) {
            return true;
        }
        return false;
    }

    @Override // c3.b
    public void E(b.a aVar, b3.i3 i3Var) {
        this.f4968n = i3Var;
    }

    public LogSessionId H0() {
        LogSessionId sessionId;
        sessionId = this.f4957c.getSessionId();
        return sessionId;
    }

    @Override // c3.b
    public void N(b.a aVar, e3.e eVar) {
        this.f4978x += eVar.f15282g;
        this.f4979y += eVar.f15280e;
    }

    @Override // c3.b
    public void U(b.a aVar, d4.n nVar, d4.q qVar, IOException iOException, boolean z10) {
        this.f4976v = qVar.f14932a;
    }

    @Override // c3.s3.a
    public void V(b.a aVar, String str, String str2) {
    }

    @Override // c3.b
    public void Y(b.a aVar, int i10, long j10, long j11) {
        long longValue;
        t.b bVar = aVar.f4818d;
        if (bVar != null) {
            String d10 = this.f4956b.d(aVar.f4816b, (t.b) y4.a.e(bVar));
            Long l10 = (Long) this.f4962h.get(d10);
            Long l11 = (Long) this.f4961g.get(d10);
            HashMap hashMap = this.f4962h;
            long j12 = 0;
            if (l10 == null) {
                longValue = 0;
            } else {
                longValue = l10.longValue();
            }
            hashMap.put(d10, Long.valueOf(longValue + j10));
            HashMap hashMap2 = this.f4961g;
            if (l11 != null) {
                j12 = l11.longValue();
            }
            hashMap2.put(d10, Long.valueOf(j12 + i10));
        }
    }

    @Override // c3.b
    public void h0(b.a aVar, z4.a0 a0Var) {
        b bVar = this.f4969o;
        if (bVar != null) {
            b3.x1 x1Var = bVar.f4983a;
            if (x1Var.f4520r == -1) {
                this.f4969o = new b(x1Var.b().n0(a0Var.f33404a).S(a0Var.f33405b).G(), bVar.f4984b, bVar.f4985c);
            }
        }
    }

    @Override // c3.s3.a
    public void m(b.a aVar, String str, boolean z10) {
        t.b bVar = aVar.f4818d;
        if ((bVar == null || !bVar.b()) && str.equals(this.f4963i)) {
            B0();
        }
        this.f4961g.remove(str);
        this.f4962h.remove(str);
    }

    @Override // c3.b
    public void n0(b3.m3 m3Var, b.C0088b c0088b) {
        if (c0088b.d() == 0) {
            return;
        }
        L0(c0088b);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        R0(m3Var, c0088b);
        N0(elapsedRealtime);
        P0(m3Var, c0088b, elapsedRealtime);
        M0(elapsedRealtime);
        O0(m3Var, c0088b, elapsedRealtime);
        if (c0088b.a(1028)) {
            this.f4956b.c(c0088b.c(1028));
        }
    }

    @Override // c3.b
    public void s0(b.a aVar, m3.e eVar, m3.e eVar2, int i10) {
        if (i10 == 1) {
            this.f4975u = true;
        }
        this.f4965k = i10;
    }

    @Override // c3.s3.a
    public void t0(b.a aVar, String str) {
    }

    @Override // c3.s3.a
    public void v0(b.a aVar, String str) {
        PlaybackMetrics.Builder playerName;
        PlaybackMetrics.Builder playerVersion;
        t.b bVar = aVar.f4818d;
        if (bVar != null && bVar.b()) {
            return;
        }
        B0();
        this.f4963i = str;
        playerName = x2.a().setPlayerName("ExoPlayerLib");
        playerVersion = playerName.setPlayerVersion("2.18.7");
        this.f4964j = playerVersion;
        T0(aVar.f4816b, aVar.f4818d);
    }

    @Override // c3.b
    public void z(b.a aVar, d4.q qVar) {
        if (aVar.f4818d == null) {
            return;
        }
        b bVar = new b((b3.x1) y4.a.e(qVar.f14934c), qVar.f14935d, this.f4956b.d(aVar.f4816b, (t.b) y4.a.e(aVar.f4818d)));
        int i10 = qVar.f14933b;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        this.f4971q = bVar;
                        return;
                    }
                    return;
                }
            } else {
                this.f4970p = bVar;
                return;
            }
        }
        this.f4969o = bVar;
    }
}
