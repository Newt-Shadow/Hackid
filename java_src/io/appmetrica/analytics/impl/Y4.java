package io.appmetrica.analytics.impl;

import java.util.Arrays;
/* loaded from: classes2.dex */
public final class Y4 implements InterfaceC1239i7 {

    /* renamed from: a  reason: collision with root package name */
    public final String f19277a;

    /* renamed from: b  reason: collision with root package name */
    public final String f19278b;

    public Y4(C1212h5 c1212h5) {
        String b10;
        Object[] objArr = new Object[1];
        if (c1212h5.d()) {
            b10 = "main";
        } else {
            b10 = c1212h5.b();
        }
        objArr[0] = b10;
        this.f19277a = String.format("component_%s.db", Arrays.copyOf(objArr, 1));
        this.f19278b = "db_metrica_" + c1212h5;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1239i7
    public final String a() {
        return this.f19278b;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1239i7
    public final String b() {
        return this.f19277a;
    }
}
