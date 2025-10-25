.class public final Lio/appmetrica/analytics/impl/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/fb;


# static fields
.field public static volatile e:Lio/appmetrica/analytics/impl/o0; = null

.field public static volatile f:Z = false

.field public static volatile g:Z


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/j0;

.field public final c:Ljava/util/concurrent/FutureTask;

.field public final d:Lio/appmetrica/analytics/impl/Na;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/o0;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->c()Lio/appmetrica/analytics/impl/j0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lio/appmetrica/analytics/impl/o0;->b:Lio/appmetrica/analytics/impl/j0;

    .line 15
    .line 16
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/t4;->f()Lio/appmetrica/analytics/impl/j4;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/j0;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/j4;)Lio/appmetrica/analytics/impl/Na;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lio/appmetrica/analytics/impl/o0;->d:Lio/appmetrica/analytics/impl/Na;

    .line 29
    .line 30
    new-instance p1, Ljava/util/concurrent/FutureTask;

    .line 31
    .line 32
    new-instance v0, Lio/appmetrica/analytics/impl/yp;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/yp;-><init>(Lio/appmetrica/analytics/impl/o0;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lio/appmetrica/analytics/impl/o0;->c:Ljava/util/concurrent/FutureTask;

    .line 41
    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/o0;
    .locals 3

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/o0;->e:Lio/appmetrica/analytics/impl/o0;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lio/appmetrica/analytics/impl/o0;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lio/appmetrica/analytics/impl/o0;->e:Lio/appmetrica/analytics/impl/o0;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/o0;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/o0;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/o0;->j()V

    .line 6
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object p0

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/t4;->c:Lio/appmetrica/analytics/impl/j4;

    .line 8
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p0

    new-instance v2, Lio/appmetrica/analytics/impl/n0;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/n0;-><init>(Lio/appmetrica/analytics/impl/o0;)V

    invoke-interface {p0, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    sput-object v0, Lio/appmetrica/analytics/impl/o0;->e:Lio/appmetrica/analytics/impl/o0;

    .line 10
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static a(Landroid/location/Location;)V
    .locals 1

    .line 11
    invoke-static {}, Lio/appmetrica/analytics/impl/o0;->c()Lio/appmetrica/analytics/impl/Tc;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Tc;->a(Landroid/location/Location;)V

    return-void
.end method

.method public static declared-synchronized a(Lio/appmetrica/analytics/impl/o0;)V
    .locals 1

    const-class v0, Lio/appmetrica/analytics/impl/o0;

    monitor-enter v0

    .line 18
    :try_start_0
    sput-object p0, Lio/appmetrica/analytics/impl/o0;->e:Lio/appmetrica/analytics/impl/o0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 13
    invoke-static {}, Lio/appmetrica/analytics/impl/o0;->c()Lio/appmetrica/analytics/impl/Tc;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/appmetrica/analytics/impl/Tc;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 12
    invoke-static {}, Lio/appmetrica/analytics/impl/o0;->c()Lio/appmetrica/analytics/impl/Tc;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Tc;->a(Z)V

    return-void
.end method

.method public static b(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/o0;->c()Lio/appmetrica/analytics/impl/Tc;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Tc;->b(Z)V

    return-void
.end method

.method public static c()Lio/appmetrica/analytics/impl/Tc;
    .locals 1

    .line 3
    invoke-static {}, Lio/appmetrica/analytics/impl/o0;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lio/appmetrica/analytics/impl/o0;->e:Lio/appmetrica/analytics/impl/o0;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/o0;->f()Lio/appmetrica/analytics/impl/Oa;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lio/appmetrica/analytics/impl/t4;->b:Lio/appmetrica/analytics/impl/P7;

    :goto_0
    return-object v0
.end method

.method public static clearAppEnvironment()V
    .locals 1

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/o0;->c()Lio/appmetrica/analytics/impl/Tc;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Tc;->clearAppEnvironment()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static declared-synchronized k()Z
    .locals 2

    .line 1
    const-class v0, Lio/appmetrica/analytics/impl/o0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lio/appmetrica/analytics/impl/o0;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method

.method public static l()Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/appmetrica/analytics/impl/o0;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public static declared-synchronized m()Z
    .locals 3

    .line 1
    const-class v0, Lio/appmetrica/analytics/impl/o0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/impl/o0;->e:Lio/appmetrica/analytics/impl/o0;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, v1, Lio/appmetrica/analytics/impl/o0;->c:Ljava/util/concurrent/FutureTask;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->isDone()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/o0;->f()Lio/appmetrica/analytics/impl/Oa;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Lio/appmetrica/analytics/impl/Oa;->i()Lio/appmetrica/analytics/impl/vc;

    .line 21
    .line 22
    .line 23
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    monitor-exit v0

    .line 30
    return v1

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0

    .line 33
    throw v1
.end method

.method public static declared-synchronized n()V
    .locals 2

    .line 1
    const-class v0, Lio/appmetrica/analytics/impl/o0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-object v1, Lio/appmetrica/analytics/impl/o0;->e:Lio/appmetrica/analytics/impl/o0;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    sput-boolean v1, Lio/appmetrica/analytics/impl/o0;->f:Z

    .line 9
    .line 10
    sput-boolean v1, Lio/appmetrica/analytics/impl/o0;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0

    .line 16
    throw v1
.end method

.method public static putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/o0;->c()Lio/appmetrica/analytics/impl/Tc;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0, p1}, Lio/appmetrica/analytics/impl/Tc;->putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static declared-synchronized q()V
    .locals 2

    .line 1
    const-class v0, Lio/appmetrica/analytics/impl/o0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    sput-boolean v1, Lio/appmetrica/analytics/impl/o0;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    .line 11
    throw v1
.end method

.method public static r()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lio/appmetrica/analytics/impl/o0;->g:Z

    .line 3
    .line 4
    return-void
.end method

.method public static s()Lio/appmetrica/analytics/impl/o0;
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/o0;->e:Lio/appmetrica/analytics/impl/o0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setDataSendingEnabled(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/o0;->c()Lio/appmetrica/analytics/impl/Tc;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Tc;->setDataSendingEnabled(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setUserProfileID(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/o0;->c()Lio/appmetrica/analytics/impl/Tc;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Tc;->setUserProfileID(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/eb;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/o0;->f()Lio/appmetrica/analytics/impl/Oa;

    move-result-object v0

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Oa;->a()Lio/appmetrica/analytics/impl/eb;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/DeferredDeeplinkListener;)V
    .locals 1

    .line 15
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/o0;->f()Lio/appmetrica/analytics/impl/Oa;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Oa;->a(Lio/appmetrica/analytics/DeferredDeeplinkListener;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;)V
    .locals 1

    .line 14
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/o0;->f()Lio/appmetrica/analytics/impl/Oa;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Oa;->a(Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 1

    .line 16
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/o0;->f()Lio/appmetrica/analytics/impl/Oa;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Oa;->a(Lio/appmetrica/analytics/ReporterConfig;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/StartupParamsCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/o0;->f()Lio/appmetrica/analytics/impl/Oa;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/Oa;->a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V

    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/v4;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o0;->d:Lio/appmetrica/analytics/impl/Na;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Na;->a()Lio/appmetrica/analytics/impl/v4;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/o0;->f()Lio/appmetrica/analytics/impl/Oa;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Oa;->a(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V

    .line 3
    iget-object p1, p0, Lio/appmetrica/analytics/impl/o0;->a:Landroid/content/Context;

    .line 4
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/t4;->c:Lio/appmetrica/analytics/impl/j4;

    .line 6
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/impl/n1;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/n1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/db;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/o0;->f()Lio/appmetrica/analytics/impl/Oa;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Oa;->c(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/db;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o0;->d:Lio/appmetrica/analytics/impl/Na;

    invoke-interface {v0, p1, p0}, Lio/appmetrica/analytics/impl/Na;->a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/fb;)V

    return-void
.end method

.method public final d()Lio/appmetrica/analytics/impl/ja;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/o0;->f()Lio/appmetrica/analytics/impl/Oa;

    move-result-object v0

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Oa;->d()Lio/appmetrica/analytics/impl/ja;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/o0;->f()Lio/appmetrica/analytics/impl/Oa;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Oa;->a(Lio/appmetrica/analytics/AppMetricaConfig;)V

    .line 2
    iget-object p1, p0, Lio/appmetrica/analytics/impl/o0;->a:Landroid/content/Context;

    .line 3
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lio/appmetrica/analytics/impl/t4;->c:Lio/appmetrica/analytics/impl/j4;

    .line 5
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/impl/n1;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/n1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/o0;->f()Lio/appmetrica/analytics/impl/Oa;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Oa;->e()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final f()Lio/appmetrica/analytics/impl/Oa;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o0;->c:Ljava/util/concurrent/FutureTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/appmetrica/analytics/impl/Oa;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw v1
.end method

.method public final g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/o0;->f()Lio/appmetrica/analytics/impl/Oa;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Oa;->g()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final h()Lio/appmetrica/analytics/AdvIdentifiersResult;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/o0;->f()Lio/appmetrica/analytics/impl/Oa;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Oa;->h()Lio/appmetrica/analytics/AdvIdentifiersResult;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final i()Lio/appmetrica/analytics/impl/vc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/o0;->f()Lio/appmetrica/analytics/impl/Oa;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Oa;->i()Lio/appmetrica/analytics/impl/vc;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final j()V
    .locals 4

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/t4;->c:Lio/appmetrica/analytics/impl/j4;

    .line 6
    .line 7
    new-instance v1, Lio/appmetrica/analytics/impl/zp;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/zp;-><init>(Lio/appmetrica/analytics/impl/o0;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lio/appmetrica/analytics/impl/j4;->a:Lio/appmetrica/analytics/impl/i4;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v0, Lio/appmetrica/analytics/impl/Fd;

    .line 18
    .line 19
    new-instance v0, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "IAA-INIT_CORE"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, "-"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    sget-object v3, Lio/appmetrica/analytics/impl/Fd;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/t4;->q:Lio/appmetrica/analytics/impl/oa;

    .line 6
    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/impl/o0;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/oa;->a(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lio/appmetrica/analytics/impl/n4;

    .line 13
    .line 14
    iget-object v1, p0, Lio/appmetrica/analytics/impl/o0;->a:Landroid/content/Context;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/n4;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lio/appmetrica/analytics/impl/o0;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Vc;->a(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lio/appmetrica/analytics/impl/o0;->a:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/t4;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/Bd;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Bd;->a()Lio/appmetrica/analytics/internal/IdentifiersResult;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o0;->c:Ljava/util/concurrent/FutureTask;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final p()Lio/appmetrica/analytics/impl/Oa;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o0;->b:Lio/appmetrica/analytics/impl/j0;

    .line 2
    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/o0;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lio/appmetrica/analytics/impl/o0;->d:Lio/appmetrica/analytics/impl/Na;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v3, v0, Lio/appmetrica/analytics/impl/j0;->d:Lio/appmetrica/analytics/impl/Oa;

    .line 9
    .line 10
    if-nez v3, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/j0;->a(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    new-instance v1, Lio/appmetrica/analytics/impl/u0;

    .line 19
    .line 20
    invoke-direct {v1}, Lio/appmetrica/analytics/impl/u0;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lio/appmetrica/analytics/impl/j0;->d:Lio/appmetrica/analytics/impl/Oa;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lio/appmetrica/analytics/impl/s0;

    .line 27
    .line 28
    invoke-direct {v3, v1, v2}, Lio/appmetrica/analytics/impl/s0;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Na;)V

    .line 29
    .line 30
    .line 31
    iput-object v3, v0, Lio/appmetrica/analytics/impl/j0;->d:Lio/appmetrica/analytics/impl/Oa;

    .line 32
    .line 33
    :cond_1
    :goto_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/j0;->d:Lio/appmetrica/analytics/impl/Oa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-object v1

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    monitor-exit v0

    .line 39
    throw v1
.end method
