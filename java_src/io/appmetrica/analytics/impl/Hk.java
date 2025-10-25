package io.appmetrica.analytics.impl;

import android.text.TextUtils;
/* loaded from: classes2.dex */
public final class Hk {

    /* renamed from: d  reason: collision with root package name */
    public static final String f18317d = "SESSION_SLEEP_START";

    /* renamed from: e  reason: collision with root package name */
    public static final String f18318e = "SESSION_LAST_EVENT_OFFSET";

    /* renamed from: f  reason: collision with root package name */
    public static final String f18319f = "SESSION_ID";

    /* renamed from: g  reason: collision with root package name */
    public static final String f18320g = "SESSION_COUNTER_ID";

    /* renamed from: h  reason: collision with root package name */
    public static final String f18321h = "SESSION_INIT_TIME";

    /* renamed from: i  reason: collision with root package name */
    public static final String f18322i = "SESSION_IS_ALIVE_REPORT_NEEDED";

    /* renamed from: a  reason: collision with root package name */
    public final String f18323a;

    /* renamed from: b  reason: collision with root package name */
    protected final Ue f18324b;

    /* renamed from: c  reason: collision with root package name */
    public C1466rb f18325c;

    public Hk(Ue ue2, String str) {
        this.f18324b = ue2;
        this.f18323a = str;
        C1466rb c1466rb = new C1466rb();
        try {
            String h10 = ue2.h(str);
            if (!TextUtils.isEmpty(h10)) {
                c1466rb = new C1466rb(h10);
            }
        } catch (Throwable unused) {
        }
        this.f18325c = c1466rb;
    }

    public final Hk a(long j10) {
        a(f18321h, Long.valueOf(j10));
        return this;
    }

    public final Hk b(long j10) {
        a(f18318e, Long.valueOf(j10));
        return this;
    }

    public final Long c() {
        return this.f18325c.a(f18321h);
    }

    public final Hk d(long j10) {
        a(f18319f, Long.valueOf(j10));
        return this;
    }

    public final Long e() {
        return this.f18325c.a(f18320g);
    }

    public final Long f() {
        return this.f18325c.a(f18319f);
    }

    public final Long g() {
        return this.f18325c.a(f18317d);
    }

    public final boolean h() {
        if (this.f18325c.length() > 0) {
            return true;
        }
        return false;
    }

    public final Boolean i() {
        C1466rb c1466rb = this.f18325c;
        c1466rb.getClass();
        try {
            return Boolean.valueOf(c1466rb.getBoolean(f18322i));
        } catch (Throwable unused) {
            return null;
        }
    }

    public final Hk a(boolean z10) {
        a(f18322i, Boolean.valueOf(z10));
        return this;
    }

    public final void b() {
        this.f18324b.e(this.f18323a, this.f18325c.toString());
        this.f18324b.b();
    }

    public final Hk c(long j10) {
        a(f18320g, Long.valueOf(j10));
        return this;
    }

    public final Long d() {
        return this.f18325c.a(f18318e);
    }

    public final Hk e(long j10) {
        a(f18317d, Long.valueOf(j10));
        return this;
    }

    public final void a(String str, Object obj) {
        try {
            this.f18325c.put(str, obj);
        } catch (Throwable unused) {
        }
    }

    public final void a() {
        this.f18325c = new C1466rb();
        b();
    }
}
