package com.yandex.metrica.impl.ob;

import android.net.Uri;
import android.text.TextUtils;
import com.yandex.metrica.networktasks.api.IParamsAppender;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.apache.tika.metadata.ClimateForcast;
/* loaded from: classes2.dex */
public class Og implements IParamsAppender {
    @Override // com.yandex.metrica.networktasks.api.IParamsAppender
    public void appendParams(Uri.Builder builder, Object obj) {
        D4 d42 = (D4) obj;
        builder.appendPath("diagnostic");
        builder.appendQueryParameter(CommonUrlParts.DEVICE_ID, d42.g());
        builder.appendQueryParameter(CommonUrlParts.UUID, d42.w());
        builder.appendQueryParameter(CommonUrlParts.APP_PLATFORM, "android");
        builder.appendQueryParameter(CommonUrlParts.ANALYTICS_SDK_VERSION_NAME, "5.3.0");
        builder.appendQueryParameter(CommonUrlParts.ANALYTICS_SDK_BUILD_NUMBER, "45003240");
        builder.appendQueryParameter(CommonUrlParts.ANALYTICS_SDK_BUILD_TYPE, d42.j());
        if (d42.j().contains(ClimateForcast.SOURCE) && !TextUtils.isEmpty("a72bf6f57701ed3c2b8ed570054febbff4e58c12")) {
            builder.appendQueryParameter("commit_hash", "a72bf6f57701ed3c2b8ed570054febbff4e58c12");
        }
        builder.appendQueryParameter(CommonUrlParts.APP_VERSION, d42.f());
        builder.appendQueryParameter(CommonUrlParts.APP_VERSION_CODE, d42.b());
        builder.appendQueryParameter(CommonUrlParts.MODEL, d42.m());
        builder.appendQueryParameter(CommonUrlParts.MANUFACTURER, d42.l());
        builder.appendQueryParameter(CommonUrlParts.OS_VERSION, d42.o());
        builder.appendQueryParameter(CommonUrlParts.OS_API_LEVEL, String.valueOf(d42.n()));
        builder.appendQueryParameter(CommonUrlParts.SCREEN_WIDTH, String.valueOf(d42.u()));
        builder.appendQueryParameter(CommonUrlParts.SCREEN_HEIGHT, String.valueOf(d42.t()));
        builder.appendQueryParameter(CommonUrlParts.SCREEN_DPI, String.valueOf(d42.s()));
        builder.appendQueryParameter(CommonUrlParts.SCALE_FACTOR, String.valueOf(d42.r()));
        builder.appendQueryParameter(CommonUrlParts.LOCALE, d42.k());
        builder.appendQueryParameter(CommonUrlParts.DEVICE_TYPE, d42.i());
        builder.appendQueryParameter(CommonUrlParts.APP_ID, d42.p());
        builder.appendQueryParameter("api_key_128", d42.B());
        builder.appendQueryParameter("app_debuggable", d42.z());
        builder.appendQueryParameter(CommonUrlParts.ROOT_STATUS, d42.h());
        builder.appendQueryParameter(CommonUrlParts.APP_FRAMEWORK, d42.c());
    }
}
