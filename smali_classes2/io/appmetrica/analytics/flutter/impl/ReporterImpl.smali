.class public Lio/appmetrica/analytics/flutter/impl/ReporterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeon;


# instance fields
.field final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public clearAppEnvironment(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lio/appmetrica/analytics/IReporter;->clearAppEnvironment()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public pauseSession(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lio/appmetrica/analytics/IReporter;->pauseSession()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1, p2, p3}, Lio/appmetrica/analytics/IReporter;->putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public reportAdRevenue(Ljava/lang/String;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;)Lio/appmetrica/analytics/AdRevenue;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p1, p2}, Lio/appmetrica/analytics/IReporter;->reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public reportECommerce(Ljava/lang/String;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lio/appmetrica/analytics/flutter/utils/ECommerceConverter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;)Lio/appmetrica/analytics/ecommerce/ECommerceEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1, p2}, Lio/appmetrica/analytics/IReporter;->reportECommerce(Lio/appmetrica/analytics/ecommerce/ECommerceEvent;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public reportError(Ljava/lang/String;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lio/appmetrica/analytics/IReporter;->getPluginExtension()Lio/appmetrica/analytics/plugins/IPluginReporter;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p2}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;)Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-interface {p1, p2, p3}, Lio/appmetrica/analytics/plugins/IPluginReporter;->reportError(Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public reportErrorWithGroup(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lio/appmetrica/analytics/IReporter;->getPluginExtension()Lio/appmetrica/analytics/plugins/IPluginReporter;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    invoke-static {p3}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;)Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p3, 0x0

    .line 19
    :goto_0
    invoke-interface {p1, p2, p4, p3}, Lio/appmetrica/analytics/plugins/IPluginReporter;->reportError(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1, p2}, Lio/appmetrica/analytics/IReporter;->reportEvent(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public reportEventWithJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1, p2, p3}, Lio/appmetrica/analytics/IReporter;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public reportRevenue(Ljava/lang/String;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;)Lio/appmetrica/analytics/Revenue;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p1, p2}, Lio/appmetrica/analytics/IReporter;->reportRevenue(Lio/appmetrica/analytics/Revenue;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public reportUnhandledException(Ljava/lang/String;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lio/appmetrica/analytics/IReporter;->getPluginExtension()Lio/appmetrica/analytics/plugins/IPluginReporter;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p2}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;)Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-interface {p1, p2}, Lio/appmetrica/analytics/plugins/IPluginReporter;->reportUnhandledException(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public reportUserProfile(Ljava/lang/String;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfilePigeon;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfilePigeon;)Lio/appmetrica/analytics/profile/UserProfile;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p1, p2}, Lio/appmetrica/analytics/IReporter;->reportUserProfile(Lio/appmetrica/analytics/profile/UserProfile;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public resumeSession(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lio/appmetrica/analytics/IReporter;->resumeSession()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public sendEventsBuffer(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lio/appmetrica/analytics/IReporter;->sendEventsBuffer()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setDataSendingEnabled(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-interface {p1, p2}, Lio/appmetrica/analytics/IReporter;->setDataSendingEnabled(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setUserProfileID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1, p2}, Lio/appmetrica/analytics/IReporter;->setUserProfileID(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
