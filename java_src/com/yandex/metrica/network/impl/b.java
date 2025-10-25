package com.yandex.metrica.network.impl;

import javax.net.ssl.HttpsURLConnection;
import kotlin.jvm.internal.n;
/* loaded from: classes2.dex */
final class b extends n implements id.a {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ HttpsURLConnection f14156e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(HttpsURLConnection httpsURLConnection) {
        super(0);
        this.f14156e = httpsURLConnection;
    }

    @Override // id.a
    public Object invoke() {
        return this.f14156e.getErrorStream();
    }
}
