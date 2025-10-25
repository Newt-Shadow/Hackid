package com.google.android.exoplayer2.source.dash;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import b3.e3;
import b3.f2;
import b3.g4;
import b3.u1;
import com.arthenica.ffmpegkit.AbstractSession;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.google.android.exoplayer2.source.dash.a;
import com.google.android.exoplayer2.source.dash.c;
import com.google.android.exoplayer2.source.dash.e;
import d4.a0;
import d4.i;
import d4.n;
import d4.q;
import d4.t;
import f3.l;
import f3.v;
import f3.x;
import h4.o;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.RoundingMode;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.tika.pipes.PipesConfigBase;
import x4.d0;
import x4.e0;
import x4.f0;
import x4.g0;
import x4.j;
import x4.m0;
import y4.h0;
import y4.q0;
import y4.r;
/* loaded from: classes.dex */
public final class DashMediaSource extends d4.a {
    private e0 A;
    private m0 B;
    private IOException C;
    private Handler D;
    private f2.g E;
    private Uri F;
    private Uri G;
    private h4.c H;
    private boolean I;
    private long J;
    private long K;
    private long L;
    private int M;
    private long N;
    private int O;

    /* renamed from: h  reason: collision with root package name */
    private final f2 f5575h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f5576i;

    /* renamed from: j  reason: collision with root package name */
    private final j.a f5577j;

    /* renamed from: k  reason: collision with root package name */
    private final a.InterfaceC0094a f5578k;

    /* renamed from: l  reason: collision with root package name */
    private final d4.h f5579l;

    /* renamed from: m  reason: collision with root package name */
    private final v f5580m;

    /* renamed from: n  reason: collision with root package name */
    private final d0 f5581n;

    /* renamed from: o  reason: collision with root package name */
    private final g4.b f5582o;

    /* renamed from: p  reason: collision with root package name */
    private final long f5583p;

    /* renamed from: q  reason: collision with root package name */
    private final a0.a f5584q;

    /* renamed from: r  reason: collision with root package name */
    private final g0.a f5585r;

    /* renamed from: s  reason: collision with root package name */
    private final e f5586s;

    /* renamed from: t  reason: collision with root package name */
    private final Object f5587t;

    /* renamed from: u  reason: collision with root package name */
    private final SparseArray f5588u;

    /* renamed from: v  reason: collision with root package name */
    private final Runnable f5589v;

    /* renamed from: w  reason: collision with root package name */
    private final Runnable f5590w;

    /* renamed from: x  reason: collision with root package name */
    private final e.b f5591x;

    /* renamed from: y  reason: collision with root package name */
    private final f0 f5592y;

    /* renamed from: z  reason: collision with root package name */
    private j f5593z;

    /* loaded from: classes.dex */
    public static final class Factory implements t.a {

        /* renamed from: a  reason: collision with root package name */
        private final a.InterfaceC0094a f5594a;

        /* renamed from: b  reason: collision with root package name */
        private final j.a f5595b;

        /* renamed from: c  reason: collision with root package name */
        private x f5596c;

        /* renamed from: d  reason: collision with root package name */
        private d4.h f5597d;

        /* renamed from: e  reason: collision with root package name */
        private d0 f5598e;

        /* renamed from: f  reason: collision with root package name */
        private long f5599f;

        /* renamed from: g  reason: collision with root package name */
        private g0.a f5600g;

        public Factory(j.a aVar) {
            this(new c.a(aVar), aVar);
        }

        public DashMediaSource a(f2 f2Var) {
            c4.b bVar;
            y4.a.e(f2Var.f3880b);
            g0.a aVar = this.f5600g;
            if (aVar == null) {
                aVar = new h4.d();
            }
            List list = f2Var.f3880b.f3956d;
            if (!list.isEmpty()) {
                bVar = new c4.b(aVar, list);
            } else {
                bVar = aVar;
            }
            return new DashMediaSource(f2Var, null, this.f5595b, bVar, this.f5594a, this.f5597d, this.f5596c.a(f2Var), this.f5598e, this.f5599f, null);
        }

        public Factory(a.InterfaceC0094a interfaceC0094a, j.a aVar) {
            this.f5594a = (a.InterfaceC0094a) y4.a.e(interfaceC0094a);
            this.f5595b = aVar;
            this.f5596c = new l();
            this.f5598e = new x4.v();
            this.f5599f = 30000L;
            this.f5597d = new i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements h0.b {
        a() {
        }

        @Override // y4.h0.b
        public void a(IOException iOException) {
            DashMediaSource.this.a0(iOException);
        }

        @Override // y4.h0.b
        public void b() {
            DashMediaSource.this.b0(h0.h());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b extends g4 {

        /* renamed from: f  reason: collision with root package name */
        private final long f5602f;

        /* renamed from: g  reason: collision with root package name */
        private final long f5603g;

        /* renamed from: h  reason: collision with root package name */
        private final long f5604h;

        /* renamed from: i  reason: collision with root package name */
        private final int f5605i;

        /* renamed from: j  reason: collision with root package name */
        private final long f5606j;

        /* renamed from: k  reason: collision with root package name */
        private final long f5607k;

        /* renamed from: l  reason: collision with root package name */
        private final long f5608l;

        /* renamed from: m  reason: collision with root package name */
        private final h4.c f5609m;

        /* renamed from: n  reason: collision with root package name */
        private final f2 f5610n;

        /* renamed from: o  reason: collision with root package name */
        private final f2.g f5611o;

        public b(long j10, long j11, long j12, int i10, long j13, long j14, long j15, h4.c cVar, f2 f2Var, f2.g gVar) {
            boolean z10;
            boolean z11 = cVar.f16763d;
            if (gVar != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            y4.a.f(z11 == z10);
            this.f5602f = j10;
            this.f5603g = j11;
            this.f5604h = j12;
            this.f5605i = i10;
            this.f5606j = j13;
            this.f5607k = j14;
            this.f5608l = j15;
            this.f5609m = cVar;
            this.f5610n = f2Var;
            this.f5611o = gVar;
        }

        private long w(long j10) {
            long j11 = this.f5608l;
            if (!x(this.f5609m)) {
                return j11;
            }
            if (j10 > 0) {
                j11 += j10;
                if (j11 > this.f5607k) {
                    return -9223372036854775807L;
                }
            }
            long j12 = this.f5606j + j11;
            long g10 = this.f5609m.g(0);
            int i10 = 0;
            while (i10 < this.f5609m.e() - 1 && j12 >= g10) {
                j12 -= g10;
                i10++;
                g10 = this.f5609m.g(i10);
            }
            h4.g d10 = this.f5609m.d(i10);
            int a10 = d10.a(2);
            if (a10 == -1) {
                return j11;
            }
            g4.f l10 = ((h4.j) ((h4.a) d10.f16797c.get(a10)).f16752c.get(0)).l();
            if (l10 != null && l10.i(g10) != 0) {
                return (j11 + l10.a(l10.f(j12, g10))) - j12;
            }
            return j11;
        }

        private static boolean x(h4.c cVar) {
            if (cVar.f16763d && cVar.f16764e != -9223372036854775807L && cVar.f16761b == -9223372036854775807L) {
                return true;
            }
            return false;
        }

        @Override // b3.g4
        public int f(Object obj) {
            int intValue;
            if (!(obj instanceof Integer) || (intValue = ((Integer) obj).intValue() - this.f5605i) < 0 || intValue >= m()) {
                return -1;
            }
            return intValue;
        }

        @Override // b3.g4
        public g4.b k(int i10, g4.b bVar, boolean z10) {
            String str;
            y4.a.c(i10, 0, m());
            Integer num = null;
            if (z10) {
                str = this.f5609m.d(i10).f16795a;
            } else {
                str = null;
            }
            if (z10) {
                num = Integer.valueOf(this.f5605i + i10);
            }
            return bVar.u(str, num, 0, this.f5609m.g(i10), q0.A0(this.f5609m.d(i10).f16796b - this.f5609m.d(0).f16796b) - this.f5606j);
        }

        @Override // b3.g4
        public int m() {
            return this.f5609m.e();
        }

        @Override // b3.g4
        public Object q(int i10) {
            y4.a.c(i10, 0, m());
            return Integer.valueOf(this.f5605i + i10);
        }

        @Override // b3.g4
        public g4.d s(int i10, g4.d dVar, long j10) {
            y4.a.c(i10, 0, 1);
            long w10 = w(j10);
            Object obj = g4.d.f4064r;
            f2 f2Var = this.f5610n;
            h4.c cVar = this.f5609m;
            return dVar.h(obj, f2Var, cVar, this.f5602f, this.f5603g, this.f5604h, true, x(cVar), this.f5611o, w10, this.f5607k, 0, m() - 1, this.f5606j);
        }

        @Override // b3.g4
        public int t() {
            return 1;
        }
    }

    /* loaded from: classes.dex */
    private final class c implements e.b {
        private c() {
        }

        @Override // com.google.android.exoplayer2.source.dash.e.b
        public void a() {
            DashMediaSource.this.U();
        }

        @Override // com.google.android.exoplayer2.source.dash.e.b
        public void b(long j10) {
            DashMediaSource.this.T(j10);
        }

        /* synthetic */ c(DashMediaSource dashMediaSource, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class d implements g0.a {

        /* renamed from: a  reason: collision with root package name */
        private static final Pattern f5613a = Pattern.compile("(.+?)(Z|((\\+|-|−)(\\d\\d)(:?(\\d\\d))?))");

        d() {
        }

        @Override // x4.g0.a
        /* renamed from: b */
        public Long a(Uri uri, InputStream inputStream) {
            long j10;
            long parseLong;
            String readLine = new BufferedReader(new InputStreamReader(inputStream, n6.e.f26427c)).readLine();
            try {
                Matcher matcher = f5613a.matcher(readLine);
                if (matcher.matches()) {
                    String group = matcher.group(1);
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
                    simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                    long time = simpleDateFormat.parse(group).getTime();
                    if (!"Z".equals(matcher.group(2))) {
                        if ("+".equals(matcher.group(4))) {
                            j10 = 1;
                        } else {
                            j10 = -1;
                        }
                        long parseLong2 = Long.parseLong(matcher.group(5));
                        String group2 = matcher.group(7);
                        if (TextUtils.isEmpty(group2)) {
                            parseLong = 0;
                        } else {
                            parseLong = Long.parseLong(group2);
                        }
                        time -= j10 * ((((parseLong2 * 60) + parseLong) * 60) * 1000);
                    }
                    return Long.valueOf(time);
                }
                throw e3.c("Couldn't parse timestamp: " + readLine, null);
            } catch (ParseException e10) {
                throw e3.c(null, e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class e implements e0.b {
        private e() {
        }

        @Override // x4.e0.b
        /* renamed from: a */
        public void s(g0 g0Var, long j10, long j11, boolean z10) {
            DashMediaSource.this.V(g0Var, j10, j11);
        }

        @Override // x4.e0.b
        /* renamed from: b */
        public void o(g0 g0Var, long j10, long j11) {
            DashMediaSource.this.W(g0Var, j10, j11);
        }

        @Override // x4.e0.b
        /* renamed from: c */
        public e0.c h(g0 g0Var, long j10, long j11, IOException iOException, int i10) {
            return DashMediaSource.this.X(g0Var, j10, j11, iOException, i10);
        }

        /* synthetic */ e(DashMediaSource dashMediaSource, a aVar) {
            this();
        }
    }

    /* loaded from: classes.dex */
    final class f implements f0 {
        f() {
        }

        private void b() {
            if (DashMediaSource.this.C == null) {
                return;
            }
            throw DashMediaSource.this.C;
        }

        @Override // x4.f0
        public void a() {
            DashMediaSource.this.A.a();
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class g implements e0.b {
        private g() {
        }

        @Override // x4.e0.b
        /* renamed from: a */
        public void s(g0 g0Var, long j10, long j11, boolean z10) {
            DashMediaSource.this.V(g0Var, j10, j11);
        }

        @Override // x4.e0.b
        /* renamed from: b */
        public void o(g0 g0Var, long j10, long j11) {
            DashMediaSource.this.Y(g0Var, j10, j11);
        }

        @Override // x4.e0.b
        /* renamed from: c */
        public e0.c h(g0 g0Var, long j10, long j11, IOException iOException, int i10) {
            return DashMediaSource.this.Z(g0Var, j10, j11, iOException);
        }

        /* synthetic */ g(DashMediaSource dashMediaSource, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class h implements g0.a {
        private h() {
        }

        /* synthetic */ h(a aVar) {
            this();
        }

        @Override // x4.g0.a
        /* renamed from: b */
        public Long a(Uri uri, InputStream inputStream) {
            return Long.valueOf(q0.H0(new BufferedReader(new InputStreamReader(inputStream)).readLine()));
        }
    }

    static {
        u1.a("goog.exo.dash");
    }

    /* synthetic */ DashMediaSource(f2 f2Var, h4.c cVar, j.a aVar, g0.a aVar2, a.InterfaceC0094a interfaceC0094a, d4.h hVar, v vVar, d0 d0Var, long j10, a aVar3) {
        this(f2Var, cVar, aVar, aVar2, interfaceC0094a, hVar, vVar, d0Var, j10);
    }

    private static long L(h4.g gVar, long j10, long j11) {
        long A0 = q0.A0(gVar.f16796b);
        boolean P = P(gVar);
        long j12 = Long.MAX_VALUE;
        for (int i10 = 0; i10 < gVar.f16797c.size(); i10++) {
            h4.a aVar = (h4.a) gVar.f16797c.get(i10);
            List list = aVar.f16752c;
            int i11 = aVar.f16751b;
            boolean z10 = true;
            z10 = (i11 == 1 || i11 == 2) ? false : false;
            if ((!P || !z10) && !list.isEmpty()) {
                g4.f l10 = ((h4.j) list.get(0)).l();
                if (l10 == null) {
                    return A0 + j10;
                }
                long j13 = l10.j(j10, j11);
                if (j13 == 0) {
                    return A0;
                }
                long c10 = (l10.c(j10, j11) + j13) - 1;
                j12 = Math.min(j12, l10.b(c10, j10) + l10.a(c10) + A0);
            }
        }
        return j12;
    }

    private static long M(h4.g gVar, long j10, long j11) {
        long A0 = q0.A0(gVar.f16796b);
        boolean P = P(gVar);
        long j12 = A0;
        for (int i10 = 0; i10 < gVar.f16797c.size(); i10++) {
            h4.a aVar = (h4.a) gVar.f16797c.get(i10);
            List list = aVar.f16752c;
            int i11 = aVar.f16751b;
            boolean z10 = true;
            z10 = (i11 == 1 || i11 == 2) ? false : false;
            if ((!P || !z10) && !list.isEmpty()) {
                g4.f l10 = ((h4.j) list.get(0)).l();
                if (l10 == null) {
                    return A0;
                }
                if (l10.j(j10, j11) == 0) {
                    return A0;
                }
                j12 = Math.max(j12, l10.a(l10.c(j10, j11)) + A0);
            }
        }
        return j12;
    }

    private static long N(h4.c cVar, long j10) {
        g4.f l10;
        int e10 = cVar.e() - 1;
        h4.g d10 = cVar.d(e10);
        long A0 = q0.A0(d10.f16796b);
        long g10 = cVar.g(e10);
        long A02 = q0.A0(j10);
        long A03 = q0.A0(cVar.f16760a);
        long A04 = q0.A0(5000L);
        for (int i10 = 0; i10 < d10.f16797c.size(); i10++) {
            List list = ((h4.a) d10.f16797c.get(i10)).f16752c;
            if (!list.isEmpty() && (l10 = ((h4.j) list.get(0)).l()) != null) {
                long d11 = ((A03 + A0) + l10.d(g10, A02)) - A02;
                if (d11 < A04 - PipesConfigBase.DEFAULT_MAX_FOR_EMIT_BATCH || (d11 > A04 && d11 < A04 + PipesConfigBase.DEFAULT_MAX_FOR_EMIT_BATCH)) {
                    A04 = d11;
                }
            }
        }
        return p6.c.a(A04, 1000L, RoundingMode.CEILING);
    }

    private long O() {
        return Math.min((this.M - 1) * 1000, (int) AbstractSession.DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT);
    }

    private static boolean P(h4.g gVar) {
        for (int i10 = 0; i10 < gVar.f16797c.size(); i10++) {
            int i11 = ((h4.a) gVar.f16797c.get(i10)).f16751b;
            if (i11 == 1 || i11 == 2) {
                return true;
            }
        }
        return false;
    }

    private static boolean Q(h4.g gVar) {
        for (int i10 = 0; i10 < gVar.f16797c.size(); i10++) {
            g4.f l10 = ((h4.j) ((h4.a) gVar.f16797c.get(i10)).f16752c.get(0)).l();
            if (l10 == null || l10.g()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R() {
        c0(false);
    }

    private void S() {
        h0.j(this.A, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(IOException iOException) {
        r.d("DashMediaSource", "Failed to resolve time offset.", iOException);
        c0(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0(long j10) {
        this.L = j10;
        c0(true);
    }

    private void c0(boolean z10) {
        boolean z11;
        h4.g gVar;
        long j10;
        long j11;
        f2.g gVar2;
        boolean z12;
        for (int i10 = 0; i10 < this.f5588u.size(); i10++) {
            int keyAt = this.f5588u.keyAt(i10);
            if (keyAt >= this.O) {
                ((com.google.android.exoplayer2.source.dash.b) this.f5588u.valueAt(i10)).L(this.H, keyAt - this.O);
            }
        }
        h4.g d10 = this.H.d(0);
        int e10 = this.H.e() - 1;
        h4.g d11 = this.H.d(e10);
        long g10 = this.H.g(e10);
        long A0 = q0.A0(q0.a0(this.L));
        long M = M(d10, this.H.g(0), A0);
        long L = L(d11, g10, A0);
        if (this.H.f16763d && !Q(d11)) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11) {
            long j12 = this.H.f16765f;
            if (j12 != -9223372036854775807L) {
                M = Math.max(M, L - q0.A0(j12));
            }
        }
        long j13 = L - M;
        h4.c cVar = this.H;
        if (cVar.f16763d) {
            if (cVar.f16760a != -9223372036854775807L) {
                z12 = true;
            } else {
                z12 = false;
            }
            y4.a.f(z12);
            long A02 = (A0 - q0.A0(this.H.f16760a)) - M;
            j0(A02, j13);
            long X0 = this.H.f16760a + q0.X0(M);
            long A03 = A02 - q0.A0(this.E.f3943a);
            long min = Math.min(5000000L, j13 / 2);
            j10 = X0;
            if (A03 < min) {
                j11 = min;
            } else {
                j11 = A03;
            }
            gVar = d10;
        } else {
            gVar = d10;
            j10 = -9223372036854775807L;
            j11 = 0;
        }
        long A04 = M - q0.A0(gVar.f16796b);
        h4.c cVar2 = this.H;
        long j14 = cVar2.f16760a;
        long j15 = this.L;
        int i11 = this.O;
        f2 f2Var = this.f5575h;
        if (cVar2.f16763d) {
            gVar2 = this.E;
        } else {
            gVar2 = null;
        }
        D(new b(j14, j10, j15, i11, A04, j13, j11, cVar2, f2Var, gVar2));
        if (!this.f5576i) {
            this.D.removeCallbacks(this.f5590w);
            if (z11) {
                this.D.postDelayed(this.f5590w, N(this.H, q0.a0(this.L)));
            }
            if (this.I) {
                i0();
            } else if (z10) {
                h4.c cVar3 = this.H;
                if (cVar3.f16763d) {
                    long j16 = cVar3.f16764e;
                    if (j16 != -9223372036854775807L) {
                        if (j16 == 0) {
                            j16 = 5000;
                        }
                        g0(Math.max(0L, (this.J + j16) - SystemClock.elapsedRealtime()));
                    }
                }
            }
        }
    }

    private void d0(o oVar) {
        String str = oVar.f16850a;
        if (!q0.c(str, "urn:mpeg:dash:utc:direct:2014") && !q0.c(str, "urn:mpeg:dash:utc:direct:2012")) {
            if (!q0.c(str, "urn:mpeg:dash:utc:http-iso:2014") && !q0.c(str, "urn:mpeg:dash:utc:http-iso:2012")) {
                if (!q0.c(str, "urn:mpeg:dash:utc:http-xsdate:2014") && !q0.c(str, "urn:mpeg:dash:utc:http-xsdate:2012")) {
                    if (!q0.c(str, "urn:mpeg:dash:utc:ntp:2014") && !q0.c(str, "urn:mpeg:dash:utc:ntp:2012")) {
                        a0(new IOException("Unsupported UTC timing scheme"));
                        return;
                    } else {
                        S();
                        return;
                    }
                }
                f0(oVar, new h(null));
                return;
            }
            f0(oVar, new d());
            return;
        }
        e0(oVar);
    }

    private void e0(o oVar) {
        try {
            b0(q0.H0(oVar.f16851b) - this.K);
        } catch (e3 e10) {
            a0(e10);
        }
    }

    private void f0(o oVar, g0.a aVar) {
        h0(new g0(this.f5593z, Uri.parse(oVar.f16851b), 5, aVar), new g(this, null), 1);
    }

    private void g0(long j10) {
        this.D.postDelayed(this.f5589v, j10);
    }

    private void h0(g0 g0Var, e0.b bVar, int i10) {
        this.f5584q.z(new n(g0Var.f32331a, g0Var.f32332b, this.A.n(g0Var, bVar, i10)), g0Var.f32333c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0() {
        Uri uri;
        this.D.removeCallbacks(this.f5589v);
        if (this.A.i()) {
            return;
        }
        if (this.A.j()) {
            this.I = true;
            return;
        }
        synchronized (this.f5587t) {
            uri = this.F;
        }
        this.I = false;
        h0(new g0(this.f5593z, uri, 4, this.f5585r), this.f5586s, this.f5581n.d(4));
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void j0(long r18, long r20) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.DashMediaSource.j0(long, long):void");
    }

    @Override // d4.a
    protected void C(m0 m0Var) {
        this.B = m0Var;
        this.f5580m.d(Looper.myLooper(), A());
        this.f5580m.b();
        if (this.f5576i) {
            c0(false);
            return;
        }
        this.f5593z = this.f5577j.a();
        this.A = new e0("DashMediaSource");
        this.D = q0.w();
        i0();
    }

    @Override // d4.a
    protected void E() {
        h4.c cVar;
        this.I = false;
        this.f5593z = null;
        e0 e0Var = this.A;
        if (e0Var != null) {
            e0Var.l();
            this.A = null;
        }
        this.J = 0L;
        this.K = 0L;
        if (this.f5576i) {
            cVar = this.H;
        } else {
            cVar = null;
        }
        this.H = cVar;
        this.F = this.G;
        this.C = null;
        Handler handler = this.D;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.D = null;
        }
        this.L = -9223372036854775807L;
        this.M = 0;
        this.N = -9223372036854775807L;
        this.O = 0;
        this.f5588u.clear();
        this.f5582o.i();
        this.f5580m.release();
    }

    void T(long j10) {
        long j11 = this.N;
        if (j11 == -9223372036854775807L || j11 < j10) {
            this.N = j10;
        }
    }

    void U() {
        this.D.removeCallbacks(this.f5590w);
        i0();
    }

    void V(g0 g0Var, long j10, long j11) {
        n nVar = new n(g0Var.f32331a, g0Var.f32332b, g0Var.f(), g0Var.d(), j10, j11, g0Var.b());
        this.f5581n.c(g0Var.f32331a);
        this.f5584q.q(nVar, g0Var.f32333c);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void W(x4.g0 r19, long r20, long r22) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.DashMediaSource.W(x4.g0, long, long):void");
    }

    e0.c X(g0 g0Var, long j10, long j11, IOException iOException, int i10) {
        e0.c h10;
        n nVar = new n(g0Var.f32331a, g0Var.f32332b, g0Var.f(), g0Var.d(), j10, j11, g0Var.b());
        long a10 = this.f5581n.a(new d0.c(nVar, new q(g0Var.f32333c), iOException, i10));
        if (a10 == -9223372036854775807L) {
            h10 = e0.f32304g;
        } else {
            h10 = e0.h(false, a10);
        }
        boolean z10 = !h10.c();
        this.f5584q.x(nVar, g0Var.f32333c, iOException, z10);
        if (z10) {
            this.f5581n.c(g0Var.f32331a);
        }
        return h10;
    }

    void Y(g0 g0Var, long j10, long j11) {
        n nVar = new n(g0Var.f32331a, g0Var.f32332b, g0Var.f(), g0Var.d(), j10, j11, g0Var.b());
        this.f5581n.c(g0Var.f32331a);
        this.f5584q.t(nVar, g0Var.f32333c);
        b0(((Long) g0Var.e()).longValue() - j10);
    }

    e0.c Z(g0 g0Var, long j10, long j11, IOException iOException) {
        this.f5584q.x(new n(g0Var.f32331a, g0Var.f32332b, g0Var.f(), g0Var.d(), j10, j11, g0Var.b()), g0Var.f32333c, iOException, true);
        this.f5581n.c(g0Var.f32331a);
        a0(iOException);
        return e0.f32303f;
    }

    @Override // d4.t
    public d4.r d(t.b bVar, x4.b bVar2, long j10) {
        int intValue = ((Integer) bVar.f14942a).intValue() - this.O;
        a0.a x10 = x(bVar, this.H.d(intValue).f16796b);
        com.google.android.exoplayer2.source.dash.b bVar3 = new com.google.android.exoplayer2.source.dash.b(intValue + this.O, this.H, this.f5582o, intValue, this.f5578k, this.B, this.f5580m, u(bVar), this.f5581n, x10, this.L, this.f5592y, bVar2, this.f5579l, this.f5591x, A());
        this.f5588u.put(bVar3.f5619a, bVar3);
        return bVar3;
    }

    @Override // d4.t
    public void g(d4.r rVar) {
        com.google.android.exoplayer2.source.dash.b bVar = (com.google.android.exoplayer2.source.dash.b) rVar;
        bVar.H();
        this.f5588u.remove(bVar.f5619a);
    }

    @Override // d4.t
    public f2 j() {
        return this.f5575h;
    }

    @Override // d4.t
    public void k() {
        this.f5592y.a();
    }

    private DashMediaSource(f2 f2Var, h4.c cVar, j.a aVar, g0.a aVar2, a.InterfaceC0094a interfaceC0094a, d4.h hVar, v vVar, d0 d0Var, long j10) {
        this.f5575h = f2Var;
        this.E = f2Var.f3882d;
        this.F = ((f2.h) y4.a.e(f2Var.f3880b)).f3953a;
        this.G = f2Var.f3880b.f3953a;
        this.H = cVar;
        this.f5577j = aVar;
        this.f5585r = aVar2;
        this.f5578k = interfaceC0094a;
        this.f5580m = vVar;
        this.f5581n = d0Var;
        this.f5583p = j10;
        this.f5579l = hVar;
        this.f5582o = new g4.b();
        boolean z10 = cVar != null;
        this.f5576i = z10;
        this.f5584q = w(null);
        this.f5587t = new Object();
        this.f5588u = new SparseArray();
        this.f5591x = new c(this, null);
        this.N = -9223372036854775807L;
        this.L = -9223372036854775807L;
        if (z10) {
            y4.a.f(true ^ cVar.f16763d);
            this.f5586s = null;
            this.f5589v = null;
            this.f5590w = null;
            this.f5592y = new f0.a();
            return;
        }
        this.f5586s = new e(this, null);
        this.f5592y = new f();
        this.f5589v = new Runnable() { // from class: g4.d
            @Override // java.lang.Runnable
            public final void run() {
                DashMediaSource.this.i0();
            }
        };
        this.f5590w = new Runnable() { // from class: g4.e
            @Override // java.lang.Runnable
            public final void run() {
                DashMediaSource.this.R();
            }
        };
    }
}
