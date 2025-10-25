.class public Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeon;


# instance fields
.field public activity:Landroid/app/Activity;

.field private final context:Landroid/content/Context;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->mainHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->activity:Landroid/app/Activity;

    .line 17
    .line 18
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->context:Landroid/content/Context;

    .line 19
    .line 20
    return-void
.end method

.method static synthetic access$000(Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public activate(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;)Lio/appmetrica/analytics/AppMetricaConfig;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->activate(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaConfig;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public activateReporter(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;)Lio/appmetrica/analytics/ReporterConfig;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->activateReporter(Landroid/content/Context;Lio/appmetrica/analytics/ReporterConfig;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public clearAppEnvironment()V
    .locals 0

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->clearAppEnvironment()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public enableActivityAutoTracking()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lio/appmetrica/analytics/AppMetrica;->enableActivityAutoTracking(Landroid/app/Application;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/AppMetrica;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLibraryApiLevel()Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->getLibraryApiLevel()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getLibraryVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->getLibraryVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/AppMetrica;->getUuid(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public handlePluginInitFinished()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/AppMetrica;->resumeSession(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public pauseSession()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/AppMetrica;->pauseSession(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/appmetrica/analytics/AppMetrica;->putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public putErrorEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/appmetrica/analytics/AppMetrica;->putErrorEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public reportAdRevenue(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;)Lio/appmetrica/analytics/AdRevenue;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetrica;->reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public reportAppOpen(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetrica;->reportAppOpen(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public reportECommerce(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetrica;->reportECommerce(Lio/appmetrica/analytics/ecommerce/ECommerceEvent;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public reportError(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->getPluginExtension()Lio/appmetrica/analytics/plugins/AppMetricaPlugins;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;)Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/plugins/AppMetricaPlugins;->reportError(Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public reportErrorWithGroup(Ljava/lang/String;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->getPluginExtension()Lio/appmetrica/analytics/plugins/AppMetricaPlugins;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;)Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    invoke-interface {v0, p1, p3, p2}, Lio/appmetrica/analytics/plugins/AppMetricaPlugins;->reportError(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public reportEvent(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetrica;->reportEvent(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public reportEventWithJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/appmetrica/analytics/AppMetrica;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public reportExternalAttribution(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ExternalAttributionPigeon;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ExternalAttributionPigeon;)Lio/appmetrica/analytics/flutter/utils/FlutterExternalAttribution;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lio/appmetrica/analytics/flutter/utils/FlutterExternalAttribution;->source:I

    .line 6
    .line 7
    iget-object p1, p1, Lio/appmetrica/analytics/flutter/utils/FlutterExternalAttribution;->data:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lio/appmetrica/analytics/ModulesFacade;->reportExternalAttribution(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public reportReferralUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetrica;->reportReferralUrl(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public reportRevenue(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;)Lio/appmetrica/analytics/Revenue;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetrica;->reportRevenue(Lio/appmetrica/analytics/Revenue;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public reportUnhandledException(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->getPluginExtension()Lio/appmetrica/analytics/plugins/AppMetricaPlugins;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;)Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Lio/appmetrica/analytics/plugins/AppMetricaPlugins;->reportUnhandledException(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public reportUserProfile(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfilePigeon;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfilePigeon;)Lio/appmetrica/analytics/profile/UserProfile;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetrica;->reportUserProfile(Lio/appmetrica/analytics/profile/UserProfile;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public requestDeferredDeeplink(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result<",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$1;-><init>(Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/appmetrica/analytics/AppMetrica;->requestDeferredDeeplink(Lio/appmetrica/analytics/DeferredDeeplinkListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public requestDeferredDeeplinkParameters(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result<",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$2;-><init>(Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/appmetrica/analytics/AppMetrica;->requestDeferredDeeplinkParameters(Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public requestStartupParams(Ljava/util/List;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result<",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$3;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2}, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl$3;-><init>(Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$Result;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1, p1}, Lio/appmetrica/analytics/AppMetrica;->requestStartupParams(Landroid/content/Context;Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public resumeSession()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/AppMetrica;->resumeSession(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sendEventsBuffer()V
    .locals 0

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->sendEventsBuffer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setAdvIdentifiersTracking(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetrica;->setAdvIdentifiersTracking(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setDataSendingEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetrica;->setDataSendingEnabled(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLocation(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;)Landroid/location/Location;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetrica;->setLocation(Landroid/location/Location;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setLocationTracking(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetrica;->setLocationTracking(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setUserProfileID(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetrica;->setUserProfileID(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public touchReporter(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    .line 4
    .line 5
    .line 6
    return-void
.end method
