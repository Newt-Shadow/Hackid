.class public Lcom/yandex/metrica/impl/ob/j7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/k7;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/b7;

.field private e:Z

.field private f:Z

.field private g:Lcom/yandex/metrica/impl/ob/k7;

.field private final h:Lcom/yandex/metrica/impl/ob/B0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/A3;)V
    .locals 2

    const/16 v0, 0x15

    .line 1
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/k7;

    .line 2
    new-instance v1, Lcom/yandex/metrica/impl/ob/A7;

    invoke-direct {v1, p1, p2}, Lcom/yandex/metrica/impl/ob/A7;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/A3;)V

    const/4 p2, 0x0

    aput-object v1, v0, p2

    new-instance p2, Lcom/yandex/metrica/impl/ob/o7;

    invoke-direct {p2}, Lcom/yandex/metrica/impl/ob/o7;-><init>()V

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Lcom/yandex/metrica/impl/ob/o7;

    invoke-direct {p2}, Lcom/yandex/metrica/impl/ob/o7;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :goto_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/B0;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/B0;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/b7;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/b7;-><init>()V

    .line 4
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/metrica/impl/ob/j7;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/yandex/metrica/impl/ob/B0;Lcom/yandex/metrica/impl/ob/b7;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/yandex/metrica/impl/ob/B0;Lcom/yandex/metrica/impl/ob/b7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/k7;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/B0;",
            "Lcom/yandex/metrica/impl/ob/b7;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/j7;->b:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/j7;->c:Ljava/util/List;

    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/j7;->h:Lcom/yandex/metrica/impl/ob/B0;

    .line 9
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/j7;->d:Lcom/yandex/metrica/impl/ob/b7;

    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/j7;->f:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/j7;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/k7;

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/j7;->d:Lcom/yandex/metrica/impl/ob/b7;

    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/k7;->c()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/j7;->g:Lcom/yandex/metrica/impl/ob/k7;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 7
    :try_start_1
    invoke-interface {v1, v0}, Lcom/yandex/metrica/impl/ob/k7;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :catchall_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/j7;->h:Lcom/yandex/metrica/impl/ob/B0;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/j7;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/j7;->g:Lcom/yandex/metrica/impl/ob/k7;

    invoke-interface {v2}, Lcom/yandex/metrica/impl/ob/k7;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/B0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/j7;->a:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/j7;->f:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/j7;->g:Lcom/yandex/metrica/impl/ob/k7;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/k7;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 10
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/j7;->a()V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/j7;->g:Lcom/yandex/metrica/impl/ob/k7;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    :try_start_2
    monitor-exit p0

    if-eqz v2, :cond_4

    .line 12
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/j7;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-boolean v3, p0, Lcom/yandex/metrica/impl/ob/j7;->e:Z

    if-nez v3, :cond_4

    .line 13
    invoke-interface {p1, p2, v2, p3}, Lcom/yandex/metrica/impl/ob/k7;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/j7;->e:Z

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    :catchall_1
    :try_start_3
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/j7;->e:Z

    goto :goto_3

    :cond_1
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 16
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 17
    :try_start_5
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/j7;->g:Lcom/yandex/metrica/impl/ob/k7;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    :try_start_6
    monitor-exit p0

    if-eqz v0, :cond_3

    .line 18
    iget-boolean p2, p0, Lcom/yandex/metrica/impl/ob/j7;->e:Z

    if-eqz p2, :cond_3

    .line 19
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/k7;->b()V

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 20
    :catchall_3
    :cond_3
    :goto_2
    :try_start_7
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/j7;->e:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    :catchall_4
    move-exception p1

    :try_start_9
    monitor-exit p0

    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
