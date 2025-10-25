package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import android.util.Base64;
/* loaded from: classes2.dex */
public class Be implements Ge, InterfaceC0758oe {
    @Override // com.yandex.metrica.impl.ob.InterfaceC0758oe
    public int a(Em em) {
        return 2;
    }

    @Override // com.yandex.metrica.impl.ob.Ge
    public byte[] a(C0807qe c0807qe, Lg lg) {
        return TextUtils.isEmpty(c0807qe.f13272b) ? new byte[0] : Base64.decode(c0807qe.f13272b, 0);
    }
}
