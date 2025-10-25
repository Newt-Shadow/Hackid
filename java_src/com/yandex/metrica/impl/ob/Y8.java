package com.yandex.metrica.impl.ob;

import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Y8 {

    /* renamed from: a  reason: collision with root package name */
    private final C0428b8 f11833a;

    public Y8(C0428b8 c0428b8) {
        this.f11833a = c0428b8;
    }

    public final int a(int i10) {
        JSONObject d10 = this.f11833a.d();
        if (d10 != null) {
            return d10.optInt(String.valueOf(i10));
        }
        return 0;
    }

    public final void a(int i10, int i11) {
        JSONObject d10 = this.f11833a.d();
        if (d10 == null) {
            d10 = new JSONObject();
        }
        d10.put(String.valueOf(i10), i11);
        this.f11833a.a(d10);
    }
}
