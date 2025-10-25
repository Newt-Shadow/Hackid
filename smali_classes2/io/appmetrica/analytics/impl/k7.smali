.class public final Lio/appmetrica/analytics/impl/k7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile t:Lio/appmetrica/analytics/impl/k7;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Lio/appmetrica/analytics/impl/X6;

.field public final e:Landroid/content/Context;

.field public f:Lio/appmetrica/analytics/impl/j7;

.field public g:Lio/appmetrica/analytics/impl/j7;

.field public h:Lio/appmetrica/analytics/impl/k3;

.field public i:Lio/appmetrica/analytics/impl/l3;

.field public j:Lio/appmetrica/analytics/impl/k3;

.field public k:Lio/appmetrica/analytics/impl/l3;

.field public l:Lio/appmetrica/analytics/impl/Db;

.field public m:Lio/appmetrica/analytics/impl/Eb;

.field public n:Lio/appmetrica/analytics/impl/Ym;

.field public o:Lio/appmetrica/analytics/impl/Zm;

.field public p:Lio/appmetrica/analytics/impl/Db;

.field public q:Lio/appmetrica/analytics/impl/Eb;

.field public r:Lio/appmetrica/analytics/impl/kc;

.field public final s:Lio/appmetrica/analytics/impl/m7;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/impl/k7;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/appmetrica/analytics/impl/k7;->b:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lio/appmetrica/analytics/impl/k7;->c:Ljava/util/HashMap;

    .line 24
    .line 25
    iput-object p1, p0, Lio/appmetrica/analytics/impl/k7;->e:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {}, Lio/appmetrica/analytics/impl/L5;->a()Lio/appmetrica/analytics/impl/X6;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lio/appmetrica/analytics/impl/k7;->d:Lio/appmetrica/analytics/impl/X6;

    .line 32
    .line 33
    new-instance p1, Lio/appmetrica/analytics/impl/m7;

    .line 34
    .line 35
    invoke-direct {p1}, Lio/appmetrica/analytics/impl/m7;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lio/appmetrica/analytics/impl/k7;->s:Lio/appmetrica/analytics/impl/m7;

    .line 39
    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/k7;
    .locals 2

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/k7;->t:Lio/appmetrica/analytics/impl/k7;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lio/appmetrica/analytics/impl/k7;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/impl/k7;->t:Lio/appmetrica/analytics/impl/k7;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lio/appmetrica/analytics/impl/k7;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/k7;-><init>(Landroid/content/Context;)V

    sput-object v1, Lio/appmetrica/analytics/impl/k7;->t:Lio/appmetrica/analytics/impl/k7;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lio/appmetrica/analytics/impl/k7;->t:Lio/appmetrica/analytics/impl/k7;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/h5;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;
    .locals 3

    monitor-enter p0

    .line 7
    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/Y4;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Y4;-><init>(Lio/appmetrica/analytics/impl/h5;)V

    .line 8
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Y4;->a:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lio/appmetrica/analytics/impl/k7;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    if-nez v1, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/k7;->c(Lio/appmetrica/analytics/impl/h5;)Lio/appmetrica/analytics/impl/j7;

    move-result-object p1

    .line 11
    new-instance v1, Lio/appmetrica/analytics/impl/k3;

    new-instance v2, Lio/appmetrica/analytics/impl/bl;

    invoke-direct {v2, p1}, Lio/appmetrica/analytics/impl/bl;-><init>(Lio/appmetrica/analytics/impl/j7;)V

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/k3;-><init>(Lio/appmetrica/analytics/impl/bl;)V

    .line 12
    iget-object p1, p0, Lio/appmetrica/analytics/impl/k7;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()Lio/appmetrica/analytics/impl/Ta;
    .locals 2

    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/k7;->q:Lio/appmetrica/analytics/impl/Eb;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lio/appmetrica/analytics/impl/Eb;

    .line 15
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/k7;->f()Lio/appmetrica/analytics/impl/Ta;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Eb;-><init>(Lio/appmetrica/analytics/impl/Ta;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/k7;->q:Lio/appmetrica/analytics/impl/Eb;

    .line 16
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/k7;->q:Lio/appmetrica/analytics/impl/Eb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lio/appmetrica/analytics/impl/Ta;
    .locals 1

    monitor-enter p0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/k7;->f()Lio/appmetrica/analytics/impl/Ta;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lio/appmetrica/analytics/impl/h5;)Lio/appmetrica/analytics/impl/Ta;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/Y4;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Y4;-><init>(Lio/appmetrica/analytics/impl/h5;)V

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Y4;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/k7;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/Ta;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/k7;->c(Lio/appmetrica/analytics/impl/h5;)Lio/appmetrica/analytics/impl/j7;

    move-result-object p1

    .line 5
    new-instance v1, Lio/appmetrica/analytics/impl/Db;

    .line 6
    new-instance v2, Lio/appmetrica/analytics/impl/bl;

    invoke-direct {v2, p1}, Lio/appmetrica/analytics/impl/bl;-><init>(Lio/appmetrica/analytics/impl/j7;)V

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Db;-><init>(Lio/appmetrica/analytics/impl/J6;)V

    .line 7
    iget-object p1, p0, Lio/appmetrica/analytics/impl/k7;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()Lio/appmetrica/analytics/impl/Ta;
    .locals 4

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/k7;->m:Lio/appmetrica/analytics/impl/Eb;

    if-nez v0, :cond_1

    .line 31
    new-instance v0, Lio/appmetrica/analytics/impl/Eb;

    .line 32
    iget-object v1, p0, Lio/appmetrica/analytics/impl/k7;->l:Lio/appmetrica/analytics/impl/Db;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lio/appmetrica/analytics/impl/Db;

    .line 34
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/k7;->h()Lio/appmetrica/analytics/impl/j7;

    move-result-object v2

    .line 35
    new-instance v3, Lio/appmetrica/analytics/impl/bl;

    invoke-direct {v3, v2}, Lio/appmetrica/analytics/impl/bl;-><init>(Lio/appmetrica/analytics/impl/j7;)V

    invoke-direct {v1, v3}, Lio/appmetrica/analytics/impl/Db;-><init>(Lio/appmetrica/analytics/impl/J6;)V

    .line 36
    iput-object v1, p0, Lio/appmetrica/analytics/impl/k7;->l:Lio/appmetrica/analytics/impl/Db;

    .line 37
    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/k7;->l:Lio/appmetrica/analytics/impl/Db;

    .line 38
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Eb;-><init>(Lio/appmetrica/analytics/impl/Ta;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/k7;->m:Lio/appmetrica/analytics/impl/Eb;

    .line 39
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/k7;->m:Lio/appmetrica/analytics/impl/Eb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Lio/appmetrica/analytics/impl/h5;)Lio/appmetrica/analytics/impl/j7;
    .locals 11

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/Y4;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Y4;-><init>(Lio/appmetrica/analytics/impl/h5;)V

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/k7;->a:Ljava/util/HashMap;

    .line 3
    iget-object v2, v0, Lio/appmetrica/analytics/impl/Y4;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/j7;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lio/appmetrica/analytics/impl/j7;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/k7;->e:Landroid/content/Context;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/k7;->s:Lio/appmetrica/analytics/impl/m7;

    .line 6
    new-instance v4, Lio/appmetrica/analytics/impl/l7;

    .line 7
    iget-object v5, v3, Lio/appmetrica/analytics/impl/m7;->a:Lio/appmetrica/analytics/impl/T6;

    .line 8
    iget-object v3, v3, Lio/appmetrica/analytics/impl/m7;->b:Ljava/util/ArrayList;

    const/4 v6, 0x0

    .line 9
    invoke-direct {v4, v5, v3, v6}, Lio/appmetrica/analytics/impl/l7;-><init>(Lio/appmetrica/analytics/impl/T6;Ljava/util/ArrayList;Z)V

    .line 10
    invoke-virtual {v4, v2, v0}, Lio/appmetrica/analytics/impl/l7;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/i7;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/appmetrica/analytics/impl/k7;->d:Lio/appmetrica/analytics/impl/X6;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "component-%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 12
    iget-object p1, p1, Lio/appmetrica/analytics/impl/h5;->b:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "main"

    :cond_1
    aput-object p1, v7, v6

    .line 13
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v5, v4, Lio/appmetrica/analytics/impl/X6;->c:Lio/appmetrica/analytics/impl/Pm;

    iget-object v7, v4, Lio/appmetrica/analytics/impl/X6;->a:Lio/appmetrica/analytics/impl/h7;

    .line 15
    iget-object v8, v7, Lio/appmetrica/analytics/impl/h7;->a:Lio/appmetrica/analytics/impl/Z6;

    .line 16
    iget-object v7, v7, Lio/appmetrica/analytics/impl/h7;->b:Lio/appmetrica/analytics/impl/a7;

    .line 17
    new-instance v9, Lio/appmetrica/analytics/impl/Ba;

    .line 18
    invoke-direct {v9, v6}, Lio/appmetrica/analytics/impl/Ba;-><init>(Z)V

    const/16 v6, 0x70

    .line 19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v10, Lio/appmetrica/analytics/impl/b5;

    invoke-direct {v10}, Lio/appmetrica/analytics/impl/b5;-><init>()V

    invoke-virtual {v9, v6, v10}, Lio/appmetrica/analytics/impl/Ba;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    new-instance v6, Lio/appmetrica/analytics/impl/Rm;

    iget-object v4, v4, Lio/appmetrica/analytics/impl/X6;->b:Lio/appmetrica/analytics/impl/G7;

    .line 21
    iget-object v4, v4, Lio/appmetrica/analytics/impl/G7;->a:Ljava/util/HashMap;

    .line 22
    invoke-direct {v6, p1, v4}, Lio/appmetrica/analytics/impl/Rm;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    new-instance p1, Lio/appmetrica/analytics/impl/Qm;

    .line 25
    invoke-direct {p1, v8, v7, v9, v6}, Lio/appmetrica/analytics/impl/Qm;-><init>(Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/impl/Ba;Lio/appmetrica/analytics/impl/Rm;)V

    .line 26
    invoke-static {}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v4

    invoke-direct {v1, v2, v3, p1, v4}, Lio/appmetrica/analytics/impl/j7;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/Qm;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 27
    iget-object p1, p0, Lio/appmetrica/analytics/impl/k7;->a:Ljava/util/HashMap;

    .line 28
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Y4;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d()Lio/appmetrica/analytics/impl/Ta;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/k7;->l:Lio/appmetrica/analytics/impl/Db;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lio/appmetrica/analytics/impl/Db;

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/k7;->h()Lio/appmetrica/analytics/impl/j7;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lio/appmetrica/analytics/impl/bl;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Lio/appmetrica/analytics/impl/bl;-><init>(Lio/appmetrica/analytics/impl/j7;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v2}, Lio/appmetrica/analytics/impl/Db;-><init>(Lio/appmetrica/analytics/impl/J6;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lio/appmetrica/analytics/impl/k7;->l:Lio/appmetrica/analytics/impl/Db;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/k7;->l:Lio/appmetrica/analytics/impl/Db;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0

    .line 28
    throw v0
.end method

.method public final e()Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;
    .locals 12

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/k7;->j:Lio/appmetrica/analytics/impl/k3;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lio/appmetrica/analytics/impl/k3;

    .line 6
    .line 7
    new-instance v1, Lio/appmetrica/analytics/impl/bl;

    .line 8
    .line 9
    iget-object v2, p0, Lio/appmetrica/analytics/impl/k7;->g:Lio/appmetrica/analytics/impl/j7;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Lio/appmetrica/analytics/impl/j7;

    .line 14
    .line 15
    iget-object v3, p0, Lio/appmetrica/analytics/impl/k7;->e:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v4, p0, Lio/appmetrica/analytics/impl/k7;->s:Lio/appmetrica/analytics/impl/m7;

    .line 18
    .line 19
    new-instance v5, Lio/appmetrica/analytics/impl/l7;

    .line 20
    .line 21
    iget-object v6, v4, Lio/appmetrica/analytics/impl/m7;->a:Lio/appmetrica/analytics/impl/T6;

    .line 22
    .line 23
    iget-object v4, v4, Lio/appmetrica/analytics/impl/m7;->b:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    invoke-direct {v5, v6, v4, v7}, Lio/appmetrica/analytics/impl/l7;-><init>(Lio/appmetrica/analytics/impl/T6;Ljava/util/ArrayList;Z)V

    .line 27
    .line 28
    .line 29
    new-instance v4, Lio/appmetrica/analytics/impl/x2;

    .line 30
    .line 31
    invoke-direct {v4}, Lio/appmetrica/analytics/impl/x2;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v3, v4}, Lio/appmetrica/analytics/impl/l7;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/i7;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iget-object v5, p0, Lio/appmetrica/analytics/impl/k7;->d:Lio/appmetrica/analytics/impl/X6;

    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    new-instance v6, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    sget-object v8, Lio/appmetrica/analytics/impl/G5;->a:Ljava/util/List;

    .line 49
    .line 50
    const-string v9, "binary_data"

    .line 51
    .line 52
    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object v8, v5, Lio/appmetrica/analytics/impl/X6;->c:Lio/appmetrica/analytics/impl/Pm;

    .line 56
    .line 57
    iget-object v5, v5, Lio/appmetrica/analytics/impl/X6;->a:Lio/appmetrica/analytics/impl/h7;

    .line 58
    .line 59
    iget-object v9, v5, Lio/appmetrica/analytics/impl/h7;->g:Lio/appmetrica/analytics/impl/b7;

    .line 60
    .line 61
    iget-object v5, v5, Lio/appmetrica/analytics/impl/h7;->h:Lio/appmetrica/analytics/impl/c7;

    .line 62
    .line 63
    new-instance v10, Lio/appmetrica/analytics/impl/Ba;

    .line 64
    .line 65
    invoke-direct {v10, v7}, Lio/appmetrica/analytics/impl/Ba;-><init>(Z)V

    .line 66
    .line 67
    .line 68
    new-instance v7, Lio/appmetrica/analytics/impl/Rm;

    .line 69
    .line 70
    const-string v11, "auto_inapp"

    .line 71
    .line 72
    invoke-direct {v7, v11, v6}, Lio/appmetrica/analytics/impl/Rm;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v6, Lio/appmetrica/analytics/impl/Qm;

    .line 79
    .line 80
    invoke-direct {v6, v9, v5, v10, v7}, Lio/appmetrica/analytics/impl/Qm;-><init>(Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/impl/Ba;Lio/appmetrica/analytics/impl/Rm;)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-direct {v2, v3, v4, v6, v5}, Lio/appmetrica/analytics/impl/j7;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/Qm;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 88
    .line 89
    .line 90
    iput-object v2, p0, Lio/appmetrica/analytics/impl/k7;->g:Lio/appmetrica/analytics/impl/j7;

    .line 91
    .line 92
    :cond_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/k7;->g:Lio/appmetrica/analytics/impl/j7;

    .line 93
    .line 94
    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/bl;-><init>(Lio/appmetrica/analytics/impl/j7;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/k3;-><init>(Lio/appmetrica/analytics/impl/bl;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lio/appmetrica/analytics/impl/k7;->j:Lio/appmetrica/analytics/impl/k3;

    .line 101
    .line 102
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/k7;->j:Lio/appmetrica/analytics/impl/k3;

    .line 103
    .line 104
    return-object v0
.end method

.method public final f()Lio/appmetrica/analytics/impl/Ta;
    .locals 11

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/k7;->p:Lio/appmetrica/analytics/impl/Db;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lio/appmetrica/analytics/impl/Db;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/k7;->r:Lio/appmetrica/analytics/impl/kc;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lio/appmetrica/analytics/impl/k7;->s:Lio/appmetrica/analytics/impl/m7;

    .line 13
    .line 14
    new-instance v2, Lio/appmetrica/analytics/impl/l7;

    .line 15
    .line 16
    iget-object v3, v1, Lio/appmetrica/analytics/impl/m7;->a:Lio/appmetrica/analytics/impl/T6;

    .line 17
    .line 18
    iget-object v1, v1, Lio/appmetrica/analytics/impl/m7;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-direct {v2, v3, v1, v4}, Lio/appmetrica/analytics/impl/l7;-><init>(Lio/appmetrica/analytics/impl/T6;Ljava/util/ArrayList;Z)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lio/appmetrica/analytics/impl/k7;->e:Landroid/content/Context;

    .line 25
    .line 26
    new-instance v3, Lio/appmetrica/analytics/impl/f4;

    .line 27
    .line 28
    invoke-direct {v3}, Lio/appmetrica/analytics/impl/f4;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1, v3}, Lio/appmetrica/analytics/impl/l7;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/i7;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Lio/appmetrica/analytics/impl/kc;

    .line 36
    .line 37
    iget-object v3, p0, Lio/appmetrica/analytics/impl/k7;->e:Landroid/content/Context;

    .line 38
    .line 39
    iget-object v4, p0, Lio/appmetrica/analytics/impl/k7;->d:Lio/appmetrica/analytics/impl/X6;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v5, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v6, "preferences"

    .line 50
    .line 51
    sget-object v7, Lio/appmetrica/analytics/impl/I5;->a:Ljava/util/List;

    .line 52
    .line 53
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object v6, v4, Lio/appmetrica/analytics/impl/X6;->c:Lio/appmetrica/analytics/impl/Pm;

    .line 57
    .line 58
    iget-object v4, v4, Lio/appmetrica/analytics/impl/X6;->a:Lio/appmetrica/analytics/impl/h7;

    .line 59
    .line 60
    iget-object v7, v4, Lio/appmetrica/analytics/impl/h7;->c:Lio/appmetrica/analytics/impl/d7;

    .line 61
    .line 62
    iget-object v4, v4, Lio/appmetrica/analytics/impl/h7;->d:Lio/appmetrica/analytics/impl/e7;

    .line 63
    .line 64
    new-instance v8, Lio/appmetrica/analytics/impl/Ba;

    .line 65
    .line 66
    const/4 v9, 0x0

    .line 67
    invoke-direct {v8, v9}, Lio/appmetrica/analytics/impl/Ba;-><init>(Z)V

    .line 68
    .line 69
    .line 70
    const/16 v9, 0x70

    .line 71
    .line 72
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    new-instance v10, Lio/appmetrica/analytics/impl/g4;

    .line 77
    .line 78
    invoke-direct {v10}, Lio/appmetrica/analytics/impl/g4;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8, v9, v10}, Lio/appmetrica/analytics/impl/Ba;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    new-instance v9, Lio/appmetrica/analytics/impl/Rm;

    .line 85
    .line 86
    const-string v10, "service database"

    .line 87
    .line 88
    invoke-direct {v9, v10, v5}, Lio/appmetrica/analytics/impl/Rm;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    new-instance v5, Lio/appmetrica/analytics/impl/Qm;

    .line 95
    .line 96
    invoke-direct {v5, v7, v4, v8, v9}, Lio/appmetrica/analytics/impl/Qm;-><init>(Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/impl/Ba;Lio/appmetrica/analytics/impl/Rm;)V

    .line 97
    .line 98
    .line 99
    new-instance v4, Lio/appmetrica/analytics/impl/ka;

    .line 100
    .line 101
    invoke-direct {v4, v1}, Lio/appmetrica/analytics/impl/ka;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {v2, v3, v1, v4, v5}, Lio/appmetrica/analytics/impl/kc;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/ka;Lio/appmetrica/analytics/impl/Qm;)V

    .line 105
    .line 106
    .line 107
    iput-object v2, p0, Lio/appmetrica/analytics/impl/k7;->r:Lio/appmetrica/analytics/impl/kc;

    .line 108
    .line 109
    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/k7;->r:Lio/appmetrica/analytics/impl/kc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    monitor-exit p0

    .line 112
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Db;-><init>(Lio/appmetrica/analytics/impl/J6;)V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Lio/appmetrica/analytics/impl/k7;->p:Lio/appmetrica/analytics/impl/Db;

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    monitor-exit p0

    .line 120
    throw v0

    .line 121
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/k7;->p:Lio/appmetrica/analytics/impl/Db;

    .line 122
    .line 123
    return-object v0
.end method

.method public final g()Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/k7;->h:Lio/appmetrica/analytics/impl/k3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/appmetrica/analytics/impl/k3;

    .line 6
    .line 7
    new-instance v1, Lio/appmetrica/analytics/impl/bl;

    .line 8
    .line 9
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/k7;->h()Lio/appmetrica/analytics/impl/j7;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/bl;-><init>(Lio/appmetrica/analytics/impl/j7;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/k3;-><init>(Lio/appmetrica/analytics/impl/bl;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lio/appmetrica/analytics/impl/k7;->h:Lio/appmetrica/analytics/impl/k3;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/k7;->h:Lio/appmetrica/analytics/impl/k3;

    .line 22
    .line 23
    return-object v0
.end method

.method public final declared-synchronized h()Lio/appmetrica/analytics/impl/j7;
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/k7;->f:Lio/appmetrica/analytics/impl/j7;

    .line 3
    .line 4
    if-nez v0, :cond_5

    .line 5
    .line 6
    new-instance v0, Lio/appmetrica/analytics/impl/j7;

    .line 7
    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/impl/k7;->e:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v2, p0, Lio/appmetrica/analytics/impl/k7;->s:Lio/appmetrica/analytics/impl/m7;

    .line 11
    .line 12
    new-instance v3, Lio/appmetrica/analytics/impl/l7;

    .line 13
    .line 14
    iget-object v4, v2, Lio/appmetrica/analytics/impl/m7;->a:Lio/appmetrica/analytics/impl/T6;

    .line 15
    .line 16
    iget-object v2, v2, Lio/appmetrica/analytics/impl/m7;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    invoke-direct {v3, v4, v2, v5}, Lio/appmetrica/analytics/impl/l7;-><init>(Lio/appmetrica/analytics/impl/T6;Ljava/util/ArrayList;Z)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lio/appmetrica/analytics/impl/Zj;

    .line 23
    .line 24
    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Zj;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v1, v2}, Lio/appmetrica/analytics/impl/l7;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/i7;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lio/appmetrica/analytics/impl/k7;->d:Lio/appmetrica/analytics/impl/X6;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v4, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    sget-object v5, Lio/appmetrica/analytics/impl/I5;->a:Ljava/util/List;

    .line 42
    .line 43
    const-string v6, "preferences"

    .line 44
    .line 45
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    sget-object v5, Lio/appmetrica/analytics/impl/G5;->a:Ljava/util/List;

    .line 49
    .line 50
    const-string v6, "binary_data"

    .line 51
    .line 52
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    sget-object v5, Lio/appmetrica/analytics/impl/bn;->a:Ljava/util/List;

    .line 56
    .line 57
    const-string v6, "temp_cache"

    .line 58
    .line 59
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    sget-object v5, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 63
    .line 64
    invoke-virtual {v5}, Lio/appmetrica/analytics/impl/za;->o()Lio/appmetrica/analytics/impl/kk;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Lio/appmetrica/analytics/impl/kk;->b()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_1

    .line 81
    .line 82
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    check-cast v6, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServicesDatabase;

    .line 87
    .line 88
    invoke-virtual {v6}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServicesDatabase;->getTables()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_0

    .line 101
    .line 102
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    check-cast v7, Lio/appmetrica/analytics/modulesapi/internal/common/TableDescription;

    .line 107
    .line 108
    invoke-interface {v7}, Lio/appmetrica/analytics/modulesapi/internal/common/TableDescription;->getTableName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-interface {v7}, Lio/appmetrica/analytics/modulesapi/internal/common/TableDescription;->getColumnNames()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    iget-object v5, v3, Lio/appmetrica/analytics/impl/X6;->c:Lio/appmetrica/analytics/impl/Pm;

    .line 121
    .line 122
    iget-object v3, v3, Lio/appmetrica/analytics/impl/X6;->a:Lio/appmetrica/analytics/impl/h7;

    .line 123
    .line 124
    iget-object v6, v3, Lio/appmetrica/analytics/impl/h7;->e:Lio/appmetrica/analytics/impl/f7;

    .line 125
    .line 126
    iget-object v3, v3, Lio/appmetrica/analytics/impl/h7;->f:Lio/appmetrica/analytics/impl/g7;

    .line 127
    .line 128
    new-instance v7, Lio/appmetrica/analytics/impl/Ba;

    .line 129
    .line 130
    const/4 v8, 0x0

    .line 131
    invoke-direct {v7, v8}, Lio/appmetrica/analytics/impl/Ba;-><init>(Z)V

    .line 132
    .line 133
    .line 134
    const/16 v8, 0x72

    .line 135
    .line 136
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    new-instance v9, Lio/appmetrica/analytics/impl/ak;

    .line 141
    .line 142
    invoke-direct {v9}, Lio/appmetrica/analytics/impl/ak;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v8, v9}, Lio/appmetrica/analytics/impl/Ba;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    sget-object v8, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 149
    .line 150
    invoke-virtual {v8}, Lio/appmetrica/analytics/impl/za;->o()Lio/appmetrica/analytics/impl/kk;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    invoke-virtual {v8}, Lio/appmetrica/analytics/impl/kk;->b()Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-eqz v9, :cond_4

    .line 167
    .line 168
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    check-cast v9, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServicesDatabase;

    .line 173
    .line 174
    invoke-virtual {v9}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServicesDatabase;->getTables()Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v10

    .line 186
    if-eqz v10, :cond_2

    .line 187
    .line 188
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    check-cast v10, Lio/appmetrica/analytics/modulesapi/internal/common/TableDescription;

    .line 193
    .line 194
    invoke-interface {v10}, Lio/appmetrica/analytics/modulesapi/internal/common/TableDescription;->getDatabaseProviderUpgradeScript()Ljava/util/Map;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    if-eqz v11, :cond_3

    .line 211
    .line 212
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v11

    .line 216
    check-cast v11, Ljava/util/Map$Entry;

    .line 217
    .line 218
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    check-cast v12, Ljava/lang/Integer;

    .line 223
    .line 224
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    check-cast v11, Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;

    .line 229
    .line 230
    invoke-virtual {v7, v12, v11}, Lio/appmetrica/analytics/impl/Ba;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_4
    new-instance v8, Lio/appmetrica/analytics/impl/Rm;

    .line 235
    .line 236
    const-string v9, "service database"

    .line 237
    .line 238
    invoke-direct {v8, v9, v4}, Lio/appmetrica/analytics/impl/Rm;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    new-instance v4, Lio/appmetrica/analytics/impl/Qm;

    .line 245
    .line 246
    invoke-direct {v4, v6, v3, v7, v8}, Lio/appmetrica/analytics/impl/Qm;-><init>(Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/coreapi/internal/db/DatabaseScript;Lio/appmetrica/analytics/impl/Ba;Lio/appmetrica/analytics/impl/Rm;)V

    .line 247
    .line 248
    .line 249
    invoke-static {}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-direct {v0, v1, v2, v4, v3}, Lio/appmetrica/analytics/impl/j7;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/Qm;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 254
    .line 255
    .line 256
    iput-object v0, p0, Lio/appmetrica/analytics/impl/k7;->f:Lio/appmetrica/analytics/impl/j7;

    .line 257
    .line 258
    :cond_5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/k7;->f:Lio/appmetrica/analytics/impl/j7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .line 260
    monitor-exit p0

    .line 261
    return-object v0

    .line 262
    :catchall_0
    move-exception v0

    .line 263
    monitor-exit p0

    .line 264
    throw v0
.end method
