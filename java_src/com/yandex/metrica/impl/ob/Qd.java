package com.yandex.metrica.impl.ob;

import android.content.Context;
@Deprecated
/* loaded from: classes2.dex */
public class Qd extends Kd {

    /* renamed from: f  reason: collision with root package name */
    private Rd f11154f;

    public Qd(Context context, String str) {
        super(context, null);
        this.f11154f = new Rd("LOCATION_TRACKING_ENABLED");
    }

    @Override // com.yandex.metrica.impl.ob.Kd
    protected String d() {
        return "_serviceproviderspreferences";
    }

    public boolean f() {
        return this.f10623b.getBoolean(this.f11154f.a(), false);
    }

    public void g() {
        a(this.f11154f.a()).b();
    }
}
