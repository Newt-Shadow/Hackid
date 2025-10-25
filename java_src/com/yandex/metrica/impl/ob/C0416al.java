package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.al  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0416al implements InterfaceC0813qk {

    /* renamed from: a  reason: collision with root package name */
    private final int f11984a;

    public C0416al(int i10) {
        this.f11984a = i10;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0813qk
    public void a(C0441bl c0441bl) {
        if (c0441bl.f12072h.length() > this.f11984a) {
            int length = c0441bl.f12072h.length();
            int i10 = this.f11984a;
            int i11 = length - i10;
            String substring = c0441bl.f12072h.substring(0, i10);
            c0441bl.f12072h = substring;
            c0441bl.f12074j = Integer.valueOf(substring.length() + i11);
        }
    }
}
