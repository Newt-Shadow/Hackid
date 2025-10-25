package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import com.yandex.metrica.impl.ob.ResultReceiverC0520f0;
/* renamed from: com.yandex.metrica.impl.ob.ii  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0612ii implements ResultReceiverC0520f0.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Yh f12615a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ C0588hi f12616b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0612ii(C0588hi c0588hi, Yh yh) {
        this.f12616b = c0588hi;
        this.f12615a = yh;
    }

    @Override // com.yandex.metrica.impl.ob.ResultReceiverC0520f0.a
    public void a(int i10, Bundle bundle) {
        this.f12616b.a(bundle, this.f12615a);
    }
}
