package io.appmetrica.analytics.network.impl;

import javax.net.ssl.HttpsURLConnection;
import kotlin.jvm.internal.n;
/* loaded from: classes2.dex */
public final class b extends n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ HttpsURLConnection f21218a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(HttpsURLConnection httpsURLConnection) {
        super(0);
        this.f21218a = httpsURLConnection;
    }

    @Override // id.a
    public final Object invoke() {
        return this.f21218a.getErrorStream();
    }
}
