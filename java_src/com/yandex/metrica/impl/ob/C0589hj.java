package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
/* renamed from: com.yandex.metrica.impl.ob.hj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0589hj implements InterfaceC0439bj {

    /* renamed from: a  reason: collision with root package name */
    private final C0429b9 f12555a;

    public C0589hj(C0429b9 c0429b9) {
        this.f12555a = c0429b9;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0439bj
    public String a() {
        String str;
        W0 u10 = this.f12555a.u();
        if (!TextUtils.isEmpty(u10.f11672a)) {
            str = u10.f11672a;
        } else {
            str = null;
        }
        if (str == null) {
            String n10 = this.f12555a.n(null);
            if (!TextUtils.isEmpty(n10)) {
                return n10;
            }
            return str;
        }
        return str;
    }
}
