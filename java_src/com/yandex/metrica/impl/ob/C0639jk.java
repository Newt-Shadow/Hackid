package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0837rl;
/* renamed from: com.yandex.metrica.impl.ob.jk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0639jk implements Cl {

    /* renamed from: a  reason: collision with root package name */
    private final String f12730a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0639jk(String str) {
        this.f12730a = str;
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public boolean a(Object obj) {
        return ((String) obj).contains(this.f12730a);
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public C0837rl.b a() {
        return C0837rl.b.CONTAINS;
    }
}
