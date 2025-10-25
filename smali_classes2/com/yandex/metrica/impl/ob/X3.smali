.class public Lcom/yandex/metrica/impl/ob/X3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ki;
.implements Lcom/yandex/metrica/impl/ob/R3;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/metrica/impl/ob/I3;

.field private final c:Lcom/yandex/metrica/impl/ob/o4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/o4<",
            "Lcom/yandex/metrica/impl/ob/S3;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/ri;

.field private final e:Lcom/yandex/metrica/impl/ob/c4;

.field private f:Lcom/yandex/metrica/impl/ob/S3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/S3;"
        }
    .end annotation
.end field

.field private g:Lcom/yandex/metrica/impl/ob/Q3;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/ki;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/yandex/metrica/impl/ob/J3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/J3;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/D3;Lcom/yandex/metrica/impl/ob/c4;Lcom/yandex/metrica/impl/ob/o4;Lcom/yandex/metrica/impl/ob/J3;Lcom/yandex/metrica/impl/ob/ei;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/impl/ob/I3;",
            "Lcom/yandex/metrica/impl/ob/D3;",
            "Lcom/yandex/metrica/impl/ob/c4;",
            "Lcom/yandex/metrica/impl/ob/o4<",
            "Lcom/yandex/metrica/impl/ob/S3;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/J3;",
            "Lcom/yandex/metrica/impl/ob/ei;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/X3;->h:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/X3;->a:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/X3;->b:Lcom/yandex/metrica/impl/ob/I3;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/X3;->e:Lcom/yandex/metrica/impl/ob/c4;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/X3;->c:Lcom/yandex/metrica/impl/ob/o4;

    .line 18
    .line 19
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/X3;->i:Lcom/yandex/metrica/impl/ob/J3;

    .line 20
    .line 21
    iget-object p3, p3, Lcom/yandex/metrica/impl/ob/D3;->a:Lcom/yandex/metrica/impl/ob/Mg$b;

    .line 22
    .line 23
    invoke-virtual {p7, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/ei;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/Mg$b;)Lcom/yandex/metrica/impl/ob/ri;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/X3;->d:Lcom/yandex/metrica/impl/ob/ri;

    .line 28
    .line 29
    invoke-virtual {p7, p2, p0}, Lcom/yandex/metrica/impl/ob/ei;->a(Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/ki;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private a()Lcom/yandex/metrica/impl/ob/Q3;
    .locals 5

    .line 21
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/X3;->g:Lcom/yandex/metrica/impl/ob/Q3;

    if-nez v0, :cond_0

    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/X3;->c:Lcom/yandex/metrica/impl/ob/o4;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/X3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/X3;->b:Lcom/yandex/metrica/impl/ob/I3;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/X3;->e:Lcom/yandex/metrica/impl/ob/c4;

    .line 24
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/c4;->a()Lcom/yandex/metrica/impl/ob/D3$a;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/X3;->d:Lcom/yandex/metrica/impl/ob/ri;

    .line 25
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/o4;->b(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/D3$a;Lcom/yandex/metrica/impl/ob/ri;)Lcom/yandex/metrica/impl/ob/Q3;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/X3;->g:Lcom/yandex/metrica/impl/ob/Q3;

    .line 26
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/X3;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 28
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/X3;->g:Lcom/yandex/metrica/impl/ob/Q3;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/D3;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/X3;->d:Lcom/yandex/metrica/impl/ob/ri;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/D3;->a:Lcom/yandex/metrica/impl/ob/Mg$b;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ri;->a(Lcom/yandex/metrica/impl/ob/Mg$b;)V

    .line 34
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/D3;->b:Lcom/yandex/metrica/impl/ob/D3$a;

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/X3;->e:Lcom/yandex/metrica/impl/ob/c4;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/c4;->a(Lcom/yandex/metrica/impl/ob/D3$a;)V

    .line 36
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/X3;->g:Lcom/yandex/metrica/impl/ob/Q3;

    if-eqz v0, :cond_0

    .line 37
    check-cast v0, Lcom/yandex/metrica/impl/ob/z4;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/z4;->a(Lcom/yandex/metrica/impl/ob/D3$a;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/X3;->f:Lcom/yandex/metrica/impl/ob/S3;

    if-eqz v0, :cond_1

    .line 39
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/S3;->a(Lcom/yandex/metrica/impl/ob/D3$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/D3;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/X3;->a()Lcom/yandex/metrica/impl/ob/Q3;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/z4;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/z4;->a()V

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->o()I

    move-result v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/z0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/X3;->a()Lcom/yandex/metrica/impl/ob/Q3;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/X3;->f:Lcom/yandex/metrica/impl/ob/S3;

    if-nez v0, :cond_1

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/X3;->c:Lcom/yandex/metrica/impl/ob/o4;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/X3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/X3;->b:Lcom/yandex/metrica/impl/ob/I3;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/X3;->e:Lcom/yandex/metrica/impl/ob/c4;

    .line 7
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/c4;->a()Lcom/yandex/metrica/impl/ob/D3$a;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/X3;->d:Lcom/yandex/metrica/impl/ob/ri;

    .line 8
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/o4;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/D3$a;Lcom/yandex/metrica/impl/ob/ri;)Lcom/yandex/metrica/impl/ob/S3;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/X3;->f:Lcom/yandex/metrica/impl/ob/S3;

    .line 9
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/X3;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/X3;->f:Lcom/yandex/metrica/impl/ob/S3;

    .line 12
    :goto_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->o()I

    move-result v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/z0;->b(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 13
    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/D3;->b:Lcom/yandex/metrica/impl/ob/D3$a;

    monitor-enter p0

    .line 14
    :try_start_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/X3;->e:Lcom/yandex/metrica/impl/ob/c4;

    invoke-virtual {v1, p2}, Lcom/yandex/metrica/impl/ob/c4;->a(Lcom/yandex/metrica/impl/ob/D3$a;)V

    .line 15
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/X3;->g:Lcom/yandex/metrica/impl/ob/Q3;

    if-eqz v1, :cond_2

    .line 16
    check-cast v1, Lcom/yandex/metrica/impl/ob/z4;

    invoke-virtual {v1, p2}, Lcom/yandex/metrica/impl/ob/z4;->a(Lcom/yandex/metrica/impl/ob/D3$a;)V

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/X3;->f:Lcom/yandex/metrica/impl/ob/S3;

    if-eqz v1, :cond_3

    .line 18
    invoke-interface {v1, p2}, Lcom/yandex/metrica/impl/ob/S3;->a(Lcom/yandex/metrica/impl/ob/D3$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 19
    :cond_4
    :goto_2
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/S3;->a(Lcom/yandex/metrica/impl/ob/c0;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/gi;Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 2

    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/X3;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/ki;

    .line 32
    invoke-interface {v1, p1, p2}, Lcom/yandex/metrica/impl/ob/ki;->a(Lcom/yandex/metrica/impl/ob/gi;Lcom/yandex/metrica/impl/ob/pi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/k4;)V
    .locals 1

    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/X3;->i:Lcom/yandex/metrica/impl/ob/J3;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/J3;->a(Lcom/yandex/metrica/impl/ob/k4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 2

    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/X3;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/ki;

    .line 30
    invoke-interface {v1, p1}, Lcom/yandex/metrica/impl/ob/ki;->a(Lcom/yandex/metrica/impl/ob/pi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/yandex/metrica/impl/ob/k4;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/X3;->i:Lcom/yandex/metrica/impl/ob/J3;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/J3;->b(Lcom/yandex/metrica/impl/ob/k4;)V
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
