package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
/* renamed from: com.yandex.metrica.impl.ob.m5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0699m5 extends X4 {
    public C0699m5(L3 l32) {
        super(l32);
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C0445c0 c0445c0) {
        boolean z10;
        if (!TextUtils.isEmpty(c0445c0.p()) && TextUtils.isEmpty(a().h())) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            a().a(c0445c0.p());
        }
        return false;
    }
}
