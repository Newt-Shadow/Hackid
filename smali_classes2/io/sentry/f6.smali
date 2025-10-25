.class public final Lio/sentry/f6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/q1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/f6$b;,
        Lio/sentry/f6$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Date;

.field private b:Ljava/util/Date;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/UUID;

.field private f:Ljava/lang/Boolean;

.field private g:Lio/sentry/f6$b;

.field private h:Ljava/lang/Long;

.field private i:Ljava/lang/Double;

.field private final j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private final o:Ljava/lang/Object;

.field private p:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lio/sentry/f6$b;Ljava/util/Date;Ljava/util/Date;ILjava/lang/String;Ljava/util/UUID;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/f6;->o:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lio/sentry/f6;->g:Lio/sentry/f6$b;

    .line 4
    iput-object p2, p0, Lio/sentry/f6;->a:Ljava/util/Date;

    .line 5
    iput-object p3, p0, Lio/sentry/f6;->b:Ljava/util/Date;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/sentry/f6;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    iput-object p5, p0, Lio/sentry/f6;->d:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lio/sentry/f6;->e:Ljava/util/UUID;

    .line 9
    iput-object p7, p0, Lio/sentry/f6;->f:Ljava/lang/Boolean;

    .line 10
    iput-object p8, p0, Lio/sentry/f6;->h:Ljava/lang/Long;

    .line 11
    iput-object p9, p0, Lio/sentry/f6;->i:Ljava/lang/Double;

    .line 12
    iput-object p10, p0, Lio/sentry/f6;->j:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Lio/sentry/f6;->k:Ljava/lang/String;

    .line 14
    iput-object p12, p0, Lio/sentry/f6;->l:Ljava/lang/String;

    .line 15
    iput-object p13, p0, Lio/sentry/f6;->m:Ljava/lang/String;

    .line 16
    iput-object p14, p0, Lio/sentry/f6;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/sentry/protocol/b0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    .line 17
    sget-object v1, Lio/sentry/f6$b;->Ok:Lio/sentry/f6$b;

    .line 18
    invoke-static {}, Lio/sentry/j;->c()Ljava/util/Date;

    move-result-object v2

    .line 19
    invoke-static {}, Lio/sentry/j;->c()Ljava/util/Date;

    move-result-object v3

    const/4 v4, 0x0

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    .line 21
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    .line 22
    invoke-virtual/range {p2 .. p2}, Lio/sentry/protocol/b0;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v10, v0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v5, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    .line 23
    invoke-direct/range {v0 .. v14}, Lio/sentry/f6;-><init>(Lio/sentry/f6$b;Ljava/util/Date;Ljava/util/Date;ILjava/lang/String;Ljava/util/UUID;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/Date;)D
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object p1, p0, Lio/sentry/f6;->a:Ljava/util/Date;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sub-long/2addr v0, v2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    long-to-double v0, v0

    .line 17
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    div-double/2addr v0, v2

    .line 23
    return-wide v0
.end method

.method private i(Ljava/util/Date;)J
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long p1, v0, v2

    .line 8
    .line 9
    if-gez p1, :cond_0

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public b()Lio/sentry/f6;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v16, Lio/sentry/f6;

    .line 4
    .line 5
    iget-object v2, v0, Lio/sentry/f6;->g:Lio/sentry/f6$b;

    .line 6
    .line 7
    iget-object v3, v0, Lio/sentry/f6;->a:Ljava/util/Date;

    .line 8
    .line 9
    iget-object v4, v0, Lio/sentry/f6;->b:Ljava/util/Date;

    .line 10
    .line 11
    iget-object v1, v0, Lio/sentry/f6;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    iget-object v6, v0, Lio/sentry/f6;->d:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v7, v0, Lio/sentry/f6;->e:Ljava/util/UUID;

    .line 20
    .line 21
    iget-object v8, v0, Lio/sentry/f6;->f:Ljava/lang/Boolean;

    .line 22
    .line 23
    iget-object v9, v0, Lio/sentry/f6;->h:Ljava/lang/Long;

    .line 24
    .line 25
    iget-object v10, v0, Lio/sentry/f6;->i:Ljava/lang/Double;

    .line 26
    .line 27
    iget-object v11, v0, Lio/sentry/f6;->j:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v12, v0, Lio/sentry/f6;->k:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v13, v0, Lio/sentry/f6;->l:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v14, v0, Lio/sentry/f6;->m:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v15, v0, Lio/sentry/f6;->n:Ljava/lang/String;

    .line 36
    .line 37
    move-object/from16 v1, v16

    .line 38
    .line 39
    invoke-direct/range {v1 .. v15}, Lio/sentry/f6;-><init>(Lio/sentry/f6$b;Ljava/util/Date;Ljava/util/Date;ILjava/lang/String;Ljava/util/UUID;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v16
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/j;->c()Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lio/sentry/f6;->d(Ljava/util/Date;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/f6;->b()Lio/sentry/f6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d(Ljava/util/Date;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/f6;->o:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Lio/sentry/f6;->f:Ljava/lang/Boolean;

    .line 6
    .line 7
    iget-object v1, p0, Lio/sentry/f6;->g:Lio/sentry/f6$b;

    .line 8
    .line 9
    sget-object v2, Lio/sentry/f6$b;->Ok:Lio/sentry/f6$b;

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    sget-object v1, Lio/sentry/f6$b;->Exited:Lio/sentry/f6$b;

    .line 14
    .line 15
    iput-object v1, p0, Lio/sentry/f6;->g:Lio/sentry/f6$b;

    .line 16
    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iput-object p1, p0, Lio/sentry/f6;->b:Ljava/util/Date;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-static {}, Lio/sentry/j;->c()Ljava/util/Date;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lio/sentry/f6;->b:Ljava/util/Date;

    .line 27
    .line 28
    :goto_0
    iget-object p1, p0, Lio/sentry/f6;->b:Ljava/util/Date;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lio/sentry/f6;->a(Ljava/util/Date;)D

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lio/sentry/f6;->i:Ljava/lang/Double;

    .line 41
    .line 42
    iget-object p1, p0, Lio/sentry/f6;->b:Ljava/util/Date;

    .line 43
    .line 44
    invoke-direct {p0, p1}, Lio/sentry/f6;->i(Ljava/util/Date;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lio/sentry/f6;->h:Ljava/lang/Long;

    .line 53
    .line 54
    :cond_2
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/f6;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/f6;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/f6;->f:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/f6;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Ljava/util/UUID;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/f6;->e:Ljava/util/UUID;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/f6;->a:Ljava/util/Date;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/Date;

    .line 12
    .line 13
    return-object v0
.end method

.method public l()Lio/sentry/f6$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/f6;->g:Lio/sentry/f6$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/f6;->g:Lio/sentry/f6$b;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/f6$b;->Ok:Lio/sentry/f6$b;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public n()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iput-object v0, p0, Lio/sentry/f6;->f:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-void
.end method

.method public o(Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/f6;->p:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public p(Lio/sentry/f6$b;Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/sentry/f6;->q(Lio/sentry/f6$b;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public q(Lio/sentry/f6$b;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/f6;->o:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    :try_start_0
    iput-object p1, p0, Lio/sentry/f6;->g:Lio/sentry/f6$b;

    .line 8
    .line 9
    move p1, v1

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iput-object p2, p0, Lio/sentry/f6;->k:Ljava/lang/String;

    .line 17
    .line 18
    move p1, v1

    .line 19
    :cond_1
    if-eqz p3, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lio/sentry/f6;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 24
    .line 25
    .line 26
    move p1, v1

    .line 27
    :cond_2
    if-eqz p4, :cond_3

    .line 28
    .line 29
    iput-object p4, p0, Lio/sentry/f6;->n:Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    move v1, p1

    .line 33
    :goto_1
    if-eqz v1, :cond_4

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lio/sentry/f6;->f:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-static {}, Lio/sentry/j;->c()Ljava/util/Date;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lio/sentry/f6;->b:Ljava/util/Date;

    .line 43
    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    invoke-direct {p0, p1}, Lio/sentry/f6;->i(Ljava/util/Date;)J

    .line 47
    .line 48
    .line 49
    move-result-wide p1

    .line 50
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lio/sentry/f6;->h:Ljava/lang/Long;

    .line 55
    .line 56
    :cond_4
    monitor-exit v0

    .line 57
    return v1

    .line 58
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p1
.end method

.method public serialize(Lio/sentry/m2;Lio/sentry/ILogger;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/sentry/m2;->t()Lio/sentry/m2;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/sentry/f6;->e:Ljava/util/UUID;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "sid"

    .line 9
    .line 10
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lio/sentry/f6;->e:Ljava/util/UUID;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lio/sentry/f6;->d:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string v0, "did"

    .line 28
    .line 29
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lio/sentry/f6;->d:Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {v0, v1}, Lio/sentry/m2;->c(Ljava/lang/String;)Lio/sentry/m2;

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lio/sentry/f6;->f:Ljava/lang/Boolean;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    const-string v0, "init"

    .line 43
    .line 44
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lio/sentry/f6;->f:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-interface {v0, v1}, Lio/sentry/m2;->h(Ljava/lang/Boolean;)Lio/sentry/m2;

    .line 51
    .line 52
    .line 53
    :cond_2
    const-string v0, "started"

    .line 54
    .line 55
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lio/sentry/f6;->a:Ljava/util/Date;

    .line 60
    .line 61
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 62
    .line 63
    .line 64
    const-string v0, "status"

    .line 65
    .line 66
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lio/sentry/f6;->g:Lio/sentry/f6$b;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lio/sentry/f6;->h:Ljava/lang/Long;

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    const-string v0, "seq"

    .line 90
    .line 91
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lio/sentry/f6;->h:Ljava/lang/Long;

    .line 96
    .line 97
    invoke-interface {v0, v1}, Lio/sentry/m2;->f(Ljava/lang/Number;)Lio/sentry/m2;

    .line 98
    .line 99
    .line 100
    :cond_3
    const-string v0, "errors"

    .line 101
    .line 102
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object v1, p0, Lio/sentry/f6;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    int-to-long v1, v1

    .line 113
    invoke-interface {v0, v1, v2}, Lio/sentry/m2;->a(J)Lio/sentry/m2;

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lio/sentry/f6;->i:Ljava/lang/Double;

    .line 117
    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    const-string v0, "duration"

    .line 121
    .line 122
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v1, p0, Lio/sentry/f6;->i:Ljava/lang/Double;

    .line 127
    .line 128
    invoke-interface {v0, v1}, Lio/sentry/m2;->f(Ljava/lang/Number;)Lio/sentry/m2;

    .line 129
    .line 130
    .line 131
    :cond_4
    iget-object v0, p0, Lio/sentry/f6;->b:Ljava/util/Date;

    .line 132
    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    const-string v0, "timestamp"

    .line 136
    .line 137
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v1, p0, Lio/sentry/f6;->b:Ljava/util/Date;

    .line 142
    .line 143
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 144
    .line 145
    .line 146
    :cond_5
    iget-object v0, p0, Lio/sentry/f6;->n:Ljava/lang/String;

    .line 147
    .line 148
    if-eqz v0, :cond_6

    .line 149
    .line 150
    const-string v0, "abnormal_mechanism"

    .line 151
    .line 152
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v1, p0, Lio/sentry/f6;->n:Ljava/lang/String;

    .line 157
    .line 158
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 159
    .line 160
    .line 161
    :cond_6
    const-string v0, "attrs"

    .line 162
    .line 163
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 164
    .line 165
    .line 166
    invoke-interface {p1}, Lio/sentry/m2;->t()Lio/sentry/m2;

    .line 167
    .line 168
    .line 169
    const-string v0, "release"

    .line 170
    .line 171
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iget-object v1, p0, Lio/sentry/f6;->m:Ljava/lang/String;

    .line 176
    .line 177
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lio/sentry/f6;->l:Ljava/lang/String;

    .line 181
    .line 182
    if-eqz v0, :cond_7

    .line 183
    .line 184
    const-string v0, "environment"

    .line 185
    .line 186
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iget-object v1, p0, Lio/sentry/f6;->l:Ljava/lang/String;

    .line 191
    .line 192
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 193
    .line 194
    .line 195
    :cond_7
    iget-object v0, p0, Lio/sentry/f6;->j:Ljava/lang/String;

    .line 196
    .line 197
    if-eqz v0, :cond_8

    .line 198
    .line 199
    const-string v0, "ip_address"

    .line 200
    .line 201
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iget-object v1, p0, Lio/sentry/f6;->j:Ljava/lang/String;

    .line 206
    .line 207
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 208
    .line 209
    .line 210
    :cond_8
    iget-object v0, p0, Lio/sentry/f6;->k:Ljava/lang/String;

    .line 211
    .line 212
    if-eqz v0, :cond_9

    .line 213
    .line 214
    const-string v0, "user_agent"

    .line 215
    .line 216
    invoke-interface {p1, v0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    iget-object v1, p0, Lio/sentry/f6;->k:Ljava/lang/String;

    .line 221
    .line 222
    invoke-interface {v0, p2, v1}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 223
    .line 224
    .line 225
    :cond_9
    invoke-interface {p1}, Lio/sentry/m2;->r()Lio/sentry/m2;

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Lio/sentry/f6;->p:Ljava/util/Map;

    .line 229
    .line 230
    if-eqz v0, :cond_a

    .line 231
    .line 232
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_a

    .line 245
    .line 246
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    check-cast v1, Ljava/lang/String;

    .line 251
    .line 252
    iget-object v2, p0, Lio/sentry/f6;->p:Ljava/util/Map;

    .line 253
    .line 254
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-interface {p1, v1}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 259
    .line 260
    .line 261
    invoke-interface {p1, p2, v2}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 262
    .line 263
    .line 264
    goto :goto_0

    .line 265
    :cond_a
    invoke-interface {p1}, Lio/sentry/m2;->r()Lio/sentry/m2;

    .line 266
    .line 267
    .line 268
    return-void
.end method
