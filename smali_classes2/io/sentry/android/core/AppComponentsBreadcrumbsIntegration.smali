.class public final Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/e1;
.implements Ljava/io/Closeable;
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lio/sentry/o0;

.field private c:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/sentry/android/core/x0;->h(Landroid/content/Context;)Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "Context is required"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/content/Context;

    .line 15
    .line 16
    iput-object p1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->a:Landroid/content/Context;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;JLandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->j(JLandroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->k(J)V

    return-void
.end method

.method public static synthetic c(Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->q(JI)V

    return-void
.end method

.method private e(JLandroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->b:Lio/sentry/o0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 16
    .line 17
    invoke-static {v0}, Lio/sentry/android/core/internal/util/h;->a(I)Lio/sentry/protocol/e$b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v0, "undefined"

    .line 35
    .line 36
    :goto_0
    new-instance v1, Lio/sentry/e;

    .line 37
    .line 38
    invoke-direct {v1, p1, p2}, Lio/sentry/e;-><init>(J)V

    .line 39
    .line 40
    .line 41
    const-string p1, "navigation"

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Lio/sentry/e;->r(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string p1, "device.orientation"

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Lio/sentry/e;->n(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string p1, "position"

    .line 52
    .line 53
    invoke-virtual {v1, p1, v0}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    sget-object p1, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 57
    .line 58
    invoke-virtual {v1, p1}, Lio/sentry/e;->p(Lio/sentry/j5;)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Lio/sentry/c0;

    .line 62
    .line 63
    invoke-direct {p1}, Lio/sentry/c0;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string p2, "android:configuration"

    .line 67
    .line 68
    invoke-virtual {p1, p2, p3}, Lio/sentry/c0;->k(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->b:Lio/sentry/o0;

    .line 72
    .line 73
    invoke-interface {p2, v1, p1}, Lio/sentry/o0;->p(Lio/sentry/e;Lio/sentry/c0;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
.end method

.method private g(JLjava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->b:Lio/sentry/o0;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Lio/sentry/e;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Lio/sentry/e;-><init>(J)V

    .line 8
    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/16 p2, 0x28

    .line 17
    .line 18
    if-ge p1, p2, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string p1, "level"

    .line 22
    .line 23
    invoke-virtual {v0, p1, p3}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    const-string p1, "system"

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lio/sentry/e;->r(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p1, "device.event"

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lio/sentry/e;->n(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p1, "Low memory"

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lio/sentry/e;->q(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p1, "action"

    .line 42
    .line 43
    const-string p2, "LOW_MEMORY"

    .line 44
    .line 45
    invoke-virtual {v0, p1, p2}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lio/sentry/e;->p(Lio/sentry/j5;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->b:Lio/sentry/o0;

    .line 54
    .line 55
    invoke-interface {p1, v0}, Lio/sentry/o0;->t(Lio/sentry/e;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method private h(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 15
    .line 16
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    const-string v3, "Failed to submit app components breadcrumb task"

    .line 26
    .line 27
    invoke-interface {v0, v1, p1, v3, v2}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic j(JLandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->e(JLandroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic k(J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->g(JLjava/lang/Integer;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private synthetic q(JI)V
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->g(JLjava/lang/Integer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->a:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 18
    .line 19
    const-string v4, "It was not possible to unregisterComponentCallbacks"

    .line 20
    .line 21
    new-array v5, v0, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-interface {v2, v3, v1, v4, v5}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 35
    .line 36
    const-string v3, "AppComponentsBreadcrumbsIntegration removed."

    .line 37
    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public f(Lio/sentry/o0;Lio/sentry/s5;)V
    .locals 4

    .line 1
    const-string v0, "Hub is required"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/sentry/o0;

    .line 8
    .line 9
    iput-object p1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->b:Lio/sentry/o0;

    .line 10
    .line 11
    instance-of p1, p2, Lio/sentry/android/core/SentryAndroidOptions;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    move-object p1, p2

    .line 16
    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    const-string v0, "SentryAndroidOptions is required"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 27
    .line 28
    iput-object p1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 29
    .line 30
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 35
    .line 36
    iget-object v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 37
    .line 38
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppComponentBreadcrumbs()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "AppComponentsBreadcrumbsIntegration enabled: %s"

    .line 51
    .line 52
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 56
    .line 57
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppComponentBreadcrumbs()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->a:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {v1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, "AppComponentsBreadcrumbsIntegration installed."

    .line 74
    .line 75
    new-array v3, p1, [Ljava/lang/Object;

    .line 76
    .line 77
    invoke-interface {v1, v0, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const-string v0, "AppComponentsBreadcrumbs"

    .line 81
    .line 82
    invoke-static {v0}, Lio/sentry/util/k;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    iget-object v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 88
    .line 89
    invoke-virtual {v1, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppComponentBreadcrumbs(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    sget-object v1, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 97
    .line 98
    const-string v2, "ComponentCallbacks2 is not available."

    .line 99
    .line 100
    new-array p1, p1, [Ljava/lang/Object;

    .line 101
    .line 102
    invoke-interface {p2, v1, v0, v2, p1}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Lio/sentry/android/core/l0;

    .line 6
    .line 7
    invoke-direct {v2, p0, v0, v1, p1}, Lio/sentry/android/core/l0;-><init>(Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;JLandroid/content/res/Configuration;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v2}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->h(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Lio/sentry/android/core/j0;

    .line 6
    .line 7
    invoke-direct {v2, p0, v0, v1}, Lio/sentry/android/core/j0;-><init>(Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;J)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v2}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->h(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Lio/sentry/android/core/k0;

    .line 6
    .line 7
    invoke-direct {v2, p0, v0, v1, p1}, Lio/sentry/android/core/k0;-><init>(Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;JI)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v2}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->h(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
