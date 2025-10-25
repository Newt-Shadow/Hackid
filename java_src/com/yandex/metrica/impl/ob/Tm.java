package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Tm extends Sm<byte[]> {
    public Tm(int i10, String str, C0467cm c0467cm) {
        super(i10, str, c0467cm);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0543fn
    public Object a(Object obj) {
        byte[] bArr = (byte[]) obj;
        if (bArr != null && bArr.length > super.b()) {
            byte[] bArr2 = new byte[super.b()];
            System.arraycopy(bArr, 0, bArr2, 0, super.b());
            if (this.f11370c.isEnabled()) {
                this.f11370c.fw("\"%s\" %s exceeded limit of %d bytes", super.a(), bArr, Integer.valueOf(super.b()));
            }
            return bArr2;
        }
        return bArr;
    }
}
