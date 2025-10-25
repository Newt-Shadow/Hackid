package com.yandex.metrica.impl.ob;

import java.util.LinkedList;
/* loaded from: classes2.dex */
public class J4 extends K4<X4> {

    /* renamed from: a  reason: collision with root package name */
    private final C0575h5 f10480a;

    /* renamed from: b  reason: collision with root package name */
    private final K5 f10481b;

    /* renamed from: c  reason: collision with root package name */
    private final C0475d5 f10482c;

    public J4(L3 l32) {
        this.f10480a = new C0575h5(l32);
        this.f10481b = new K5(l32);
        this.f10482c = new C0475d5(l32);
    }

    @Override // com.yandex.metrica.impl.ob.K4
    public H4 a(int i10) {
        LinkedList linkedList = new LinkedList();
        int ordinal = EnumC0396a1.a(i10).ordinal();
        if (ordinal != 1) {
            if (ordinal != 3) {
                if (ordinal == 40) {
                    linkedList.add(this.f10481b);
                    linkedList.add(this.f10480a);
                }
            } else {
                linkedList.add(this.f10482c);
            }
        } else {
            linkedList.add(this.f10480a);
        }
        return new H4(linkedList);
    }
}
