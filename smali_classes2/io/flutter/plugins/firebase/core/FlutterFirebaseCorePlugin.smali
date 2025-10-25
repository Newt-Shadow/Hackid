.class public Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$FirebaseCoreHostApi;
.implements Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$FirebaseAppHostApi;


# static fields
.field public static customAuthDomain:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private coreInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->customAuthDomain:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->coreInitialized:Z

    .line 6
    .line 7
    return-void
.end method

.method private firebaseAppToMap(Lh7/f;)Lm6/Task;
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
    new-instance v2, Lio/flutter/plugins/firebase/core/f;

    .line 9
    .line 10
    invoke-direct {v2, p0, p1, v0}, Lio/flutter/plugins/firebase/core/f;-><init>(Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;Lh7/f;Lm6/l;)V

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

.method private firebaseOptionsToMap(Lh7/n;)Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lh7/n;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions$Builder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lh7/n;->c()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions$Builder;->setAppId(Ljava/lang/String;)Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions$Builder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lh7/n;->f()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lh7/n;->f()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions$Builder;->setMessagingSenderId(Ljava/lang/String;)Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions$Builder;

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p1}, Lh7/n;->g()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Lh7/n;->g()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions$Builder;->setProjectId(Ljava/lang/String;)Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions$Builder;

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p1}, Lh7/n;->d()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions$Builder;->setDatabaseURL(Ljava/lang/String;)Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions$Builder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lh7/n;->h()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions$Builder;->setStorageBucket(Ljava/lang/String;)Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions$Builder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lh7/n;->e()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v0, p1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions$Builder;->setTrackingId(Ljava/lang/String;)Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions$Builder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions$Builder;->build()Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1
.end method

.method public static synthetic g(Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;Lh7/f;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->lambda$firebaseAppToMap$0(Lh7/f;Lm6/l;)V

    return-void
.end method

.method public static synthetic h(Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->lambda$initializeCore$4(Lm6/l;)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/String;Ljava/lang/Boolean;Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->lambda$setAutomaticResourceManagementEnabled$7(Ljava/lang/String;Ljava/lang/Boolean;Lm6/l;)V

    return-void
.end method

.method public static synthetic j(Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;Ljava/lang/String;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->lambda$initializeApp$3(Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;Ljava/lang/String;Lm6/l;)V

    return-void
.end method

.method public static synthetic k(Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->lambda$optionsFromResource$5(Lm6/l;)V

    return-void
.end method

.method public static synthetic l(Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$Result;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->lambda$listenToResponse$1(Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$Result;Lm6/Task;)V

    return-void
.end method

.method private static synthetic lambda$delete$8(Ljava/lang/String;Lm6/l;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lh7/f;->p(Ljava/lang/String;)Lh7/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    invoke-virtual {p0}, Lh7/f;->j()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    .line 7
    .line 8
    :catch_0
    const/4 p0, 0x0

    .line 9
    :try_start_2
    invoke-virtual {p1, p0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception p0

    .line 14
    invoke-virtual {p1, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private synthetic lambda$firebaseAppToMap$0(Lh7/f;Lm6/l;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lh7/f;->q()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;->setName(Ljava/lang/String;)Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lh7/f;->r()Lh7/n;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {p0, v1}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->firebaseOptionsToMap(Lh7/n;)Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;->setOptions(Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;)Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lh7/f;->x()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;->setIsAutomaticDataCollectionEnabled(Ljava/lang/Boolean;)Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lio/flutter/plugins/firebase/core/FlutterFirebasePluginRegistry;->getPluginConstantsForFirebaseApp(Lh7/f;)Lm6/Task;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lm6/n;->a(Lm6/Task;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/util/Map;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;->setPluginConstants(Ljava/util/Map;)Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse$Builder;->build()Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p2, p1}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p2, p1}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method private synthetic lambda$initializeApp$3(Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;Ljava/lang/String;Lm6/l;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lh7/n$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lh7/n$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;->getApiKey()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lh7/n$b;->b(Ljava/lang/String;)Lh7/n$b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;->getAppId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lh7/n$b;->c(Ljava/lang/String;)Lh7/n$b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;->getDatabaseURL()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lh7/n$b;->d(Ljava/lang/String;)Lh7/n$b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;->getMessagingSenderId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lh7/n$b;->f(Ljava/lang/String;)Lh7/n$b;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;->getProjectId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lh7/n$b;->g(Ljava/lang/String;)Lh7/n$b;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;->getStorageBucket()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lh7/n$b;->h(Ljava/lang/String;)Lh7/n$b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;->getTrackingId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lh7/n$b;->e(Ljava/lang/String;)Lh7/n$b;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lh7/n$b;->a()Lh7/n;

    .line 63
    .line 64
    .line 65
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    .line 68
    .line 69
    :catch_0
    :try_start_2
    invoke-virtual {p1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;->getAuthDomain()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    sget-object v1, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->customAuthDomain:Ljava/util/Map;

    .line 76
    .line 77
    invoke-virtual {p1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;->getAuthDomain()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->applicationContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {p1, v0, p2}, Lh7/f;->w(Landroid/content/Context;Lh7/n;Ljava/lang/String;)Lh7/f;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->firebaseAppToMap(Lh7/f;)Lm6/Task;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Lm6/n;->a(Lm6/Task;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse;

    .line 99
    .line 100
    invoke-virtual {p3, p1}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catch_1
    move-exception p1

    .line 105
    invoke-virtual {p3, p1}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void
.end method

.method private synthetic lambda$initializeCore$4(Lm6/l;)V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->coreInitialized:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->coreInitialized:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lio/flutter/plugins/firebase/core/FlutterFirebasePluginRegistry;->didReinitializeFirebaseCore()Lm6/Task;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lm6/n;->a(Lm6/Task;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->applicationContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v0}, Lh7/f;->n(Landroid/content/Context;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lh7/f;

    .line 46
    .line 47
    invoke-direct {p0, v2}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->firebaseAppToMap(Lh7/f;)Lm6/Task;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2}, Lm6/n;->a(Lm6/Task;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse;

    .line 56
    .line 57
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p1, v1}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {p1, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 67
    .line 68
    .line 69
    :goto_2
    return-void
.end method

.method private static synthetic lambda$listenToResponse$1(Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$Result;Lm6/Task;)V
    .locals 1

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
    invoke-interface {p0, p1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$Result;->success(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lm6/Task;->k()Ljava/lang/Exception;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p0, p1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$Result;->error(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private static synthetic lambda$listenToVoidResponse$2(Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$VoidResult;Lm6/Task;)V
    .locals 1

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
    invoke-interface {p0}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$VoidResult;->success()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lm6/Task;->k()Ljava/lang/Exception;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p0, p1}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$VoidResult;->error(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private synthetic lambda$optionsFromResource$5(Lm6/l;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->applicationContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lh7/n;->a(Landroid/content/Context;)Lh7/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Exception;

    .line 10
    .line 11
    const-string v1, "Failed to load FirebaseOptions from resource. Check that you have defined values.xml correctly."

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0, v0}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->firebaseOptionsToMap(Lh7/n;)Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lm6/l;->c(Ljava/lang/Object;)V
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

.method private static synthetic lambda$setAutomaticDataCollectionEnabled$6(Ljava/lang/String;Ljava/lang/Boolean;Lm6/l;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lh7/f;->p(Ljava/lang/String;)Lh7/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lh7/f;->F(Ljava/lang/Boolean;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    invoke-virtual {p2, p0}, Lm6/l;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p2, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private static synthetic lambda$setAutomaticResourceManagementEnabled$7(Ljava/lang/String;Ljava/lang/Boolean;Lm6/l;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lh7/f;->p(Ljava/lang/String;)Lh7/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lh7/f;->E(Z)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    invoke-virtual {p2, p0}, Lm6/l;->c(Ljava/lang/Object;)V
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
    invoke-virtual {p2, p0}, Lm6/l;->b(Ljava/lang/Exception;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method private listenToResponse(Lm6/l;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lm6/l;",
            "Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$Result<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lm6/l;->a()Lm6/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lio/flutter/plugins/firebase/core/d;

    .line 6
    .line 7
    invoke-direct {v0, p2}, Lio/flutter/plugins/firebase/core/d;-><init>(Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$Result;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private listenToVoidResponse(Lm6/l;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$VoidResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm6/l;",
            "Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$VoidResult;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lm6/l;->a()Lm6/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lio/flutter/plugins/firebase/core/b;

    .line 6
    .line 7
    invoke-direct {v0, p2}, Lio/flutter/plugins/firebase/core/b;-><init>(Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$VoidResult;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lm6/Task;->c(Lm6/f;)Lm6/Task;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic m(Ljava/lang/String;Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->lambda$delete$8(Ljava/lang/String;Lm6/l;)V

    return-void
.end method

.method public static synthetic n(Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$VoidResult;Lm6/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->lambda$listenToVoidResponse$2(Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$VoidResult;Lm6/Task;)V

    return-void
.end method

.method public static synthetic o(Ljava/lang/String;Ljava/lang/Boolean;Lm6/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->lambda$setAutomaticDataCollectionEnabled$6(Ljava/lang/String;Ljava/lang/Boolean;Lm6/l;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$VoidResult;)V
    .locals 3

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
    new-instance v2, Lio/flutter/plugins/firebase/core/h;

    .line 9
    .line 10
    invoke-direct {v2, p1, v0}, Lio/flutter/plugins/firebase/core/h;-><init>(Ljava/lang/String;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p2}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->listenToVoidResponse(Lm6/l;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$VoidResult;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public initializeApp(Ljava/lang/String;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;",
            "Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$Result<",
            "Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse;",
            ">;)V"
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
    new-instance v2, Lio/flutter/plugins/firebase/core/c;

    .line 9
    .line 10
    invoke-direct {v2, p0, p2, p1, v0}, Lio/flutter/plugins/firebase/core/c;-><init>(Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;Ljava/lang/String;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p3}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->listenToResponse(Lm6/l;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$Result;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public initializeCore(Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$Result<",
            "Ljava/util/List<",
            "Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreInitializeResponse;",
            ">;>;)V"
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
    new-instance v2, Lio/flutter/plugins/firebase/core/i;

    .line 9
    .line 10
    invoke-direct {v2, p0, v0}, Lio/flutter/plugins/firebase/core/i;-><init>(Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->listenToResponse(Lm6/l;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$Result;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p0}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$FirebaseCoreHostApi;->setUp(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$FirebaseCoreHostApi;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0, p0}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$FirebaseAppHostApi;->setUp(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$FirebaseAppHostApi;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->applicationContext:Landroid/content/Context;

    .line 20
    .line 21
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->applicationContext:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1, v0}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$FirebaseCoreHostApi;->setUp(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$FirebaseCoreHostApi;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1, v0}, Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$FirebaseAppHostApi;->setUp(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$FirebaseAppHostApi;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public optionsFromResource(Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$Result<",
            "Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;",
            ">;)V"
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
    new-instance v2, Lio/flutter/plugins/firebase/core/e;

    .line 9
    .line 10
    invoke-direct {v2, p0, v0}, Lio/flutter/plugins/firebase/core/e;-><init>(Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->listenToResponse(Lm6/l;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$Result;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setAutomaticDataCollectionEnabled(Ljava/lang/String;Ljava/lang/Boolean;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$VoidResult;)V
    .locals 3

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
    new-instance v2, Lio/flutter/plugins/firebase/core/g;

    .line 9
    .line 10
    invoke-direct {v2, p1, p2, v0}, Lio/flutter/plugins/firebase/core/g;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p3}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->listenToVoidResponse(Lm6/l;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$VoidResult;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setAutomaticResourceManagementEnabled(Ljava/lang/String;Ljava/lang/Boolean;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$VoidResult;)V
    .locals 3

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
    new-instance v2, Lio/flutter/plugins/firebase/core/a;

    .line 9
    .line 10
    invoke-direct {v2, p1, p2, v0}, Lio/flutter/plugins/firebase/core/a;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lm6/l;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, p3}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->listenToVoidResponse(Lm6/l;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$VoidResult;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
