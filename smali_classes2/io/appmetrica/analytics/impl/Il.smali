.class public final Lio/appmetrica/analytics/impl/Il;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/IParamsAppender;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/fe;

.field public final b:Lio/appmetrica/analytics/impl/vd;

.field public final c:Lio/appmetrica/analytics/impl/Sb;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/fe;Lio/appmetrica/analytics/impl/vd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Il;->b:Lio/appmetrica/analytics/impl/vd;

    .line 7
    .line 8
    new-instance p1, Lio/appmetrica/analytics/impl/Sb;

    .line 9
    .line 10
    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Sb;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Il;->c:Lio/appmetrica/analytics/impl/Sb;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri$Builder;Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;Lio/appmetrica/analytics/impl/Sb;)V
    .locals 5

    .line 132
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    sget-object p3, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 134
    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/za;->b()Lio/appmetrica/analytics/impl/O;

    move-result-object p3

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/O;->getIdentifiers()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    move-result-object p3

    const-string v0, "yandex_adv_id"

    const-string v1, "oaid"

    const-string v2, "adv_id"

    const-string v3, ""

    if-eqz p3, :cond_4

    .line 135
    invoke-interface {p2}, Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;->isRestrictedForReporter()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    .line 136
    :cond_0
    invoke-virtual {p3}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getGoogle()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object p2

    .line 137
    invoke-virtual {p2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 138
    iget-object p2, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    invoke-virtual {p2, v2}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 139
    :cond_1
    iget-object v4, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    .line 140
    invoke-virtual {v4, v2}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    iget-object p2, p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    .line 141
    invoke-virtual {p1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 142
    :goto_0
    invoke-virtual {p3}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getHuawei()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object p2

    .line 143
    invoke-virtual {p2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 144
    iget-object p2, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    invoke-virtual {p2, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 145
    :cond_2
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    .line 146
    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p2, p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    iget-object p2, p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    .line 147
    invoke-virtual {p1, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 148
    :goto_1
    invoke-virtual {p3}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object p2

    .line 149
    invoke-virtual {p2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->isValid()Z

    move-result p3

    if-nez p3, :cond_3

    .line 150
    iget-object p2, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    invoke-virtual {p2, v0}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    .line 151
    :cond_3
    iget-object p3, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    .line 152
    invoke-virtual {p3, v0}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object p2, p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    iget-object p2, p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    .line 153
    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    .line 154
    :cond_4
    :goto_2
    iget-object p2, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    .line 155
    invoke-virtual {p2, v2}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 156
    invoke-virtual {p1, p2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 157
    iget-object p2, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    .line 158
    invoke-virtual {p2, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 159
    invoke-virtual {p1, p2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 160
    iget-object p2, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    .line 161
    invoke-virtual {p2, v0}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 162
    invoke-virtual {p1, p2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_3
    return-void
.end method

.method public final a(Landroid/net/Uri$Builder;Lio/appmetrica/analytics/impl/Ml;)V
    .locals 12

    const-string v0, "analytics/startup"

    .line 1
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v1, "deviceid"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 6
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->g()Lio/appmetrica/analytics/impl/P6;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Il;->c:Lio/appmetrica/analytics/impl/Sb;

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Lio/appmetrica/analytics/impl/Il;->a(Landroid/net/Uri$Builder;Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;Lio/appmetrica/analytics/impl/Sb;)V

    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v1, "app_set_id"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppSetId()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v1, "app_set_id_scope"

    .line 12
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppSetIdScope()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 15
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v1, "app_platform"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppPlatform()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 18
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v1, "protocol_version"

    .line 19
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getProtocolVersion()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 22
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v1, "analytics_sdk_version_name"

    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAnalyticsSdkVersionName()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 26
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v1, "model"

    .line 27
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getModel()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 30
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v1, "manufacturer"

    .line 31
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 34
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v1, "os_version"

    .line 35
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 38
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v1, "screen_width"

    .line 39
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getScreenWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 42
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v1, "screen_height"

    .line 43
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getScreenHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 46
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v1, "screen_dpi"

    .line 47
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getScreenDpi()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v1, "scalefactor"

    .line 51
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getScaleFactor()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v1, "locale"

    .line 55
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getLocale()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v1, "device_type"

    .line 59
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 62
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v1, "queries"

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 63
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v2, "query_hosts"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 64
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v3, "features"

    invoke-virtual {v0, v3}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Il;->b:Lio/appmetrica/analytics/impl/vd;

    .line 65
    check-cast v3, Lio/appmetrica/analytics/impl/kk;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/kk;->h()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v5, "permissions_collecting"

    .line 66
    invoke-virtual {v4, v5}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v7, "features_collecting"

    .line 67
    invoke-virtual {v4, v7}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v8, "google_aid"

    .line 68
    invoke-virtual {v4, v8}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v9, "huawei_oaid"

    .line 69
    invoke-virtual {v4, v9}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v10, "sim_info"

    .line 70
    invoke-virtual {v4, v10}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v11, "ssl_pinning"

    .line 71
    invoke-virtual {v4, v11}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v4

    .line 72
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 74
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 75
    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->wrapFeatures([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {p1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 77
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v3, "app_id"

    .line 78
    invoke-virtual {v0, v3}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {p1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 81
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v3, "app_debuggable"

    .line 82
    invoke-virtual {v0, v3}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v3, p2, Lio/appmetrica/analytics/impl/c6;->a:Ljava/lang/String;

    .line 84
    invoke-virtual {p1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 85
    iget-boolean v0, p2, Lio/appmetrica/analytics/impl/Ml;->l:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p2, Lio/appmetrica/analytics/impl/Ml;->m:Ljava/lang/String;

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v4, "country_init"

    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v3, "detect_locale"

    invoke-virtual {v0, v3}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 90
    :cond_1
    :goto_0
    iget-object v0, p2, Lio/appmetrica/analytics/impl/Ml;->i:Lio/appmetrica/analytics/impl/J3;

    .line 91
    iget-object v3, v0, Lio/appmetrica/analytics/impl/J3;->a:Ljava/util/Map;

    .line 92
    invoke-static {v3}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 93
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v4, "distribution_customization"

    .line 94
    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-virtual {p1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 96
    iget-object v3, v0, Lio/appmetrica/analytics/impl/J3;->a:Ljava/util/Map;

    .line 97
    invoke-static {v3}, Lio/appmetrica/analytics/impl/rm;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 98
    iget-object v4, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v6, "clids_set"

    invoke-virtual {v4, v6}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 99
    iget-object v0, v0, Lio/appmetrica/analytics/impl/J3;->b:Lio/appmetrica/analytics/impl/b8;

    .line 100
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, "retail"

    goto :goto_1

    :cond_3
    const-string v0, "satellite"

    goto :goto_1

    :cond_4
    const-string v0, "api"

    .line 101
    :goto_1
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v3, "clids_set_source"

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 102
    iget-object v0, p2, Lio/appmetrica/analytics/impl/Ml;->f:Ljava/lang/String;

    .line 103
    iget-object v2, p2, Lio/appmetrica/analytics/impl/Ml;->g:Ljava/lang/String;

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 105
    iget-object v3, p2, Lio/appmetrica/analytics/impl/Ml;->o:Lio/appmetrica/analytics/impl/jg;

    .line 106
    iget-object v3, v3, Lio/appmetrica/analytics/impl/jg;->b:Lio/appmetrica/analytics/impl/lg;

    if-eqz v3, :cond_5

    .line 107
    iget-object v0, v3, Lio/appmetrica/analytics/impl/lg;->a:Ljava/lang/String;

    .line 108
    iget-object v2, v3, Lio/appmetrica/analytics/impl/lg;->d:Lio/appmetrica/analytics/impl/kg;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/kg;->a:Ljava/lang/String;

    .line 109
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 110
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v4, "install_referrer"

    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-nez v2, :cond_6

    const-string v2, "null"

    .line 111
    :cond_6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v3, "install_referrer_source"

    .line 112
    invoke-virtual {v0, v3}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {p1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 114
    :cond_7
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 116
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v3, "uuid"

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 117
    :cond_8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v2, "time"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 118
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v2, "stat_sending"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 119
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v2, "retry_policy"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v2, "cache_control"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 121
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    invoke-virtual {v0, v5}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 122
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v2, "app_system_flag"

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object p2, p2, Lio/appmetrica/analytics/impl/c6;->b:Ljava/lang/String;

    .line 124
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 125
    iget-object p2, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v0, "auto_inapp_collecting"

    invoke-virtual {p2, v0}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 126
    iget-object p2, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v0, "attribution"

    invoke-virtual {p2, v0}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 127
    iget-object p2, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v0, "startup_update"

    invoke-virtual {p2, v0}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 128
    iget-object p2, p0, Lio/appmetrica/analytics/impl/Il;->a:Lio/appmetrica/analytics/impl/fe;

    const-string v0, "external_attribution"

    invoke-virtual {p2, v0}, Lio/appmetrica/analytics/impl/fe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 129
    iget-object p2, p0, Lio/appmetrica/analytics/impl/Il;->b:Lio/appmetrica/analytics/impl/vd;

    check-cast p2, Lio/appmetrica/analytics/impl/kk;

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/kk;->d()Ljava/util/Map;

    move-result-object p2

    .line 130
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    :cond_9
    return-void
.end method

.method public final bridge synthetic appendParams(Landroid/net/Uri$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lio/appmetrica/analytics/impl/Ml;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Il;->a(Landroid/net/Uri$Builder;Lio/appmetrica/analytics/impl/Ml;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
