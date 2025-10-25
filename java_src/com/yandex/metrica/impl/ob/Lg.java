package com.yandex.metrica.impl.ob;

import android.location.Location;
import com.yandex.metrica.impl.ob.D3;
import com.yandex.metrica.impl.ob.Eg;
import com.yandex.metrica.impl.ob.Hg;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class Lg extends Hg {
    private boolean A;
    private String B;
    private List<String> C;
    private int D;
    private long E;
    private long F;
    private boolean G;
    private long H;
    private List<String> I;

    /* renamed from: o  reason: collision with root package name */
    private boolean f10730o;

    /* renamed from: p  reason: collision with root package name */
    private Location f10731p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f10732q;

    /* renamed from: r  reason: collision with root package name */
    private int f10733r;

    /* renamed from: s  reason: collision with root package name */
    private int f10734s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f10735t;

    /* renamed from: u  reason: collision with root package name */
    private int f10736u;

    /* renamed from: v  reason: collision with root package name */
    private Boolean f10737v;

    /* renamed from: w  reason: collision with root package name */
    private e f10738w;

    /* renamed from: x  reason: collision with root package name */
    private final d f10739x;

    /* renamed from: y  reason: collision with root package name */
    private String f10740y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f10741z;

    /* loaded from: classes2.dex */
    public static final class a extends Eg.a<D3.a, a> {

        /* renamed from: d  reason: collision with root package name */
        public final String f10742d;

        /* renamed from: e  reason: collision with root package name */
        public final Location f10743e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f10744f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f10745g;

        /* renamed from: h  reason: collision with root package name */
        public final int f10746h;

        /* renamed from: i  reason: collision with root package name */
        public final int f10747i;

        /* renamed from: j  reason: collision with root package name */
        public final int f10748j;

        /* renamed from: k  reason: collision with root package name */
        public final boolean f10749k;

        /* renamed from: l  reason: collision with root package name */
        public final boolean f10750l;

        /* renamed from: m  reason: collision with root package name */
        public final Map<String, String> f10751m;

        /* renamed from: n  reason: collision with root package name */
        public final int f10752n;

        public a(D3.a aVar) {
            this(aVar.f9874a, aVar.f9875b, aVar.f9876c, aVar.f9877d, aVar.f9878e, aVar.f9879f, aVar.f9880g, aVar.f9881h, aVar.f9882i, aVar.f9883j, aVar.f9884k, aVar.f9885l, aVar.f9886m, aVar.f9887n);
        }

        @Override // com.yandex.metrica.impl.ob.Dg
        public Object a(Object obj) {
            Integer num;
            D3.a aVar = (D3.a) obj;
            String str = aVar.f9874a;
            String str2 = this.f10008a;
            if (str != null) {
                str2 = str;
            }
            String str3 = aVar.f9875b;
            String str4 = this.f10009b;
            if (str3 != null) {
                str4 = str3;
            }
            String str5 = aVar.f9876c;
            String str6 = this.f10010c;
            if (str5 != null) {
                str6 = str5;
            }
            String str7 = aVar.f9877d;
            String str8 = this.f10742d;
            if (str7 != null) {
                str8 = str7;
            }
            Boolean bool = aVar.f9878e;
            Boolean valueOf = Boolean.valueOf(this.f10744f);
            if (bool != null) {
                valueOf = bool;
            }
            Location location = aVar.f9879f;
            Location location2 = this.f10743e;
            if (location != null) {
                location2 = location;
            }
            Boolean bool2 = aVar.f9880g;
            Boolean valueOf2 = Boolean.valueOf(this.f10745g);
            if (bool2 != null) {
                valueOf2 = bool2;
            }
            Integer num2 = aVar.f9881h;
            Integer valueOf3 = Integer.valueOf(this.f10746h);
            if (num2 != null) {
                valueOf3 = num2;
            }
            Integer num3 = aVar.f9882i;
            Integer valueOf4 = Integer.valueOf(this.f10747i);
            if (num3 != null) {
                valueOf4 = num3;
            }
            Integer num4 = aVar.f9883j;
            Integer valueOf5 = Integer.valueOf(this.f10748j);
            if (num4 != null) {
                valueOf5 = num4;
            }
            Boolean bool3 = aVar.f9884k;
            Boolean valueOf6 = Boolean.valueOf(this.f10749k);
            if (bool3 != null) {
                valueOf6 = bool3;
            }
            Boolean bool4 = aVar.f9885l;
            Boolean valueOf7 = Boolean.valueOf(this.f10750l);
            if (bool4 != null) {
                valueOf7 = bool4;
            }
            Map<String, String> map = aVar.f9886m;
            Map<String, String> map2 = this.f10751m;
            if (map != null) {
                map2 = map;
            }
            Integer num5 = aVar.f9887n;
            Integer valueOf8 = Integer.valueOf(this.f10752n);
            if (num5 == null) {
                num = valueOf8;
            } else {
                num = num5;
            }
            return new a(str2, str4, str6, str8, valueOf, location2, valueOf2, valueOf3, valueOf4, valueOf5, valueOf6, valueOf7, map2, num);
        }

        /* JADX WARN: Code restructure failed: missing block: B:112:0x0180, code lost:
            if (java.lang.Float.compare(r3, r4) != 0) goto L117;
         */
        /* JADX WARN: Code restructure failed: missing block: B:126:0x01b6, code lost:
            if (r8.getExtras() == null) goto L118;
         */
        /* JADX WARN: Removed duplicated region for block: B:134:? A[RETURN, SYNTHETIC] */
        @Override // com.yandex.metrica.impl.ob.Dg
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean b(java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 447
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Lg.a.b(java.lang.Object):boolean");
        }

        a(String str, String str2, String str3, String str4, Boolean bool, Location location, Boolean bool2, Integer num, Integer num2, Integer num3, Boolean bool3, Boolean bool4, Map<String, String> map, Integer num4) {
            super(str, str2, str3);
            this.f10742d = str4;
            Boolean bool5 = Boolean.FALSE;
            this.f10744f = ((Boolean) Tl.a(bool, bool5)).booleanValue();
            this.f10743e = location;
            this.f10745g = ((Boolean) Tl.a(bool2, bool5)).booleanValue();
            this.f10746h = Math.max(10, ((Integer) Tl.a((int) num, 10)).intValue());
            this.f10747i = ((Integer) Tl.a((int) num2, 7)).intValue();
            this.f10748j = ((Integer) Tl.a((int) num3, 90)).intValue();
            this.f10749k = ((Boolean) Tl.a(bool3, bool5)).booleanValue();
            this.f10750l = ((Boolean) Tl.a(bool4, Boolean.TRUE)).booleanValue();
            this.f10751m = map;
            this.f10752n = ((Integer) Tl.a((int) num4, 1000)).intValue();
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class b implements e {

        /* renamed from: a  reason: collision with root package name */
        protected final C0842s2 f10753a;

        public b(C0842s2 c0842s2) {
            this.f10753a = c0842s2;
        }

        @Override // com.yandex.metrica.impl.ob.Lg.e
        public boolean a(Boolean bool) {
            Boolean bool2 = Boolean.TRUE;
            if (bool == null) {
                bool = bool2;
            }
            return bool.booleanValue();
        }
    }

    /* loaded from: classes2.dex */
    public static class c extends Hg.a<Lg, a> {

        /* renamed from: d  reason: collision with root package name */
        private final L3 f10754d;

        /* renamed from: e  reason: collision with root package name */
        private final e f10755e;

        /* renamed from: f  reason: collision with root package name */
        private final Rh f10756f;

        public c(L3 l32, e eVar) {
            this(l32, eVar, new Rh());
        }

        @Override // com.yandex.metrica.impl.ob.Eg.d
        public Eg a(Object obj) {
            Eg.c cVar = (Eg.c) obj;
            Lg a10 = a(cVar);
            Lg.a(a10, ((a) cVar.f10014b).f10742d);
            a10.a(this.f10754d.x().a());
            a10.a(this.f10754d.d().a());
            a10.d(((a) cVar.f10014b).f10744f);
            a10.a(((a) cVar.f10014b).f10743e);
            a10.c(((a) cVar.f10014b).f10745g);
            a10.d(((a) cVar.f10014b).f10746h);
            a10.c(((a) cVar.f10014b).f10747i);
            a10.b(((a) cVar.f10014b).f10748j);
            a10.e(((a) cVar.f10014b).f10749k);
            a10.a(Boolean.valueOf(((a) cVar.f10014b).f10750l), this.f10755e);
            a10.a(((a) cVar.f10014b).f10752n);
            C0787pi c0787pi = cVar.f10013a;
            a aVar = (a) cVar.f10014b;
            a10.b(c0787pi.y().contains(aVar.f10742d) ? c0787pi.z() : c0787pi.H());
            a10.f(c0787pi.f().f11291c);
            if (c0787pi.F() != null) {
                a10.b(c0787pi.F().f11982a);
                a10.c(c0787pi.F().f11983b);
            }
            a10.b(c0787pi.f().f11292d);
            a10.h(c0787pi.n());
            a10.a(this.f10756f.a(aVar.f10751m, c0787pi, F0.g().d()));
            return a10;
        }

        c(L3 l32, e eVar, Rh rh) {
            super(l32.g(), l32.e().b());
            this.f10754d = l32;
            this.f10755e = eVar;
            this.f10756f = rh;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.yandex.metrica.impl.ob.Eg.b
        public Eg a() {
            return new Lg(this.f10754d);
        }
    }

    /* loaded from: classes2.dex */
    public interface d {
    }

    /* loaded from: classes2.dex */
    public interface e {
        boolean a(Boolean bool);
    }

    Lg(d dVar) {
        this.f10739x = dVar;
    }

    static void a(Lg lg, String str) {
        lg.f10740y = str;
    }

    public String B() {
        return this.f10740y;
    }

    public int C() {
        return this.D;
    }

    public List<String> D() {
        return this.I;
    }

    public String E() {
        String str = this.B;
        if (str == null) {
            return "";
        }
        return str;
    }

    public boolean F() {
        return this.f10738w.a(this.f10737v);
    }

    public int G() {
        return this.f10734s;
    }

    public Location H() {
        return this.f10731p;
    }

    public int I() {
        return this.f10736u;
    }

    public long J() {
        return this.H;
    }

    public long K() {
        return this.E;
    }

    public long L() {
        return this.F;
    }

    public List<String> M() {
        return this.C;
    }

    public int N() {
        return this.f10733r;
    }

    public boolean O() {
        return this.A;
    }

    public boolean P() {
        return this.f10732q;
    }

    public boolean Q() {
        return this.f10730o;
    }

    public boolean R() {
        return this.f10741z;
    }

    public boolean S() {
        if (x() && !A2.b(this.C) && this.G) {
            return true;
        }
        return false;
    }

    public boolean T() {
        return ((L3) this.f10739x).F();
    }

    public void b(List<String> list) {
        this.C = list;
    }

    public void c(long j10) {
        this.F = j10;
    }

    public void d(boolean z10) {
        this.f10730o = z10;
    }

    public void e(boolean z10) {
        this.f10735t = z10;
    }

    public void f(boolean z10) {
        this.f10741z = z10;
    }

    void h(String str) {
        this.B = str;
    }

    @Override // com.yandex.metrica.impl.ob.Hg, com.yandex.metrica.impl.ob.Eg
    public String toString() {
        return "ReportRequestConfig{mLocationTracking=" + this.f10730o + ", mManualLocation=" + this.f10731p + ", mFirstActivationAsUpdate=" + this.f10732q + ", mSessionTimeout=" + this.f10733r + ", mDispatchPeriod=" + this.f10734s + ", mLogEnabled=" + this.f10735t + ", mMaxReportsCount=" + this.f10736u + ", statisticSendingFromArguments=" + this.f10737v + ", statisticsSendingStrategy=" + this.f10738w + ", mPreloadInfoSendingStrategy=" + this.f10739x + ", mApiKey='" + this.f10740y + "', mPermissionsCollectingEnabled=" + this.f10741z + ", mFeaturesCollectingEnabled=" + this.A + ", mClidsFromStartupResponse='" + this.B + "', mReportHosts=" + this.C + ", mAttributionId=" + this.D + ", mPermissionsCollectingIntervalSeconds=" + this.E + ", mPermissionsForceSendIntervalSeconds=" + this.F + ", mClidsFromClientMatchClidsFromStartupRequest=" + this.G + ", mMaxReportsInDbCount=" + this.H + ", mCertificates=" + this.I + "} " + super.toString();
    }

    public void a(Location location) {
        this.f10731p = location;
    }

    public void b(long j10) {
        this.E = j10;
    }

    public void c(boolean z10) {
        this.f10732q = z10;
    }

    public void d(int i10) {
        this.f10733r = i10;
    }

    public void a(int i10) {
        this.D = i10;
    }

    public void b(boolean z10) {
        this.A = z10;
    }

    public void c(int i10) {
        this.f10736u = i10;
    }

    public void a(long j10) {
        this.H = j10;
    }

    public void b(int i10) {
        this.f10734s = i10;
    }

    public void a(List<String> list) {
        this.I = list;
    }

    public void a(Boolean bool, e eVar) {
        this.f10737v = bool;
        this.f10738w = eVar;
    }

    public void a(boolean z10) {
        this.G = z10;
    }
}
