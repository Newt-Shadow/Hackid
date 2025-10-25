package io.appmetrica.analytics.impl;

import java.util.Set;
/* loaded from: classes2.dex */
public final class Xe extends Ed implements ho {

    /* renamed from: d  reason: collision with root package name */
    public static final We f19240d = new We("LOCATION_TRACKING_ENABLED", null);

    /* renamed from: e  reason: collision with root package name */
    public static final We f19241e = new We("PREF_KEY_OFFSET", null);

    /* renamed from: f  reason: collision with root package name */
    public static final We f19242f = new We("UNCHECKED_TIME", null);

    /* renamed from: g  reason: collision with root package name */
    public static final We f19243g = new We("STATISTICS_RESTRICTED_IN_MAIN", null);

    /* renamed from: h  reason: collision with root package name */
    public static final We f19244h = new We("LAST_IDENTITY_LIGHT_SEND_TIME", null);

    /* renamed from: i  reason: collision with root package name */
    public static final We f19245i = new We("NEXT_REPORT_SEND_ATTEMPT_NUMBER", null);

    /* renamed from: j  reason: collision with root package name */
    public static final We f19246j = new We("NEXT_LOCATION_SEND_ATTEMPT_NUMBER", null);

    /* renamed from: k  reason: collision with root package name */
    public static final We f19247k = new We("NEXT_STARTUP_SEND_ATTEMPT_NUMBER", null);

    /* renamed from: l  reason: collision with root package name */
    public static final We f19248l = new We("LAST_REPORT_SEND_ATTEMPT_TIME", null);

    /* renamed from: m  reason: collision with root package name */
    public static final We f19249m = new We("LAST_LOCATION_SEND_ATTEMPT_TIME", null);

    /* renamed from: n  reason: collision with root package name */
    public static final We f19250n = new We("LAST_STARTUP_SEND_ATTEMPT_TIME", null);

    /* renamed from: o  reason: collision with root package name */
    public static final We f19251o = new We("SATELLITE_PRELOAD_INFO_CHECKED", null);

    /* renamed from: p  reason: collision with root package name */
    public static final We f19252p = new We("SATELLITE_CLIDS_CHECKED", null);

    /* renamed from: q  reason: collision with root package name */
    public static final We f19253q = new We("VITAL_DATA", null);

    /* renamed from: r  reason: collision with root package name */
    public static final We f19254r = new We("LAST_KOTLIN_VERSION_SEND_TIME", null);

    /* renamed from: s  reason: collision with root package name */
    public static final We f19255s = new We("ADV_IDENTIFIERS_TRACKING_ENABLED", null);

    public Xe(Ta ta2) {
        super(ta2);
    }

    public final long a(int i10) {
        return this.f19129a.getLong(f19241e.f19187b, i10);
    }

    public final boolean b(boolean z10) {
        return this.f19129a.getBoolean(f19242f.f19187b, z10);
    }

    public final Xe c(boolean z10) {
        return (Xe) b(f19243g.f19187b, z10);
    }

    public final Xe d(long j10) {
        return (Xe) b(f19241e.f19187b, j10);
    }

    public final boolean e() {
        return this.f19129a.getBoolean(f19240d.f19187b, false);
    }

    public final void f(boolean z10) {
        b(f19240d.f19187b, z10).b();
    }

    public final Xe g() {
        return (Xe) b(f19252p.f19187b, true);
    }

    public final Xe h() {
        return (Xe) b(f19251o.f19187b, true);
    }

    public final boolean i() {
        return this.f19129a.getBoolean(f19251o.f19187b, false);
    }

    public final boolean j() {
        return this.f19129a.getBoolean(f19252p.f19187b, false);
    }

    public final long a(long j10) {
        return this.f19129a.getLong(f19244h.f19187b, j10);
    }

    public final Xe b(long j10) {
        return (Xe) b(f19244h.f19187b, j10);
    }

    public final Xe c(long j10) {
        return (Xe) b(f19254r.f19187b, j10);
    }

    public final Xe d(boolean z10) {
        return (Xe) b(f19242f.f19187b, z10);
    }

    public final void e(boolean z10) {
        b(f19255s.f19187b, z10).b();
    }

    public final long f() {
        return this.f19129a.getLong(f19254r.f19187b, 0L);
    }

    @Override // io.appmetrica.analytics.impl.ho
    public final String a() {
        return this.f19129a.getString(f19253q.f19187b, null);
    }

    public final Xe b(Sd sd2, int i10) {
        We we2;
        int ordinal = sd2.ordinal();
        if (ordinal == 0) {
            we2 = f19245i;
        } else if (ordinal != 1) {
            we2 = ordinal != 2 ? null : f19247k;
        } else {
            we2 = f19246j;
        }
        return we2 != null ? (Xe) b(we2.f19187b, i10) : this;
    }

    @Override // io.appmetrica.analytics.impl.Ve
    public final Set<String> c() {
        return this.f19129a.a();
    }

    public final Boolean d() {
        We we2 = f19243g;
        if (this.f19129a.a(we2.f19187b)) {
            return Boolean.valueOf(this.f19129a.getBoolean(we2.f19187b, true));
        }
        return null;
    }

    @Override // io.appmetrica.analytics.impl.Ed
    public final String f(String str) {
        return new We(str, null).f19187b;
    }

    @Override // io.appmetrica.analytics.impl.ho
    public final void a(String str) {
        b(f19253q.f19187b, str).b();
    }

    public final boolean a(boolean z10) {
        return this.f19129a.getBoolean(f19255s.f19187b, z10);
    }

    public final Xe b(Sd sd2, long j10) {
        We we2;
        int ordinal = sd2.ordinal();
        if (ordinal == 0) {
            we2 = f19248l;
        } else if (ordinal != 1) {
            we2 = ordinal != 2 ? null : f19250n;
        } else {
            we2 = f19249m;
        }
        return we2 != null ? (Xe) b(we2.f19187b, j10) : this;
    }

    public final int a(Sd sd2, int i10) {
        We we2;
        int ordinal = sd2.ordinal();
        if (ordinal == 0) {
            we2 = f19245i;
        } else if (ordinal != 1) {
            we2 = ordinal != 2 ? null : f19247k;
        } else {
            we2 = f19246j;
        }
        if (we2 == null) {
            return i10;
        }
        return this.f19129a.getInt(we2.f19187b, i10);
    }

    public final long a(Sd sd2, long j10) {
        We we2;
        int ordinal = sd2.ordinal();
        if (ordinal == 0) {
            we2 = f19248l;
        } else if (ordinal != 1) {
            we2 = ordinal != 2 ? null : f19250n;
        } else {
            we2 = f19249m;
        }
        if (we2 == null) {
            return j10;
        }
        return this.f19129a.getLong(we2.f19187b, j10);
    }
}
