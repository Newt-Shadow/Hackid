package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public abstract class S9 {
    public static final M9 a(int i10, String str) {
        byte[] bArr;
        M9 m92 = new M9();
        m92.f18587a = i10;
        if (str == null || (bArr = str.getBytes(rd.d.f29089b)) == null) {
            bArr = m92.f18588b;
        }
        m92.f18588b = bArr;
        return m92;
    }
}
