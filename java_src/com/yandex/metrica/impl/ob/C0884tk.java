package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0837rl;
/* renamed from: com.yandex.metrica.impl.ob.tk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0884tk implements Cl {

    /* renamed from: a  reason: collision with root package name */
    private final String f13652a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0884tk(String str) {
        this.f13652a = str;
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public boolean a(Object obj) {
        return ((String) obj).equals(this.f13652a);
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public C0837rl.b a() {
        return C0837rl.b.EQUALS;
    }
}
