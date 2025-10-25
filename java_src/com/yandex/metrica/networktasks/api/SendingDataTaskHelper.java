package com.yandex.metrica.networktasks.api;

import com.yandex.metrica.networktasks.api.DefaultResponseParser;
import com.yandex.metrica.networktasks.impl.h;
import java.io.IOException;
/* loaded from: classes2.dex */
public class SendingDataTaskHelper {

    /* renamed from: a  reason: collision with root package name */
    private final RequestBodyEncrypter f14207a;

    /* renamed from: b  reason: collision with root package name */
    private final Compressor f14208b;

    /* renamed from: c  reason: collision with root package name */
    private final h f14209c;

    /* renamed from: d  reason: collision with root package name */
    private final RequestDataHolder f14210d;

    /* renamed from: e  reason: collision with root package name */
    private final ResponseDataHolder f14211e;

    /* renamed from: f  reason: collision with root package name */
    private final NetworkResponseHandler f14212f;

    public SendingDataTaskHelper(RequestBodyEncrypter requestBodyEncrypter, Compressor compressor, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, NetworkResponseHandler networkResponseHandler) {
        this(requestBodyEncrypter, compressor, new h(), requestDataHolder, responseDataHolder, networkResponseHandler);
    }

    public boolean a() {
        DefaultResponseParser.Response response = (DefaultResponseParser.Response) this.f14212f.handle(this.f14211e);
        return response != null && "accepted".equals(response.f14164a);
    }

    public void b() {
        RequestDataHolder requestDataHolder = this.f14210d;
        this.f14209c.getClass();
        requestDataHolder.a(System.currentTimeMillis());
    }

    public boolean c(byte[] bArr) {
        byte[] encrypt;
        try {
            byte[] compress = this.f14208b.compress(bArr);
            if (compress == null || (encrypt = this.f14207a.encrypt(compress)) == null) {
                return false;
            }
            this.f14210d.h(encrypt);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public SendingDataTaskHelper(RequestBodyEncrypter requestBodyEncrypter, Compressor compressor, h hVar, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, NetworkResponseHandler networkResponseHandler) {
        this.f14207a = requestBodyEncrypter;
        this.f14208b = compressor;
        this.f14209c = hVar;
        this.f14210d = requestDataHolder;
        this.f14211e = responseDataHolder;
        this.f14212f = networkResponseHandler;
    }
}
