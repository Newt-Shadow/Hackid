package com.yandex.metrica.impl.ob;

import android.content.Intent;
import com.yandex.metrica.impl.ob.A1;
/* renamed from: com.yandex.metrica.impl.ob.v1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0913v1 implements A1.e {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C0817r1 f13785a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0913v1(C0817r1 c0817r1) {
        this.f13785a = c0817r1;
    }

    @Override // com.yandex.metrica.impl.ob.A1.e
    public void a(Intent intent) {
        C0787pi c0787pi;
        C0787pi c0787pi2;
        Eh eh;
        C0787pi c0787pi3;
        c0787pi = this.f13785a.f13456a;
        if (c0787pi != null) {
            C0817r1 c0817r1 = this.f13785a;
            c0787pi2 = c0817r1.f13456a;
            C0817r1.b(c0817r1, c0787pi2);
            C0817r1.d(this.f13785a);
            eh = this.f13785a.f13460e;
            c0787pi3 = this.f13785a.f13456a;
            eh.a(c0787pi3);
        }
    }
}
