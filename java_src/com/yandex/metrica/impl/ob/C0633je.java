package com.yandex.metrica.impl.ob;

import android.util.Base64;
/* renamed from: com.yandex.metrica.impl.ob.je  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0633je implements Ge {

    /* renamed from: a  reason: collision with root package name */
    private final Dm f12722a;

    public C0633je() {
        this(new Dm());
    }

    @Override // com.yandex.metrica.impl.ob.Ge
    public byte[] a(C0807qe c0807qe, Lg lg) {
        byte[] bArr = new byte[0];
        String str = c0807qe.f13272b;
        if (str != null) {
            try {
                bArr = Base64.decode(str, 0);
            } catch (Throwable unused) {
            }
        }
        return this.f12722a.a(c0807qe.f13288r).a(bArr);
    }

    C0633je(Dm dm) {
        this.f12722a = dm;
    }
}
