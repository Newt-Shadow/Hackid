package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
/* loaded from: classes2.dex */
public final class Jm implements Zn {
    @Override // io.appmetrica.analytics.impl.Zn
    public final byte[] a(W8 w82, C1323lh c1323lh) {
        if (!TextUtils.isEmpty(w82.f19159b)) {
            return StringUtils.getUTF8Bytes(w82.f19159b);
        }
        return new byte[0];
    }
}
