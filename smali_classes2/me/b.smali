.class public final Lme/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/b$a;
    }
.end annotation


# static fields
.field public static final a:Lme/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lme/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lme/b;->a:Lme/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    .line 1
    const-string v0, "activityPluginBinding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lme/h;->a:Lme/h;

    .line 7
    .line 8
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lme/h;->c(Landroid/app/Activity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lme/h;->d(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3

    .line 1
    const-string v0, "flutterPluginBinding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getPlatformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lme/f;

    .line 11
    .line 12
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v2, "getBinaryMessenger(...)"

    .line 17
    .line 18
    invoke-static {p1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p1}, Lme/f;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "net.touchcapture.qr.flutterqr/qrview"

    .line 25
    .line 26
    invoke-interface {v0, p1, v1}, Lio/flutter/plugin/platform/PlatformViewRegistry;->registerViewFactory(Ljava/lang/String;Lio/flutter/plugin/platform/PlatformViewFactory;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 1
    sget-object v0, Lme/h;->a:Lme/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lme/h;->c(Landroid/app/Activity;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lme/h;->d(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 2

    .line 1
    sget-object v0, Lme/h;->a:Lme/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lme/h;->c(Landroid/app/Activity;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lme/h;->d(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    .line 1
    const-string v0, "activityPluginBinding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lme/h;->a:Lme/h;

    .line 7
    .line 8
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lme/h;->c(Landroid/app/Activity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lme/h;->d(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
