package io.appmetrica.analytics.impl;

import android.os.Bundle;
/* loaded from: classes2.dex */
public final class J1 implements Xj {

    /* renamed from: b  reason: collision with root package name */
    public static final I1 f18418b = new I1();

    /* renamed from: c  reason: collision with root package name */
    public static final int f18419c = 1;

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC1281k0 f18420a;

    public J1(InterfaceC1281k0 interfaceC1281k0) {
        this.f18420a = interfaceC1281k0;
    }

    @Override // io.appmetrica.analytics.impl.Xj
    public final void reportData(int i10, Bundle bundle) {
        ((G1) this.f18420a).a(bundle);
    }
}
