.class public final Lio/appmetrica/analytics/impl/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/IParamsAppender;


# instance fields
.field public final a:Lio/appmetrica/analytics/networktasks/internal/AdvIdWithLimitedAppender;

.field public final b:Lio/appmetrica/analytics/networktasks/internal/NetworkTaskForSendingDataParamsAppender;

.field public c:Lio/appmetrica/analytics/impl/x7;

.field public final d:Lio/appmetrica/analytics/impl/Sb;

.field public e:J


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/networktasks/internal/AdvIdWithLimitedAppender;Lio/appmetrica/analytics/networktasks/internal/NetworkTaskForSendingDataParamsAppender;Lio/appmetrica/analytics/impl/Sb;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/ah;->a:Lio/appmetrica/analytics/networktasks/internal/AdvIdWithLimitedAppender;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/ah;->b:Lio/appmetrica/analytics/networktasks/internal/NetworkTaskForSendingDataParamsAppender;

    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/impl/ah;->d:Lio/appmetrica/analytics/impl/Sb;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;)V
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/networktasks/internal/AdvIdWithLimitedAppender;

    invoke-direct {v0}, Lio/appmetrica/analytics/networktasks/internal/AdvIdWithLimitedAppender;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/networktasks/internal/NetworkTaskForSendingDataParamsAppender;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/networktasks/internal/NetworkTaskForSendingDataParamsAppender;-><init>(Lio/appmetrica/analytics/networktasks/internal/RequestBodyEncrypter;)V

    new-instance p1, Lio/appmetrica/analytics/impl/Sb;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Sb;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lio/appmetrica/analytics/impl/ah;-><init>(Lio/appmetrica/analytics/networktasks/internal/AdvIdWithLimitedAppender;Lio/appmetrica/analytics/networktasks/internal/NetworkTaskForSendingDataParamsAppender;Lio/appmetrica/analytics/impl/Sb;)V

    return-void
.end method

.method public static a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lio/appmetrica/analytics/impl/ah;->e:J

    return-void
.end method

.method public final a(Landroid/net/Uri$Builder;Lio/appmetrica/analytics/impl/lh;)V
    .locals 2

    const-string v0, "report"

    .line 3
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ah;->b:Lio/appmetrica/analytics/networktasks/internal/NetworkTaskForSendingDataParamsAppender;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/networktasks/internal/NetworkTaskForSendingDataParamsAppender;->appendEncryptedData(Landroid/net/Uri$Builder;)V

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/x7;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, v0, Lio/appmetrica/analytics/impl/x7;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->ifIsEmptyToDef(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceid"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/x7;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/x7;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->ifIsEmptyToDef(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uuid"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/x7;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/x7;->c:Ljava/lang/String;

    const-string v1, "analytics_sdk_version_name"

    invoke-static {p1, v1, v0}, Lio/appmetrica/analytics/impl/ah;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/x7;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/x7;->f:Ljava/lang/String;

    .line 16
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->ifIsEmptyToDef(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_version_name"

    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 19
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/x7;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/x7;->h:Ljava/lang/String;

    .line 20
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppBuildNumber()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->ifIsEmptyToDef(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_build_number"

    .line 22
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 23
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/x7;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/x7;->i:Ljava/lang/String;

    .line 24
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->ifIsEmptyToDef(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "os_version"

    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 27
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/x7;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/x7;->j:Ljava/lang/String;

    const-string v1, "os_api_level"

    invoke-static {p1, v1, v0}, Lio/appmetrica/analytics/impl/ah;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/x7;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/x7;->d:Ljava/lang/String;

    const-string v1, "analytics_sdk_build_number"

    invoke-static {p1, v1, v0}, Lio/appmetrica/analytics/impl/ah;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/x7;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/x7;->e:Ljava/lang/String;

    const-string v1, "analytics_sdk_build_type"

    invoke-static {p1, v1, v0}, Lio/appmetrica/analytics/impl/ah;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/x7;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/x7;->g:Ljava/lang/String;

    const-string v1, "app_debuggable"

    invoke-static {p1, v1, v0}, Lio/appmetrica/analytics/impl/ah;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/x7;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/x7;->k:Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getLocale()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->ifIsEmptyToDef(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "locale"

    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 35
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/x7;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/x7;->l:Ljava/lang/String;

    .line 36
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getDeviceRootStatus()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->ifIsEmptyToDef(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_rooted"

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 39
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/x7;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/x7;->m:Ljava/lang/String;

    .line 40
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppFramework()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->ifIsEmptyToDef(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_framework"

    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 43
    iget-object v0, p0, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/x7;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/x7;->n:Ljava/lang/String;

    const-string v1, "attribution_id"

    invoke-static {p1, v1, v0}, Lio/appmetrica/analytics/impl/ah;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    iget-object v0, p2, Lio/appmetrica/analytics/impl/lh;->m:Ljava/lang/String;

    const-string v1, "api_key_128"

    .line 45
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 46
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_id"

    .line 47
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 48
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppPlatform()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_platform"

    .line 49
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "model"

    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 52
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manufacturer"

    .line 53
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getScreenWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_width"

    .line 55
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getScreenHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_height"

    .line 57
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getScreenDpi()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_dpi"

    .line 59
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getScaleFactor()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "scalefactor"

    .line 61
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 62
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_type"

    .line 63
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 64
    iget-object v0, p2, Lio/appmetrica/analytics/impl/lh;->p:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "clids_set"

    .line 65
    invoke-static {p1, v1, v0}, Lio/appmetrica/analytics/impl/ah;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppSetId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_set_id"

    .line 67
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 68
    invoke-virtual {p2}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppSetIdScope()Ljava/lang/String;

    move-result-object p2

    const-string v0, "app_set_id_scope"

    .line 69
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 70
    iget-object p2, p0, Lio/appmetrica/analytics/impl/ah;->a:Lio/appmetrica/analytics/networktasks/internal/AdvIdWithLimitedAppender;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/ah;->d:Lio/appmetrica/analytics/impl/Sb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 72
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->b()Lio/appmetrica/analytics/impl/O;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/O;->getIdentifiers()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    move-result-object v0

    .line 73
    invoke-virtual {p2, p1, v0}, Lio/appmetrica/analytics/networktasks/internal/AdvIdWithLimitedAppender;->appendParams(Landroid/net/Uri$Builder;Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;)V

    .line 74
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/ah;->e:J

    .line 75
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "request_id"

    .line 76
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/x7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/ah;->c:Lio/appmetrica/analytics/impl/x7;

    return-void
.end method

.method public final bridge synthetic appendParams(Landroid/net/Uri$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lio/appmetrica/analytics/impl/lh;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/ah;->a(Landroid/net/Uri$Builder;Lio/appmetrica/analytics/impl/lh;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
