package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.backport.Provider;
/* loaded from: classes2.dex */
public final class G implements Provider {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f18239a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ I f18240b;

    public G(I i10, Context context) {
        this.f18240b = i10;
        this.f18239a = context;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.Provider
    public final Object get() {
        return this.f18240b.f18341a.a(this.f18239a);
    }
}
