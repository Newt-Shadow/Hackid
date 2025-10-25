package i4;

import android.net.Uri;
import android.os.SystemClock;
import android.util.Pair;
import b3.x1;
import b3.x3;
import c3.t3;
import d4.s0;
import j4.g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import w4.y;
import x4.m0;
import x4.n;
import y4.o0;
import y4.q0;
/* loaded from: classes.dex */
class f {

    /* renamed from: a  reason: collision with root package name */
    private final h f17124a;

    /* renamed from: b  reason: collision with root package name */
    private final x4.j f17125b;

    /* renamed from: c  reason: collision with root package name */
    private final x4.j f17126c;

    /* renamed from: d  reason: collision with root package name */
    private final s f17127d;

    /* renamed from: e  reason: collision with root package name */
    private final Uri[] f17128e;

    /* renamed from: f  reason: collision with root package name */
    private final x1[] f17129f;

    /* renamed from: g  reason: collision with root package name */
    private final j4.l f17130g;

    /* renamed from: h  reason: collision with root package name */
    private final s0 f17131h;

    /* renamed from: i  reason: collision with root package name */
    private final List f17132i;

    /* renamed from: k  reason: collision with root package name */
    private final t3 f17134k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f17135l;

    /* renamed from: n  reason: collision with root package name */
    private IOException f17137n;

    /* renamed from: o  reason: collision with root package name */
    private Uri f17138o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f17139p;

    /* renamed from: q  reason: collision with root package name */
    private y f17140q;

    /* renamed from: s  reason: collision with root package name */
    private boolean f17142s;

    /* renamed from: j  reason: collision with root package name */
    private final i4.e f17133j = new i4.e(4);

    /* renamed from: m  reason: collision with root package name */
    private byte[] f17136m = q0.f32951f;

    /* renamed from: r  reason: collision with root package name */
    private long f17141r = -9223372036854775807L;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a extends f4.l {

        /* renamed from: l  reason: collision with root package name */
        private byte[] f17143l;

        public a(x4.j jVar, x4.n nVar, x1 x1Var, int i10, Object obj, byte[] bArr) {
            super(jVar, nVar, 3, x1Var, i10, obj, bArr);
        }

        @Override // f4.l
        protected void g(byte[] bArr, int i10) {
            this.f17143l = Arrays.copyOf(bArr, i10);
        }

        public byte[] j() {
            return this.f17143l;
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public f4.f f17144a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f17145b;

        /* renamed from: c  reason: collision with root package name */
        public Uri f17146c;

        public b() {
            a();
        }

        public void a() {
            this.f17144a = null;
            this.f17145b = false;
            this.f17146c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class c extends f4.b {

        /* renamed from: e  reason: collision with root package name */
        private final List f17147e;

        /* renamed from: f  reason: collision with root package name */
        private final long f17148f;

        /* renamed from: g  reason: collision with root package name */
        private final String f17149g;

        public c(String str, long j10, List list) {
            super(0L, list.size() - 1);
            this.f17149g = str;
            this.f17148f = j10;
            this.f17147e = list;
        }

        @Override // f4.o
        public long a() {
            c();
            return this.f17148f + ((g.e) this.f17147e.get((int) d())).f24386e;
        }

        @Override // f4.o
        public long b() {
            c();
            g.e eVar = (g.e) this.f17147e.get((int) d());
            return this.f17148f + eVar.f24386e + eVar.f24384c;
        }
    }

    /* loaded from: classes.dex */
    private static final class d extends w4.c {

        /* renamed from: h  reason: collision with root package name */
        private int f17150h;

        public d(s0 s0Var, int[] iArr) {
            super(s0Var, iArr);
            this.f17150h = m(s0Var.b(iArr[0]));
        }

        @Override // w4.y
        public int b() {
            return this.f17150h;
        }

        @Override // w4.y
        public void g(long j10, long j11, long j12, List list, f4.o[] oVarArr) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (!d(this.f17150h, elapsedRealtime)) {
                return;
            }
            for (int i10 = this.f31769b - 1; i10 >= 0; i10--) {
                if (!d(i10, elapsedRealtime)) {
                    this.f17150h = i10;
                    return;
                }
            }
            throw new IllegalStateException();
        }

        @Override // w4.y
        public int o() {
            return 0;
        }

        @Override // w4.y
        public Object q() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final g.e f17151a;

        /* renamed from: b  reason: collision with root package name */
        public final long f17152b;

        /* renamed from: c  reason: collision with root package name */
        public final int f17153c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f17154d;

        public e(g.e eVar, long j10, int i10) {
            boolean z10;
            this.f17151a = eVar;
            this.f17152b = j10;
            this.f17153c = i10;
            if ((eVar instanceof g.b) && ((g.b) eVar).f24376m) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f17154d = z10;
        }
    }

    public f(h hVar, j4.l lVar, Uri[] uriArr, x1[] x1VarArr, g gVar, m0 m0Var, s sVar, List list, t3 t3Var) {
        this.f17124a = hVar;
        this.f17130g = lVar;
        this.f17128e = uriArr;
        this.f17129f = x1VarArr;
        this.f17127d = sVar;
        this.f17132i = list;
        this.f17134k = t3Var;
        x4.j a10 = gVar.a(1);
        this.f17125b = a10;
        if (m0Var != null) {
            a10.d(m0Var);
        }
        this.f17126c = gVar.a(3);
        this.f17131h = new s0(x1VarArr);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < uriArr.length; i10++) {
            if ((x1VarArr[i10].f4507e & 16384) == 0) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        this.f17140q = new d(this.f17131h, q6.e.k(arrayList));
    }

    private static Uri d(j4.g gVar, g.e eVar) {
        String str;
        if (eVar != null && (str = eVar.f24388g) != null) {
            return o0.e(gVar.f24419a, str);
        }
        return null;
    }

    private Pair f(i iVar, boolean z10, j4.g gVar, long j10, long j11) {
        boolean z11;
        List list;
        long j12;
        long j13;
        int i10 = -1;
        if (iVar != null && !z10) {
            if (iVar.h()) {
                if (iVar.f17160o == -1) {
                    j13 = iVar.g();
                } else {
                    j13 = iVar.f15829j;
                }
                Long valueOf = Long.valueOf(j13);
                int i11 = iVar.f17160o;
                if (i11 != -1) {
                    i10 = i11 + 1;
                }
                return new Pair(valueOf, Integer.valueOf(i10));
            }
            return new Pair(Long.valueOf(iVar.f15829j), Integer.valueOf(iVar.f17160o));
        }
        long j14 = gVar.f24373u + j10;
        if (iVar != null && !this.f17139p) {
            j11 = iVar.f15784g;
        }
        if (!gVar.f24367o && j11 >= j14) {
            return new Pair(Long.valueOf(gVar.f24363k + gVar.f24370r.size()), -1);
        }
        long j15 = j11 - j10;
        List list2 = gVar.f24370r;
        Long valueOf2 = Long.valueOf(j15);
        int i12 = 0;
        if (this.f17130g.f() && iVar != null) {
            z11 = false;
        } else {
            z11 = true;
        }
        int f10 = q0.f(list2, valueOf2, true, z11);
        long j16 = f10 + gVar.f24363k;
        if (f10 >= 0) {
            g.d dVar = (g.d) gVar.f24370r.get(f10);
            if (j15 < dVar.f24386e + dVar.f24384c) {
                list = dVar.f24381m;
            } else {
                list = gVar.f24371s;
            }
            while (true) {
                if (i12 >= list.size()) {
                    break;
                }
                g.b bVar = (g.b) list.get(i12);
                if (j15 < bVar.f24386e + bVar.f24384c) {
                    if (bVar.f24375l) {
                        if (list == gVar.f24371s) {
                            j12 = 1;
                        } else {
                            j12 = 0;
                        }
                        j16 += j12;
                        i10 = i12;
                    }
                } else {
                    i12++;
                }
            }
        }
        return new Pair(Long.valueOf(j16), Integer.valueOf(i10));
    }

    private static e g(j4.g gVar, long j10, int i10) {
        int i11 = (int) (j10 - gVar.f24363k);
        if (i11 == gVar.f24370r.size()) {
            if (i10 == -1) {
                i10 = 0;
            }
            if (i10 >= gVar.f24371s.size()) {
                return null;
            }
            return new e((g.e) gVar.f24371s.get(i10), j10, i10);
        }
        g.d dVar = (g.d) gVar.f24370r.get(i11);
        if (i10 == -1) {
            return new e(dVar, j10, -1);
        }
        if (i10 < dVar.f24381m.size()) {
            return new e((g.e) dVar.f24381m.get(i10), j10, i10);
        }
        int i12 = i11 + 1;
        if (i12 < gVar.f24370r.size()) {
            return new e((g.e) gVar.f24370r.get(i12), j10 + 1, -1);
        }
        if (gVar.f24371s.isEmpty()) {
            return null;
        }
        return new e((g.e) gVar.f24371s.get(0), j10 + 1, 0);
    }

    static List i(j4.g gVar, long j10, int i10) {
        int i11 = (int) (j10 - gVar.f24363k);
        if (i11 >= 0 && gVar.f24370r.size() >= i11) {
            ArrayList arrayList = new ArrayList();
            int i12 = 0;
            if (i11 < gVar.f24370r.size()) {
                if (i10 != -1) {
                    g.d dVar = (g.d) gVar.f24370r.get(i11);
                    if (i10 == 0) {
                        arrayList.add(dVar);
                    } else if (i10 < dVar.f24381m.size()) {
                        List list = dVar.f24381m;
                        arrayList.addAll(list.subList(i10, list.size()));
                    }
                    i11++;
                }
                List list2 = gVar.f24370r;
                arrayList.addAll(list2.subList(i11, list2.size()));
                i10 = 0;
            }
            if (gVar.f24366n != -9223372036854775807L) {
                if (i10 != -1) {
                    i12 = i10;
                }
                if (i12 < gVar.f24371s.size()) {
                    List list3 = gVar.f24371s;
                    arrayList.addAll(list3.subList(i12, list3.size()));
                }
            }
            return Collections.unmodifiableList(arrayList);
        }
        return o6.q.D();
    }

    private f4.f l(Uri uri, int i10) {
        if (uri == null) {
            return null;
        }
        byte[] c10 = this.f17133j.c(uri);
        if (c10 != null) {
            this.f17133j.b(uri, c10);
            return null;
        }
        return new a(this.f17126c, new n.b().i(uri).b(1).a(), this.f17129f[i10], this.f17140q.o(), this.f17140q.q(), this.f17136m);
    }

    private long s(long j10) {
        boolean z10;
        long j11 = this.f17141r;
        if (j11 != -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            return -9223372036854775807L;
        }
        return j11 - j10;
    }

    private void w(j4.g gVar) {
        long e10;
        if (gVar.f24367o) {
            e10 = -9223372036854775807L;
        } else {
            e10 = gVar.e() - this.f17130g.e();
        }
        this.f17141r = e10;
    }

    public f4.o[] a(i iVar, long j10) {
        int c10;
        boolean z10;
        int i10;
        if (iVar == null) {
            c10 = -1;
        } else {
            c10 = this.f17131h.c(iVar.f15781d);
        }
        int i11 = c10;
        int length = this.f17140q.length();
        f4.o[] oVarArr = new f4.o[length];
        boolean z11 = false;
        int i12 = 0;
        while (i12 < length) {
            int j11 = this.f17140q.j(i12);
            Uri uri = this.f17128e[j11];
            if (!this.f17130g.c(uri)) {
                oVarArr[i12] = f4.o.f15830a;
                i10 = i12;
            } else {
                j4.g m10 = this.f17130g.m(uri, z11);
                y4.a.e(m10);
                long e10 = m10.f24360h - this.f17130g.e();
                if (j11 != i11) {
                    z10 = true;
                } else {
                    z10 = z11;
                }
                i10 = i12;
                Pair f10 = f(iVar, z10, m10, e10, j10);
                oVarArr[i10] = new c(m10.f24419a, e10, i(m10, ((Long) f10.first).longValue(), ((Integer) f10.second).intValue()));
            }
            i12 = i10 + 1;
            z11 = false;
        }
        return oVarArr;
    }

    public long b(long j10, x3 x3Var) {
        j4.g gVar;
        long j11;
        int b10 = this.f17140q.b();
        Uri[] uriArr = this.f17128e;
        if (b10 < uriArr.length && b10 != -1) {
            gVar = this.f17130g.m(uriArr[this.f17140q.l()], true);
        } else {
            gVar = null;
        }
        if (gVar != null && !gVar.f24370r.isEmpty() && gVar.f24421c) {
            long e10 = gVar.f24360h - this.f17130g.e();
            long j12 = j10 - e10;
            int f10 = q0.f(gVar.f24370r, Long.valueOf(j12), true, true);
            long j13 = ((g.d) gVar.f24370r.get(f10)).f24386e;
            if (f10 != gVar.f24370r.size() - 1) {
                j11 = ((g.d) gVar.f24370r.get(f10 + 1)).f24386e;
            } else {
                j11 = j13;
            }
            return x3Var.a(j12, j13, j11) + e10;
        }
        return j10;
    }

    public int c(i iVar) {
        List list;
        if (iVar.f17160o == -1) {
            return 1;
        }
        j4.g gVar = (j4.g) y4.a.e(this.f17130g.m(this.f17128e[this.f17131h.c(iVar.f15781d)], false));
        int i10 = (int) (iVar.f15829j - gVar.f24363k);
        if (i10 < 0) {
            return 1;
        }
        if (i10 < gVar.f24370r.size()) {
            list = ((g.d) gVar.f24370r.get(i10)).f24381m;
        } else {
            list = gVar.f24371s;
        }
        if (iVar.f17160o >= list.size()) {
            return 2;
        }
        g.b bVar = (g.b) list.get(iVar.f17160o);
        if (bVar.f24376m) {
            return 0;
        }
        if (q0.c(Uri.parse(o0.d(gVar.f24419a, bVar.f24382a)), iVar.f15779b.f32371a)) {
            return 1;
        }
        return 2;
    }

    public void e(long j10, long j11, List list, boolean z10, b bVar) {
        j4.g gVar;
        long j12;
        Uri uri;
        int i10;
        i iVar = list.isEmpty() ? null : (i) o6.t.c(list);
        int c10 = iVar == null ? -1 : this.f17131h.c(iVar.f15781d);
        long j13 = j11 - j10;
        long s10 = s(j10);
        if (iVar != null && !this.f17139p) {
            long d10 = iVar.d();
            j13 = Math.max(0L, j13 - d10);
            if (s10 != -9223372036854775807L) {
                s10 = Math.max(0L, s10 - d10);
            }
        }
        this.f17140q.g(j10, j13, s10, list, a(iVar, j11));
        int l10 = this.f17140q.l();
        boolean z11 = c10 != l10;
        Uri uri2 = this.f17128e[l10];
        if (!this.f17130g.c(uri2)) {
            bVar.f17146c = uri2;
            this.f17142s &= uri2.equals(this.f17138o);
            this.f17138o = uri2;
            return;
        }
        j4.g m10 = this.f17130g.m(uri2, true);
        y4.a.e(m10);
        this.f17139p = m10.f24421c;
        w(m10);
        long e10 = m10.f24360h - this.f17130g.e();
        Pair f10 = f(iVar, z11, m10, e10, j11);
        long longValue = ((Long) f10.first).longValue();
        int intValue = ((Integer) f10.second).intValue();
        if (longValue >= m10.f24363k || iVar == null || !z11) {
            gVar = m10;
            j12 = e10;
            uri = uri2;
            i10 = l10;
        } else {
            Uri uri3 = this.f17128e[c10];
            j4.g m11 = this.f17130g.m(uri3, true);
            y4.a.e(m11);
            j12 = m11.f24360h - this.f17130g.e();
            Pair f11 = f(iVar, false, m11, j12, j11);
            longValue = ((Long) f11.first).longValue();
            intValue = ((Integer) f11.second).intValue();
            i10 = c10;
            uri = uri3;
            gVar = m11;
        }
        if (longValue < gVar.f24363k) {
            this.f17137n = new d4.b();
            return;
        }
        e g10 = g(gVar, longValue, intValue);
        if (g10 == null) {
            if (!gVar.f24367o) {
                bVar.f17146c = uri;
                this.f17142s &= uri.equals(this.f17138o);
                this.f17138o = uri;
                return;
            } else if (!z10 && !gVar.f24370r.isEmpty()) {
                g10 = new e((g.e) o6.t.c(gVar.f24370r), (gVar.f24363k + gVar.f24370r.size()) - 1, -1);
            } else {
                bVar.f17145b = true;
                return;
            }
        }
        this.f17142s = false;
        this.f17138o = null;
        Uri d11 = d(gVar, g10.f17151a.f24383b);
        f4.f l11 = l(d11, i10);
        bVar.f17144a = l11;
        if (l11 != null) {
            return;
        }
        Uri d12 = d(gVar, g10.f17151a);
        f4.f l12 = l(d12, i10);
        bVar.f17144a = l12;
        if (l12 != null) {
            return;
        }
        boolean w10 = i.w(iVar, uri, gVar, g10, j12);
        if (w10 && g10.f17154d) {
            return;
        }
        bVar.f17144a = i.j(this.f17124a, this.f17125b, this.f17129f[i10], j12, gVar, g10, uri, this.f17132i, this.f17140q.o(), this.f17140q.q(), this.f17135l, this.f17127d, iVar, this.f17133j.a(d12), this.f17133j.a(d11), w10, this.f17134k);
    }

    public int h(long j10, List list) {
        if (this.f17137n == null && this.f17140q.length() >= 2) {
            return this.f17140q.k(j10, list);
        }
        return list.size();
    }

    public s0 j() {
        return this.f17131h;
    }

    public y k() {
        return this.f17140q;
    }

    public boolean m(f4.f fVar, long j10) {
        y yVar = this.f17140q;
        return yVar.c(yVar.u(this.f17131h.c(fVar.f15781d)), j10);
    }

    public void n() {
        IOException iOException = this.f17137n;
        if (iOException == null) {
            Uri uri = this.f17138o;
            if (uri != null && this.f17142s) {
                this.f17130g.d(uri);
                return;
            }
            return;
        }
        throw iOException;
    }

    public boolean o(Uri uri) {
        return q0.s(this.f17128e, uri);
    }

    public void p(f4.f fVar) {
        if (fVar instanceof a) {
            a aVar = (a) fVar;
            this.f17136m = aVar.h();
            this.f17133j.b(aVar.f15779b.f32371a, (byte[]) y4.a.e(aVar.j()));
        }
    }

    public boolean q(Uri uri, long j10) {
        int u10;
        int i10 = 0;
        while (true) {
            Uri[] uriArr = this.f17128e;
            if (i10 < uriArr.length) {
                if (uriArr[i10].equals(uri)) {
                    break;
                }
                i10++;
            } else {
                i10 = -1;
                break;
            }
        }
        if (i10 == -1 || (u10 = this.f17140q.u(i10)) == -1) {
            return true;
        }
        this.f17142s |= uri.equals(this.f17138o);
        if (j10 != -9223372036854775807L && (!this.f17140q.c(u10, j10) || !this.f17130g.j(uri, j10))) {
            return false;
        }
        return true;
    }

    public void r() {
        this.f17137n = null;
    }

    public void t(boolean z10) {
        this.f17135l = z10;
    }

    public void u(y yVar) {
        this.f17140q = yVar;
    }

    public boolean v(long j10, f4.f fVar, List list) {
        if (this.f17137n != null) {
            return false;
        }
        return this.f17140q.s(j10, fVar, list);
    }
}
