package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.C0839s;
@Deprecated
/* loaded from: classes2.dex */
public class Md extends Kd {

    /* renamed from: f  reason: collision with root package name */
    private Rd f10811f;

    /* renamed from: g  reason: collision with root package name */
    private Rd f10812g;

    /* renamed from: h  reason: collision with root package name */
    private Rd f10813h;

    /* renamed from: i  reason: collision with root package name */
    private Rd f10814i;

    /* renamed from: j  reason: collision with root package name */
    private Rd f10815j;

    /* renamed from: k  reason: collision with root package name */
    private Rd f10816k;

    /* renamed from: l  reason: collision with root package name */
    private Rd f10817l;

    /* renamed from: m  reason: collision with root package name */
    private Rd f10818m;

    /* renamed from: n  reason: collision with root package name */
    private Rd f10819n;

    /* renamed from: o  reason: collision with root package name */
    private Rd f10820o;

    /* renamed from: p  reason: collision with root package name */
    private Rd f10821p;

    /* renamed from: q  reason: collision with root package name */
    private Rd f10822q;

    /* renamed from: r  reason: collision with root package name */
    private Rd f10823r;

    /* renamed from: s  reason: collision with root package name */
    private Rd f10824s;

    /* renamed from: t  reason: collision with root package name */
    private Rd f10825t;

    /* renamed from: u  reason: collision with root package name */
    private static final Rd f10805u = new Rd("SESSION_SLEEP_START_", null);

    /* renamed from: v  reason: collision with root package name */
    private static final Rd f10806v = new Rd("SESSION_ID_", null);

    /* renamed from: w  reason: collision with root package name */
    private static final Rd f10807w = new Rd("SESSION_COUNTER_ID_", null);

    /* renamed from: x  reason: collision with root package name */
    private static final Rd f10808x = new Rd("SESSION_INIT_TIME_", null);

    /* renamed from: y  reason: collision with root package name */
    private static final Rd f10809y = new Rd("SESSION_ALIVE_TIME_", null);

    /* renamed from: z  reason: collision with root package name */
    private static final Rd f10810z = new Rd("SESSION_IS_ALIVE_REPORT_NEEDED_", null);
    private static final Rd A = new Rd("BG_SESSION_ID_", null);
    private static final Rd B = new Rd("BG_SESSION_SLEEP_START_", null);
    private static final Rd C = new Rd("BG_SESSION_COUNTER_ID_", null);
    private static final Rd D = new Rd("BG_SESSION_INIT_TIME_", null);
    private static final Rd E = new Rd("IDENTITY_SEND_TIME_", null);
    private static final Rd F = new Rd("USER_INFO_", null);
    private static final Rd G = new Rd("REFERRER_", null);
    @Deprecated
    public static final Rd H = new Rd("APP_ENVIRONMENT", null);
    @Deprecated
    public static final Rd I = new Rd("APP_ENVIRONMENT_REVISION", null);
    private static final Rd J = new Rd("APP_ENVIRONMENT_", null);
    private static final Rd K = new Rd("APP_ENVIRONMENT_REVISION_", null);

    public Md(Context context, String str) {
        super(context, str);
        this.f10811f = new Rd(f10805u.b(), c());
        this.f10812g = new Rd(f10806v.b(), c());
        this.f10813h = new Rd(f10807w.b(), c());
        this.f10814i = new Rd(f10808x.b(), c());
        this.f10815j = new Rd(f10809y.b(), c());
        this.f10816k = new Rd(f10810z.b(), c());
        this.f10817l = new Rd(A.b(), c());
        this.f10818m = new Rd(B.b(), c());
        this.f10819n = new Rd(C.b(), c());
        this.f10820o = new Rd(D.b(), c());
        this.f10821p = new Rd(E.b(), c());
        this.f10822q = new Rd(F.b(), c());
        this.f10823r = new Rd(G.b(), c());
        this.f10824s = new Rd(J.b(), c());
        this.f10825t = new Rd(K.b(), c());
        a(-1);
        c(0);
        b(0);
    }

    public long a(long j10) {
        return this.f10623b.getLong(this.f10820o.a(), j10);
    }

    public long b(long j10) {
        return this.f10623b.getLong(this.f10819n.a(), j10);
    }

    public long c(long j10) {
        return this.f10623b.getLong(this.f10817l.a(), j10);
    }

    @Override // com.yandex.metrica.impl.ob.Kd
    protected String d() {
        return "_boundentrypreferences";
    }

    public long e(long j10) {
        return this.f10623b.getLong(this.f10814i.a(), j10);
    }

    public long f(long j10) {
        return this.f10623b.getLong(this.f10813h.a(), j10);
    }

    public long g(long j10) {
        return this.f10623b.getLong(this.f10812g.a(), j10);
    }

    public long h(long j10) {
        return this.f10623b.getLong(this.f10811f.a(), j10);
    }

    public long i(long j10) {
        return this.f10623b.getLong(this.f10821p.a(), j10);
    }

    public long d(long j10) {
        return this.f10623b.getLong(this.f10818m.a(), j10);
    }

    private void c(int i10) {
        C0419b.a(this.f10623b, this.f10811f.a(), i10);
    }

    public Boolean a(boolean z10) {
        return Boolean.valueOf(this.f10623b.getBoolean(this.f10816k.a(), z10));
    }

    public String b(String str) {
        return this.f10623b.getString(this.f10822q.a(), null);
    }

    public C0839s.a f() {
        synchronized (this) {
            if (this.f10623b.contains(this.f10824s.a()) && this.f10623b.contains(this.f10825t.a())) {
                return new C0839s.a(this.f10623b.getString(this.f10824s.a(), "{}"), this.f10623b.getLong(this.f10825t.a(), 0L));
            }
            return null;
        }
    }

    public boolean g() {
        return this.f10623b.contains(this.f10814i.a()) || this.f10623b.contains(this.f10815j.a()) || this.f10623b.contains(this.f10816k.a()) || this.f10623b.contains(this.f10811f.a()) || this.f10623b.contains(this.f10812g.a()) || this.f10623b.contains(this.f10813h.a()) || this.f10623b.contains(this.f10820o.a()) || this.f10623b.contains(this.f10818m.a()) || this.f10623b.contains(this.f10817l.a()) || this.f10623b.contains(this.f10819n.a()) || this.f10623b.contains(this.f10824s.a()) || this.f10623b.contains(this.f10822q.a()) || this.f10623b.contains(this.f10823r.a()) || this.f10623b.contains(this.f10821p.a());
    }

    public void h() {
        this.f10623b.edit().remove(this.f10820o.a()).remove(this.f10819n.a()).remove(this.f10817l.a()).remove(this.f10818m.a()).remove(this.f10814i.a()).remove(this.f10813h.a()).remove(this.f10812g.a()).remove(this.f10811f.a()).remove(this.f10816k.a()).remove(this.f10815j.a()).remove(this.f10822q.a()).remove(this.f10824s.a()).remove(this.f10825t.a()).remove(this.f10823r.a()).remove(this.f10821p.a()).apply();
    }

    public Md i() {
        return (Md) a(this.f10823r.a());
    }

    private void b(int i10) {
        C0419b.a(this.f10623b, this.f10813h.a(), i10);
    }

    public Md a(C0839s.a aVar) {
        synchronized (this) {
            a(this.f10824s.a(), aVar.f13570a);
            a(this.f10825t.a(), Long.valueOf(aVar.f13571b));
        }
        return this;
    }

    private void a(int i10) {
        C0419b.a(this.f10623b, this.f10815j.a(), i10);
    }
}
