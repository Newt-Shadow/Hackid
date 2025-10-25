package io.appmetrica.analytics.impl;

import android.content.Context;
/* loaded from: classes2.dex */
public final class N extends kotlin.jvm.internal.n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ O f18625a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Fi f18626b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N(O o10, Fi fi) {
        super(0);
        this.f18625a = o10;
        this.f18626b = fi;
    }

    @Override // id.a
    public final Object invoke() {
        O o10 = this.f18625a;
        I i10 = o10.f18672h;
        Context context = o10.f18665a;
        Fi fi = this.f18626b;
        i10.getClass();
        return I.a(new H(i10, context, fi));
    }
}
