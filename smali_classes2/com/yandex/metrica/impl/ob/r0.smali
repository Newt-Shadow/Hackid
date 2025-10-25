.class public Lcom/yandex/metrica/impl/ob/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CANDIDATE:",
        "Ljava/lang/Object;",
        "CHOSEN::",
        "Lcom/yandex/metrica/impl/ob/v0;",
        "STORAGE::",
        "Lcom/yandex/metrica/impl/ob/s0<",
        "TCANDIDATE;TCHOSEN;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

.field private final c:Lcom/yandex/metrica/impl/ob/t0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/t0<",
            "TCHOSEN;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/z2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/z2<",
            "TCANDIDATE;TCHOSEN;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/yandex/metrica/impl/ob/r2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/r2<",
            "TCANDIDATE;TCHOSEN;TSTORAGE;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/yandex/metrica/impl/ob/b2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/b2<",
            "TCHOSEN;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/yandex/metrica/impl/ob/Y1;

.field private final h:Lcom/yandex/metrica/impl/ob/e0;

.field private i:Lcom/yandex/metrica/impl/ob/s0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSTORAGE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/core/api/ProtobufStateStorage;Lcom/yandex/metrica/impl/ob/t0;Lcom/yandex/metrica/impl/ob/z2;Lcom/yandex/metrica/impl/ob/r2;Lcom/yandex/metrica/impl/ob/b2;Lcom/yandex/metrica/impl/ob/Y1;Lcom/yandex/metrica/impl/ob/e0;Lcom/yandex/metrica/impl/ob/s0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/r0;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/r0;->b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/r0;->c:Lcom/yandex/metrica/impl/ob/t0;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/r0;->d:Lcom/yandex/metrica/impl/ob/z2;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/r0;->e:Lcom/yandex/metrica/impl/ob/r2;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/r0;->f:Lcom/yandex/metrica/impl/ob/b2;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/r0;->g:Lcom/yandex/metrica/impl/ob/Y1;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/r0;->h:Lcom/yandex/metrica/impl/ob/e0;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/yandex/metrica/impl/ob/r0;->i:Lcom/yandex/metrica/impl/ob/s0;

    .line 21
    .line 22
    return-void
.end method

.method private final declared-synchronized c()Lcom/yandex/metrica/impl/ob/v0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHOSEN;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r0;->g:Lcom/yandex/metrica/impl/ob/Y1;

    .line 3
    .line 4
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/Y1;->a()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r0;->f:Lcom/yandex/metrica/impl/ob/b2;

    .line 11
    .line 12
    invoke-interface {v0}, Lid/a;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/yandex/metrica/impl/ob/v0;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/r0;->g:Lcom/yandex/metrica/impl/ob/Y1;

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/Y1;->b()V

    .line 21
    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/r0;->b(Lcom/yandex/metrica/impl/ob/v0;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/r0;->i:Lcom/yandex/metrica/impl/ob/s0;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    aput-object v1, v0, v2

    .line 35
    .line 36
    const-string v1, "Choosing distribution data: %s"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/ob/h2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r0;->i:Lcom/yandex/metrica/impl/ob/s0;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/s0;->b()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/yandex/metrica/impl/ob/v0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    monitor-exit p0

    .line 53
    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/yandex/metrica/impl/ob/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSTORAGE;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r0;->i:Lcom/yandex/metrica/impl/ob/s0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/yandex/metrica/impl/ob/v0;)Lcom/yandex/metrica/impl/ob/v0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCHOSEN;)TCHOSEN;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r0;->h:Lcom/yandex/metrica/impl/ob/e0;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/r0;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/e0;->a(Landroid/content/Context;)V

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/r0;->b(Lcom/yandex/metrica/impl/ob/v0;)Z

    .line 5
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/r0;->c()Lcom/yandex/metrica/impl/ob/v0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit p0

    throw p1
.end method

.method public final b()Lcom/yandex/metrica/impl/ob/v0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHOSEN;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r0;->h:Lcom/yandex/metrica/impl/ob/e0;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/r0;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/e0;->a(Landroid/content/Context;)V

    .line 9
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/r0;->c()Lcom/yandex/metrica/impl/ob/v0;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized b(Lcom/yandex/metrica/impl/ob/v0;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCHOSEN;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/v0;->a()Lcom/yandex/metrica/impl/ob/u0;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/ob/u0;->b:Lcom/yandex/metrica/impl/ob/u0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return v2

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r0;->d:Lcom/yandex/metrica/impl/ob/z2;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/r0;->i:Lcom/yandex/metrica/impl/ob/s0;

    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/s0;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r0;->i:Lcom/yandex/metrica/impl/ob/s0;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/s0;->a()Ljava/util/List;

    move-result-object v0

    .line 4
    :goto_1
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/r0;->c:Lcom/yandex/metrica/impl/ob/t0;

    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/r0;->i:Lcom/yandex/metrica/impl/ob/s0;

    invoke-interface {v5}, Lcom/yandex/metrica/impl/ob/s0;->b()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/yandex/metrica/impl/ob/t0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v1

    goto :goto_2

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/r0;->i:Lcom/yandex/metrica/impl/ob/s0;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/s0;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/v0;

    :goto_2
    if-nez v2, :cond_4

    if-eqz v3, :cond_5

    .line 6
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/r0;->e:Lcom/yandex/metrica/impl/ob/r2;

    invoke-interface {v1, p1, v0}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/s0;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/r0;->i:Lcom/yandex/metrica/impl/ob/s0;

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r0;->b:Lcom/yandex/metrica/core/api/ProtobufStateStorage;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/core/api/ProtobufStateStorage;->save(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
