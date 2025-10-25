package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.appsetid.internal.IAppSetIdRetriever;
import io.appmetrica.analytics.coreapi.internal.identifiers.AppSetId;
import io.appmetrica.analytics.coreapi.internal.identifiers.AppSetIdProvider;
import io.appmetrica.analytics.coreapi.internal.identifiers.AppSetIdScope;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* renamed from: io.appmetrica.analytics.impl.c2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1084c2 implements AppSetIdProvider {

    /* renamed from: a  reason: collision with root package name */
    public final Context f19454a;

    /* renamed from: b  reason: collision with root package name */
    public final IAppSetIdRetriever f19455b;

    /* renamed from: c  reason: collision with root package name */
    public volatile AppSetId f19456c;

    /* renamed from: d  reason: collision with root package name */
    public CountDownLatch f19457d;

    /* renamed from: e  reason: collision with root package name */
    public final long f19458e;

    /* renamed from: f  reason: collision with root package name */
    public final C1059b2 f19459f;

    public C1084c2(Context context, IAppSetIdRetriever iAppSetIdRetriever) {
        this.f19454a = context;
        this.f19455b = iAppSetIdRetriever;
        this.f19457d = new CountDownLatch(1);
        this.f19458e = 20L;
        this.f19459f = new C1059b2(this);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.identifiers.AppSetIdProvider
    public final synchronized AppSetId getAppSetId() {
        AppSetId appSetId;
        if (this.f19456c == null) {
            try {
                this.f19457d = new CountDownLatch(1);
                this.f19455b.retrieveAppSetId(this.f19454a, this.f19459f);
                this.f19457d.await(this.f19458e, TimeUnit.SECONDS);
            } catch (Throwable unused) {
            }
        }
        appSetId = this.f19456c;
        if (appSetId == null) {
            appSetId = new AppSetId(null, AppSetIdScope.UNKNOWN);
            this.f19456c = appSetId;
        }
        return appSetId;
    }

    public C1084c2(Context context) {
        this(context, AbstractC1109d2.a());
    }
}
