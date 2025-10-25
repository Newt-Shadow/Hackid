.class public final Lio/sentry/android/core/NetworkBreadcrumbsIntegration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/e1;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;,
        Lio/sentry/android/core/NetworkBreadcrumbsIntegration$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/sentry/android/core/p0;

.field private final c:Lio/sentry/ILogger;

.field private final d:Ljava/lang/Object;

.field private volatile e:Z

.field private f:Lio/sentry/s5;

.field volatile g:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/p0;Lio/sentry/ILogger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->d:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {p1}, Lio/sentry/android/core/x0;->h(Landroid/content/Context;)Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "Context is required"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/content/Context;

    .line 22
    .line 23
    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->a:Landroid/content/Context;

    .line 24
    .line 25
    const-string p1, "BuildInfoProvider is required"

    .line 26
    .line 27
    invoke-static {p2, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lio/sentry/android/core/p0;

    .line 32
    .line 33
    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->b:Lio/sentry/android/core/p0;

    .line 34
    .line 35
    const-string p1, "ILogger is required"

    .line 36
    .line 37
    invoke-static {p3, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lio/sentry/ILogger;

    .line 42
    .line 43
    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->c:Lio/sentry/ILogger;

    .line 44
    .line 45
    return-void
.end method

.method public static synthetic a(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->j()V

    return-void
.end method

.method static synthetic b(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->d:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Lio/sentry/android/core/p0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->b:Lio/sentry/android/core/p0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Lio/sentry/ILogger;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->c:Lio/sentry/ILogger;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->g:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->a:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->c:Lio/sentry/ILogger;

    .line 11
    .line 12
    iget-object v3, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->b:Lio/sentry/android/core/p0;

    .line 13
    .line 14
    iget-object v4, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->g:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;

    .line 15
    .line 16
    invoke-static {v1, v2, v3, v4}, Lio/sentry/android/core/internal/util/a;->j(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->c:Lio/sentry/ILogger;

    .line 20
    .line 21
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 22
    .line 23
    const-string v3, "NetworkBreadcrumbsIntegration removed."

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    new-array v4, v4, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->g:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->e:Z

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->f:Lio/sentry/s5;

    .line 5
    .line 6
    const-string v1, "Options is required"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lio/sentry/s5;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lio/sentry/android/core/r1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lio/sentry/android/core/r1;-><init>(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->c:Lio/sentry/ILogger;

    .line 29
    .line 30
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 31
    .line 32
    const-string v3, "Error submitting NetworkBreadcrumbsIntegration task."

    .line 33
    .line 34
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public f(Lio/sentry/o0;Lio/sentry/s5;)V
    .locals 5

    .line 1
    const-string v0, "Hub is required"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    move-object v0, p2

    .line 11
    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 22
    .line 23
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->c:Lio/sentry/ILogger;

    .line 24
    .line 25
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 26
    .line 27
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNetworkEventBreadcrumbs()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "NetworkBreadcrumbsIntegration enabled: %s"

    .line 40
    .line 41
    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->f:Lio/sentry/s5;

    .line 45
    .line 46
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNetworkEventBreadcrumbs()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->b:Lio/sentry/android/core/p0;

    .line 53
    .line 54
    invoke-virtual {v0}, Lio/sentry/android/core/p0;->d()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/16 v1, 0x18

    .line 59
    .line 60
    if-ge v0, v1, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->c:Lio/sentry/ILogger;

    .line 63
    .line 64
    const/4 p2, 0x0

    .line 65
    new-array p2, p2, [Ljava/lang/Object;

    .line 66
    .line 67
    const-string v0, "NetworkCallbacks need Android N+."

    .line 68
    .line 69
    invoke-interface {p1, v2, v0, p2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$a;

    .line 78
    .line 79
    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$a;-><init>(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;Lio/sentry/o0;Lio/sentry/s5;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v1}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    iget-object p2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->c:Lio/sentry/ILogger;

    .line 88
    .line 89
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 90
    .line 91
    const-string v1, "Error submitting NetworkBreadcrumbsIntegration task."

    .line 92
    .line 93
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_1
    return-void
.end method
