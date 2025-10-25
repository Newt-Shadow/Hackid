package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0837rl;
/* loaded from: classes2.dex */
public class Zk implements Cl {

    /* renamed from: a  reason: collision with root package name */
    private final int f11894a;

    public Zk(int i10) {
        this.f11894a = i10;
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public boolean a(Object obj) {
        return ((String) obj).length() > this.f11894a;
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public C0837rl.b a() {
        return C0837rl.b.TEXT_TOO_LONG;
    }
}
