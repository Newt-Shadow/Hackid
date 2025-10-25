package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.Location;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
class Pc {

    /* renamed from: a  reason: collision with root package name */
    private c f11066a;

    /* renamed from: b  reason: collision with root package name */
    private a f11067b;

    /* renamed from: c  reason: collision with root package name */
    private b f11068c;

    /* renamed from: d  reason: collision with root package name */
    private Context f11069d;

    /* renamed from: e  reason: collision with root package name */
    private C0706mc f11070e;

    /* renamed from: f  reason: collision with root package name */
    private Rc f11071f;

    /* renamed from: g  reason: collision with root package name */
    private Sc f11072g;

    /* renamed from: h  reason: collision with root package name */
    private Rb f11073h;

    /* renamed from: i  reason: collision with root package name */
    private final C0972xc f11074i;

    /* renamed from: j  reason: collision with root package name */
    private Yb f11075j;

    /* renamed from: k  reason: collision with root package name */
    private Map<String, C0996yc> f11076k;

    /* loaded from: classes2.dex */
    public static class a {
    }

    /* loaded from: classes2.dex */
    public static class b {
    }

    /* loaded from: classes2.dex */
    public static class c {
    }

    public Pc(Context context, C0706mc c0706mc, Sc sc2, Rb rb2, Ph ph) {
        this(context, c0706mc, new c(), new C0972xc(ph), new a(), new b(), sc2, rb2);
    }

    public void a(Location location) {
        String provider = location.getProvider();
        C0996yc c0996yc = this.f11076k.get(provider);
        if (c0996yc == null) {
            if (this.f11071f == null) {
                c cVar = this.f11066a;
                Context context = this.f11069d;
                cVar.getClass();
                this.f11071f = new Rc(null, C0629ja.a(context).f(), new Vb(context), new dc.c(), F0.g().c(), F0.g().b());
            }
            if (this.f11075j == null) {
                a aVar = this.f11067b;
                Rc rc2 = this.f11071f;
                C0972xc c0972xc = this.f11074i;
                aVar.getClass();
                this.f11075j = new Yb(rc2, c0972xc);
            }
            b bVar = this.f11068c;
            C0706mc c0706mc = this.f11070e;
            Yb yb2 = this.f11075j;
            Sc sc2 = this.f11072g;
            Rb rb2 = this.f11073h;
            bVar.getClass();
            c0996yc = new C0996yc(c0706mc, yb2, null, 0L, new C0962x2(), sc2, rb2);
            this.f11076k.put(provider, c0996yc);
        } else {
            c0996yc.a(this.f11070e);
        }
        c0996yc.a(location);
    }

    public C0972xc b() {
        return this.f11074i;
    }

    Pc(Context context, C0706mc c0706mc, c cVar, C0972xc c0972xc, a aVar, b bVar, Sc sc2, Rb rb2) {
        this.f11076k = new HashMap();
        this.f11069d = context;
        this.f11070e = c0706mc;
        this.f11066a = cVar;
        this.f11074i = c0972xc;
        this.f11067b = aVar;
        this.f11068c = bVar;
        this.f11072g = sc2;
        this.f11073h = rb2;
    }

    public Location a() {
        return this.f11074i.a();
    }

    public void a(C0706mc c0706mc) {
        this.f11070e = c0706mc;
    }

    public void a(C0787pi c0787pi) {
        if (c0787pi.d() != null) {
            this.f11074i.c(c0787pi.d());
        }
    }
}
