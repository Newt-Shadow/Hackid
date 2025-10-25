package com.yandex.metrica.impl.ob;

import io.appmetrica.analytics.gpllibrary.internal.GplLibraryWrapper;
/* loaded from: classes2.dex */
public class Zb extends Uc<C0457cc> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public Zb(InterfaceC0557gc interfaceC0557gc, C0962x2 c0962x2) {
        super(interfaceC0557gc, c0962x2);
    }

    @Override // com.yandex.metrica.impl.ob.Uc
    protected String a() {
        return GplLibraryWrapper.FUSED_PROVIDER;
    }

    @Override // com.yandex.metrica.impl.ob.Lb
    public boolean b(Object obj) {
        return ((C0457cc) obj).f12155a.f11152a;
    }

    @Override // com.yandex.metrica.impl.ob.Lb
    public boolean a(Object obj) {
        C0407ac c0407ac = ((C0457cc) obj).f12156b;
        return c0407ac != null && a(c0407ac.f11972c);
    }
}
