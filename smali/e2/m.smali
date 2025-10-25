.class public final Le2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# instance fields
.field private a:Le2/q;

.field private b:Lio/flutter/plugin/common/MethodChannel;

.field private c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private d:Le2/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le2/m;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Le2/m;->a:Le2/q;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Le2/m;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 11
    .line 12
    iget-object v1, p0, Le2/m;->a:Le2/q;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le2/m;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Le2/m;->a:Le2/q;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Le2/m;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 11
    .line 12
    iget-object v1, p0, Le2/m;->a:Le2/q;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private c(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 3

    .line 1
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    const-string v1, "flutter.baseflow.com/permissions/methods"

    .line 4
    .line 5
    invoke-direct {v0, p2, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Le2/m;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 9
    .line 10
    new-instance p2, Le2/l;

    .line 11
    .line 12
    new-instance v0, Le2/a;

    .line 13
    .line 14
    invoke-direct {v0}, Le2/a;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Le2/m;->a:Le2/q;

    .line 18
    .line 19
    new-instance v2, Le2/y;

    .line 20
    .line 21
    invoke-direct {v2}, Le2/y;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, p1, v0, v1, v2}, Le2/l;-><init>(Landroid/content/Context;Le2/a;Le2/q;Le2/y;)V

    .line 25
    .line 26
    .line 27
    iput-object p2, p0, Le2/m;->d:Le2/l;

    .line 28
    .line 29
    iget-object p1, p0, Le2/m;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private d(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le2/m;->a:Le2/q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Le2/q;->h(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Le2/m;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 5
    .line 6
    .line 7
    iput-object v1, p0, Le2/m;->b:Lio/flutter/plugin/common/MethodChannel;

    .line 8
    .line 9
    iput-object v1, p0, Le2/m;->d:Le2/l;

    .line 10
    .line 11
    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Le2/m;->a:Le2/q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Le2/q;->h(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Le2/m;->d(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Le2/m;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 9
    .line 10
    invoke-direct {p0}, Le2/m;->b()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 1
    new-instance v0, Le2/q;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Le2/q;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Le2/m;->a:Le2/q;

    .line 11
    .line 12
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, v0, p1}, Le2/m;->c(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le2/m;->f()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Le2/m;->a()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Le2/m;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 9
    .line 10
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le2/m;->onDetachedFromActivity()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le2/m;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le2/m;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
