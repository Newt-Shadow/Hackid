.class public Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# instance fields
.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private final consumedInitialMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private initialMessage:Lcom/google/firebase/messaging/u0;

.field private initialMessageNotification:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final liveDataRemoteMessage:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q;"
        }
    .end annotation
.end field

.field private final liveDataToken:Landroidx/lifecycle/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/q;"
        }
    .end annotation
.end field

.field private mainActivity:Landroid/app/Activity;

.field permissionManager:Lio/flutter/plugins/firebase/messaging/FlutterFirebasePermissionManager;

.field private remoteMessageObserver:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t;"
        }
    .end annotation
.end field

.field private tokenObserver:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->consumedInitialMessages:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseRemoteMessageLiveData;->getInstance()Lio/flutter/plugins/firebase/messaging/FlutterFirebaseRemoteMessageLiveData;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->liveDataRemoteMessage:Landroidx/lifecycle/q;

    .line 16
    .line 17
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseTokenLiveData;->getInstance()Lio/flutter/plugins/firebase/messaging/FlutterFirebaseTokenLiveData;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->liveDataToken:Landroidx/lifecycle/q;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic a(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->lambda$initInstance$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->lambda$deleteToken$2(Lm6/l;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/Map;Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->lambda$subscribeToTopic$4(Ljava/util/Map;Lm6/l;)V

    return-void
.end method

.method private checkPermissions()Ljava/lang/Boolean;
    .locals 2

    .line 1
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/ContextHolder;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public static synthetic d(Ljava/util/Map;Lm6/l;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->lambda$requestPermissions$10(Ljava/util/Map;Lm6/l;I)V

    return-void
.end method

.method private deleteToken()Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/messaging/g;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lio/flutter/plugins/firebase/messaging/g;-><init>(Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public static synthetic e(Ljava/util/Map;Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->lambda$sendMessage$6(Ljava/util/Map;Lm6/l;)V

    return-void
.end method

.method public static synthetic f(Lm6/l;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->lambda$requestPermissions$11(Lm6/l;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->lambda$getInitialMessage$9(Lm6/l;)V

    return-void
.end method

.method private getExceptionDetails(Ljava/lang/Exception;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "code"

    .line 7
    .line 8
    const-string v2, "unknown"

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "message"

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p1, "An unknown error has occurred."

    .line 26
    .line 27
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :goto_0
    return-object v0
.end method

.method private getInitialMessage()Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/messaging/t;

    .line 9
    .line 10
    invoke-direct {v2, p0, v0}, Lio/flutter/plugins/firebase/messaging/t;-><init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method private getPermissions()Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/messaging/p;

    .line 9
    .line 10
    invoke-direct {v2, p0, v0}, Lio/flutter/plugins/firebase/messaging/p;-><init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method private getToken()Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/messaging/e;

    .line 9
    .line 10
    invoke-direct {v2, p0, v0}, Lio/flutter/plugins/firebase/messaging/e;-><init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public static synthetic h(Lh7/f;Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->lambda$getPluginConstantsForFirebaseApp$15(Lh7/f;Lm6/l;)V

    return-void
.end method

.method public static synthetic i(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->lambda$requestPermissions$12(Lm6/l;)V

    return-void
.end method

.method private initInstance(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    const-string v1, "plugins.flutter.io/firebase_messaging"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lio/flutter/plugins/firebase/messaging/FlutterFirebasePermissionManager;

    .line 14
    .line 15
    invoke-direct {p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebasePermissionManager;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->permissionManager:Lio/flutter/plugins/firebase/messaging/FlutterFirebasePermissionManager;

    .line 19
    .line 20
    new-instance p1, Lio/flutter/plugins/firebase/messaging/i;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lio/flutter/plugins/firebase/messaging/i;-><init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->remoteMessageObserver:Landroidx/lifecycle/t;

    .line 26
    .line 27
    new-instance p1, Lio/flutter/plugins/firebase/messaging/j;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lio/flutter/plugins/firebase/messaging/j;-><init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->tokenObserver:Landroidx/lifecycle/t;

    .line 33
    .line 34
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->liveDataRemoteMessage:Landroidx/lifecycle/q;

    .line 35
    .line 36
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->remoteMessageObserver:Landroidx/lifecycle/t;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->observeForever(Landroidx/lifecycle/t;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->liveDataToken:Landroidx/lifecycle/q;

    .line 42
    .line 43
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->tokenObserver:Landroidx/lifecycle/t;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->observeForever(Landroidx/lifecycle/t;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1, p0}, Lio/flutter/plugins/firebase/core/FlutterFirebasePluginRegistry;->registerPlugin(Ljava/lang/String;Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static synthetic j(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->lambda$getPermissions$13(Lm6/l;)V

    return-void
.end method

.method public static synthetic k(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->lambda$getToken$3(Lm6/l;)V

    return-void
.end method

.method public static synthetic l(Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->lambda$didReinitializeFirebaseCore$16(Lm6/l;)V

    return-void
.end method

.method private static synthetic lambda$deleteToken$2(Lm6/l;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->r()Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->o()Lm6/Task;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lm6/n;->a(Lm6/Task;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {p0, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method private static synthetic lambda$didReinitializeFirebaseCore$16(Lm6/l;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lm6/l;->c(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private synthetic lambda$getInitialMessage$9(Lm6/l;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->initialMessage:Lcom/google/firebase/messaging/u0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    const-string v1, "notification"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    :try_start_1
    invoke-static {v0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingUtils;->remoteMessageToMap(Lcom/google/firebase/messaging/u0;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v3, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->initialMessageNotification:Ljava/util/Map;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1, v0}, Lm6/l;->c(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->initialMessage:Lcom/google/firebase/messaging/u0;

    .line 23
    .line 24
    iput-object v2, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->initialMessageNotification:Ljava/util/Map;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->mainActivity:Landroid/app/Activity;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Lm6/l;->c(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_b

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string v4, "google.message_id"

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-nez v3, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v3, "message_id"

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    :cond_4
    if-eqz v3, :cond_a

    .line 72
    .line 73
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->consumedInitialMessages:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    sget-object v0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingReceiver;->notifications:Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/google/firebase/messaging/u0;

    .line 89
    .line 90
    if-nez v0, :cond_7

    .line 91
    .line 92
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingStore;->getInstance()Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingStore;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v4, v3}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingStore;->getFirebaseMessageMap(Ljava/lang/String;)Ljava/util/Map;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    if-eqz v4, :cond_6

    .line 101
    .line 102
    invoke-static {v4}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingUtils;->getRemoteMessageForArguments(Ljava/util/Map;)Lcom/google/firebase/messaging/u0;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    if-eqz v5, :cond_6

    .line 111
    .line 112
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-direct {p0, v4}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->uncheckedCastToMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    goto :goto_0

    .line 121
    :cond_6
    move-object v4, v2

    .line 122
    :goto_0
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingStore;->getInstance()Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingStore;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v5, v3}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingStore;->removeFirebaseMessage(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_7
    move-object v4, v2

    .line 131
    :goto_1
    if-nez v0, :cond_8

    .line 132
    .line 133
    invoke-virtual {p1, v2}, Lm6/l;->c(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_8
    iget-object v2, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->consumedInitialMessages:Ljava/util/HashMap;

    .line 138
    .line 139
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 140
    .line 141
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    invoke-static {v0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingUtils;->remoteMessageToMap(Lcom/google/firebase/messaging/u0;)Ljava/util/Map;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v0}, Lcom/google/firebase/messaging/u0;->p()Lcom/google/firebase/messaging/u0$c;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-nez v0, :cond_9

    .line 153
    .line 154
    if-eqz v4, :cond_9

    .line 155
    .line 156
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    :cond_9
    invoke-virtual {p1, v2}, Lm6/l;->c(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_a
    :goto_2
    invoke-virtual {p1, v2}, Lm6/l;->c(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_b
    :goto_3
    invoke-virtual {p1, v2}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {p1, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 173
    .line 174
    .line 175
    :goto_4
    return-void
.end method

.method private synthetic lambda$getPermissions$13(Lm6/l;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x21

    .line 9
    .line 10
    if-lt v1, v2, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->checkPermissions()Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->mainActivity:Landroid/app/Activity;

    .line 22
    .line 23
    invoke-static {v1}, Landroidx/core/app/p;->e(Landroid/content/Context;)Landroidx/core/app/p;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroidx/core/app/p;->a()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :goto_0
    const-string v2, "authorizationStatus"

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {p1, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 51
    .line 52
    .line 53
    :goto_2
    return-void
.end method

.method private static synthetic lambda$getPluginConstantsForFirebaseApp$15(Lh7/f;Lm6/l;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lh7/f;->q()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v1, "[DEFAULT]"

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->r()Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v1, "AUTO_INIT_ENABLED"

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->A()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1, v0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p1, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method private synthetic lambda$getToken$3(Lm6/l;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->r()Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->u()Lm6/Task;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lm6/n;->a(Lm6/Task;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    new-instance v1, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin$1;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin$1;-><init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {p1, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method private synthetic lambda$initInstance$0(Lcom/google/firebase/messaging/u0;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingUtils;->remoteMessageToMap(Lcom/google/firebase/messaging/u0;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 6
    .line 7
    const-string v1, "Messaging#onMessage"

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic lambda$initInstance$1(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    const-string v1, "Messaging#onTokenRefresh"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$onMethodCall$14(Lio/flutter/plugin/common/MethodChannel$Result;Lm6/Task;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lm6/Task;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Lm6/Task;->l()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p2}, Lm6/Task;->k()Ljava/lang/Exception;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-direct {p0, p2}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->getExceptionDetails(Ljava/lang/Exception;)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string v1, "firebase_messaging"

    .line 32
    .line 33
    invoke-interface {p1, v1, v0, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    return-void
.end method

.method private static synthetic lambda$requestPermissions$10(Ljava/util/Map;Lm6/l;I)V
    .locals 1

    .line 1
    const-string v0, "authorizationStatus"

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Lm6/l;->c(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static synthetic lambda$requestPermissions$11(Lm6/l;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Exception;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private synthetic lambda$requestPermissions$12(Lm6/l;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->checkPermissions()Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->permissionManager:Lio/flutter/plugins/firebase/messaging/FlutterFirebasePermissionManager;

    .line 17
    .line 18
    iget-object v2, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->mainActivity:Landroid/app/Activity;

    .line 19
    .line 20
    new-instance v3, Lio/flutter/plugins/firebase/messaging/m;

    .line 21
    .line 22
    invoke-direct {v3, v0, p1}, Lio/flutter/plugins/firebase/messaging/m;-><init>(Ljava/util/Map;Lm6/l;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lio/flutter/plugins/firebase/messaging/n;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lio/flutter/plugins/firebase/messaging/n;-><init>(Lm6/l;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2, v3, v0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebasePermissionManager;->requestPermissions(Landroid/app/Activity;Lio/flutter/plugins/firebase/messaging/FlutterFirebasePermissionManager$RequestPermissionsSuccessCallback;Lio/flutter/plugins/firebase/messaging/ErrorCallback;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v1, "authorizationStatus"

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {p1, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method private static synthetic lambda$sendMessage$6(Ljava/util/Map;Lm6/l;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingUtils;->getFirebaseMessagingForArguments(Ljava/util/Map;)Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingUtils;->getRemoteMessageForArguments(Ljava/util/Map;)Lcom/google/firebase/messaging/u0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->N(Lcom/google/firebase/messaging/u0;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    invoke-virtual {p1, p0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p1, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method private synthetic lambda$setAutoInitEnabled$7(Ljava/util/Map;Lm6/l;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingUtils;->getFirebaseMessagingForArguments(Ljava/util/Map;)Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "enabled"

    .line 6
    .line 7
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    check-cast p1, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->O(Z)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin$2;

    .line 24
    .line 25
    invoke-direct {p1, p0, v0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin$2;-><init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Lcom/google/firebase/messaging/FirebaseMessaging;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p2, p1}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method private static synthetic lambda$setDeliveryMetricsExportToBigQuery$8(Ljava/util/Map;Lm6/l;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingUtils;->getFirebaseMessagingForArguments(Ljava/util/Map;)Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "enabled"

    .line 6
    .line 7
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    check-cast p0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-virtual {v0, p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->P(Z)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    invoke-virtual {p1, p0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p1, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method private static synthetic lambda$subscribeToTopic$4(Ljava/util/Map;Lm6/l;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingUtils;->getFirebaseMessagingForArguments(Ljava/util/Map;)Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "topic"

    .line 6
    .line 7
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->U(Ljava/lang/String;)Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lm6/n;->a(Lm6/Task;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    invoke-virtual {p1, p0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p1, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method private static synthetic lambda$unsubscribeFromTopic$5(Ljava/util/Map;Lm6/l;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingUtils;->getFirebaseMessagingForArguments(Ljava/util/Map;)Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "topic"

    .line 6
    .line 7
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->X(Ljava/lang/String;)Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lm6/n;->a(Lm6/Task;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    invoke-virtual {p1, p0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p1, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public static synthetic m(Ljava/util/Map;Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->lambda$setDeliveryMetricsExportToBigQuery$8(Ljava/util/Map;Lm6/l;)V

    return-void
.end method

.method public static synthetic n(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Lcom/google/firebase/messaging/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->lambda$initInstance$0(Lcom/google/firebase/messaging/u0;)V

    return-void
.end method

.method public static synthetic o(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Lio/flutter/plugin/common/MethodChannel$Result;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->lambda$onMethodCall$14(Lio/flutter/plugin/common/MethodChannel$Result;Lm6/Task;)V

    return-void
.end method

.method public static synthetic p(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Ljava/util/Map;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->lambda$setAutoInitEnabled$7(Ljava/util/Map;Lm6/l;)V

    return-void
.end method

.method public static synthetic q(Ljava/util/Map;Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->lambda$unsubscribeFromTopic$5(Ljava/util/Map;Lm6/l;)V

    return-void
.end method

.method private requestPermissions()Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/messaging/o;

    .line 9
    .line 10
    invoke-direct {v2, p0, v0}, Lio/flutter/plugins/firebase/messaging/o;-><init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method private sendMessage(Ljava/util/Map;)Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/messaging/u;

    .line 9
    .line 10
    invoke-direct {v2, p1, v0}, Lio/flutter/plugins/firebase/messaging/u;-><init>(Ljava/util/Map;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private setAutoInitEnabled(Ljava/util/Map;)Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/messaging/h;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1, v0}, Lio/flutter/plugins/firebase/messaging/h;-><init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Ljava/util/Map;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private setDeliveryMetricsExportToBigQuery(Ljava/util/Map;)Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/messaging/f;

    .line 9
    .line 10
    invoke-direct {v2, p1, v0}, Lio/flutter/plugins/firebase/messaging/f;-><init>(Ljava/util/Map;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private subscribeToTopic(Ljava/util/Map;)Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/messaging/s;

    .line 9
    .line 10
    invoke-direct {v2, p1, v0}, Lio/flutter/plugins/firebase/messaging/s;-><init>(Ljava/util/Map;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private uncheckedCastToMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    .line 3
    return-object p1
.end method

.method private unsubscribeFromTopic(Ljava/util/Map;)Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/messaging/k;

    .line 9
    .line 10
    invoke-direct {v2, p1, v0}, Lio/flutter/plugins/firebase/messaging/k;-><init>(Ljava/util/Map;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method


# virtual methods
.method public didReinitializeFirebaseCore()Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/messaging/l;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lio/flutter/plugins/firebase/messaging/l;-><init>(Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public getPluginConstantsForFirebaseApp(Lh7/f;)Lm6/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh7/f;",
            ")",
            "Lm6/Task;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm6/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm6/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v2, Lio/flutter/plugins/firebase/messaging/d;

    .line 9
    .line 10
    invoke-direct {v2, p1, v0}, Lio/flutter/plugins/firebase/messaging/d;-><init>(Lh7/f;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lm6/l;->a()Lm6/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    .line 1
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->permissionManager:Lio/flutter/plugins/firebase/messaging/FlutterFirebasePermissionManager;

    .line 5
    .line 6
    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->mainActivity:Landroid/app/Activity;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->mainActivity:Landroid/app/Activity;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->mainActivity:Landroid/app/Activity;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const/high16 v0, 0x100000

    .line 44
    .line 45
    and-int/2addr p1, v0

    .line 46
    if-eq p1, v0, :cond_0

    .line 47
    .line 48
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->mainActivity:Landroid/app/Activity;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->onNewIntent(Landroid/content/Intent;)Z

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lio/flutter/plugins/firebase/messaging/ContextHolder;->setApplicationContext(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->initInstance(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->mainActivity:Landroid/app/Activity;

    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->mainActivity:Landroid/app/Activity;

    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->liveDataToken:Landroidx/lifecycle/q;

    .line 2
    .line 3
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->tokenObserver:Landroidx/lifecycle/t;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->removeObserver(Landroidx/lifecycle/t;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->liveDataRemoteMessage:Landroidx/lifecycle/q;

    .line 9
    .line 10
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->remoteMessageObserver:Landroidx/lifecycle/t;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->removeObserver(Landroidx/lifecycle/t;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    sparse-switch v1, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :sswitch_0
    const-string v1, "Messaging#getToken"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_0
    const/16 v2, 0xa

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :sswitch_1
    const-string v1, "Messaging#getNotificationSettings"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_1
    const/16 v2, 0x9

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :sswitch_2
    const-string v1, "Messaging#requestPermission"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_2
    const/16 v2, 0x8

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :sswitch_3
    const-string v1, "Messaging#sendMessage"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const/4 v2, 0x7

    .line 68
    goto :goto_0

    .line 69
    :sswitch_4
    const-string v1, "Messaging#startBackgroundIsolate"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const/4 v2, 0x6

    .line 79
    goto :goto_0

    .line 80
    :sswitch_5
    const-string v1, "Messaging#setDeliveryMetricsExportToBigQuery"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_5

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    const/4 v2, 0x5

    .line 90
    goto :goto_0

    .line 91
    :sswitch_6
    const-string v1, "Messaging#subscribeToTopic"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_6

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    const/4 v2, 0x4

    .line 101
    goto :goto_0

    .line 102
    :sswitch_7
    const-string v1, "Messaging#unsubscribeFromTopic"

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_7

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_7
    const/4 v2, 0x3

    .line 112
    goto :goto_0

    .line 113
    :sswitch_8
    const-string v1, "Messaging#deleteToken"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_8

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_8
    const/4 v2, 0x2

    .line 123
    goto :goto_0

    .line 124
    :sswitch_9
    const-string v1, "Messaging#setAutoInitEnabled"

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_9

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_9
    const/4 v2, 0x1

    .line 134
    goto :goto_0

    .line 135
    :sswitch_a
    const-string v1, "Messaging#getInitialMessage"

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_a

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_a
    const/4 v2, 0x0

    .line 145
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 146
    .line 147
    .line 148
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :pswitch_0
    invoke-direct {p0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->getToken()Lm6/Task;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    goto/16 :goto_4

    .line 157
    .line 158
    :pswitch_1
    invoke-direct {p0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->getPermissions()Lm6/Task;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    goto/16 :goto_4

    .line 163
    .line 164
    :pswitch_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 165
    .line 166
    const/16 v0, 0x21

    .line 167
    .line 168
    if-lt p1, v0, :cond_b

    .line 169
    .line 170
    invoke-direct {p0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->requestPermissions()Lm6/Task;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    goto/16 :goto_4

    .line 175
    .line 176
    :cond_b
    invoke-direct {p0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->getPermissions()Lm6/Task;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    goto/16 :goto_4

    .line 181
    .line 182
    :pswitch_3
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Ljava/util/Map;

    .line 187
    .line 188
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->sendMessage(Ljava/util/Map;)Lm6/Task;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    goto/16 :goto_4

    .line 193
    .line 194
    :pswitch_4
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast p1, Ljava/util/Map;

    .line 197
    .line 198
    const-string v0, "pluginCallbackHandle"

    .line 199
    .line 200
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    const-string v1, "userCallbackHandle"

    .line 205
    .line 206
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    instance-of v1, v0, Ljava/lang/Long;

    .line 211
    .line 212
    if-eqz v1, :cond_c

    .line 213
    .line 214
    check-cast v0, Ljava/lang/Long;

    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 217
    .line 218
    .line 219
    move-result-wide v0

    .line 220
    goto :goto_1

    .line 221
    :cond_c
    instance-of v1, v0, Ljava/lang/Integer;

    .line 222
    .line 223
    if-eqz v1, :cond_10

    .line 224
    .line 225
    check-cast v0, Ljava/lang/Integer;

    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    int-to-long v0, v0

    .line 232
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 237
    .line 238
    .line 239
    move-result-wide v0

    .line 240
    :goto_1
    instance-of v2, p1, Ljava/lang/Long;

    .line 241
    .line 242
    if-eqz v2, :cond_d

    .line 243
    .line 244
    check-cast p1, Ljava/lang/Long;

    .line 245
    .line 246
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 247
    .line 248
    .line 249
    move-result-wide v2

    .line 250
    goto :goto_2

    .line 251
    :cond_d
    instance-of v2, p1, Ljava/lang/Integer;

    .line 252
    .line 253
    if-eqz v2, :cond_f

    .line 254
    .line 255
    check-cast p1, Ljava/lang/Integer;

    .line 256
    .line 257
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    int-to-long v2, p1

    .line 262
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 267
    .line 268
    .line 269
    move-result-wide v2

    .line 270
    :goto_2
    iget-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->mainActivity:Landroid/app/Activity;

    .line 271
    .line 272
    const/4 v4, 0x0

    .line 273
    if-eqz p1, :cond_e

    .line 274
    .line 275
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-static {p1}, Lio/flutter/embedding/engine/FlutterShellArgs;->fromIntent(Landroid/content/Intent;)Lio/flutter/embedding/engine/FlutterShellArgs;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    goto :goto_3

    .line 284
    :cond_e
    move-object p1, v4

    .line 285
    :goto_3
    invoke-static {v0, v1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->setCallbackDispatcher(J)V

    .line 286
    .line 287
    .line 288
    invoke-static {v2, v3}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->setUserCallbackHandle(J)V

    .line 289
    .line 290
    .line 291
    invoke-static {v0, v1, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingBackgroundService;->startBackgroundIsolate(JLio/flutter/embedding/engine/FlutterShellArgs;)V

    .line 292
    .line 293
    .line 294
    invoke-static {v4}, Lm6/n;->e(Ljava/lang/Object;)Lm6/Task;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    goto :goto_4

    .line 299
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 300
    .line 301
    const-string p2, "Expected \'Long\' or \'Integer\' type for \'userCallbackHandle\'."

    .line 302
    .line 303
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw p1

    .line 307
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 308
    .line 309
    const-string p2, "Expected \'Long\' or \'Integer\' type for \'pluginCallbackHandle\'."

    .line 310
    .line 311
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    throw p1

    .line 315
    :pswitch_5
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    check-cast p1, Ljava/util/Map;

    .line 320
    .line 321
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->setDeliveryMetricsExportToBigQuery(Ljava/util/Map;)Lm6/Task;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    goto :goto_4

    .line 326
    :pswitch_6
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    check-cast p1, Ljava/util/Map;

    .line 331
    .line 332
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->subscribeToTopic(Ljava/util/Map;)Lm6/Task;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    goto :goto_4

    .line 337
    :pswitch_7
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    check-cast p1, Ljava/util/Map;

    .line 342
    .line 343
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->unsubscribeFromTopic(Ljava/util/Map;)Lm6/Task;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    goto :goto_4

    .line 348
    :pswitch_8
    invoke-direct {p0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->deleteToken()Lm6/Task;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    goto :goto_4

    .line 353
    :pswitch_9
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    check-cast p1, Ljava/util/Map;

    .line 358
    .line 359
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->setAutoInitEnabled(Ljava/util/Map;)Lm6/Task;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    goto :goto_4

    .line 364
    :pswitch_a
    invoke-direct {p0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->getInitialMessage()Lm6/Task;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    :goto_4
    new-instance v0, Lio/flutter/plugins/firebase/messaging/q;

    .line 369
    .line 370
    invoke-direct {v0, p0, p2}, Lio/flutter/plugins/firebase/messaging/q;-><init>(Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1, v0}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 374
    .line 375
    .line 376
    return-void

    .line 377
    :sswitch_data_0
    .sparse-switch
        -0x659116c6 -> :sswitch_a
        -0x6304bde1 -> :sswitch_9
        -0x27332c11 -> :sswitch_8
        0x191cc013 -> :sswitch_7
        0x1e2dde89 -> :sswitch_6
        0x243b9fa3 -> :sswitch_5
        0x3756bbda -> :sswitch_4
        0x457e7c40 -> :sswitch_3
        0x4964bddf -> :sswitch_2
        0x4a23be05 -> :sswitch_1
        0x56fbb702 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "google.message_id"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v2, "message_id"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_1
    if-nez v0, :cond_2

    .line 32
    .line 33
    return v1

    .line 34
    :cond_2
    sget-object v2, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingReceiver;->notifications:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/google/firebase/messaging/u0;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    invoke-static {}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingStore;->getInstance()Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingStore;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3, v0}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingStore;->getFirebaseMessageMap(Ljava/lang/String;)Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    invoke-static {v3}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingUtils;->getRemoteMessageForArguments(Ljava/util/Map;)Lcom/google/firebase/messaging/u0;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v3}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingUtils;->getRemoteMessageNotificationForArguments(Ljava/util/Map;)Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v3, 0x0

    .line 64
    :goto_0
    if-nez v2, :cond_4

    .line 65
    .line 66
    return v1

    .line 67
    :cond_4
    iput-object v2, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->initialMessage:Lcom/google/firebase/messaging/u0;

    .line 68
    .line 69
    iput-object v3, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->initialMessageNotification:Ljava/util/Map;

    .line 70
    .line 71
    sget-object v1, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingReceiver;->notifications:Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingUtils;->remoteMessageToMap(Lcom/google/firebase/messaging/u0;)Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v2}, Lcom/google/firebase/messaging/u0;->p()Lcom/google/firebase/messaging/u0$c;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-nez v1, :cond_5

    .line 85
    .line 86
    iget-object v1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->initialMessageNotification:Ljava/util/Map;

    .line 87
    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    const-string v2, "notification"

    .line 91
    .line 92
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    :cond_5
    iget-object v1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 96
    .line 97
    const-string v2, "Messaging#onMessageOpenedApp"

    .line 98
    .line 99
    invoke-virtual {v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->mainActivity:Landroid/app/Activity;

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 105
    .line 106
    .line 107
    const/4 p1, 0x1

    .line 108
    return p1
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lio/flutter/plugins/firebase/messaging/FlutterFirebaseMessagingPlugin;->mainActivity:Landroid/app/Activity;

    .line 9
    .line 10
    return-void
.end method
