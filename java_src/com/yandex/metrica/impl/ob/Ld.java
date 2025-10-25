package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.Map;
@Deprecated
/* loaded from: classes2.dex */
public class Ld extends Kd {

    /* renamed from: l  reason: collision with root package name */
    private static final Rd f10709l = new Rd("UUID", null);

    /* renamed from: m  reason: collision with root package name */
    private static final Rd f10710m = new Rd("DEVICEID_3", null);

    /* renamed from: n  reason: collision with root package name */
    private static final Rd f10711n = new Rd("AD_URL_GET", null);

    /* renamed from: o  reason: collision with root package name */
    private static final Rd f10712o = new Rd("AD_URL_REPORT", null);

    /* renamed from: p  reason: collision with root package name */
    private static final Rd f10713p = new Rd("HOST_URL", null);

    /* renamed from: q  reason: collision with root package name */
    private static final Rd f10714q = new Rd("SERVER_TIME_OFFSET", null);

    /* renamed from: r  reason: collision with root package name */
    private static final Rd f10715r = new Rd("CLIDS", null);

    /* renamed from: f  reason: collision with root package name */
    private Rd f10716f;

    /* renamed from: g  reason: collision with root package name */
    private Rd f10717g;

    /* renamed from: h  reason: collision with root package name */
    private Rd f10718h;

    /* renamed from: i  reason: collision with root package name */
    private Rd f10719i;

    /* renamed from: j  reason: collision with root package name */
    private Rd f10720j;

    /* renamed from: k  reason: collision with root package name */
    private Rd f10721k;

    public Ld(Context context) {
        super(context, null);
        this.f10716f = new Rd(f10709l.b());
        this.f10717g = new Rd(f10710m.b());
        this.f10718h = new Rd(f10711n.b());
        this.f10719i = new Rd(f10712o.b());
        new Rd(f10713p.b());
        this.f10720j = new Rd(f10714q.b());
        this.f10721k = new Rd(f10715r.b());
    }

    public long a(long j10) {
        return this.f10623b.getLong(this.f10720j.b(), j10);
    }

    public String b(String str) {
        return this.f10623b.getString(this.f10718h.a(), null);
    }

    public String c(String str) {
        return this.f10623b.getString(this.f10719i.a(), null);
    }

    @Override // com.yandex.metrica.impl.ob.Kd
    protected String d() {
        return "_startupinfopreferences";
    }

    public String e(String str) {
        return this.f10623b.getString(this.f10717g.a(), null);
    }

    public String f(String str) {
        return this.f10623b.getString(this.f10716f.a(), null);
    }

    public Map<String, ?> g() {
        return this.f10623b.getAll();
    }

    public String d(String str) {
        return this.f10623b.getString(this.f10721k.a(), null);
    }

    public Ld f() {
        return (Ld) e();
    }
}
