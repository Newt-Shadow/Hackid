package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
/* renamed from: com.yandex.metrica.impl.ob.b5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0425b5 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final M5 f12000b;

    public C0425b5(L3 l32) {
        this(l32, l32.j());
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C0445c0 c0445c0) {
        if (!TextUtils.isEmpty(c0445c0.g())) {
            c0445c0.a(this.f12000b.a(c0445c0.g()));
            return false;
        }
        return false;
    }

    C0425b5(L3 l32, M5 m52) {
        super(l32);
        this.f12000b = m52;
    }
}
