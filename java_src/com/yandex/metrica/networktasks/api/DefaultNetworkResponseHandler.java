package com.yandex.metrica.networktasks.api;

import com.yandex.metrica.networktasks.api.DefaultResponseParser;
/* loaded from: classes2.dex */
public class DefaultNetworkResponseHandler implements NetworkResponseHandler {

    /* renamed from: a  reason: collision with root package name */
    private final DefaultResponseParser f14163a;

    public DefaultNetworkResponseHandler() {
        this(new DefaultResponseParser());
    }

    @Override // com.yandex.metrica.networktasks.api.NetworkResponseHandler
    /* renamed from: a */
    public DefaultResponseParser.Response handle(ResponseDataHolder responseDataHolder) {
        if (200 == responseDataHolder.a()) {
            return this.f14163a.a(responseDataHolder.b());
        }
        return null;
    }

    DefaultNetworkResponseHandler(DefaultResponseParser defaultResponseParser) {
        this.f14163a = defaultResponseParser;
    }
}
