package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.YandexMetrica;
import com.yandex.metrica.impl.ob.C0426b6;
import com.yandex.metrica.impl.ob.C0839s;
import com.yandex.metrica.impl.ob.D3;
import com.yandex.metrica.impl.ob.K3;
import com.yandex.metrica.impl.ob.Lg;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class L3 implements S3, P3, InterfaceC0780pb, Lg.d {

    /* renamed from: a  reason: collision with root package name */
    private final Context f10660a;

    /* renamed from: b  reason: collision with root package name */
    private final I3 f10661b;

    /* renamed from: c  reason: collision with root package name */
    private final C0454c9 f10662c;

    /* renamed from: d  reason: collision with root package name */
    private final C0504e9 f10663d;

    /* renamed from: e  reason: collision with root package name */
    private final C0404a9 f10664e;

    /* renamed from: f  reason: collision with root package name */
    private final S1 f10665f;

    /* renamed from: g  reason: collision with root package name */
    private final L7 f10666g;

    /* renamed from: h  reason: collision with root package name */
    private final L4 f10667h;

    /* renamed from: i  reason: collision with root package name */
    private final I4 f10668i;

    /* renamed from: j  reason: collision with root package name */
    private final C0839s f10669j;

    /* renamed from: k  reason: collision with root package name */
    private final B3 f10670k;

    /* renamed from: l  reason: collision with root package name */
    private final C0426b6 f10671l;

    /* renamed from: m  reason: collision with root package name */
    private final Z3 f10672m;

    /* renamed from: n  reason: collision with root package name */
    private final M5 f10673n;

    /* renamed from: o  reason: collision with root package name */
    private final C0467cm f10674o;

    /* renamed from: p  reason: collision with root package name */
    private final Sl f10675p;

    /* renamed from: q  reason: collision with root package name */
    private final C0399a4 f10676q;

    /* renamed from: r  reason: collision with root package name */
    private final K3.b f10677r;

    /* renamed from: s  reason: collision with root package name */
    private final C0755ob f10678s;

    /* renamed from: t  reason: collision with root package name */
    private final C0680lb f10679t;

    /* renamed from: u  reason: collision with root package name */
    private final C0804qb f10680u;

    /* renamed from: v  reason: collision with root package name */
    private final H f10681v;

    /* renamed from: w  reason: collision with root package name */
    private final C0962x2 f10682w;

    /* renamed from: x  reason: collision with root package name */
    private final I1 f10683x;

    /* renamed from: y  reason: collision with root package name */
    private final C0428b8 f10684y;

    /* renamed from: z  reason: collision with root package name */
    private final C0576h6 f10685z;

    /* loaded from: classes2.dex */
    class a implements C0426b6.a {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.C0426b6.a
        public void a(C0445c0 c0445c0, C0451c6 c0451c6) {
            L3.this.f10676q.a(c0445c0, c0451c6);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public L3(Context context, I3 i32, B3 b32, C0962x2 c0962x2, M3 m32) {
        this.f10660a = context.getApplicationContext();
        this.f10661b = i32;
        this.f10670k = b32;
        this.f10682w = c0962x2;
        C0428b8 e10 = m32.e();
        this.f10684y = e10;
        this.f10683x = F0.g().k();
        Z3 a10 = m32.a(this);
        this.f10672m = a10;
        C0467cm b10 = m32.c().b();
        this.f10674o = b10;
        Sl a11 = m32.c().a();
        this.f10675p = a11;
        C0454c9 a12 = m32.d().a();
        this.f10662c = a12;
        this.f10664e = m32.d().b();
        this.f10663d = F0.g().s();
        C0839s a13 = b32.a(i32, b10, a12);
        this.f10669j = a13;
        this.f10673n = m32.a();
        L7 b11 = m32.b(this);
        this.f10666g = b11;
        S1<L3> e11 = m32.e(this);
        this.f10665f = e11;
        this.f10677r = m32.d(this);
        C0804qb a14 = m32.a(b11, a10);
        this.f10680u = a14;
        C0680lb a15 = m32.a(b11);
        this.f10679t = a15;
        ArrayList arrayList = new ArrayList();
        arrayList.add(a14);
        arrayList.add(a15);
        this.f10678s = m32.a(arrayList, this);
        z();
        C0426b6 a16 = m32.a(this, e10, new a());
        this.f10671l = a16;
        if (a11.isEnabled()) {
            a11.fi("Read app environment for component %s. Value: %s", i32.toString(), a13.a().f13570a);
        }
        C0576h6 b12 = m32.b();
        this.f10685z = b12;
        this.f10676q = m32.a(a12, e10, a16, b11, a13, b12, e11);
        I4 c10 = m32.c(this);
        this.f10668i = c10;
        this.f10667h = m32.a(this, c10);
        this.f10681v = m32.a(a12);
        b11.e();
    }

    private void z() {
        int libraryApiLevel = YandexMetrica.getLibraryApiLevel();
        Integer j10 = this.f10662c.j();
        if (j10 == null) {
            j10 = Integer.valueOf(this.f10684y.c());
        }
        if (j10.intValue() < libraryApiLevel) {
            this.f10677r.a(new Id(new Jd(this.f10660a, this.f10661b.a()))).a();
            this.f10684y.b(libraryApiLevel);
        }
    }

    public boolean A() {
        Lg m10 = m();
        if (m10.R() && m10.x() && this.f10682w.b(this.f10676q.a(), m10.K(), "need to check permissions")) {
            return true;
        }
        return false;
    }

    public boolean B() {
        if (this.f10676q.d() && m().x()) {
            return true;
        }
        return false;
    }

    public boolean C() {
        if (this.f10676q.c() && m().O() && m().x()) {
            return true;
        }
        return false;
    }

    public void D() {
        this.f10672m.e();
    }

    public boolean E() {
        Lg m10 = m();
        if (m10.R() && this.f10682w.b(this.f10676q.a(), m10.L(), "should force send permissions")) {
            return true;
        }
        return false;
    }

    public boolean F() {
        boolean z10;
        boolean z11 = this.f10683x.b().f12326d;
        boolean N = this.f10672m.d().N();
        if (z11 && N) {
            z10 = true;
        } else {
            z10 = false;
        }
        return !z10;
    }

    public void G() {
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0662ki
    public synchronized void a(EnumC0563gi enumC0563gi, C0787pi c0787pi) {
    }

    public void b(C0445c0 c0445c0) {
        boolean z10;
        this.f10669j.a(c0445c0.b());
        C0839s.a a10 = this.f10669j.a();
        B3 b32 = this.f10670k;
        C0454c9 c0454c9 = this.f10662c;
        synchronized (b32) {
            if (a10.f13571b > c0454c9.f().f13571b) {
                c0454c9.a(a10).d();
                z10 = true;
            } else {
                z10 = false;
            }
        }
        if (z10 && this.f10674o.isEnabled()) {
            this.f10674o.fi("Save new app environment for %s. Value: %s", this.f10661b, a10.f13570a);
        }
    }

    public synchronized void c() {
        this.f10665f.d();
    }

    public H d() {
        return this.f10681v;
    }

    public I3 e() {
        return this.f10661b;
    }

    public C0454c9 f() {
        return this.f10662c;
    }

    public Context g() {
        return this.f10660a;
    }

    public String h() {
        return this.f10662c.n();
    }

    public L7 i() {
        return this.f10666g;
    }

    public M5 j() {
        return this.f10673n;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public I4 k() {
        return this.f10668i;
    }

    public C0755ob l() {
        return this.f10678s;
    }

    public Lg m() {
        return (Lg) this.f10672m.b();
    }

    @Deprecated
    public final Jd n() {
        return new Jd(this.f10660a, this.f10661b.a());
    }

    public C0404a9 o() {
        return this.f10664e;
    }

    public String p() {
        return this.f10662c.m();
    }

    public C0467cm q() {
        return this.f10674o;
    }

    public C0399a4 r() {
        return this.f10676q;
    }

    public CounterConfiguration.b s() {
        return CounterConfiguration.b.MANUAL;
    }

    public C0504e9 t() {
        return this.f10663d;
    }

    public C0576h6 u() {
        return this.f10685z;
    }

    public C0426b6 v() {
        return this.f10671l;
    }

    public C0787pi w() {
        return this.f10672m.d();
    }

    public C0428b8 x() {
        return this.f10684y;
    }

    public void y() {
        this.f10676q.b();
    }

    @Override // com.yandex.metrica.impl.ob.S3
    public void a(C0445c0 c0445c0) {
        if (this.f10674o.isEnabled()) {
            C0467cm c0467cm = this.f10674o;
            c0467cm.getClass();
            if (C1008z0.c(c0445c0.o())) {
                StringBuilder sb2 = new StringBuilder("Event received on service");
                sb2.append(": ");
                sb2.append(c0445c0.g());
                if (C1008z0.e(c0445c0.o()) && !TextUtils.isEmpty(c0445c0.q())) {
                    sb2.append(" with value ");
                    sb2.append(c0445c0.q());
                }
                c0467cm.i(sb2.toString());
            }
        }
        String a10 = this.f10661b.a();
        if ((TextUtils.isEmpty(a10) || "-1".equals(a10)) ? false : true) {
            this.f10667h.a(c0445c0);
        }
    }

    public void b() {
        this.f10669j.b();
        B3 b32 = this.f10670k;
        C0839s.a a10 = this.f10669j.a();
        C0454c9 c0454c9 = this.f10662c;
        synchronized (b32) {
            c0454c9.a(a10).d();
        }
    }

    public void b(String str) {
        this.f10662c.i(str).d();
    }

    @Override // com.yandex.metrica.impl.ob.S3
    public synchronized void a(D3.a aVar) {
        Z3 z32 = this.f10672m;
        synchronized (z32) {
            z32.a((Z3) aVar);
        }
        if (Boolean.TRUE.equals(aVar.f9884k)) {
            this.f10674o.setEnabled();
        } else {
            if (Boolean.FALSE.equals(aVar.f9884k)) {
                this.f10674o.setDisabled();
            }
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0662ki
    public synchronized void a(C0787pi c0787pi) {
        this.f10672m.a(c0787pi);
        this.f10666g.b(c0787pi);
        this.f10678s.c();
    }

    public void a(String str) {
        this.f10662c.j(str).d();
    }
}
