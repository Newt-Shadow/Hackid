package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.M3;
/* renamed from: com.yandex.metrica.impl.ob.a4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0399a4 {

    /* renamed from: a  reason: collision with root package name */
    private final C0454c9 f11945a;

    /* renamed from: b  reason: collision with root package name */
    private final C0428b8 f11946b;

    /* renamed from: c  reason: collision with root package name */
    private C0426b6 f11947c;

    /* renamed from: d  reason: collision with root package name */
    private L7 f11948d;

    /* renamed from: e  reason: collision with root package name */
    private final Dm f11949e;

    /* renamed from: f  reason: collision with root package name */
    private final C0576h6 f11950f;

    /* renamed from: g  reason: collision with root package name */
    private final C0839s f11951g;

    /* renamed from: h  reason: collision with root package name */
    private final O3 f11952h;

    /* renamed from: i  reason: collision with root package name */
    private a f11953i;

    /* renamed from: j  reason: collision with root package name */
    private final dc.d f11954j;

    /* renamed from: k  reason: collision with root package name */
    private final int f11955k;

    /* renamed from: l  reason: collision with root package name */
    private long f11956l;

    /* renamed from: m  reason: collision with root package name */
    private long f11957m;

    /* renamed from: n  reason: collision with root package name */
    private int f11958n;

    /* renamed from: com.yandex.metrica.impl.ob.a4$a */
    /* loaded from: classes2.dex */
    public interface a {
    }

    public C0399a4(C0454c9 c0454c9, C0428b8 c0428b8, C0426b6 c0426b6, L7 l72, C0839s c0839s, Dm dm, C0576h6 c0576h6, int i10, a aVar, O3 o32, dc.d dVar) {
        this.f11945a = c0454c9;
        this.f11946b = c0428b8;
        this.f11947c = c0426b6;
        this.f11948d = l72;
        this.f11951g = c0839s;
        this.f11949e = dm;
        this.f11950f = c0576h6;
        this.f11955k = i10;
        this.f11952h = o32;
        this.f11954j = dVar;
        this.f11953i = aVar;
        this.f11956l = c0454c9.b(0L);
        this.f11957m = c0454c9.l();
        this.f11958n = c0454c9.i();
    }

    public void a(C0445c0 c0445c0) {
        this.f11947c.c(c0445c0);
    }

    public void b(C0445c0 c0445c0) {
        a(c0445c0, this.f11947c.b(c0445c0));
    }

    public void c(C0445c0 c0445c0) {
        a(c0445c0, this.f11947c.b(c0445c0));
        int i10 = this.f11955k;
        this.f11958n = i10;
        this.f11945a.a(i10).d();
    }

    public void d(C0445c0 c0445c0) {
        a(c0445c0, this.f11947c.b(c0445c0));
        long currentTimeSeconds = this.f11954j.currentTimeSeconds();
        this.f11956l = currentTimeSeconds;
        this.f11945a.c(currentTimeSeconds).d();
    }

    public void e(C0445c0 c0445c0) {
        a(c0445c0, this.f11947c.b(c0445c0));
        long currentTimeSeconds = this.f11954j.currentTimeSeconds();
        this.f11957m = currentTimeSeconds;
        this.f11945a.e(currentTimeSeconds).d();
    }

    public void f(C0445c0 c0445c0) {
        a(c0445c0, this.f11947c.f(c0445c0));
    }

    public void a(C0445c0 c0445c0, C0451c6 c0451c6) {
        if (TextUtils.isEmpty(c0445c0.p())) {
            c0445c0.e(this.f11945a.n());
        }
        c0445c0.i().putAll(this.f11950f.a());
        c0445c0.d(this.f11945a.m());
        c0445c0.a(Integer.valueOf(this.f11946b.e()));
        this.f11948d.a(this.f11949e.a(c0445c0).a(c0445c0), c0445c0.o(), c0451c6, this.f11951g.a(), this.f11952h);
        ((M3.a) this.f11953i).f10785a.g();
    }

    public void b() {
        int i10 = this.f11955k;
        this.f11958n = i10;
        this.f11945a.a(i10).d();
    }

    public boolean c() {
        return this.f11958n < this.f11955k;
    }

    public boolean d() {
        return this.f11954j.currentTimeSeconds() - this.f11956l > Y5.f11828a;
    }

    public long a() {
        return this.f11957m;
    }
}
