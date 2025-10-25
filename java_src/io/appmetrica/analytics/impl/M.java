package io.appmetrica.analytics.impl;

import android.content.Context;
/* loaded from: classes2.dex */
public final class M extends kotlin.jvm.internal.n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ O f18567a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M(O o10) {
        super(0);
        this.f18567a = o10;
    }

    @Override // id.a
    public final Object invoke() {
        O o10 = this.f18567a;
        I i10 = o10.f18671g;
        Context context = o10.f18665a;
        i10.getClass();
        return I.a(new G(i10, context));
    }
}
