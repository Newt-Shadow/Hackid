.class public final Lio/sentry/android/core/ActivityBreadcrumbsIntegration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/e1;
.implements Ljava/io/Closeable;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final a:Landroid/app/Application;

.field private b:Lio/sentry/o0;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Application is required"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/app/Application;

    .line 11
    .line 12
    iput-object p1, p0, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->a:Landroid/app/Application;

    .line 13
    .line 14
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->b:Lio/sentry/o0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lio/sentry/e;

    .line 7
    .line 8
    invoke-direct {v0}, Lio/sentry/e;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "navigation"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/sentry/e;->r(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "state"

    .line 17
    .line 18
    invoke-virtual {v0, v1, p2}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const-string p2, "screen"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->b(Landroid/app/Activity;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, p2, v1}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-string p2, "ui.lifecycle"

    .line 31
    .line 32
    invoke-virtual {v0, p2}, Lio/sentry/e;->n(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object p2, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 36
    .line 37
    invoke-virtual {v0, p2}, Lio/sentry/e;->p(Lio/sentry/j5;)V

    .line 38
    .line 39
    .line 40
    new-instance p2, Lio/sentry/c0;

    .line 41
    .line 42
    invoke-direct {p2}, Lio/sentry/c0;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "android:activity"

    .line 46
    .line 47
    invoke-virtual {p2, v1, p1}, Lio/sentry/c0;->k(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->b:Lio/sentry/o0;

    .line 51
    .line 52
    invoke-interface {p1, v0, p2}, Lio/sentry/o0;->p(Lio/sentry/e;Lio/sentry/c0;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private b(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->a:Landroid/app/Application;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->b:Lio/sentry/o0;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    const-string v3, "ActivityBreadcrumbsIntegration removed."

    .line 28
    .line 29
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public f(Lio/sentry/o0;Lio/sentry/s5;)V
    .locals 3

    .line 1
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 17
    .line 18
    const-string v1, "Hub is required"

    .line 19
    .line 20
    invoke-static {p1, v1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lio/sentry/o0;

    .line 25
    .line 26
    iput-object p1, p0, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->b:Lio/sentry/o0;

    .line 27
    .line 28
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleBreadcrumbs()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput-boolean p1, p0, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->c:Z

    .line 33
    .line 34
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 39
    .line 40
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->c:Z

    .line 41
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
    const-string v2, "ActivityBreadcrumbsIntegration enabled: %s"

    .line 51
    .line 52
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-boolean p1, p0, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->c:Z

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    iget-object p1, p0, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->a:Landroid/app/Application;

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const/4 p2, 0x0

    .line 69
    new-array p2, p2, [Ljava/lang/Object;

    .line 70
    .line 71
    const-string v1, "ActivityBreadcrumbIntegration installed."

    .line 72
    .line 73
    invoke-interface {p1, v0, v1, p2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    const-string p1, "ActivityBreadcrumbs"

    .line 77
    .line 78
    invoke-static {p1}, Lio/sentry/util/k;->a(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void
.end method

.method public declared-synchronized onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string p2, "created"

    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public declared-synchronized onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "destroyed"

    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public declared-synchronized onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "paused"

    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "resumed"

    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public declared-synchronized onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string p2, "saveInstanceState"

    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "started"

    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "stopped"

    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method
