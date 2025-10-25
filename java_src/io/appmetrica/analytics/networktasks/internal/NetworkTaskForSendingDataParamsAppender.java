package io.appmetrica.analytics.networktasks.internal;

import android.net.Uri;
/* loaded from: classes2.dex */
public class NetworkTaskForSendingDataParamsAppender {

    /* renamed from: a  reason: collision with root package name */
    private final RequestBodyEncrypter f21294a;

    public NetworkTaskForSendingDataParamsAppender(RequestBodyEncrypter requestBodyEncrypter) {
        this.f21294a = requestBodyEncrypter;
    }

    public void appendEncryptedData(Uri.Builder builder) {
        if (this.f21294a.getEncryptionMode() == RequestBodyEncryptionMode.AES_RSA) {
            builder.appendQueryParameter(CommonUrlParts.ENCRYPTED_REQUEST, "1");
        }
    }
}
