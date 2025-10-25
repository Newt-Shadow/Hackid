package com.yandex.metrica.networktasks.api;

import android.net.Uri;
import android.text.TextUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.apache.tika.metadata.ClimateForcast;
/* loaded from: classes2.dex */
public class NetworkTaskForSendingDataParamsAppender {

    /* renamed from: a  reason: collision with root package name */
    private final RequestBodyEncrypter f14192a;

    public NetworkTaskForSendingDataParamsAppender(RequestBodyEncrypter requestBodyEncrypter) {
        this.f14192a = requestBodyEncrypter;
    }

    public void a(Uri.Builder builder, String str, String str2) {
        if (str2 == null || !str2.contains(ClimateForcast.SOURCE) || TextUtils.isEmpty(str)) {
            return;
        }
        builder.appendQueryParameter("commit_hash", str);
    }

    public void b(Uri.Builder builder) {
        if (this.f14192a.getEncryptionMode() == RequestBodyEncryptionMode.AES_RSA) {
            builder.appendQueryParameter(CommonUrlParts.ENCRYPTED_REQUEST, "1");
        }
    }
}
