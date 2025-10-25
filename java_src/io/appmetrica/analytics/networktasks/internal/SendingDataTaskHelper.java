package io.appmetrica.analytics.networktasks.internal;

import io.appmetrica.analytics.coreapi.internal.io.Compressor;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.coreutils.internal.time.TimeProvider;
import io.appmetrica.analytics.networktasks.internal.DefaultResponseParser;
import java.io.IOException;
/* loaded from: classes2.dex */
public class SendingDataTaskHelper {

    /* renamed from: a  reason: collision with root package name */
    private final RequestBodyEncrypter f21305a;

    /* renamed from: b  reason: collision with root package name */
    private final Compressor f21306b;

    /* renamed from: c  reason: collision with root package name */
    private final TimeProvider f21307c;

    /* renamed from: d  reason: collision with root package name */
    private final RequestDataHolder f21308d;

    /* renamed from: e  reason: collision with root package name */
    private final ResponseDataHolder f21309e;

    /* renamed from: f  reason: collision with root package name */
    private final NetworkResponseHandler f21310f;

    public SendingDataTaskHelper(RequestBodyEncrypter requestBodyEncrypter, Compressor compressor, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, NetworkResponseHandler<DefaultResponseParser.Response> networkResponseHandler) {
        this(requestBodyEncrypter, compressor, new SystemTimeProvider(), requestDataHolder, responseDataHolder, networkResponseHandler);
    }

    public boolean isResponseValid() {
        DefaultResponseParser.Response response = (DefaultResponseParser.Response) this.f21310f.handle(this.f21309e);
        if (response != null && "accepted".equals(response.mStatus)) {
            return true;
        }
        return false;
    }

    public void onPerformRequest() {
        this.f21308d.applySendTime(this.f21307c.currentTimeMillis());
    }

    public boolean prepareAndSetPostData(byte[] bArr) {
        byte[] encrypt;
        try {
            byte[] compress = this.f21306b.compress(bArr);
            if (compress == null || (encrypt = this.f21305a.encrypt(compress)) == null) {
                return false;
            }
            this.f21308d.setPostData(encrypt);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public SendingDataTaskHelper(RequestBodyEncrypter requestBodyEncrypter, Compressor compressor, TimeProvider timeProvider, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, NetworkResponseHandler<DefaultResponseParser.Response> networkResponseHandler) {
        this.f21305a = requestBodyEncrypter;
        this.f21306b = compressor;
        this.f21307c = timeProvider;
        this.f21308d = requestDataHolder;
        this.f21309e = responseDataHolder;
        this.f21310f = networkResponseHandler;
    }
}
