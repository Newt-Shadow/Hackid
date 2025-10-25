package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0927vf;
/* loaded from: classes2.dex */
public abstract class Se implements InterfaceC0435bf, Ie {

    /* renamed from: a  reason: collision with root package name */
    private final String f11274a;

    /* renamed from: b  reason: collision with root package name */
    private final int f11275b;

    /* renamed from: c  reason: collision with root package name */
    private final Kn<String> f11276c;

    /* renamed from: d  reason: collision with root package name */
    private final Ke f11277d;

    /* renamed from: e  reason: collision with root package name */
    private C0467cm f11278e = Ul.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Se(int i10, String str, Kn<String> kn, Ke ke2) {
        this.f11275b = i10;
        this.f11274a = str;
        this.f11276c = kn;
        this.f11277d = ke2;
    }

    public final C0927vf.a a() {
        C0927vf.a aVar = new C0927vf.a();
        aVar.f13828b = this.f11275b;
        aVar.f13827a = this.f11274a.getBytes();
        aVar.f13830d = new C0927vf.c();
        aVar.f13829c = new C0927vf.b();
        return aVar;
    }

    public Ke b() {
        return this.f11277d;
    }

    public String c() {
        return this.f11274a;
    }

    public int d() {
        return this.f11275b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean e() {
        In a10 = this.f11276c.a(this.f11274a);
        if (a10.b()) {
            return true;
        }
        if (this.f11278e.isEnabled()) {
            C0467cm c0467cm = this.f11278e;
            c0467cm.w("Attribute " + this.f11274a + " of type " + Ze.a(this.f11275b) + " is skipped because " + a10.a());
            return false;
        }
        return false;
    }

    public void a(C0467cm c0467cm) {
        this.f11278e = c0467cm;
    }
}
