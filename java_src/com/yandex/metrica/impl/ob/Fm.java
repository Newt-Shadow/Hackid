package com.yandex.metrica.impl.ob;

import android.util.Base64;
/* loaded from: classes2.dex */
public class Fm implements Cm {
    @Override // com.yandex.metrica.impl.ob.Cm
    public Bm a(C0445c0 c0445c0) {
        throw new UnsupportedOperationException();
    }

    @Override // com.yandex.metrica.impl.ob.Cm
    public byte[] a(byte[] bArr) {
        try {
            return Base64.decode(bArr, 0);
        } catch (Throwable unused) {
            return new byte[0];
        }
    }
}
