.class public Lcom/yandex/metrica/impl/ob/Ih;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private final c:Ldc/d;

.field private final d:Lcom/yandex/metrica/impl/ob/gm;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ldc/c;

    invoke-direct {v0}, Ldc/c;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/gm;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/gm;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/Ih;-><init>(Ldc/d;Lcom/yandex/metrica/impl/ob/gm;)V

    return-void
.end method

.method constructor <init>(Ldc/d;Lcom/yandex/metrica/impl/ob/gm;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ih;->c:Ldc/d;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Ih;->d:Lcom/yandex/metrica/impl/ob/gm;

    return-void
.end method


# virtual methods
.method declared-synchronized a()D
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ih;->d:Lcom/yandex/metrica/impl/ob/gm;

    .line 3
    .line 4
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/Ih;->b:J

    .line 5
    .line 6
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/gm;->b(JLjava/util/concurrent/TimeUnit;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    long-to-double v0, v0

    .line 13
    monitor-exit p0

    .line 14
    return-wide v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0

    .line 17
    throw v0
.end method

.method declared-synchronized b()D
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ih;->d:Lcom/yandex/metrica/impl/ob/gm;

    .line 3
    .line 4
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/Ih;->a:J

    .line 5
    .line 6
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/gm;->b(JLjava/util/concurrent/TimeUnit;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    long-to-double v0, v0

    .line 13
    monitor-exit p0

    .line 14
    return-wide v0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit p0

    .line 17
    throw v0
.end method

.method declared-synchronized c()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ih;->c:Ldc/d;

    .line 3
    .line 4
    invoke-interface {v0}, Ldc/d;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/Ih;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method declared-synchronized d()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ih;->c:Ldc/d;

    .line 3
    .line 4
    invoke-interface {v0}, Ldc/d;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/Ih;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method declared-synchronized e()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/Ih;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0

    .line 10
    throw v0
.end method
