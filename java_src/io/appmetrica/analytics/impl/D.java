package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Savable;
/* loaded from: classes2.dex */
public final class D implements Savable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ E f18067a;

    public D(E e10) {
        this.f18067a = e10;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Savable
    /* renamed from: a */
    public final Boolean getValue() {
        return Boolean.valueOf(this.f18067a.f18118a.a(false));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Savable
    public final /* bridge */ /* synthetic */ void setValue(Object obj) {
        a(((Boolean) obj).booleanValue());
    }

    public final void a(boolean z10) {
        this.f18067a.f18118a.e(z10);
    }
}
