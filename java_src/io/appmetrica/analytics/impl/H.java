package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.backport.Provider;
/* loaded from: classes2.dex */
public final class H implements Provider {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f18283a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Fi f18284b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ I f18285c;

    public H(I i10, Context context, Fi fi) {
        this.f18285c = i10;
        this.f18283a = context;
        this.f18284b = fi;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.Provider
    public final Object get() {
        return this.f18285c.f18341a.a(this.f18283a, this.f18284b);
    }
}
