package com.yandex.metrica.impl.ob;

import android.content.Context;
@Deprecated
/* loaded from: classes2.dex */
public class Nd extends Kd {

    /* renamed from: h  reason: collision with root package name */
    private static final Rd f10894h = new Rd("SERVICE_API_LEVEL", null);

    /* renamed from: i  reason: collision with root package name */
    private static final Rd f10895i = new Rd("CLIENT_API_LEVEL", null);

    /* renamed from: f  reason: collision with root package name */
    private Rd f10896f;

    /* renamed from: g  reason: collision with root package name */
    private Rd f10897g;

    public Nd(Context context) {
        super(context, null);
        this.f10896f = new Rd(f10894h.b());
        this.f10897g = new Rd(f10895i.b());
    }

    @Override // com.yandex.metrica.impl.ob.Kd
    protected String d() {
        return "_migrationpreferences";
    }

    public int f() {
        return this.f10623b.getInt(this.f10896f.a(), -1);
    }

    public Nd g() {
        a(this.f10897g.a());
        return this;
    }

    @Deprecated
    public Nd h() {
        a(this.f10896f.a());
        return this;
    }
}
