package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.s1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0841s1 implements InterfaceC0697m3<C0796q3> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C0817r1 f13572a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0841s1(C0817r1 c0817r1) {
        this.f13572a = c0817r1;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0697m3
    public boolean a(C0796q3 c0796q3) {
        Context context;
        context = this.f13572a.f13458c;
        return !context.getPackageName().equals(c0796q3.f13251a);
    }
}
