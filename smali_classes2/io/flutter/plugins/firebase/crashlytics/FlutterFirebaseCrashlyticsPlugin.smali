.class public Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field private static final FIREBASE_CRASHLYTICS_COLLECTION_ENABLED:Ljava/lang/String; = "firebase_crashlytics_collection_enabled"

.field public static final TAG:Ljava/lang/String; = "FLTFirebaseCrashlytics"


# instance fields
.field private channel:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->lambda$didReinitializeFirebaseCore$12(Lm6/l;)V

    return-void
.end method

.method public static synthetic b(Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;Ljava/util/Map;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->lambda$setCrashlyticsCollectionEnabled$7(Ljava/util/Map;Lm6/l;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/Map;Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->lambda$setUserIdentifier$8(Ljava/util/Map;Lm6/l;)V

    return-void
.end method

.method private checkForUnsentReports()Lm6/Task;
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
    new-instance v2, Lio/flutter/plugins/firebase/crashlytics/c;

    .line 9
    .line 10
    invoke-direct {v2, p0, v0}, Lio/flutter/plugins/firebase/crashlytics/c;-><init>(Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;Lm6/l;)V

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

.method private crash()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lio/flutter/plugins/firebase/crashlytics/d;

    .line 11
    .line 12
    invoke-direct {v1}, Lio/flutter/plugins/firebase/crashlytics/d;-><init>()V

    .line 13
    .line 14
    .line 15
    const-wide/16 v2, 0x32

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static synthetic d(Lio/flutter/plugin/common/MethodChannel$Result;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->lambda$onMethodCall$10(Lio/flutter/plugin/common/MethodChannel$Result;Lm6/Task;)V

    return-void
.end method

.method private deleteUnsentReports()Lm6/Task;
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
    new-instance v2, Lio/flutter/plugins/firebase/crashlytics/j;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lio/flutter/plugins/firebase/crashlytics/j;-><init>(Lm6/l;)V

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

.method private didCrashOnPreviousExecution()Lm6/Task;
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
    new-instance v2, Lio/flutter/plugins/firebase/crashlytics/a;

    .line 9
    .line 10
    invoke-direct {v2, p0, v0}, Lio/flutter/plugins/firebase/crashlytics/a;-><init>(Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;Lm6/l;)V

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
    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->lambda$log$5(Ljava/util/Map;Lm6/l;)V

    return-void
.end method

.method public static synthetic f(Ljava/util/Map;Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->lambda$setCustomKey$9(Ljava/util/Map;Lm6/l;)V

    return-void
.end method

.method public static synthetic g(Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;Ljava/util/Map;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->lambda$recordError$4(Ljava/util/Map;Lm6/l;)V

    return-void
.end method

.method private generateStackTraceElement(Ljava/util/Map;)Ljava/lang/StackTraceElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "file"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "line"

    .line 10
    .line 11
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "class"

    .line 18
    .line 19
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    const-string v3, "method"

    .line 26
    .line 27
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/String;

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StackTraceElement;

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    const-string v2, ""

    .line 38
    .line 39
    :cond_0
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-direct {v3, v2, p1, v0, v1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    return-object v3

    .line 50
    :catch_0
    const-string p1, "FLTFirebaseCrashlytics"

    .line 51
    .line 52
    const-string v0, "Unable to generate stack trace element from Dart error."

    .line 53
    .line 54
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    return-object p1
.end method

.method private getCrashlyticsSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    const-string v0, "com.google.firebase.crashlytics"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public static synthetic h()V
    .locals 0

    .line 1
    invoke-static {}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->lambda$crash$1()V

    return-void
.end method

.method public static synthetic i(Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;Lm6/l;Lh7/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->lambda$getPluginConstantsForFirebaseApp$11(Lm6/l;Lh7/f;)V

    return-void
.end method

.method private initInstance(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    const-string v1, "plugins.flutter.io/firebase_crashlytics"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1, p0}, Lio/flutter/plugins/firebase/core/FlutterFirebasePluginRegistry;->registerPlugin(Ljava/lang/String;Lio/flutter/plugins/firebase/core/FlutterFirebasePlugin;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private isCrashlyticsCollectionEnabled(Lh7/f;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lh7/f;->m()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->getCrashlyticsSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "firebase_crashlytics_collection_enabled"

    .line 10
    .line 11
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lh7/f;->m()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->readCrashlyticsDataCollectionEnabledFromManifest(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->e()Lcom/google/firebase/crashlytics/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/a;->k(Ljava/lang/Boolean;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    :goto_0
    return p1
.end method

.method public static synthetic j(Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->lambda$checkForUnsentReports$0(Lm6/l;)V

    return-void
.end method

.method public static synthetic k(Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->lambda$didCrashOnPreviousExecution$3(Lm6/l;)V

    return-void
.end method

.method public static synthetic l(Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->lambda$sendUnsentReports$6(Lm6/l;)V

    return-void
.end method

.method private synthetic lambda$checkForUnsentReports$0(Lm6/l;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->e()Lcom/google/firebase/crashlytics/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/a;->b()Lm6/Task;

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
    check-cast v0, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    new-instance v1, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin$1;

    .line 20
    .line 21
    invoke-direct {v1, p0, v0}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin$1;-><init>(Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {p1, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method private static synthetic lambda$crash$1()V
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugins/firebase/crashlytics/FirebaseCrashlyticsTestCrash;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/firebase/crashlytics/FirebaseCrashlyticsTestCrash;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method private static synthetic lambda$deleteUnsentReports$2(Lm6/l;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->e()Lcom/google/firebase/crashlytics/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/a;->c()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {p0, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private synthetic lambda$didCrashOnPreviousExecution$3(Lm6/l;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->e()Lcom/google/firebase/crashlytics/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/a;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin$2;

    .line 10
    .line 11
    invoke-direct {v1, p0, v0}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin$2;-><init>(Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {p1, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private static synthetic lambda$didReinitializeFirebaseCore$12(Lm6/l;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    .line 5
    goto :goto_0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {p0, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method private synthetic lambda$getPluginConstantsForFirebaseApp$11(Lm6/l;Lh7/f;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin$4;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin$4;-><init>(Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;Lh7/f;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p2

    .line 11
    invoke-virtual {p1, p2}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method private static synthetic lambda$log$5(Ljava/util/Map;Lm6/l;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "message"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->e()Lcom/google/firebase/crashlytics/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/a;->h(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    invoke-virtual {p1, p0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p1, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method private static synthetic lambda$onMethodCall$10(Lio/flutter/plugin/common/MethodChannel$Result;Lm6/Task;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lm6/Task;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lm6/Task;->l()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lm6/Task;->k()Ljava/lang/Exception;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string p1, "An unknown error occurred"

    .line 27
    .line 28
    :goto_0
    const-string v0, "firebase_crashlytics"

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-interface {p0, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_1
    return-void
.end method

.method private synthetic lambda$recordError$4(Ljava/util/Map;Lm6/l;)V
    .locals 8

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->e()Lcom/google/firebase/crashlytics/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "exception"

    .line 6
    .line 7
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    check-cast v1, Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "reason"

    .line 17
    .line 18
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, "information"

    .line 25
    .line 26
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    const-string v4, "fatal"

    .line 36
    .line 37
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    check-cast v4, Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const-string v5, "buildId"

    .line 51
    .line 52
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    check-cast v5, Ljava/lang/String;

    .line 60
    .line 61
    const-string v6, "loadingUnits"

    .line 62
    .line 63
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    check-cast v6, Ljava/util/List;

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-lez v7, :cond_0

    .line 77
    .line 78
    invoke-static {v5}, Lcom/google/firebase/crashlytics/b;->b(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-static {v6}, Lcom/google/firebase/crashlytics/b;->c(Ljava/util/List;)V

    .line 82
    .line 83
    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    const-string v5, "flutter_error_reason"

    .line 87
    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v7, "thrown "

    .line 94
    .line 95
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v0, v5, v6}, Lcom/google/firebase/crashlytics/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v5, Lio/flutter/plugins/firebase/crashlytics/FlutterError;

    .line 109
    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v7, ". Error thrown "

    .line 119
    .line 120
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v2, "."

    .line 127
    .line 128
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-direct {v5, v2}, Lio/flutter/plugins/firebase/crashlytics/FlutterError;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_1
    new-instance v5, Lio/flutter/plugins/firebase/crashlytics/FlutterError;

    .line 140
    .line 141
    invoke-direct {v5, v1}, Lio/flutter/plugins/firebase/crashlytics/FlutterError;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_0
    const-string v2, "flutter_error_exception"

    .line 145
    .line 146
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/crashlytics/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v1, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v2, "stackTraceElements"

    .line 155
    .line 156
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    check-cast p1, Ljava/util/List;

    .line 164
    .line 165
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_3

    .line 174
    .line 175
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    check-cast v2, Ljava/util/Map;

    .line 180
    .line 181
    invoke-direct {p0, v2}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->generateStackTraceElement(Ljava/util/Map;)Ljava/lang/StackTraceElement;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    if-eqz v2, :cond_2

    .line 186
    .line 187
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_3
    const/4 p1, 0x0

    .line 192
    new-array p1, p1, [Ljava/lang/StackTraceElement;

    .line 193
    .line 194
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    check-cast p1, [Ljava/lang/StackTraceElement;

    .line 199
    .line 200
    invoke-virtual {v5, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-nez p1, :cond_4

    .line 208
    .line 209
    invoke-virtual {v0, v3}, Lcom/google/firebase/crashlytics/a;->h(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_4
    if-eqz v4, :cond_5

    .line 213
    .line 214
    invoke-static {v5}, Lcom/google/firebase/crashlytics/b;->a(Ljava/lang/Throwable;)V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_5
    invoke-virtual {v0, v5}, Lcom/google/firebase/crashlytics/a;->i(Ljava/lang/Throwable;)V

    .line 219
    .line 220
    .line 221
    :goto_2
    const/4 p1, 0x0

    .line 222
    invoke-virtual {p2, p1}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :catch_0
    move-exception p1

    .line 227
    invoke-virtual {p2, p1}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 228
    .line 229
    .line 230
    :goto_3
    return-void
.end method

.method private static synthetic lambda$sendUnsentReports$6(Lm6/l;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->e()Lcom/google/firebase/crashlytics/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/a;->j()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {p0, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private synthetic lambda$setCrashlyticsCollectionEnabled$7(Ljava/util/Map;Lm6/l;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "enabled"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->e()Lcom/google/firebase/crashlytics/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/a;->k(Ljava/lang/Boolean;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin$3;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin$3;-><init>(Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p2, p1}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method private static synthetic lambda$setCustomKey$9(Ljava/util/Map;Lm6/l;)V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "key"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "value"

    .line 13
    .line 14
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->e()Lcom/google/firebase/crashlytics/a;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0, p0}, Lcom/google/firebase/crashlytics/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    invoke-virtual {p1, p0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p1, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method private static synthetic lambda$setUserIdentifier$8(Ljava/util/Map;Lm6/l;)V
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "identifier"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->e()Lcom/google/firebase/crashlytics/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/a;->m(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    invoke-virtual {p1, p0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p1, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method private log(Ljava/util/Map;)Lm6/Task;
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
    new-instance v2, Lio/flutter/plugins/firebase/crashlytics/k;

    .line 9
    .line 10
    invoke-direct {v2, p1, v0}, Lio/flutter/plugins/firebase/crashlytics/k;-><init>(Ljava/util/Map;Lm6/l;)V

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

.method public static synthetic m(Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->lambda$deleteUnsentReports$2(Lm6/l;)V

    return-void
.end method

.method static bridge synthetic n(Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;Lh7/f;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->isCrashlyticsCollectionEnabled(Lh7/f;)Z

    move-result p0

    return p0
.end method

.method private static readCrashlyticsDataCollectionEnabledFromManifest(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    const-string v0, "firebase_crashlytics_collection_enabled"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/16 v2, 0x80

    .line 14
    .line 15
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-object p0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "Could not read data collection permission from manifest"

    .line 48
    .line 49
    invoke-virtual {v0, v1, p0}, Ln7/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    .line 54
    return-object p0
.end method

.method private recordError(Ljava/util/Map;)Lm6/Task;
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
    new-instance v2, Lio/flutter/plugins/firebase/crashlytics/f;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1, v0}, Lio/flutter/plugins/firebase/crashlytics/f;-><init>(Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;Ljava/util/Map;Lm6/l;)V

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

.method private sendUnsentReports()Lm6/Task;
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
    new-instance v2, Lio/flutter/plugins/firebase/crashlytics/b;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lio/flutter/plugins/firebase/crashlytics/b;-><init>(Lm6/l;)V

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

.method private setCrashlyticsCollectionEnabled(Ljava/util/Map;)Lm6/Task;
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
    new-instance v2, Lio/flutter/plugins/firebase/crashlytics/g;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1, v0}, Lio/flutter/plugins/firebase/crashlytics/g;-><init>(Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;Ljava/util/Map;Lm6/l;)V

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

.method private setCustomKey(Ljava/util/Map;)Lm6/Task;
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
    new-instance v2, Lio/flutter/plugins/firebase/crashlytics/l;

    .line 9
    .line 10
    invoke-direct {v2, p1, v0}, Lio/flutter/plugins/firebase/crashlytics/l;-><init>(Ljava/util/Map;Lm6/l;)V

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

.method private setUserIdentifier(Ljava/util/Map;)Lm6/Task;
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
    new-instance v2, Lio/flutter/plugins/firebase/crashlytics/h;

    .line 9
    .line 10
    invoke-direct {v2, p1, v0}, Lio/flutter/plugins/firebase/crashlytics/h;-><init>(Ljava/util/Map;Lm6/l;)V

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
    new-instance v2, Lio/flutter/plugins/firebase/crashlytics/e;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lio/flutter/plugins/firebase/crashlytics/e;-><init>(Lm6/l;)V

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
    new-instance v2, Lio/flutter/plugins/firebase/crashlytics/i;

    .line 9
    .line 10
    invoke-direct {v2, p0, v0, p1}, Lio/flutter/plugins/firebase/crashlytics/i;-><init>(Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;Lm6/l;Lh7/f;)V

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

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->initInstance(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

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
    const-string v1, "Crashlytics#crash"

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
    const/16 v2, 0x9

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :sswitch_1
    const-string v1, "Crashlytics#setUserIdentifier"

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
    const/16 v2, 0x8

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :sswitch_2
    const-string v1, "Crashlytics#deleteUnsentReports"

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
    goto :goto_0

    .line 53
    :cond_2
    const/4 v2, 0x7

    .line 54
    goto :goto_0

    .line 55
    :sswitch_3
    const-string v1, "Crashlytics#setCustomKey"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 v2, 0x6

    .line 65
    goto :goto_0

    .line 66
    :sswitch_4
    const-string v1, "Crashlytics#log"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/4 v2, 0x5

    .line 76
    goto :goto_0

    .line 77
    :sswitch_5
    const-string v1, "Crashlytics#setCrashlyticsCollectionEnabled"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    const/4 v2, 0x4

    .line 87
    goto :goto_0

    .line 88
    :sswitch_6
    const-string v1, "Crashlytics#sendUnsentReports"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_6

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_6
    const/4 v2, 0x3

    .line 98
    goto :goto_0

    .line 99
    :sswitch_7
    const-string v1, "Crashlytics#checkForUnsentReports"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_7

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_7
    const/4 v2, 0x2

    .line 109
    goto :goto_0

    .line 110
    :sswitch_8
    const-string v1, "Crashlytics#recordError"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_8

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_8
    const/4 v2, 0x1

    .line 120
    goto :goto_0

    .line 121
    :sswitch_9
    const-string v1, "Crashlytics#didCrashOnPreviousExecution"

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_9

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_9
    const/4 v2, 0x0

    .line 131
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 132
    .line 133
    .line 134
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :pswitch_0
    invoke-direct {p0}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->crash()V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :pswitch_1
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Ljava/util/Map;

    .line 147
    .line 148
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->setUserIdentifier(Ljava/util/Map;)Lm6/Task;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    goto :goto_1

    .line 153
    :pswitch_2
    invoke-direct {p0}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->deleteUnsentReports()Lm6/Task;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    goto :goto_1

    .line 158
    :pswitch_3
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Ljava/util/Map;

    .line 163
    .line 164
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->setCustomKey(Ljava/util/Map;)Lm6/Task;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    goto :goto_1

    .line 169
    :pswitch_4
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Ljava/util/Map;

    .line 174
    .line 175
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->log(Ljava/util/Map;)Lm6/Task;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    goto :goto_1

    .line 180
    :pswitch_5
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Ljava/util/Map;

    .line 185
    .line 186
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->setCrashlyticsCollectionEnabled(Ljava/util/Map;)Lm6/Task;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    goto :goto_1

    .line 191
    :pswitch_6
    invoke-direct {p0}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->sendUnsentReports()Lm6/Task;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    goto :goto_1

    .line 196
    :pswitch_7
    invoke-direct {p0}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->checkForUnsentReports()Lm6/Task;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    goto :goto_1

    .line 201
    :pswitch_8
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Ljava/util/Map;

    .line 206
    .line 207
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->recordError(Ljava/util/Map;)Lm6/Task;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    goto :goto_1

    .line 212
    :pswitch_9
    invoke-direct {p0}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->didCrashOnPreviousExecution()Lm6/Task;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    :goto_1
    new-instance v0, Lio/flutter/plugins/firebase/crashlytics/m;

    .line 217
    .line 218
    invoke-direct {v0, p2}, Lio/flutter/plugins/firebase/crashlytics/m;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v0}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :sswitch_data_0
    .sparse-switch
        -0x7cdea050 -> :sswitch_9
        -0x55a94e53 -> :sswitch_8
        -0x3d1a385d -> :sswitch_7
        -0x19517ae4 -> :sswitch_6
        -0x6725b5e -> :sswitch_5
        0x1acaaba -> :sswitch_4
        0x6764836 -> :sswitch_3
        0xcbbba59 -> :sswitch_2
        0x288568cc -> :sswitch_1
        0x48af659d -> :sswitch_0
    .end sparse-switch

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :pswitch_data_0
    .packed-switch 0x0
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
