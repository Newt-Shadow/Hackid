package io.appmetrica.analytics.impl;

import android.util.Base64;
/* loaded from: classes2.dex */
public final class X9 implements P8 {
    @Override // io.appmetrica.analytics.impl.P8
    public final I8 a(C1138e6 c1138e6) {
        throw new UnsupportedOperationException();
    }

    @Override // io.appmetrica.analytics.impl.P8
    public final byte[] a(byte[] bArr) {
        try {
            return Base64.decode(bArr, 0);
        } catch (Throwable unused) {
            return new byte[0];
        }
    }

    public final R8 a() {
        return R8.EXTERNALLY_ENCRYPTED_EVENT_CRYPTER;
    }
}
