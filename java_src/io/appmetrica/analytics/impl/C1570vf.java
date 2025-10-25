package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
/* renamed from: io.appmetrica.analytics.impl.vf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1570vf extends Ca {
    public C1570vf(int i10) {
        super(i10);
    }

    @Override // io.appmetrica.analytics.impl.Ca
    /* renamed from: a */
    public final int b(T t10) {
        if (t10 == null) {
            return 0;
        }
        return StringUtils.getUtf8BytesLength(t10.f18951b) + 12;
    }
}
