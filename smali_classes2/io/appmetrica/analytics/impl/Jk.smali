.class public final Lio/appmetrica/analytics/impl/Jk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/n;

.field public final b:Lio/appmetrica/analytics/impl/B5;

.field public final c:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;

.field public final d:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;

.field public final e:Lio/appmetrica/analytics/impl/p;

.field public final f:Lio/appmetrica/analytics/impl/l;

.field public g:Z


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/n;Lio/appmetrica/analytics/impl/l;)V
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/B5;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/B5;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/p;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/p;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lio/appmetrica/analytics/impl/Jk;-><init>(Lio/appmetrica/analytics/impl/n;Lio/appmetrica/analytics/impl/l;Lio/appmetrica/analytics/impl/B5;Lio/appmetrica/analytics/impl/p;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/n;Lio/appmetrica/analytics/impl/l;Lio/appmetrica/analytics/impl/B5;Lio/appmetrica/analytics/impl/p;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Jk;->g:Z

    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Jk;->a:Lio/appmetrica/analytics/impl/n;

    .line 5
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Jk;->f:Lio/appmetrica/analytics/impl/l;

    .line 6
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Jk;->b:Lio/appmetrica/analytics/impl/B5;

    .line 7
    iput-object p4, p0, Lio/appmetrica/analytics/impl/Jk;->e:Lio/appmetrica/analytics/impl/p;

    .line 8
    new-instance p1, Lio/appmetrica/analytics/impl/vo;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/vo;-><init>(Lio/appmetrica/analytics/impl/Jk;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Jk;->c:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;

    .line 9
    new-instance p1, Lio/appmetrica/analytics/impl/wo;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/wo;-><init>(Lio/appmetrica/analytics/impl/Jk;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Jk;->d:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lio/appmetrica/analytics/impl/m;
    .locals 6

    monitor-enter p0

    .line 9
    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/Jk;->g:Z

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Jk;->a:Lio/appmetrica/analytics/impl/n;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Jk;->c:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;

    const/4 v2, 0x1

    new-array v3, v2, [Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    sget-object v4, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->RESUMED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lio/appmetrica/analytics/impl/n;->registerListener(Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;[Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Jk;->a:Lio/appmetrica/analytics/impl/n;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Jk;->d:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;

    new-array v3, v2, [Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    sget-object v4, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->PAUSED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lio/appmetrica/analytics/impl/n;->registerListener(Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;[Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    .line 12
    iput-boolean v2, p0, Lio/appmetrica/analytics/impl/Jk;->g:Z

    .line 13
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Jk;->a:Lio/appmetrica/analytics/impl/n;

    .line 14
    iget-object v0, v0, Lio/appmetrica/analytics/impl/n;->b:Lio/appmetrica/analytics/impl/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/app/Activity;Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p2, p0, Lio/appmetrica/analytics/impl/Jk;->g:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lio/appmetrica/analytics/impl/Jk;->b:Lio/appmetrica/analytics/impl/B5;

    new-instance v0, Lio/appmetrica/analytics/impl/uo;

    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/impl/uo;-><init>(Lio/appmetrica/analytics/impl/Jk;Landroid/app/Activity;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lio/appmetrica/analytics/impl/t4;->c:Lio/appmetrica/analytics/impl/j4;

    .line 6
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    new-instance v1, Lio/appmetrica/analytics/impl/A5;

    invoke-direct {v1, p2, v0}, Lio/appmetrica/analytics/impl/A5;-><init>(Lio/appmetrica/analytics/impl/B5;Lio/appmetrica/analytics/impl/Zd;)V

    invoke-interface {p1, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/app/Activity;Lio/appmetrica/analytics/impl/tc;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Jk;->e:Lio/appmetrica/analytics/impl/p;

    sget-object v1, Lio/appmetrica/analytics/impl/o;->a:Lio/appmetrica/analytics/impl/o;

    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/p;->a(Landroid/app/Activity;Lio/appmetrica/analytics/impl/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p2, p1}, Lio/appmetrica/analytics/impl/tc;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/app/Activity;Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p2, p0, Lio/appmetrica/analytics/impl/Jk;->g:Z

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lio/appmetrica/analytics/impl/Jk;->b:Lio/appmetrica/analytics/impl/B5;

    new-instance v0, Lio/appmetrica/analytics/impl/xo;

    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/impl/xo;-><init>(Lio/appmetrica/analytics/impl/Jk;Landroid/app/Activity;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lio/appmetrica/analytics/impl/t4;->c:Lio/appmetrica/analytics/impl/j4;

    .line 6
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    new-instance v1, Lio/appmetrica/analytics/impl/A5;

    invoke-direct {v1, p2, v0}, Lio/appmetrica/analytics/impl/A5;-><init>(Lio/appmetrica/analytics/impl/B5;Lio/appmetrica/analytics/impl/Zd;)V

    invoke-interface {p1, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Landroid/app/Activity;Lio/appmetrica/analytics/impl/tc;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Jk;->e:Lio/appmetrica/analytics/impl/p;

    sget-object v1, Lio/appmetrica/analytics/impl/o;->b:Lio/appmetrica/analytics/impl/o;

    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/p;->a(Landroid/app/Activity;Lio/appmetrica/analytics/impl/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p2, p1}, Lio/appmetrica/analytics/impl/tc;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
