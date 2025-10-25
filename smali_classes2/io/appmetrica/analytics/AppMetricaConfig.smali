.class public Lio/appmetrica/analytics/AppMetricaConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/AppMetricaConfig$Builder;
    }
.end annotation


# instance fields
.field public final additionalConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final advIdentifiersTracking:Ljava/lang/Boolean;

.field public final anrMonitoring:Ljava/lang/Boolean;

.field public final anrMonitoringTimeout:Ljava/lang/Integer;

.field public final apiKey:Ljava/lang/String;

.field public final appBuildNumber:Ljava/lang/Integer;

.field public final appEnvironment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final appOpenTrackingEnabled:Ljava/lang/Boolean;

.field public final appVersion:Ljava/lang/String;

.field public final crashReporting:Ljava/lang/Boolean;

.field public final crashTransformer:Lio/appmetrica/analytics/ICrashTransformer;

.field public final customHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final dataSendingEnabled:Ljava/lang/Boolean;

.field public final deviceType:Ljava/lang/String;

.field public final dispatchPeriodSeconds:Ljava/lang/Integer;

.field public final errorEnvironment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final firstActivationAsUpdate:Ljava/lang/Boolean;

.field public final location:Landroid/location/Location;

.field public final locationTracking:Ljava/lang/Boolean;

.field public final logs:Ljava/lang/Boolean;

.field public final maxReportsCount:Ljava/lang/Integer;

.field public final maxReportsInDatabaseCount:Ljava/lang/Integer;

.field public final nativeCrashReporting:Ljava/lang/Boolean;

.field public final preloadInfo:Lio/appmetrica/analytics/PreloadInfo;

.field public final revenueAutoTrackingEnabled:Ljava/lang/Boolean;

.field public final sessionTimeout:Ljava/lang/Integer;

.field public final sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

.field public final userProfileID:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->k(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->v(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->appVersion:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->w(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 6
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->x(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    .line 7
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->y(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    .line 8
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->z(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->location:Landroid/location/Location;

    .line 9
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->A(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    .line 10
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->B(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->advIdentifiersTracking:Ljava/lang/Boolean;

    .line 11
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->a(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->logs:Ljava/lang/Boolean;

    .line 12
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->b(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Lio/appmetrica/analytics/PreloadInfo;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->preloadInfo:Lio/appmetrica/analytics/PreloadInfo;

    .line 13
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->c(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    .line 14
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->d(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->dataSendingEnabled:Ljava/lang/Boolean;

    .line 15
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->e(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    .line 16
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->f(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->unmodifiableSameOrderMapCopy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->errorEnvironment:Ljava/util/Map;

    .line 17
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->g(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->userProfileID:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->h(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 19
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->i(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 20
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->j(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    .line 21
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->l(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->deviceType:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->m(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->appBuildNumber:Ljava/lang/Integer;

    .line 23
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->n(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->dispatchPeriodSeconds:Ljava/lang/Integer;

    .line 24
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->o(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->maxReportsCount:Ljava/lang/Integer;

    .line 25
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->p(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->unmodifiableSameOrderMapCopy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->appEnvironment:Ljava/util/Map;

    .line 26
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->q(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Lio/appmetrica/analytics/ICrashTransformer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->crashTransformer:Lio/appmetrica/analytics/ICrashTransformer;

    .line 27
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->r(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->anrMonitoring:Ljava/lang/Boolean;

    .line 28
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->s(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->anrMonitoringTimeout:Ljava/lang/Integer;

    .line 29
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->t(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->customHosts:Ljava/util/List;

    .line 30
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->u(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->unmodifiableSameOrderMapCopy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/AppMetricaConfig;->additionalConfig:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lio/appmetrica/analytics/AppMetricaConfig$Builder;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/AppMetricaConfig;-><init>(Lio/appmetrica/analytics/AppMetricaConfig$Builder;)V

    return-void
.end method

.method protected constructor <init>(Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->appVersion:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->appVersion:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 35
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    .line 36
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    .line 37
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->location:Landroid/location/Location;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->location:Landroid/location/Location;

    .line 38
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    .line 39
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->advIdentifiersTracking:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->advIdentifiersTracking:Ljava/lang/Boolean;

    .line 40
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->logs:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->logs:Ljava/lang/Boolean;

    .line 41
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->preloadInfo:Lio/appmetrica/analytics/PreloadInfo;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->preloadInfo:Lio/appmetrica/analytics/PreloadInfo;

    .line 42
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    .line 43
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->dataSendingEnabled:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->dataSendingEnabled:Ljava/lang/Boolean;

    .line 44
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    .line 45
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->errorEnvironment:Ljava/util/Map;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->errorEnvironment:Ljava/util/Map;

    .line 46
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->userProfileID:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->userProfileID:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 48
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 49
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    .line 50
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->deviceType:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->deviceType:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->appBuildNumber:Ljava/lang/Integer;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->appBuildNumber:Ljava/lang/Integer;

    .line 52
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->dispatchPeriodSeconds:Ljava/lang/Integer;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->dispatchPeriodSeconds:Ljava/lang/Integer;

    .line 53
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->maxReportsCount:Ljava/lang/Integer;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->maxReportsCount:Ljava/lang/Integer;

    .line 54
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->appEnvironment:Ljava/util/Map;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->appEnvironment:Ljava/util/Map;

    .line 55
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->crashTransformer:Lio/appmetrica/analytics/ICrashTransformer;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->crashTransformer:Lio/appmetrica/analytics/ICrashTransformer;

    .line 56
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->anrMonitoring:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->anrMonitoring:Ljava/lang/Boolean;

    .line 57
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->anrMonitoringTimeout:Ljava/lang/Integer;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->anrMonitoringTimeout:Ljava/lang/Integer;

    .line 58
    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->customHosts:Ljava/util/List;

    iput-object v0, p0, Lio/appmetrica/analytics/AppMetricaConfig;->customHosts:Ljava/util/List;

    .line 59
    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->additionalConfig:Ljava/util/Map;

    iput-object p1, p0, Lio/appmetrica/analytics/AppMetricaConfig;->additionalConfig:Ljava/util/Map;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig;
    .locals 25

    .line 1
    const-string v0, "anr_monitoring"

    .line 2
    .line 3
    const-string v1, "app_environment"

    .line 4
    .line 5
    const-string v2, "max_reports_count"

    .line 6
    .line 7
    const-string v3, "dispatch_period_seconds"

    .line 8
    .line 9
    const-string v4, "app_build_number"

    .line 10
    .line 11
    const-string v5, "device_type"

    .line 12
    .line 13
    const-string v6, "app_open_tracking_enabled"

    .line 14
    .line 15
    const-string v7, "sessions_auto_tracking_enabled"

    .line 16
    .line 17
    const-string v8, "revenue_auto_tracking_enabled"

    .line 18
    .line 19
    const-string v9, "user_profile_id"

    .line 20
    .line 21
    const-string v10, "data_sending_enabled"

    .line 22
    .line 23
    const-string v11, "first_activation_as_update"

    .line 24
    .line 25
    const-string v12, "error_environment"

    .line 26
    .line 27
    const-string v13, "max_reports_in_db_count"

    .line 28
    .line 29
    const-string v14, "adv_identifiers_tracking"

    .line 30
    .line 31
    const-string v15, "location_enabled"

    .line 32
    .line 33
    move-object/from16 v16, v0

    .line 34
    .line 35
    const-string v0, "crash_native_enabled"

    .line 36
    .line 37
    move-object/from16 v17, v1

    .line 38
    .line 39
    const-string v1, "crash_enabled"

    .line 40
    .line 41
    move-object/from16 v18, v2

    .line 42
    .line 43
    const-string v2, "logs"

    .line 44
    .line 45
    move-object/from16 v19, v3

    .line 46
    .line 47
    const-string v3, "session_timeout"

    .line 48
    .line 49
    move-object/from16 v20, v4

    .line 50
    .line 51
    const-string v4, "app_version"

    .line 52
    .line 53
    new-instance v21, Lio/appmetrica/analytics/impl/O7;

    .line 54
    .line 55
    invoke-direct/range {v21 .. v21}, Lio/appmetrica/analytics/impl/O7;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v21

    .line 62
    move-object/from16 v22, v5

    .line 63
    .line 64
    if-nez v21, :cond_18

    .line 65
    .line 66
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 67
    .line 68
    move-object/from16 v23, v6

    .line 69
    .line 70
    move-object/from16 v6, p0

    .line 71
    .line 72
    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v6, "apikey"

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-static {v6}, Lio/appmetrica/analytics/AppMetricaConfig;->newConfigBuilder(Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v24

    .line 89
    if-eqz v24, :cond_0

    .line 90
    .line 91
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v6, v4}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAppVersion(Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 96
    .line 97
    .line 98
    :cond_0
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_1

    .line 103
    .line 104
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-virtual {v6, v3}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withSessionTimeout(I)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 109
    .line 110
    .line 111
    :cond_1
    const-string v3, "location"

    .line 112
    .line 113
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-static {v3}, Lio/appmetrica/analytics/impl/Y3;->a(Ljava/lang/String;)Landroid/location/Location;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v6, v3}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withLocation(Landroid/location/Location;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 122
    .line 123
    .line 124
    const-string v3, "preload_info"

    .line 125
    .line 126
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-static {v3}, Lio/appmetrica/analytics/impl/Y3;->b(Ljava/lang/String;)Lio/appmetrica/analytics/PreloadInfo;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v6, v3}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withPreloadInfo(Lio/appmetrica/analytics/PreloadInfo;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_2

    .line 142
    .line 143
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_2

    .line 148
    .line 149
    invoke-virtual {v6}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withLogs()Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 150
    .line 151
    .line 152
    :cond_2
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_3

    .line 157
    .line 158
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    invoke-virtual {v6, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withCrashReporting(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 163
    .line 164
    .line 165
    :cond_3
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_4

    .line 170
    .line 171
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-virtual {v6, v0}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withNativeCrashReporting(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 176
    .line 177
    .line 178
    :cond_4
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_5

    .line 183
    .line 184
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    invoke-virtual {v6, v0}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withLocationTracking(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 189
    .line 190
    .line 191
    :cond_5
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_6

    .line 196
    .line 197
    const/4 v0, 0x1

    .line 198
    invoke-virtual {v5, v14, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    invoke-virtual {v6, v0}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAdvIdentifiersTracking(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 203
    .line 204
    .line 205
    :cond_6
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_7

    .line 210
    .line 211
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    invoke-virtual {v6, v0}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withMaxReportsInDatabaseCount(I)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 216
    .line 217
    .line 218
    :cond_7
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_8

    .line 223
    .line 224
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-static {v0}, Lio/appmetrica/analytics/impl/sb;->c(Ljava/lang/String;)Ljava/util/HashMap;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-eqz v0, :cond_8

    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_8

    .line 247
    .line 248
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    check-cast v1, Ljava/util/Map$Entry;

    .line 253
    .line 254
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    check-cast v2, Ljava/lang/String;

    .line 259
    .line 260
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    check-cast v1, Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {v6, v2, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withErrorEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 267
    .line 268
    .line 269
    goto :goto_0

    .line 270
    :cond_8
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_9

    .line 275
    .line 276
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    invoke-virtual {v6, v0}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->handleFirstActivationAsUpdate(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 281
    .line 282
    .line 283
    :cond_9
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_a

    .line 288
    .line 289
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    invoke-virtual {v6, v0}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withDataSendingEnabled(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 294
    .line 295
    .line 296
    :cond_a
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    if-eqz v0, :cond_b

    .line 301
    .line 302
    const/4 v0, 0x0

    .line 303
    :try_start_1
    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {v6, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withUserProfileID(Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 308
    .line 309
    .line 310
    goto :goto_1

    .line 311
    :cond_b
    const/4 v0, 0x0

    .line 312
    :goto_1
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-eqz v1, :cond_c

    .line 317
    .line 318
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    invoke-virtual {v6, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withRevenueAutoTrackingEnabled(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 323
    .line 324
    .line 325
    :cond_c
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-eqz v1, :cond_d

    .line 330
    .line 331
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    invoke-virtual {v6, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withSessionsAutoTrackingEnabled(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 336
    .line 337
    .line 338
    :cond_d
    move-object/from16 v1, v23

    .line 339
    .line 340
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    if-eqz v2, :cond_e

    .line 345
    .line 346
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    invoke-virtual {v6, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAppOpenTrackingEnabled(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 351
    .line 352
    .line 353
    :cond_e
    move-object/from16 v1, v22

    .line 354
    .line 355
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    if-eqz v2, :cond_f

    .line 360
    .line 361
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {v6, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withDeviceType(Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 366
    .line 367
    .line 368
    :cond_f
    move-object/from16 v1, v20

    .line 369
    .line 370
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-eqz v2, :cond_10

    .line 375
    .line 376
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    invoke-virtual {v6, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAppBuildNumber(I)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 381
    .line 382
    .line 383
    :cond_10
    move-object/from16 v1, v19

    .line 384
    .line 385
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    if-eqz v2, :cond_11

    .line 390
    .line 391
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    invoke-virtual {v6, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withDispatchPeriodSeconds(I)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 396
    .line 397
    .line 398
    :cond_11
    move-object/from16 v1, v18

    .line 399
    .line 400
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    if-eqz v2, :cond_12

    .line 405
    .line 406
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    invoke-virtual {v6, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withMaxReportsCount(I)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 411
    .line 412
    .line 413
    :cond_12
    move-object/from16 v1, v17

    .line 414
    .line 415
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    if-eqz v2, :cond_13

    .line 420
    .line 421
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-static {v1}, Lio/appmetrica/analytics/impl/sb;->c(Ljava/lang/String;)Ljava/util/HashMap;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    if-eqz v1, :cond_13

    .line 430
    .line 431
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    if-eqz v2, :cond_13

    .line 444
    .line 445
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    check-cast v2, Ljava/util/Map$Entry;

    .line 450
    .line 451
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    check-cast v3, Ljava/lang/String;

    .line 456
    .line 457
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    check-cast v2, Ljava/lang/String;

    .line 462
    .line 463
    invoke-virtual {v6, v3, v2}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 464
    .line 465
    .line 466
    goto :goto_2

    .line 467
    :cond_13
    move-object/from16 v1, v16

    .line 468
    .line 469
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    if-eqz v2, :cond_14

    .line 474
    .line 475
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    invoke-virtual {v6, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAnrMonitoring(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 480
    .line 481
    .line 482
    :cond_14
    const-string v1, "anr_monitoring_timeout"

    .line 483
    .line 484
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-eqz v1, :cond_15

    .line 489
    .line 490
    const-string v1, "anr_monitoring_timeout"

    .line 491
    .line 492
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    move-result v1

    .line 496
    invoke-virtual {v6, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAnrMonitoringTimeout(I)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 497
    .line 498
    .line 499
    :cond_15
    const-string v1, "customHosts"

    .line 500
    .line 501
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    if-eqz v1, :cond_16

    .line 506
    .line 507
    const-string v1, "customHosts"

    .line 508
    .line 509
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    invoke-static {v1}, Lio/appmetrica/analytics/impl/sb;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    invoke-virtual {v6, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withCustomHosts(Ljava/util/List;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 518
    .line 519
    .line 520
    :cond_16
    const-string v1, "additional_config"

    .line 521
    .line 522
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    if-eqz v1, :cond_17

    .line 527
    .line 528
    const-string v1, "additional_config"

    .line 529
    .line 530
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 531
    .line 532
    .line 533
    :cond_17
    invoke-virtual {v6}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->build()Lio/appmetrica/analytics/AppMetricaConfig;

    .line 534
    .line 535
    .line 536
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 537
    goto :goto_3

    .line 538
    :catchall_0
    :cond_18
    const/4 v0, 0x0

    .line 539
    :catchall_1
    move-object v5, v0

    .line 540
    :goto_3
    return-object v5
.end method

.method public static newConfigBuilder(Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/O7;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/O7;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "apikey"

    .line 12
    .line 13
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    const-string v1, "app_version"

    .line 19
    .line 20
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->appVersion:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    const-string v1, "session_timeout"

    .line 26
    .line 27
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    const-string v1, "location"

    .line 33
    .line 34
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->location:Landroid/location/Location;

    .line 35
    .line 36
    invoke-static {v2}, Lio/appmetrica/analytics/impl/Y3;->a(Landroid/location/Location;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    const-string v1, "preload_info"

    .line 44
    .line 45
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->preloadInfo:Lio/appmetrica/analytics/PreloadInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    .line 52
    .line 53
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v5, "trackid"

    .line 57
    .line 58
    invoke-virtual {v2}, Lio/appmetrica/analytics/PreloadInfo;->getTrackingId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    const-string v5, "params"

    .line 66
    .line 67
    invoke-virtual {v2}, Lio/appmetrica/analytics/PreloadInfo;->getAdditionalParams()Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-nez v2, :cond_1

    .line 72
    .line 73
    move-object v6, v3

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    .line 76
    .line 77
    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    goto :goto_2

    .line 88
    :catchall_0
    :goto_1
    move-object v2, v3

    .line 89
    :goto_2
    :try_start_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    .line 91
    .line 92
    const-string v1, "logs"

    .line 93
    .line 94
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->logs:Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    const-string v1, "crash_enabled"

    .line 100
    .line 101
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    const-string v1, "crash_native_enabled"

    .line 107
    .line 108
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    const-string v1, "location_enabled"

    .line 114
    .line 115
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    .line 119
    .line 120
    const-string v1, "adv_identifiers_tracking"

    .line 121
    .line 122
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->advIdentifiersTracking:Ljava/lang/Boolean;

    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    .line 126
    .line 127
    const-string v1, "max_reports_in_db_count"

    .line 128
    .line 129
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    .line 130
    .line 131
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    const-string v1, "error_environment"

    .line 135
    .line 136
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->errorEnvironment:Ljava/util/Map;

    .line 137
    .line 138
    if-nez v2, :cond_2

    .line 139
    .line 140
    move-object v4, v3

    .line 141
    goto :goto_3

    .line 142
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    .line 143
    .line 144
    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 145
    .line 146
    .line 147
    :goto_3
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    const-string v1, "first_activation_as_update"

    .line 151
    .line 152
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    .line 153
    .line 154
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    .line 156
    .line 157
    const-string v1, "data_sending_enabled"

    .line 158
    .line 159
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->dataSendingEnabled:Ljava/lang/Boolean;

    .line 160
    .line 161
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    .line 163
    .line 164
    const-string v1, "user_profile_id"

    .line 165
    .line 166
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->userProfileID:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    .line 170
    .line 171
    const-string v1, "revenue_auto_tracking_enabled"

    .line 172
    .line 173
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 174
    .line 175
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    .line 177
    .line 178
    const-string v1, "sessions_auto_tracking_enabled"

    .line 179
    .line 180
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 181
    .line 182
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    .line 184
    .line 185
    const-string v1, "app_open_tracking_enabled"

    .line 186
    .line 187
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    .line 188
    .line 189
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    .line 191
    .line 192
    const-string v1, "device_type"

    .line 193
    .line 194
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->deviceType:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    .line 198
    .line 199
    const-string v1, "app_build_number"

    .line 200
    .line 201
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->appBuildNumber:Ljava/lang/Integer;

    .line 202
    .line 203
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    .line 205
    .line 206
    const-string v1, "dispatch_period_seconds"

    .line 207
    .line 208
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->dispatchPeriodSeconds:Ljava/lang/Integer;

    .line 209
    .line 210
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    .line 212
    .line 213
    const-string v1, "max_reports_count"

    .line 214
    .line 215
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->maxReportsCount:Ljava/lang/Integer;

    .line 216
    .line 217
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    .line 219
    .line 220
    const-string v1, "app_environment"

    .line 221
    .line 222
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->appEnvironment:Ljava/util/Map;

    .line 223
    .line 224
    if-nez v2, :cond_3

    .line 225
    .line 226
    move-object v4, v3

    .line 227
    goto :goto_4

    .line 228
    :cond_3
    new-instance v4, Lorg/json/JSONObject;

    .line 229
    .line 230
    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 231
    .line 232
    .line 233
    :goto_4
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    .line 235
    .line 236
    const-string v1, "anr_monitoring"

    .line 237
    .line 238
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->anrMonitoring:Ljava/lang/Boolean;

    .line 239
    .line 240
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    .line 242
    .line 243
    const-string v1, "anr_monitoring_timeout"

    .line 244
    .line 245
    iget-object v2, p0, Lio/appmetrica/analytics/AppMetricaConfig;->anrMonitoringTimeout:Ljava/lang/Integer;

    .line 246
    .line 247
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    .line 249
    .line 250
    iget-object v1, p0, Lio/appmetrica/analytics/AppMetricaConfig;->customHosts:Ljava/util/List;

    .line 251
    .line 252
    if-eqz v1, :cond_5

    .line 253
    .line 254
    const-string v2, "customHosts"

    .line 255
    .line 256
    invoke-static {v1}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Collection;)Z

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    if-eqz v4, :cond_4

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_4
    new-instance v3, Lorg/json/JSONArray;

    .line 264
    .line 265
    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 266
    .line 267
    .line 268
    :goto_5
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    .line 270
    .line 271
    :cond_5
    const-string v1, "additional_config"

    .line 272
    .line 273
    new-instance v2, Lorg/json/JSONObject;

    .line 274
    .line 275
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 285
    goto :goto_6

    .line 286
    :catchall_1
    const-string v0, ""

    .line 287
    .line 288
    :goto_6
    return-object v0
.end method
