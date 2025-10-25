.class public final Lio/appmetrica/analytics/impl/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/h0;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/f0;->a:Lio/appmetrica/analytics/impl/h0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/f0;->a:Lio/appmetrica/analytics/impl/h0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/h0;->a:Landroid/content/Context;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/h0;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    :try_start_1
    iput-object v2, v0, Lio/appmetrica/analytics/impl/h0;->d:Lio/appmetrica/analytics/internal/IAppMetricaService;

    .line 16
    .line 17
    iget-object v1, v0, Lio/appmetrica/analytics/impl/h0;->a:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v3, v0, Lio/appmetrica/analytics/impl/h0;->i:Lio/appmetrica/analytics/impl/g0;

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    :catchall_0
    :cond_0
    :try_start_2
    iput-object v2, v0, Lio/appmetrica/analytics/impl/h0;->d:Lio/appmetrica/analytics/internal/IAppMetricaService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_1
    move-exception v1

    .line 29
    monitor-exit v0

    .line 30
    throw v1
.end method
