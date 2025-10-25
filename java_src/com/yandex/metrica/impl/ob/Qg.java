package com.yandex.metrica.impl.ob;

import android.net.Uri;
import android.text.TextUtils;
import com.yandex.metrica.networktasks.api.IParamsAppender;
import com.yandex.metrica.networktasks.api.NetworkTaskForSendingDataParamsAppender;
import com.yandex.metrica.networktasks.api.RequestBodyEncrypter;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
/* loaded from: classes2.dex */
public class Qg implements IParamsAppender {

    /* renamed from: a  reason: collision with root package name */
    private final Ng f11156a;

    /* renamed from: b  reason: collision with root package name */
    private final NetworkTaskForSendingDataParamsAppender f11157b;

    /* renamed from: c  reason: collision with root package name */
    private Ig f11158c;

    /* renamed from: d  reason: collision with root package name */
    private long f11159d;

    public Qg(RequestBodyEncrypter requestBodyEncrypter) {
        this(new Ng(), new NetworkTaskForSendingDataParamsAppender(requestBodyEncrypter));
    }

    public void a(Ig ig) {
        this.f11158c = ig;
    }

    @Override // com.yandex.metrica.networktasks.api.IParamsAppender
    public void appendParams(Uri.Builder builder, Object obj) {
        Lg lg = (Lg) obj;
        builder.path("report");
        this.f11157b.b(builder);
        Ig ig = this.f11158c;
        if (ig != null) {
            this.f11157b.a(builder, ig.f10421p, ig.f10411f);
            builder.appendQueryParameter(CommonUrlParts.DEVICE_ID, C0419b.a(this.f11158c.f10406a, lg.g()));
            builder.appendQueryParameter(CommonUrlParts.UUID, C0419b.a(this.f11158c.f10407b, lg.w()));
            a(builder, "analytics_sdk_version", this.f11158c.f10408c);
            a(builder, CommonUrlParts.ANALYTICS_SDK_VERSION_NAME, this.f11158c.f10409d);
            builder.appendQueryParameter(CommonUrlParts.APP_VERSION, C0419b.a(this.f11158c.f10412g, lg.f()));
            builder.appendQueryParameter(CommonUrlParts.APP_VERSION_CODE, C0419b.a(this.f11158c.f10414i, lg.b()));
            builder.appendQueryParameter(CommonUrlParts.OS_VERSION, C0419b.a(this.f11158c.f10415j, lg.o()));
            a(builder, CommonUrlParts.OS_API_LEVEL, this.f11158c.f10416k);
            a(builder, CommonUrlParts.ANALYTICS_SDK_BUILD_NUMBER, this.f11158c.f10410e);
            a(builder, CommonUrlParts.ANALYTICS_SDK_BUILD_TYPE, this.f11158c.f10411f);
            a(builder, "app_debuggable", this.f11158c.f10413h);
            builder.appendQueryParameter(CommonUrlParts.LOCALE, C0419b.a(this.f11158c.f10417l, lg.k()));
            builder.appendQueryParameter(CommonUrlParts.ROOT_STATUS, C0419b.a(this.f11158c.f10418m, lg.h()));
            builder.appendQueryParameter(CommonUrlParts.APP_FRAMEWORK, C0419b.a(this.f11158c.f10419n, lg.c()));
            a(builder, "attribution_id", this.f11158c.f10420o);
        }
        builder.appendQueryParameter("api_key_128", lg.B());
        builder.appendQueryParameter(CommonUrlParts.APP_ID, lg.p());
        builder.appendQueryParameter(CommonUrlParts.APP_PLATFORM, "android");
        builder.appendQueryParameter(CommonUrlParts.MODEL, lg.m());
        builder.appendQueryParameter(CommonUrlParts.MANUFACTURER, lg.l());
        builder.appendQueryParameter(CommonUrlParts.SCREEN_WIDTH, String.valueOf(lg.u()));
        builder.appendQueryParameter(CommonUrlParts.SCREEN_HEIGHT, String.valueOf(lg.t()));
        builder.appendQueryParameter(CommonUrlParts.SCREEN_DPI, String.valueOf(lg.s()));
        builder.appendQueryParameter(CommonUrlParts.SCALE_FACTOR, String.valueOf(lg.r()));
        builder.appendQueryParameter(CommonUrlParts.DEVICE_TYPE, lg.i());
        a(builder, "clids_set", lg.E());
        builder.appendQueryParameter(CommonUrlParts.APP_SET_ID, lg.d());
        builder.appendQueryParameter(CommonUrlParts.APP_SET_ID_SCOPE, lg.e());
        this.f11156a.appendParams(builder, lg.a());
        builder.appendQueryParameter(CommonUrlParts.REQUEST_ID, String.valueOf(this.f11159d));
    }

    Qg(Ng ng, NetworkTaskForSendingDataParamsAppender networkTaskForSendingDataParamsAppender) {
        this.f11156a = ng;
        this.f11157b = networkTaskForSendingDataParamsAppender;
    }

    public void a(long j10) {
        this.f11159d = j10;
    }

    private void a(Uri.Builder builder, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        builder.appendQueryParameter(str, str2);
    }
}
