package io.appmetrica.analytics.network.impl;

import javax.net.ssl.HttpsURLConnection;
import kotlin.jvm.internal.n;
/* loaded from: classes2.dex */
public final class a extends n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ HttpsURLConnection f21217a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(HttpsURLConnection httpsURLConnection) {
        super(0);
        this.f21217a = httpsURLConnection;
    }

    @Override // id.a
    public final Object invoke() {
        return this.f21217a.getInputStream();
    }
}
