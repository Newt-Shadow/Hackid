package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
/* loaded from: classes2.dex */
public final class Da extends Ca {
    public Da(int i10, int i11) {
        this(i10, new Ea(i11));
    }

    public final int a(String str) {
        return StringUtils.getUTF8Bytes(str).length;
    }

    @Override // io.appmetrica.analytics.impl.Ca
    public final int b(Object obj) {
        return StringUtils.getUTF8Bytes((String) obj).length;
    }

    public Da(int i10, Ea ea2) {
        super(i10, ea2);
    }
}
