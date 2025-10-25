.class public abstract Lio/appmetrica/analytics/impl/yh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final d:Lio/appmetrica/analytics/impl/xh;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/h0;

.field public final b:Lio/appmetrica/analytics/impl/Lk;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/xh;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/xh;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/appmetrica/analytics/impl/yh;->d:Lio/appmetrica/analytics/impl/xh;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/h0;Lio/appmetrica/analytics/impl/Lk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/yh;->a:Lio/appmetrica/analytics/impl/h0;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/yh;->b:Lio/appmetrica/analytics/impl/Lk;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/yh;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/yh;->c:Z

    const/4 v1, 0x0

    .line 5
    :cond_1
    iget-object v2, p0, Lio/appmetrica/analytics/impl/yh;->a:Lio/appmetrica/analytics/impl/h0;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v3, v2, Lio/appmetrica/analytics/impl/h0;->d:Lio/appmetrica/analytics/internal/IAppMetricaService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_4

    .line 7
    :try_start_3
    invoke-virtual {p0, v3}, Lio/appmetrica/analytics/impl/yh;->a(Lio/appmetrica/analytics/internal/IAppMetricaService;)V

    .line 8
    iget-object v2, p0, Lio/appmetrica/analytics/impl/yh;->b:Lio/appmetrica/analytics/impl/Lk;

    if-eqz v2, :cond_2

    check-cast v2, Lio/appmetrica/analytics/impl/ji;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/ji;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    :cond_2
    iget-object v2, p0, Lio/appmetrica/analytics/impl/yh;->a:Lio/appmetrica/analytics/impl/h0;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/h0;->c()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    return-void

    .line 10
    :catch_0
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/yh;->c()Z

    move-result v2

    add-int/2addr v1, v0

    if-eqz v2, :cond_5

    .line 11
    sget-object v2, Lio/appmetrica/analytics/impl/Q1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 13
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 14
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/yh;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public abstract a(Lio/appmetrica/analytics/internal/IAppMetricaService;)V
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/yh;->c:Z

    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/yh;->a:Lio/appmetrica/analytics/impl/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/yh;->a:Lio/appmetrica/analytics/impl/h0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/h0;->d:Lio/appmetrica/analytics/internal/IAppMetricaService;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lio/appmetrica/analytics/impl/h0;->e:Ljava/util/concurrent/CountDownLatch;

    .line 17
    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    iget-object v1, v0, Lio/appmetrica/analytics/impl/h0;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v1}, Lio/appmetrica/analytics/impl/mk;->a(Landroid/content/Context;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :try_start_1
    iget-object v3, v0, Lio/appmetrica/analytics/impl/h0;->g:Lio/appmetrica/analytics/impl/K1;

    .line 26
    .line 27
    iget-object v4, v0, Lio/appmetrica/analytics/impl/h0;->a:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/impl/K1;->b(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, v0, Lio/appmetrica/analytics/impl/h0;->a:Landroid/content/Context;

    .line 33
    .line 34
    iget-object v0, v0, Lio/appmetrica/analytics/impl/h0;->i:Lio/appmetrica/analytics/impl/g0;

    .line 35
    .line 36
    invoke-virtual {v3, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    :catchall_0
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/yh;->a:Lio/appmetrica/analytics/impl/h0;

    .line 40
    .line 41
    const-wide/16 v3, 0x1388

    .line 42
    .line 43
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/h0;->a(Ljava/lang/Long;)V

    .line 48
    .line 49
    .line 50
    return v2

    .line 51
    :catchall_1
    move-exception v1

    .line 52
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/yh;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 5
    .line 6
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/yh;->c:Z

    .line 2
    .line 3
    return v0
.end method
