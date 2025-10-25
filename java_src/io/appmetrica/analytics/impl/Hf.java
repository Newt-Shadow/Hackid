package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import android.util.Base64;
/* loaded from: classes2.dex */
public final class Hf implements Zn, H8 {
    @Override // io.appmetrica.analytics.impl.H8
    public final int a(R8 r82) {
        return 2;
    }

    @Override // io.appmetrica.analytics.impl.Zn
    public final byte[] a(W8 w82, C1323lh c1323lh) {
        return TextUtils.isEmpty(w82.f19159b) ? new byte[0] : Base64.decode(w82.f19159b, 0);
    }
}
