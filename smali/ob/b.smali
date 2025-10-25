.class public final Lob/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lrb/s;
.implements Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lob/b$a;
    }
.end annotation


# static fields
.field public static final e:Lob/b$a;


# instance fields
.field private a:Lrb/r;

.field private b:Lcom/pravera/flutter_foreground_task/service/a;

.field private c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private d:Lob/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lob/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lob/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lob/b;->e:Lob/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/pravera/flutter_foreground_task/service/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lob/b;->b:Lcom/pravera/flutter_foreground_task/service/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "foregroundServiceManager"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    return-object v0
.end method

.method public b()Lrb/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lob/b;->a:Lrb/r;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "notificationPermissionManager"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    return-object v0
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
    iget-object v0, p0, Lob/b;->d:Lob/d;

    .line 7
    .line 8
    const-string v1, "methodCallHandler"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object v0, v2

    .line 17
    :cond_0
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v0, v3}, Lob/d;->d(Landroid/app/Activity;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lob/b;->a:Lrb/r;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const-string v0, "notificationPermissionManager"

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v0, v2

    .line 34
    :cond_1
    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lob/b;->d:Lob/d;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move-object v2, v0

    .line 46
    :goto_0
    invoke-interface {p1, v2}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lob/b;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 53
    .line 54
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget-object v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->m:Lcom/pravera/flutter_foreground_task/service/ForegroundService$a;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lcom/pravera/flutter_foreground_task/service/ForegroundService$a;->a(Landroid/content/Intent;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lrb/r;

    .line 7
    .line 8
    invoke-direct {v0}, Lrb/r;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lob/b;->a:Lrb/r;

    .line 12
    .line 13
    new-instance v0, Lcom/pravera/flutter_foreground_task/service/a;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/pravera/flutter_foreground_task/service/a;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lob/b;->b:Lcom/pravera/flutter_foreground_task/service/a;

    .line 19
    .line 20
    new-instance v0, Lob/d;

    .line 21
    .line 22
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "getApplicationContext(...)"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1, p0}, Lob/d;-><init>(Landroid/content/Context;Lrb/s;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lob/b;->d:Lob/d;

    .line 35
    .line 36
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v1, "getBinaryMessenger(...)"

    .line 41
    .line 42
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lob/d;->c(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 4

    .line 1
    iget-object v0, p0, Lob/b;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Lob/b;->a:Lrb/r;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    const-string v2, "notificationPermissionManager"

    .line 11
    .line 12
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object v2, v1

    .line 16
    :cond_0
    invoke-interface {v0, v2}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lob/b;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 20
    .line 21
    const-string v2, "methodCallHandler"

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v3, p0, Lob/b;->d:Lob/d;

    .line 26
    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move-object v3, v1

    .line 33
    :cond_2
    invoke-interface {v0, v3}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 34
    .line 35
    .line 36
    :cond_3
    iget-object v0, p0, Lob/b;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    invoke-interface {v0, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 41
    .line 42
    .line 43
    :cond_4
    iput-object v1, p0, Lob/b;->c:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 44
    .line 45
    iget-object v0, p0, Lob/b;->d:Lob/d;

    .line 46
    .line 47
    if-nez v0, :cond_5

    .line 48
    .line 49
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    move-object v0, v1

    .line 53
    :cond_5
    invoke-virtual {v0, v1}, Lob/d;->d(Landroid/app/Activity;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lob/b;->onDetachedFromActivity()V

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
    iget-object p1, p0, Lob/b;->d:Lob/d;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "methodCallHandler"

    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lob/d;->b()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/pravera/flutter_foreground_task/service/ForegroundService;->m:Lcom/pravera/flutter_foreground_task/service/ForegroundService$a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/pravera/flutter_foreground_task/service/ForegroundService$a;->a(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
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
    invoke-virtual {p0, p1}, Lob/b;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
