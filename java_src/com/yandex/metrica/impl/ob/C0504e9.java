package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.e9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0504e9 extends AbstractC0479d9 implements InterfaceC0786ph, InterfaceC0528f8 {

    /* renamed from: c  reason: collision with root package name */
    static final Rd f12288c = new Rd("LOCATION_TRACKING_ENABLED", null);

    /* renamed from: d  reason: collision with root package name */
    static final Rd f12289d = new Rd("PREF_KEY_OFFSET", null);

    /* renamed from: e  reason: collision with root package name */
    static final Rd f12290e = new Rd("UNCHECKED_TIME", null);

    /* renamed from: f  reason: collision with root package name */
    static final Rd f12291f = new Rd("STATISTICS_RESTRICTED_IN_MAIN", null);

    /* renamed from: g  reason: collision with root package name */
    static final Rd f12292g;

    /* renamed from: h  reason: collision with root package name */
    static final Rd f12293h;

    /* renamed from: i  reason: collision with root package name */
    static final Rd f12294i;

    /* renamed from: j  reason: collision with root package name */
    static final Rd f12295j;

    /* renamed from: k  reason: collision with root package name */
    static final Rd f12296k;

    /* renamed from: l  reason: collision with root package name */
    static final Rd f12297l;

    /* renamed from: m  reason: collision with root package name */
    static final Rd f12298m;

    /* renamed from: n  reason: collision with root package name */
    private static final Rd f12299n;

    /* renamed from: o  reason: collision with root package name */
    static final Rd f12300o;

    /* renamed from: p  reason: collision with root package name */
    static final Rd f12301p;

    /* renamed from: q  reason: collision with root package name */
    static final Rd f12302q;

    /* renamed from: r  reason: collision with root package name */
    static final Rd f12303r;

    /* renamed from: s  reason: collision with root package name */
    static final Rd f12304s;

    /* renamed from: t  reason: collision with root package name */
    static final Rd f12305t;

    /* renamed from: u  reason: collision with root package name */
    static final Rd f12306u;

    /* renamed from: v  reason: collision with root package name */
    static final Rd f12307v;

    /* renamed from: w  reason: collision with root package name */
    static final Rd f12308w;

    static {
        new Rd("SDKFCE", null);
        new Rd("FST", null);
        new Rd("LSST", null);
        new Rd("FSDKFCO", null);
        new Rd("SRSDKFC", null);
        new Rd("LSDKFCAT", null);
        f12292g = new Rd("LAST_IDENTITY_LIGHT_SEND_TIME", null);
        f12293h = new Rd("NEXT_REPORT_SEND_ATTEMPT_NUMBER", null);
        f12294i = new Rd("NEXT_LOCATION_SEND_ATTEMPT_NUMBER", null);
        f12295j = new Rd("NEXT_STARTUP_SEND_ATTEMPT_NUMBER", null);
        f12296k = new Rd("LAST_REPORT_SEND_ATTEMPT_TIME", null);
        f12297l = new Rd("LAST_LOCATION_SEND_ATTEMPT_TIME", null);
        f12298m = new Rd("LAST_STARTUP_SEND_ATTEMPT_TIME", null);
        f12299n = new Rd("LAST_MIGRATION_VERSION", null);
        f12300o = new Rd("LAST_WIFI_SCANNING_ATTEMPT_TIME", null);
        f12301p = new Rd("LAST_LBS_SCANNING_ATTEMPT_TIME", null);
        f12302q = new Rd("LAST_GPS_SCANNING_ATTEMPT_TIME", null);
        f12303r = new Rd("LAST_FUSED_SCANNING_ATTEMPT_TIME", null);
        f12304s = new Rd("SATELLITE_PRELOAD_INFO_CHECKED", null);
        f12305t = new Rd("SATELLITE_CLIDS_CHECKED", null);
        f12306u = new Rd("CERTIFICATE_REQUEST_ETAG", null);
        f12307v = new Rd("CERTIFICATE_REQUEST_NEXT_ATTEMPT_TIME", null);
        f12308w = new Rd("VITAL_DATA", null);
    }

    public C0504e9(S7 s72) {
        super(s72);
    }

    @Deprecated
    public int a(int i10) {
        return a(f12299n.a(), i10);
    }

    public long b(int i10) {
        return a(f12289d.a(), i10);
    }

    public C0504e9 c(boolean z10) {
        return (C0504e9) b(f12290e.a(), z10);
    }

    public void d(boolean z10) {
        b(f12288c.a(), z10).d();
    }

    public long e(long j10) {
        return a(f12301p.a(), j10);
    }

    public Boolean f() {
        Rd rd2 = f12291f;
        if (c(rd2.a())) {
            return Boolean.valueOf(a(rd2.a(), true));
        }
        return null;
    }

    public boolean g() {
        return a(f12288c.a(), false);
    }

    public C0504e9 h(long j10) {
        return (C0504e9) b(f12302q.a(), j10);
    }

    public C0504e9 i(long j10) {
        return (C0504e9) b(f12292g.a(), j10);
    }

    public C0504e9 j(long j10) {
        return (C0504e9) b(f12301p.a(), j10);
    }

    public C0504e9 k(long j10) {
        return (C0504e9) b(f12300o.a(), j10);
    }

    public C0504e9 l(long j10) {
        return (C0504e9) b(f12289d.a(), j10);
    }

    public boolean a(boolean z10) {
        return a(f12290e.a(), z10);
    }

    public C0504e9 b(boolean z10) {
        return (C0504e9) b(f12291f.a(), z10);
    }

    public long c(long j10) {
        return a(f12302q.a(), j10);
    }

    public long d(long j10) {
        return a(f12292g.a(), j10);
    }

    public C0504e9 g(long j10) {
        return (C0504e9) b(f12303r.a(), j10);
    }

    public C0504e9 h() {
        return (C0504e9) b(f12305t.a(), true);
    }

    public C0504e9 i() {
        return (C0504e9) b(f12304s.a(), true);
    }

    @Deprecated
    public C0504e9 j() {
        return (C0504e9) f(f12299n.a());
    }

    public boolean k() {
        return a(f12304s.a(), false);
    }

    public boolean l() {
        return a(f12305t.a(), false);
    }

    public int a(EnumC0806qd enumC0806qd, int i10) {
        Rd b10 = b(enumC0806qd);
        return b10 == null ? i10 : a(b10.a(), i10);
    }

    public C0504e9 b(EnumC0806qd enumC0806qd, int i10) {
        Rd b10 = b(enumC0806qd);
        return b10 != null ? (C0504e9) b(b10.a(), i10) : this;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0528f8
    public String c() {
        return a(f12308w.a(), (String) null);
    }

    public long f(long j10) {
        return a(f12300o.a(), j10);
    }

    public long a(EnumC0806qd enumC0806qd, long j10) {
        Rd a10 = a(enumC0806qd);
        return a10 == null ? j10 : a(a10.a(), j10);
    }

    public C0504e9 b(EnumC0806qd enumC0806qd, long j10) {
        Rd a10 = a(enumC0806qd);
        return a10 != null ? (C0504e9) b(a10.a(), j10) : this;
    }

    public C0504e9 a(String str, String str2, String str3) {
        return (C0504e9) b(new Rd("LAST_SOCKET_REPORT_TIMES_" + str + "_" + str2, null).a(), str3);
    }

    public long b(long j10) {
        return a(f12303r.a(), j10);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0786ph
    public String b() {
        return a(f12306u.a(), (String) null);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0786ph
    public InterfaceC0786ph b(String str) {
        return (InterfaceC0786ph) b(f12306u.a(), str);
    }

    private Rd b(EnumC0806qd enumC0806qd) {
        int ordinal = enumC0806qd.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    return null;
                }
                return f12295j;
            }
            return f12294i;
        }
        return f12293h;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0786ph
    public long a() {
        return a(f12307v.a(), 0L);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0786ph
    public InterfaceC0786ph a(long j10) {
        return (InterfaceC0786ph) b(f12307v.a(), j10);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0528f8
    public void a(String str) {
        b(f12308w.a(), str);
    }

    private Rd a(EnumC0806qd enumC0806qd) {
        int ordinal = enumC0806qd.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    return null;
                }
                return f12298m;
            }
            return f12297l;
        }
        return f12296k;
    }
}
