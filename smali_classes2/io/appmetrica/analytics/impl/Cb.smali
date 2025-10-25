.class public final Lio/appmetrica/analytics/impl/Cb;
.super Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Db;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Db;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Cb;->a:Lio/appmetrica/analytics/impl/Db;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Cb;->a:Lio/appmetrica/analytics/impl/Db;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Db;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Cb;->a:Lio/appmetrica/analytics/impl/Db;

    .line 7
    .line 8
    invoke-static {v1}, Lio/appmetrica/analytics/impl/Db;->a(Lio/appmetrica/analytics/impl/Db;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Cb;->a:Lio/appmetrica/analytics/impl/Db;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    iput-boolean v2, v1, Lio/appmetrica/analytics/impl/Db;->e:Z

    .line 15
    .line 16
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Cb;->a:Lio/appmetrica/analytics/impl/Db;

    .line 17
    .line 18
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Db;->a:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 21
    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;->isRunning()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    monitor-enter p0

    .line 31
    :try_start_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Cb;->a:Lio/appmetrica/analytics/impl/Db;

    .line 32
    .line 33
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Db;->b:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    .line 43
    .line 44
    :catch_0
    :cond_1
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    .line 45
    .line 46
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Cb;->a:Lio/appmetrica/analytics/impl/Db;

    .line 47
    .line 48
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Db;->b:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Cb;->a:Lio/appmetrica/analytics/impl/Db;

    .line 54
    .line 55
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Db;->b:Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 58
    .line 59
    .line 60
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-lez v1, :cond_0

    .line 66
    .line 67
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Cb;->a:Lio/appmetrica/analytics/impl/Db;

    .line 68
    .line 69
    invoke-static {v1, v0}, Lio/appmetrica/analytics/impl/Db;->a(Lio/appmetrica/analytics/impl/Db;Ljava/util/HashMap;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    throw v0

    .line 79
    :cond_2
    return-void

    .line 80
    :catchall_1
    move-exception v1

    .line 81
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 82
    throw v1
.end method
