package io.appmetrica.analytics.impl;

import android.net.Uri;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.networktasks.internal.AdvIdWithLimitedAppender;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.appmetrica.analytics.networktasks.internal.IParamsAppender;
import io.appmetrica.analytics.networktasks.internal.NetworkTaskForSendingDataParamsAppender;
import io.appmetrica.analytics.networktasks.internal.RequestBodyEncrypter;
/* renamed from: io.appmetrica.analytics.impl.ah  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1049ah implements IParamsAppender {

    /* renamed from: a  reason: collision with root package name */
    public final AdvIdWithLimitedAppender f19391a;

    /* renamed from: b  reason: collision with root package name */
    public final NetworkTaskForSendingDataParamsAppender f19392b;

    /* renamed from: c  reason: collision with root package name */
    public C1612x7 f19393c;

    /* renamed from: d  reason: collision with root package name */
    public final Sb f19394d;

    /* renamed from: e  reason: collision with root package name */
    public long f19395e;

    public C1049ah(RequestBodyEncrypter requestBodyEncrypter) {
        this(new AdvIdWithLimitedAppender(), new NetworkTaskForSendingDataParamsAppender(requestBodyEncrypter), new Sb());
    }

    public final void a(C1612x7 c1612x7) {
        this.f19393c = c1612x7;
    }

    public C1049ah(AdvIdWithLimitedAppender advIdWithLimitedAppender, NetworkTaskForSendingDataParamsAppender networkTaskForSendingDataParamsAppender, Sb sb2) {
        this.f19391a = advIdWithLimitedAppender;
        this.f19392b = networkTaskForSendingDataParamsAppender;
        this.f19394d = sb2;
    }

    public final void a(long j10) {
        this.f19395e = j10;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.IParamsAppender
    /* renamed from: a */
    public final void appendParams(Uri.Builder builder, C1323lh c1323lh) {
        builder.path("report");
        this.f19392b.appendEncryptedData(builder);
        C1612x7 c1612x7 = this.f19393c;
        if (c1612x7 != null) {
            builder.appendQueryParameter(CommonUrlParts.DEVICE_ID, StringUtils.ifIsEmptyToDef(c1612x7.f20905a, c1323lh.getDeviceId()));
            builder.appendQueryParameter(CommonUrlParts.UUID, StringUtils.ifIsEmptyToDef(this.f19393c.f20906b, c1323lh.getUuid()));
            a(builder, CommonUrlParts.ANALYTICS_SDK_VERSION_NAME, this.f19393c.f20907c);
            builder.appendQueryParameter(CommonUrlParts.APP_VERSION, StringUtils.ifIsEmptyToDef(this.f19393c.f20910f, c1323lh.getAppVersion()));
            builder.appendQueryParameter(CommonUrlParts.APP_VERSION_CODE, StringUtils.ifIsEmptyToDef(this.f19393c.f20912h, c1323lh.getAppBuildNumber()));
            builder.appendQueryParameter(CommonUrlParts.OS_VERSION, StringUtils.ifIsEmptyToDef(this.f19393c.f20913i, c1323lh.getOsVersion()));
            a(builder, CommonUrlParts.OS_API_LEVEL, this.f19393c.f20914j);
            a(builder, CommonUrlParts.ANALYTICS_SDK_BUILD_NUMBER, this.f19393c.f20908d);
            a(builder, CommonUrlParts.ANALYTICS_SDK_BUILD_TYPE, this.f19393c.f20909e);
            a(builder, "app_debuggable", this.f19393c.f20911g);
            builder.appendQueryParameter(CommonUrlParts.LOCALE, StringUtils.ifIsEmptyToDef(this.f19393c.f20915k, c1323lh.getLocale()));
            builder.appendQueryParameter(CommonUrlParts.ROOT_STATUS, StringUtils.ifIsEmptyToDef(this.f19393c.f20916l, c1323lh.getDeviceRootStatus()));
            builder.appendQueryParameter(CommonUrlParts.APP_FRAMEWORK, StringUtils.ifIsEmptyToDef(this.f19393c.f20917m, c1323lh.getAppFramework()));
            a(builder, "attribution_id", this.f19393c.f20918n);
        }
        builder.appendQueryParameter("api_key_128", c1323lh.f20046m);
        builder.appendQueryParameter(CommonUrlParts.APP_ID, c1323lh.getPackageName());
        builder.appendQueryParameter(CommonUrlParts.APP_PLATFORM, c1323lh.getAppPlatform());
        builder.appendQueryParameter(CommonUrlParts.MODEL, c1323lh.getModel());
        builder.appendQueryParameter(CommonUrlParts.MANUFACTURER, c1323lh.getManufacturer());
        builder.appendQueryParameter(CommonUrlParts.SCREEN_WIDTH, String.valueOf(c1323lh.getScreenWidth()));
        builder.appendQueryParameter(CommonUrlParts.SCREEN_HEIGHT, String.valueOf(c1323lh.getScreenHeight()));
        builder.appendQueryParameter(CommonUrlParts.SCREEN_DPI, String.valueOf(c1323lh.getScreenDpi()));
        builder.appendQueryParameter(CommonUrlParts.SCALE_FACTOR, String.valueOf(c1323lh.getScaleFactor()));
        builder.appendQueryParameter(CommonUrlParts.DEVICE_TYPE, c1323lh.getDeviceType());
        a(builder, "clids_set", (String) WrapUtils.getOrDefault(c1323lh.f20049p, ""));
        builder.appendQueryParameter(CommonUrlParts.APP_SET_ID, c1323lh.getAppSetId());
        builder.appendQueryParameter(CommonUrlParts.APP_SET_ID_SCOPE, c1323lh.getAppSetIdScope());
        AdvIdWithLimitedAppender advIdWithLimitedAppender = this.f19391a;
        this.f19394d.getClass();
        advIdWithLimitedAppender.appendParams(builder, C1665za.E.b().getIdentifiers());
        builder.appendQueryParameter(CommonUrlParts.REQUEST_ID, String.valueOf(this.f19395e));
    }

    public static void a(Uri.Builder builder, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        builder.appendQueryParameter(str, str2);
    }
}
