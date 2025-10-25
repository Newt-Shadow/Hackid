.class public final Lea/b;
.super La;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# instance fields
.field private a:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private b:Lfa/b0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, La;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lea/b;->e(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    return-void
.end method

.method private final d(Landroid/app/Activity;Lio/flutter/plugin/common/BinaryMessenger;Lfa/d0$b;Lio/flutter/view/TextureRegistry;)V
    .locals 7

    .line 1
    new-instance v6, Lfa/b0;

    .line 2
    .line 3
    new-instance v3, Lfa/d0;

    .line 4
    .line 5
    invoke-direct {v3}, Lfa/d0;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object v0, v6

    .line 9
    move-object v1, p1

    .line 10
    move-object v2, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    invoke-direct/range {v0 .. v5}, Lfa/b0;-><init>(Landroid/app/Activity;Lio/flutter/plugin/common/BinaryMessenger;Lfa/d0;Lfa/d0$b;Lio/flutter/view/TextureRegistry;)V

    .line 14
    .line 15
    .line 16
    iput-object v6, p0, Lea/b;->b:Lfa/b0;

    .line 17
    .line 18
    return-void
.end method

.method private static final e(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public b(Lb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lea/b;->b:Lfa/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lfa/b0;->g(Lb;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 4

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getActivity(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lea/b;->a:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "getBinaryMessenger(...)"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lea/a;

    .line 30
    .line 31
    invoke-direct {v2, p1}, Lea/a;-><init>(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lea/b;->a:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getTextureRegistry()Lio/flutter/view/TextureRegistry;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v3, "getTextureRegistry(...)"

    .line 44
    .line 45
    invoke-static {p1, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0, v1, v2, p1}, Lea/b;->d(Landroid/app/Activity;Lio/flutter/plugin/common/BinaryMessenger;Lfa/d0$b;Lio/flutter/view/TextureRegistry;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lea/b;->a:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 52
    .line 53
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v0, "getPlugins(...)"

    .line 65
    .line 66
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "FlutterCameraPlugin"

    .line 70
    .line 71
    invoke-virtual {p0, p1, v0, p0}, La;->a(Lio/flutter/embedding/engine/plugins/PluginRegistry;Ljava/lang/String;La;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lea/b;->a:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 7
    .line 8
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    .line 1
    iget-object v0, p0, Lea/b;->b:Lfa/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lfa/b0;->h()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lea/b;->b:Lfa/b0;

    .line 10
    .line 11
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lea/b;->onDetachedFromActivity()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lea/b;->a:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 8
    .line 9
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lea/b;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
