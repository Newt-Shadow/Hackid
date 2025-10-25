package io.appmetrica.analytics.impl;

import android.util.Base64;
/* renamed from: io.appmetrica.analytics.impl.u3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1533u3 implements Zn {

    /* renamed from: a  reason: collision with root package name */
    public final Q8 f20700a;

    public C1533u3() {
        this(new Q8());
    }

    @Override // io.appmetrica.analytics.impl.Zn
    public final byte[] a(W8 w82, C1323lh c1323lh) {
        byte[] bArr = new byte[0];
        String str = w82.f19159b;
        if (str != null) {
            try {
                bArr = Base64.decode(str, 0);
            } catch (Throwable unused) {
            }
        }
        Q8 q82 = this.f20700a;
        return ((P8) q82.f18812a.a(w82.f19172o)).a(bArr);
    }

    public C1533u3(Q8 q82) {
        this.f20700a = q82;
    }
}
