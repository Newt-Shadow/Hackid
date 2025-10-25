.class public Lio/appmetrica/analytics/flutter/AppMetricaPlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# instance fields
.field private appMetrica:Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;

.field private deeplinkHolder:Lio/appmetrica/analytics/flutter/impl/InitialDeepLinkHolderImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/appmetrica/analytics/flutter/AppMetricaPlugin;->appMetrica:Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;

    .line 6
    .line 7
    iput-object v0, p0, Lio/appmetrica/analytics/flutter/AppMetricaPlugin;->deeplinkHolder:Lio/appmetrica/analytics/flutter/impl/InitialDeepLinkHolderImpl;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/AppMetricaPlugin;->appMetrica:Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, v0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->activity:Landroid/app/Activity;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/AppMetricaPlugin;->deeplinkHolder:Lio/appmetrica/analytics/flutter/impl/InitialDeepLinkHolderImpl;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, v0, Lio/appmetrica/analytics/flutter/impl/InitialDeepLinkHolderImpl;->activity:Landroid/app/Activity;

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/appmetrica/analytics/flutter/AppMetricaPlugin;->appMetrica:Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;

    .line 11
    .line 12
    new-instance v0, Lio/appmetrica/analytics/flutter/impl/InitialDeepLinkHolderImpl;

    .line 13
    .line 14
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/impl/InitialDeepLinkHolderImpl;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lio/appmetrica/analytics/flutter/AppMetricaPlugin;->deeplinkHolder:Lio/appmetrica/analytics/flutter/impl/InitialDeepLinkHolderImpl;

    .line 18
    .line 19
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/AppMetricaPlugin;->appMetrica:Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeon;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaPigeon;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;

    .line 33
    .line 34
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v1, v2}, Lio/appmetrica/analytics/flutter/impl/ReporterImpl;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeon;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeon;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lio/appmetrica/analytics/flutter/impl/AppMetricaConfigConverterImpl;

    .line 49
    .line 50
    invoke-direct {v1}, Lio/appmetrica/analytics/flutter/impl/AppMetricaConfigConverterImpl;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigConverterPigeon;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigConverterPigeon;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/AppMetricaPlugin;->deeplinkHolder:Lio/appmetrica/analytics/flutter/impl/InitialDeepLinkHolderImpl;

    .line 61
    .line 62
    invoke-static {p1, v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$InitialDeepLinkHolderPigeon;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$InitialDeepLinkHolderPigeon;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/AppMetricaPlugin;->appMetrica:Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, v0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->activity:Landroid/app/Activity;

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/AppMetricaPlugin;->deeplinkHolder:Lio/appmetrica/analytics/flutter/impl/InitialDeepLinkHolderImpl;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iput-object v1, v0, Lio/appmetrica/analytics/flutter/impl/InitialDeepLinkHolderImpl;->activity:Landroid/app/Activity;

    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/AppMetricaPlugin;->appMetrica:Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, v0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->activity:Landroid/app/Activity;

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/AppMetricaPlugin;->deeplinkHolder:Lio/appmetrica/analytics/flutter/impl/InitialDeepLinkHolderImpl;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iput-object v1, v0, Lio/appmetrica/analytics/flutter/impl/InitialDeepLinkHolderImpl;->activity:Landroid/app/Activity;

    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/AppMetricaPlugin;->appMetrica:Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, v0, Lio/appmetrica/analytics/flutter/impl/AppMetricaImpl;->activity:Landroid/app/Activity;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/AppMetricaPlugin;->deeplinkHolder:Lio/appmetrica/analytics/flutter/impl/InitialDeepLinkHolderImpl;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, v0, Lio/appmetrica/analytics/flutter/impl/InitialDeepLinkHolderImpl;->activity:Landroid/app/Activity;

    .line 20
    .line 21
    :cond_1
    return-void
.end method
