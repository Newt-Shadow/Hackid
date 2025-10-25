package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.pe  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0783pe implements Ge {

    /* renamed from: a  reason: collision with root package name */
    private final Dm f13119a;

    public C0783pe() {
        this(new Dm());
    }

    @Override // com.yandex.metrica.impl.ob.Ge
    public byte[] a(C0807qe c0807qe, Lg lg) {
        byte[] bArr;
        String str = c0807qe.f13272b;
        if (str != null) {
            bArr = C0419b.b(str);
        } else {
            bArr = new byte[0];
        }
        return this.f13119a.a(c0807qe.f13288r).a(bArr);
    }

    C0783pe(Dm dm) {
        this.f13119a = dm;
    }
}
