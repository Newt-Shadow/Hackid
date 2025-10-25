package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
/* loaded from: classes2.dex */
public final class lo implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Throwable f20066a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f20067b = "WebView interface setup failed because of an exception.";

    public lo(Throwable th) {
        this.f20066a = th;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.Consumer
    public final void consume(Object obj) {
        ((PublicLogger) obj).error(this.f20066a, this.f20067b, new Object[0]);
    }
}
