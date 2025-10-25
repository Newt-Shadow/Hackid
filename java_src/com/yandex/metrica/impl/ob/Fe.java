package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Fe implements Ge {

    /* renamed from: a  reason: collision with root package name */
    private final Dm f10083a;

    public Fe() {
        this(new Dm());
    }

    @Override // com.yandex.metrica.impl.ob.Ge
    public byte[] a(C0807qe c0807qe, Lg lg) {
        byte[] bArr = new byte[0];
        try {
            bArr = L0.a(c0807qe.f13272b);
        } catch (Throwable unused) {
        }
        byte[] a10 = this.f10083a.a(c0807qe.f13288r).a(bArr);
        if (a10 == null) {
            return new byte[0];
        }
        return a10;
    }

    Fe(Dm dm) {
        this.f10083a = dm;
    }
}
