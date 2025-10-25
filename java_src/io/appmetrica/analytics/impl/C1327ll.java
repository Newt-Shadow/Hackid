package io.appmetrica.analytics.impl;

import android.content.Context;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: io.appmetrica.analytics.impl.ll  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1327ll implements T2 {

    /* renamed from: a  reason: collision with root package name */
    public final Context f20063a;

    public C1327ll(Context context) {
        this.f20063a = context;
    }

    @Override // io.appmetrica.analytics.impl.T2, io.appmetrica.analytics.impl.Vl
    public final void a(Ql ql) {
    }

    public final Context b() {
        return this.f20063a;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.io.SslSocketFactoryProvider
    public final SSLSocketFactory getSslSocketFactory() {
        return null;
    }
}
