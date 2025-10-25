package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
/* renamed from: com.yandex.metrica.impl.ob.r5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0821r5 extends X4 {
    public C0821r5(L3 l32) {
        super(l32);
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C0445c0 c0445c0) {
        String p10 = a().p();
        String m10 = c0445c0.m();
        a().b(m10);
        if (!TextUtils.equals(p10, m10)) {
            a().a(J.s());
            return false;
        }
        return false;
    }
}
