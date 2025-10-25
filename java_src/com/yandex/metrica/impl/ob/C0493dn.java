package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.dn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0493dn extends Sm<String> {
    public C0493dn(int i10, String str) {
        this(i10, str, C0467cm.a());
    }

    public C0493dn(int i10, String str, C0467cm c0467cm) {
        super(i10, str, c0467cm);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0543fn
    public String a(String str) {
        if (str == null || str.length() <= super.b()) {
            return str;
        }
        String substring = str.substring(0, super.b());
        if (this.f11370c.isEnabled()) {
            this.f11370c.fw("\"%s\" %s size exceeded limit of %d characters", super.a(), str, Integer.valueOf(super.b()));
        }
        return substring;
    }
}
