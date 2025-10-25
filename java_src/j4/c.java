package j4;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import b3.e3;
import d4.a0;
import d4.n;
import d4.q;
import j4.c;
import j4.g;
import j4.h;
import j4.j;
import j4.l;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import o6.t;
import x4.d0;
import x4.e0;
import x4.g0;
import y4.q0;
/* loaded from: classes.dex */
public final class c implements l, e0.b {

    /* renamed from: p  reason: collision with root package name */
    public static final l.a f24324p = new l.a() { // from class: j4.b
        @Override // j4.l.a
        public final l a(i4.g gVar, d0 d0Var, k kVar) {
            return new c(gVar, d0Var, kVar);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final i4.g f24325a;

    /* renamed from: b  reason: collision with root package name */
    private final k f24326b;

    /* renamed from: c  reason: collision with root package name */
    private final d0 f24327c;

    /* renamed from: d  reason: collision with root package name */
    private final HashMap f24328d;

    /* renamed from: e  reason: collision with root package name */
    private final CopyOnWriteArrayList f24329e;

    /* renamed from: f  reason: collision with root package name */
    private final double f24330f;

    /* renamed from: g  reason: collision with root package name */
    private a0.a f24331g;

    /* renamed from: h  reason: collision with root package name */
    private e0 f24332h;

    /* renamed from: i  reason: collision with root package name */
    private Handler f24333i;

    /* renamed from: j  reason: collision with root package name */
    private l.e f24334j;

    /* renamed from: k  reason: collision with root package name */
    private h f24335k;

    /* renamed from: l  reason: collision with root package name */
    private Uri f24336l;

    /* renamed from: m  reason: collision with root package name */
    private g f24337m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f24338n;

    /* renamed from: o  reason: collision with root package name */
    private long f24339o;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b implements l.b {
        private b() {
        }

        @Override // j4.l.b
        public void a() {
            c.this.f24329e.remove(this);
        }

        @Override // j4.l.b
        public boolean g(Uri uri, d0.c cVar, boolean z10) {
            C0227c c0227c;
            if (c.this.f24337m == null) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                List list = ((h) q0.j(c.this.f24335k)).f24400e;
                int i10 = 0;
                for (int i11 = 0; i11 < list.size(); i11++) {
                    C0227c c0227c2 = (C0227c) c.this.f24328d.get(((h.b) list.get(i11)).f24413a);
                    if (c0227c2 != null && elapsedRealtime < c0227c2.f24348h) {
                        i10++;
                    }
                }
                d0.b b10 = c.this.f24327c.b(new d0.a(1, 0, c.this.f24335k.f24400e.size(), i10), cVar);
                if (b10 != null && b10.f32291a == 2 && (c0227c = (C0227c) c.this.f24328d.get(uri)) != null) {
                    c0227c.i(b10.f32292b);
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j4.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public final class C0227c implements e0.b {

        /* renamed from: a  reason: collision with root package name */
        private final Uri f24341a;

        /* renamed from: b  reason: collision with root package name */
        private final e0 f24342b = new e0("DefaultHlsPlaylistTracker:MediaPlaylist");

        /* renamed from: c  reason: collision with root package name */
        private final x4.j f24343c;

        /* renamed from: d  reason: collision with root package name */
        private g f24344d;

        /* renamed from: e  reason: collision with root package name */
        private long f24345e;

        /* renamed from: f  reason: collision with root package name */
        private long f24346f;

        /* renamed from: g  reason: collision with root package name */
        private long f24347g;

        /* renamed from: h  reason: collision with root package name */
        private long f24348h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f24349i;

        /* renamed from: j  reason: collision with root package name */
        private IOException f24350j;

        public C0227c(Uri uri) {
            this.f24341a = uri;
            this.f24343c = c.this.f24325a.a(4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean i(long j10) {
            this.f24348h = SystemClock.elapsedRealtime() + j10;
            if (this.f24341a.equals(c.this.f24336l) && !c.this.L()) {
                return true;
            }
            return false;
        }

        private Uri j() {
            String str;
            g gVar = this.f24344d;
            if (gVar != null) {
                g.f fVar = gVar.f24374v;
                if (fVar.f24393a != -9223372036854775807L || fVar.f24397e) {
                    Uri.Builder buildUpon = this.f24341a.buildUpon();
                    g gVar2 = this.f24344d;
                    if (gVar2.f24374v.f24397e) {
                        buildUpon.appendQueryParameter("_HLS_msn", String.valueOf(gVar2.f24363k + gVar2.f24370r.size()));
                        g gVar3 = this.f24344d;
                        if (gVar3.f24366n != -9223372036854775807L) {
                            List list = gVar3.f24371s;
                            int size = list.size();
                            if (!list.isEmpty() && ((g.b) t.c(list)).f24376m) {
                                size--;
                            }
                            buildUpon.appendQueryParameter("_HLS_part", String.valueOf(size));
                        }
                    }
                    g.f fVar2 = this.f24344d.f24374v;
                    if (fVar2.f24393a != -9223372036854775807L) {
                        if (fVar2.f24394b) {
                            str = "v2";
                        } else {
                            str = "YES";
                        }
                        buildUpon.appendQueryParameter("_HLS_skip", str);
                    }
                    return buildUpon.build();
                }
            }
            return this.f24341a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(Uri uri) {
            this.f24349i = false;
            p(uri);
        }

        private void p(Uri uri) {
            g0 g0Var = new g0(this.f24343c, uri, 4, c.this.f24326b.a(c.this.f24335k, this.f24344d));
            c.this.f24331g.z(new n(g0Var.f32331a, g0Var.f32332b, this.f24342b.n(g0Var, this, c.this.f24327c.d(g0Var.f32333c))), g0Var.f32333c);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void q(final Uri uri) {
            this.f24348h = 0L;
            if (!this.f24349i && !this.f24342b.j() && !this.f24342b.i()) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (elapsedRealtime < this.f24347g) {
                    this.f24349i = true;
                    c.this.f24333i.postDelayed(new Runnable() { // from class: j4.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            c.C0227c.this.m(uri);
                        }
                    }, this.f24347g - elapsedRealtime);
                    return;
                }
                p(uri);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void w(g gVar, n nVar) {
            g gVar2;
            boolean z10;
            long j10;
            g gVar3 = this.f24344d;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f24345e = elapsedRealtime;
            g G = c.this.G(gVar3, gVar);
            this.f24344d = G;
            boolean z11 = false;
            IOException iOException = null;
            if (G != gVar3) {
                this.f24350j = null;
                this.f24346f = elapsedRealtime;
                c.this.R(this.f24341a, G);
            } else if (!G.f24367o) {
                if (gVar.f24363k + gVar.f24370r.size() < this.f24344d.f24363k) {
                    iOException = new l.c(this.f24341a);
                    z10 = true;
                } else {
                    if (elapsedRealtime - this.f24346f > q0.X0(gVar2.f24365m) * c.this.f24330f) {
                        iOException = new l.d(this.f24341a);
                    }
                    z10 = false;
                }
                if (iOException != null) {
                    this.f24350j = iOException;
                    c.this.N(this.f24341a, new d0.c(nVar, new q(4), iOException, 1), z10);
                }
            }
            g gVar4 = this.f24344d;
            if (!gVar4.f24374v.f24397e) {
                if (gVar4 != gVar3) {
                    j10 = gVar4.f24365m;
                } else {
                    j10 = gVar4.f24365m / 2;
                }
            } else {
                j10 = 0;
            }
            this.f24347g = elapsedRealtime + q0.X0(j10);
            if (this.f24344d.f24366n != -9223372036854775807L || this.f24341a.equals(c.this.f24336l)) {
                z11 = true;
            }
            if (z11 && !this.f24344d.f24367o) {
                q(j());
            }
        }

        public g k() {
            return this.f24344d;
        }

        public boolean l() {
            int i10;
            if (this.f24344d == null) {
                return false;
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long max = Math.max(30000L, q0.X0(this.f24344d.f24373u));
            g gVar = this.f24344d;
            if (!gVar.f24367o && (i10 = gVar.f24356d) != 2 && i10 != 1 && this.f24345e + max <= elapsedRealtime) {
                return false;
            }
            return true;
        }

        public void n() {
            q(this.f24341a);
        }

        public void r() {
            this.f24342b.a();
            IOException iOException = this.f24350j;
            if (iOException == null) {
                return;
            }
            throw iOException;
        }

        @Override // x4.e0.b
        /* renamed from: t */
        public void s(g0 g0Var, long j10, long j11, boolean z10) {
            n nVar = new n(g0Var.f32331a, g0Var.f32332b, g0Var.f(), g0Var.d(), j10, j11, g0Var.b());
            c.this.f24327c.c(g0Var.f32331a);
            c.this.f24331g.q(nVar, 4);
        }

        @Override // x4.e0.b
        /* renamed from: u */
        public void o(g0 g0Var, long j10, long j11) {
            i iVar = (i) g0Var.e();
            n nVar = new n(g0Var.f32331a, g0Var.f32332b, g0Var.f(), g0Var.d(), j10, j11, g0Var.b());
            if (iVar instanceof g) {
                w((g) iVar, nVar);
                c.this.f24331g.t(nVar, 4);
            } else {
                this.f24350j = e3.c("Loaded playlist has unexpected type.", null);
                c.this.f24331g.x(nVar, 4, this.f24350j, true);
            }
            c.this.f24327c.c(g0Var.f32331a);
        }

        @Override // x4.e0.b
        /* renamed from: v */
        public e0.c h(g0 g0Var, long j10, long j11, IOException iOException, int i10) {
            boolean z10;
            int i11;
            e0.c cVar;
            n nVar = new n(g0Var.f32331a, g0Var.f32332b, g0Var.f(), g0Var.d(), j10, j11, g0Var.b());
            if (g0Var.f().getQueryParameter("_HLS_msn") != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            boolean z11 = iOException instanceof j.a;
            if (z10 || z11) {
                if (iOException instanceof x4.a0) {
                    i11 = ((x4.a0) iOException).f32270d;
                } else {
                    i11 = Integer.MAX_VALUE;
                }
                if (z11 || i11 == 400 || i11 == 503) {
                    this.f24347g = SystemClock.elapsedRealtime();
                    n();
                    ((a0.a) q0.j(c.this.f24331g)).x(nVar, g0Var.f32333c, iOException, true);
                    return e0.f32303f;
                }
            }
            d0.c cVar2 = new d0.c(nVar, new q(g0Var.f32333c), iOException, i10);
            if (c.this.N(this.f24341a, cVar2, false)) {
                long a10 = c.this.f24327c.a(cVar2);
                if (a10 != -9223372036854775807L) {
                    cVar = e0.h(false, a10);
                } else {
                    cVar = e0.f32304g;
                }
            } else {
                cVar = e0.f32303f;
            }
            boolean c10 = true ^ cVar.c();
            c.this.f24331g.x(nVar, g0Var.f32333c, iOException, c10);
            if (c10) {
                c.this.f24327c.c(g0Var.f32331a);
            }
            return cVar;
        }

        public void x() {
            this.f24342b.l();
        }
    }

    public c(i4.g gVar, d0 d0Var, k kVar) {
        this(gVar, d0Var, kVar, 3.5d);
    }

    private void E(List list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Uri uri = (Uri) list.get(i10);
            this.f24328d.put(uri, new C0227c(uri));
        }
    }

    private static g.d F(g gVar, g gVar2) {
        int i10 = (int) (gVar2.f24363k - gVar.f24363k);
        List list = gVar.f24370r;
        if (i10 < list.size()) {
            return (g.d) list.get(i10);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g G(g gVar, g gVar2) {
        if (!gVar2.f(gVar)) {
            if (gVar2.f24367o) {
                return gVar.d();
            }
            return gVar;
        }
        return gVar2.c(I(gVar, gVar2), H(gVar, gVar2));
    }

    private int H(g gVar, g gVar2) {
        int i10;
        if (gVar2.f24361i) {
            return gVar2.f24362j;
        }
        g gVar3 = this.f24337m;
        if (gVar3 != null) {
            i10 = gVar3.f24362j;
        } else {
            i10 = 0;
        }
        if (gVar == null) {
            return i10;
        }
        g.d F = F(gVar, gVar2);
        if (F != null) {
            return (gVar.f24362j + F.f24385d) - ((g.d) gVar2.f24370r.get(0)).f24385d;
        }
        return i10;
    }

    private long I(g gVar, g gVar2) {
        long j10;
        if (gVar2.f24368p) {
            return gVar2.f24360h;
        }
        g gVar3 = this.f24337m;
        if (gVar3 != null) {
            j10 = gVar3.f24360h;
        } else {
            j10 = 0;
        }
        if (gVar == null) {
            return j10;
        }
        int size = gVar.f24370r.size();
        g.d F = F(gVar, gVar2);
        if (F != null) {
            return gVar.f24360h + F.f24386e;
        }
        if (size == gVar2.f24363k - gVar.f24363k) {
            return gVar.e();
        }
        return j10;
    }

    private Uri J(Uri uri) {
        g.c cVar;
        g gVar = this.f24337m;
        if (gVar != null && gVar.f24374v.f24397e && (cVar = (g.c) gVar.f24372t.get(uri)) != null) {
            Uri.Builder buildUpon = uri.buildUpon();
            buildUpon.appendQueryParameter("_HLS_msn", String.valueOf(cVar.f24378b));
            int i10 = cVar.f24379c;
            if (i10 != -1) {
                buildUpon.appendQueryParameter("_HLS_part", String.valueOf(i10));
            }
            return buildUpon.build();
        }
        return uri;
    }

    private boolean K(Uri uri) {
        List list = this.f24335k.f24400e;
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (uri.equals(((h.b) list.get(i10)).f24413a)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean L() {
        List list = this.f24335k.f24400e;
        int size = list.size();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (int i10 = 0; i10 < size; i10++) {
            C0227c c0227c = (C0227c) y4.a.e((C0227c) this.f24328d.get(((h.b) list.get(i10)).f24413a));
            if (elapsedRealtime > c0227c.f24348h) {
                Uri uri = c0227c.f24341a;
                this.f24336l = uri;
                c0227c.q(J(uri));
                return true;
            }
        }
        return false;
    }

    private void M(Uri uri) {
        if (!uri.equals(this.f24336l) && K(uri)) {
            g gVar = this.f24337m;
            if (gVar == null || !gVar.f24367o) {
                this.f24336l = uri;
                C0227c c0227c = (C0227c) this.f24328d.get(uri);
                g gVar2 = c0227c.f24344d;
                if (gVar2 == null || !gVar2.f24367o) {
                    c0227c.q(J(uri));
                    return;
                }
                this.f24337m = gVar2;
                this.f24334j.m(gVar2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean N(Uri uri, d0.c cVar, boolean z10) {
        Iterator it = this.f24329e.iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            z11 |= !((l.b) it.next()).g(uri, cVar, z10);
        }
        return z11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R(Uri uri, g gVar) {
        if (uri.equals(this.f24336l)) {
            if (this.f24337m == null) {
                this.f24338n = !gVar.f24367o;
                this.f24339o = gVar.f24360h;
            }
            this.f24337m = gVar;
            this.f24334j.m(gVar);
        }
        Iterator it = this.f24329e.iterator();
        while (it.hasNext()) {
            ((l.b) it.next()).a();
        }
    }

    @Override // x4.e0.b
    /* renamed from: O */
    public void s(g0 g0Var, long j10, long j11, boolean z10) {
        n nVar = new n(g0Var.f32331a, g0Var.f32332b, g0Var.f(), g0Var.d(), j10, j11, g0Var.b());
        this.f24327c.c(g0Var.f32331a);
        this.f24331g.q(nVar, 4);
    }

    @Override // x4.e0.b
    /* renamed from: P */
    public void o(g0 g0Var, long j10, long j11) {
        h hVar;
        i iVar = (i) g0Var.e();
        boolean z10 = iVar instanceof g;
        if (z10) {
            hVar = h.e(iVar.f24419a);
        } else {
            hVar = (h) iVar;
        }
        this.f24335k = hVar;
        this.f24336l = ((h.b) hVar.f24400e.get(0)).f24413a;
        this.f24329e.add(new b());
        E(hVar.f24399d);
        n nVar = new n(g0Var.f32331a, g0Var.f32332b, g0Var.f(), g0Var.d(), j10, j11, g0Var.b());
        C0227c c0227c = (C0227c) this.f24328d.get(this.f24336l);
        if (z10) {
            c0227c.w((g) iVar, nVar);
        } else {
            c0227c.n();
        }
        this.f24327c.c(g0Var.f32331a);
        this.f24331g.t(nVar, 4);
    }

    @Override // x4.e0.b
    /* renamed from: Q */
    public e0.c h(g0 g0Var, long j10, long j11, IOException iOException, int i10) {
        boolean z10;
        n nVar = new n(g0Var.f32331a, g0Var.f32332b, g0Var.f(), g0Var.d(), j10, j11, g0Var.b());
        long a10 = this.f24327c.a(new d0.c(nVar, new q(g0Var.f32333c), iOException, i10));
        if (a10 == -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f24331g.x(nVar, g0Var.f32333c, iOException, z10);
        if (z10) {
            this.f24327c.c(g0Var.f32331a);
        }
        if (z10) {
            return e0.f32304g;
        }
        return e0.h(false, a10);
    }

    @Override // j4.l
    public void a(Uri uri, a0.a aVar, l.e eVar) {
        boolean z10;
        this.f24333i = q0.w();
        this.f24331g = aVar;
        this.f24334j = eVar;
        g0 g0Var = new g0(this.f24325a.a(4), uri, 4, this.f24326b.b());
        if (this.f24332h == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        e0 e0Var = new e0("DefaultHlsPlaylistTracker:MultivariantPlaylist");
        this.f24332h = e0Var;
        aVar.z(new n(g0Var.f32331a, g0Var.f32332b, e0Var.n(g0Var, this, this.f24327c.d(g0Var.f32333c))), g0Var.f32333c);
    }

    @Override // j4.l
    public void b(l.b bVar) {
        y4.a.e(bVar);
        this.f24329e.add(bVar);
    }

    @Override // j4.l
    public boolean c(Uri uri) {
        return ((C0227c) this.f24328d.get(uri)).l();
    }

    @Override // j4.l
    public void d(Uri uri) {
        ((C0227c) this.f24328d.get(uri)).r();
    }

    @Override // j4.l
    public long e() {
        return this.f24339o;
    }

    @Override // j4.l
    public boolean f() {
        return this.f24338n;
    }

    @Override // j4.l
    public h g() {
        return this.f24335k;
    }

    @Override // j4.l
    public void i(l.b bVar) {
        this.f24329e.remove(bVar);
    }

    @Override // j4.l
    public boolean j(Uri uri, long j10) {
        C0227c c0227c = (C0227c) this.f24328d.get(uri);
        if (c0227c != null) {
            return !c0227c.i(j10);
        }
        return false;
    }

    @Override // j4.l
    public void k() {
        e0 e0Var = this.f24332h;
        if (e0Var != null) {
            e0Var.a();
        }
        Uri uri = this.f24336l;
        if (uri != null) {
            d(uri);
        }
    }

    @Override // j4.l
    public void l(Uri uri) {
        ((C0227c) this.f24328d.get(uri)).n();
    }

    @Override // j4.l
    public g m(Uri uri, boolean z10) {
        g k10 = ((C0227c) this.f24328d.get(uri)).k();
        if (k10 != null && z10) {
            M(uri);
        }
        return k10;
    }

    @Override // j4.l
    public void stop() {
        this.f24336l = null;
        this.f24337m = null;
        this.f24335k = null;
        this.f24339o = -9223372036854775807L;
        this.f24332h.l();
        this.f24332h = null;
        for (C0227c c0227c : this.f24328d.values()) {
            c0227c.x();
        }
        this.f24333i.removeCallbacksAndMessages(null);
        this.f24333i = null;
        this.f24328d.clear();
    }

    public c(i4.g gVar, d0 d0Var, k kVar, double d10) {
        this.f24325a = gVar;
        this.f24326b = kVar;
        this.f24327c = d0Var;
        this.f24330f = d10;
        this.f24329e = new CopyOnWriteArrayList();
        this.f24328d = new HashMap();
        this.f24339o = -9223372036854775807L;
    }
}
