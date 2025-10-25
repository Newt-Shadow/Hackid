package com.yandex.metrica.impl.ob;

import android.content.Context;
@Deprecated
/* loaded from: classes2.dex */
public class Od extends Kd {

    /* renamed from: g  reason: collision with root package name */
    private static final Rd f10941g = new Rd("PREF_KEY_OFFSET", null);

    /* renamed from: f  reason: collision with root package name */
    private Rd f10942f;

    public Od(Context context, String str) {
        super(context, str);
        this.f10942f = new Rd(f10941g.b(), null);
    }

    public long a(int i10) {
        return this.f10623b.getLong(this.f10942f.a(), i10);
    }

    @Override // com.yandex.metrica.impl.ob.Kd
    protected String d() {
        return "_servertimeoffset";
    }

    public void f() {
        a(this.f10942f.a()).b();
    }
}
