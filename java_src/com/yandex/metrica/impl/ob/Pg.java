package com.yandex.metrica.impl.ob;

import android.net.Uri;
import com.yandex.metrica.networktasks.api.IParamsAppender;
import com.yandex.metrica.networktasks.api.NetworkTaskForSendingDataParamsAppender;
import com.yandex.metrica.networktasks.api.RequestBodyEncrypter;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
/* loaded from: classes2.dex */
public class Pg implements IParamsAppender {

    /* renamed from: a  reason: collision with root package name */
    private final Ng f11107a;

    /* renamed from: b  reason: collision with root package name */
    private final NetworkTaskForSendingDataParamsAppender f11108b;

    /* renamed from: c  reason: collision with root package name */
    private long f11109c;

    public Pg(RequestBodyEncrypter requestBodyEncrypter) {
        this(new Ng(), new NetworkTaskForSendingDataParamsAppender(requestBodyEncrypter));
    }

    public void a(long j10) {
        this.f11109c = j10;
    }

    @Override // com.yandex.metrica.networktasks.api.IParamsAppender
    public void appendParams(Uri.Builder builder, Object obj) {
        C0558gd c0558gd = (C0558gd) obj;
        this.f11108b.b(builder);
        NetworkTaskForSendingDataParamsAppender networkTaskForSendingDataParamsAppender = this.f11108b;
        c0558gd.getClass();
        networkTaskForSendingDataParamsAppender.a(builder, "a72bf6f57701ed3c2b8ed570054febbff4e58c12", c0558gd.j());
        builder.appendPath("location");
        builder.appendQueryParameter(CommonUrlParts.DEVICE_ID, c0558gd.g());
        builder.appendQueryParameter(CommonUrlParts.DEVICE_TYPE, c0558gd.i());
        builder.appendQueryParameter(CommonUrlParts.UUID, c0558gd.w());
        builder.appendQueryParameter(CommonUrlParts.ANALYTICS_SDK_VERSION_NAME, "5.3.0");
        builder.appendQueryParameter(CommonUrlParts.ANALYTICS_SDK_BUILD_NUMBER, "45003240");
        builder.appendQueryParameter(CommonUrlParts.ANALYTICS_SDK_BUILD_TYPE, c0558gd.j());
        builder.appendQueryParameter(CommonUrlParts.APP_VERSION, c0558gd.f());
        builder.appendQueryParameter(CommonUrlParts.APP_VERSION_CODE, c0558gd.b());
        builder.appendQueryParameter(CommonUrlParts.OS_VERSION, c0558gd.o());
        builder.appendQueryParameter(CommonUrlParts.OS_API_LEVEL, String.valueOf(c0558gd.n()));
        builder.appendQueryParameter(CommonUrlParts.ROOT_STATUS, c0558gd.h());
        builder.appendQueryParameter(CommonUrlParts.APP_FRAMEWORK, c0558gd.c());
        builder.appendQueryParameter(CommonUrlParts.APP_ID, c0558gd.p());
        builder.appendQueryParameter(CommonUrlParts.APP_PLATFORM, "android");
        builder.appendQueryParameter(CommonUrlParts.REQUEST_ID, String.valueOf(this.f11109c));
        builder.appendQueryParameter(CommonUrlParts.APP_SET_ID, c0558gd.d());
        builder.appendQueryParameter(CommonUrlParts.APP_SET_ID_SCOPE, c0558gd.e());
        this.f11107a.appendParams(builder, c0558gd.a());
    }

    Pg(Ng ng, NetworkTaskForSendingDataParamsAppender networkTaskForSendingDataParamsAppender) {
        this.f11107a = ng;
        this.f11108b = networkTaskForSendingDataParamsAppender;
    }
}
