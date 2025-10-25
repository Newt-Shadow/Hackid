package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.r4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0820r4 extends AbstractC0549g4 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C0820r4(Context context, X3 x32) {
        super(context, x32);
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0549g4
    protected void b(C0445c0 c0445c0, D3 d32) {
        Boolean bool = d32.f9872b.f9878e;
        Boolean bool2 = Boolean.FALSE;
        if (bool == null) {
            bool = bool2;
        }
        c().a(bool.booleanValue());
        b().a(c0445c0, d32);
    }
}
