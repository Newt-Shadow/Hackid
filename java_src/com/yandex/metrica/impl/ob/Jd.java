package com.yandex.metrica.impl.ob;

import android.content.Context;
@Deprecated
/* loaded from: classes2.dex */
public class Jd extends Kd {

    /* renamed from: j  reason: collision with root package name */
    public static final /* synthetic */ int f10496j = 0;

    /* renamed from: f  reason: collision with root package name */
    private final Rd f10497f;

    /* renamed from: g  reason: collision with root package name */
    private final Rd f10498g;

    /* renamed from: h  reason: collision with root package name */
    private final Rd f10499h;

    /* renamed from: i  reason: collision with root package name */
    private final Rd f10500i;

    public Jd(Context context, String str) {
        super(context, str);
        this.f10497f = new Rd("init_event_pref_key", c());
        this.f10498g = new Rd("init_event_pref_key");
        this.f10499h = new Rd("first_event_pref_key", c());
        this.f10500i = new Rd("fitst_event_description_key", c());
    }

    private void a(Rd rd2) {
        this.f10623b.edit().remove(rd2.a()).apply();
    }

    @Deprecated
    public String b(String str) {
        return this.f10623b.getString(this.f10498g.a(), null);
    }

    public String c(String str) {
        return this.f10623b.getString(this.f10499h.a(), null);
    }

    @Override // com.yandex.metrica.impl.ob.Kd
    protected String d() {
        return "_initpreferences";
    }

    @Deprecated
    public void f() {
        a(this.f10498g);
    }

    public void g() {
        a(this.f10500i);
    }

    public void h() {
        a(this.f10499h);
    }

    public void i() {
        a(this.f10497f);
    }

    public void j() {
        a(this.f10497f.a(), "DONE").b();
    }

    public String d(String str) {
        return this.f10623b.getString(this.f10497f.a(), null);
    }
}
