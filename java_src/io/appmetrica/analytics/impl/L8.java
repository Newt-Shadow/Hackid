package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
/* loaded from: classes2.dex */
public final class L8 implements Zn {

    /* renamed from: a  reason: collision with root package name */
    public final Q8 f18516a;

    public L8() {
        this(new Q8());
    }

    @Override // io.appmetrica.analytics.impl.Zn
    public final byte[] a(W8 w82, C1323lh c1323lh) {
        byte[] bArr;
        String str = w82.f19159b;
        if (str != null) {
            bArr = StringUtils.getUTF8Bytes(str);
        } else {
            bArr = new byte[0];
        }
        Q8 q82 = this.f18516a;
        return ((P8) q82.f18812a.a(w82.f19172o)).a(bArr);
    }

    public L8(Q8 q82) {
        this.f18516a = q82;
    }
}
