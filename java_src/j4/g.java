package j4;

import android.net.Uri;
import f3.m;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import o6.q;
import o6.r;
import o6.t;
/* loaded from: classes.dex */
public final class g extends i {

    /* renamed from: d  reason: collision with root package name */
    public final int f24356d;

    /* renamed from: e  reason: collision with root package name */
    public final long f24357e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f24358f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f24359g;

    /* renamed from: h  reason: collision with root package name */
    public final long f24360h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f24361i;

    /* renamed from: j  reason: collision with root package name */
    public final int f24362j;

    /* renamed from: k  reason: collision with root package name */
    public final long f24363k;

    /* renamed from: l  reason: collision with root package name */
    public final int f24364l;

    /* renamed from: m  reason: collision with root package name */
    public final long f24365m;

    /* renamed from: n  reason: collision with root package name */
    public final long f24366n;

    /* renamed from: o  reason: collision with root package name */
    public final boolean f24367o;

    /* renamed from: p  reason: collision with root package name */
    public final boolean f24368p;

    /* renamed from: q  reason: collision with root package name */
    public final m f24369q;

    /* renamed from: r  reason: collision with root package name */
    public final List f24370r;

    /* renamed from: s  reason: collision with root package name */
    public final List f24371s;

    /* renamed from: t  reason: collision with root package name */
    public final Map f24372t;

    /* renamed from: u  reason: collision with root package name */
    public final long f24373u;

    /* renamed from: v  reason: collision with root package name */
    public final f f24374v;

    /* loaded from: classes.dex */
    public static final class b extends e {

        /* renamed from: l  reason: collision with root package name */
        public final boolean f24375l;

        /* renamed from: m  reason: collision with root package name */
        public final boolean f24376m;

        public b(String str, d dVar, long j10, int i10, long j11, m mVar, String str2, String str3, long j12, long j13, boolean z10, boolean z11, boolean z12) {
            super(str, dVar, j10, i10, j11, mVar, str2, str3, j12, j13, z10);
            this.f24375l = z11;
            this.f24376m = z12;
        }

        public b b(long j10, int i10) {
            return new b(this.f24382a, this.f24383b, this.f24384c, i10, j10, this.f24387f, this.f24388g, this.f24389h, this.f24390i, this.f24391j, this.f24392k, this.f24375l, this.f24376m);
        }
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f24377a;

        /* renamed from: b  reason: collision with root package name */
        public final long f24378b;

        /* renamed from: c  reason: collision with root package name */
        public final int f24379c;

        public c(Uri uri, long j10, int i10) {
            this.f24377a = uri;
            this.f24378b = j10;
            this.f24379c = i10;
        }
    }

    /* loaded from: classes.dex */
    public static class e implements Comparable {

        /* renamed from: a  reason: collision with root package name */
        public final String f24382a;

        /* renamed from: b  reason: collision with root package name */
        public final d f24383b;

        /* renamed from: c  reason: collision with root package name */
        public final long f24384c;

        /* renamed from: d  reason: collision with root package name */
        public final int f24385d;

        /* renamed from: e  reason: collision with root package name */
        public final long f24386e;

        /* renamed from: f  reason: collision with root package name */
        public final m f24387f;

        /* renamed from: g  reason: collision with root package name */
        public final String f24388g;

        /* renamed from: h  reason: collision with root package name */
        public final String f24389h;

        /* renamed from: i  reason: collision with root package name */
        public final long f24390i;

        /* renamed from: j  reason: collision with root package name */
        public final long f24391j;

        /* renamed from: k  reason: collision with root package name */
        public final boolean f24392k;

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(Long l10) {
            if (this.f24386e > l10.longValue()) {
                return 1;
            }
            if (this.f24386e < l10.longValue()) {
                return -1;
            }
            return 0;
        }

        private e(String str, d dVar, long j10, int i10, long j11, m mVar, String str2, String str3, long j12, long j13, boolean z10) {
            this.f24382a = str;
            this.f24383b = dVar;
            this.f24384c = j10;
            this.f24385d = i10;
            this.f24386e = j11;
            this.f24387f = mVar;
            this.f24388g = str2;
            this.f24389h = str3;
            this.f24390i = j12;
            this.f24391j = j13;
            this.f24392k = z10;
        }
    }

    /* loaded from: classes.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final long f24393a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f24394b;

        /* renamed from: c  reason: collision with root package name */
        public final long f24395c;

        /* renamed from: d  reason: collision with root package name */
        public final long f24396d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f24397e;

        public f(long j10, boolean z10, long j11, long j12, boolean z11) {
            this.f24393a = j10;
            this.f24394b = z10;
            this.f24395c = j11;
            this.f24396d = j12;
            this.f24397e = z11;
        }
    }

    public g(int i10, String str, List list, long j10, boolean z10, long j11, boolean z11, int i11, long j12, int i12, long j13, long j14, boolean z12, boolean z13, boolean z14, m mVar, List list2, List list3, f fVar, Map map) {
        super(str, list, z12);
        this.f24356d = i10;
        this.f24360h = j11;
        this.f24359g = z10;
        this.f24361i = z11;
        this.f24362j = i11;
        this.f24363k = j12;
        this.f24364l = i12;
        this.f24365m = j13;
        this.f24366n = j14;
        this.f24367o = z13;
        this.f24368p = z14;
        this.f24369q = mVar;
        this.f24370r = q.t(list2);
        this.f24371s = q.t(list3);
        this.f24372t = r.c(map);
        if (!list3.isEmpty()) {
            b bVar = (b) t.c(list3);
            this.f24373u = bVar.f24386e + bVar.f24384c;
        } else if (!list2.isEmpty()) {
            d dVar = (d) t.c(list2);
            this.f24373u = dVar.f24386e + dVar.f24384c;
        } else {
            this.f24373u = 0L;
        }
        long j15 = -9223372036854775807L;
        if (j10 != -9223372036854775807L) {
            if (j10 >= 0) {
                j15 = Math.min(this.f24373u, j10);
            } else {
                j15 = Math.max(0L, this.f24373u + j10);
            }
        }
        this.f24357e = j15;
        this.f24358f = j10 >= 0;
        this.f24374v = fVar;
    }

    @Override // c4.a
    /* renamed from: b */
    public g a(List list) {
        return this;
    }

    public g c(long j10, int i10) {
        return new g(this.f24356d, this.f24419a, this.f24420b, this.f24357e, this.f24359g, j10, true, i10, this.f24363k, this.f24364l, this.f24365m, this.f24366n, this.f24421c, this.f24367o, this.f24368p, this.f24369q, this.f24370r, this.f24371s, this.f24374v, this.f24372t);
    }

    public g d() {
        if (this.f24367o) {
            return this;
        }
        return new g(this.f24356d, this.f24419a, this.f24420b, this.f24357e, this.f24359g, this.f24360h, this.f24361i, this.f24362j, this.f24363k, this.f24364l, this.f24365m, this.f24366n, this.f24421c, true, this.f24368p, this.f24369q, this.f24370r, this.f24371s, this.f24374v, this.f24372t);
    }

    public long e() {
        return this.f24360h + this.f24373u;
    }

    public boolean f(g gVar) {
        if (gVar == null) {
            return true;
        }
        long j10 = this.f24363k;
        long j11 = gVar.f24363k;
        if (j10 > j11) {
            return true;
        }
        if (j10 < j11) {
            return false;
        }
        int size = this.f24370r.size() - gVar.f24370r.size();
        if (size != 0) {
            if (size > 0) {
                return true;
            }
            return false;
        }
        int size2 = this.f24371s.size();
        int size3 = gVar.f24371s.size();
        if (size2 > size3) {
            return true;
        }
        if (size2 == size3 && this.f24367o && !gVar.f24367o) {
            return true;
        }
        return false;
    }

    /* loaded from: classes.dex */
    public static final class d extends e {

        /* renamed from: l  reason: collision with root package name */
        public final String f24380l;

        /* renamed from: m  reason: collision with root package name */
        public final List f24381m;

        public d(String str, long j10, long j11, String str2, String str3) {
            this(str, null, "", 0L, -1, -9223372036854775807L, null, str2, str3, j10, j11, false, q.D());
        }

        public d b(long j10, int i10) {
            ArrayList arrayList = new ArrayList();
            long j11 = j10;
            for (int i11 = 0; i11 < this.f24381m.size(); i11++) {
                b bVar = (b) this.f24381m.get(i11);
                arrayList.add(bVar.b(j11, i10));
                j11 += bVar.f24384c;
            }
            return new d(this.f24382a, this.f24383b, this.f24380l, this.f24384c, i10, j10, this.f24387f, this.f24388g, this.f24389h, this.f24390i, this.f24391j, this.f24392k, arrayList);
        }

        public d(String str, d dVar, String str2, long j10, int i10, long j11, m mVar, String str3, String str4, long j12, long j13, boolean z10, List list) {
            super(str, dVar, j10, i10, j11, mVar, str3, str4, j12, j13, z10);
            this.f24380l = str2;
            this.f24381m = q.t(list);
        }
    }
}
