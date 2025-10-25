.class public Lio/appmetrica/analytics/impl/o5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/bb;
.implements Lio/appmetrica/analytics/impl/Qa;
.implements Lio/appmetrica/analytics/impl/kh;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/h5;

.field public final c:Lio/appmetrica/analytics/impl/Ue;

.field public final d:Lio/appmetrica/analytics/impl/Xe;

.field public final e:Lio/appmetrica/analytics/impl/W6;

.field public final f:Lio/appmetrica/analytics/impl/ti;

.field public final g:Lio/appmetrica/analytics/impl/i9;

.field public final h:Lio/appmetrica/analytics/impl/c0;

.field public final i:Lio/appmetrica/analytics/impl/d0;

.field public final j:Lio/appmetrica/analytics/impl/Ek;

.field public final k:Lio/appmetrica/analytics/impl/Og;

.field public final l:Lio/appmetrica/analytics/impl/V8;

.field public final m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

.field public final n:Lio/appmetrica/analytics/impl/v9;

.field public final o:Lio/appmetrica/analytics/impl/j5;

.field public final p:Lio/appmetrica/analytics/impl/B9;

.field public final q:Lio/appmetrica/analytics/impl/E3;

.field public final r:Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

.field public final s:Lio/appmetrica/analytics/impl/rf;

.field public final t:Lio/appmetrica/analytics/impl/do;

.field public final u:Lio/appmetrica/analytics/impl/wk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/ih;Lio/appmetrica/analytics/impl/m5;)V
    .locals 17

    .line 1
    new-instance v3, Lio/appmetrica/analytics/impl/d0;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/d0;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    invoke-direct {v4}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;-><init>()V

    new-instance v16, Lio/appmetrica/analytics/impl/t5;

    .line 2
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->w()Lio/appmetrica/analytics/impl/dk;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/dk;->d()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v12

    .line 4
    invoke-static/range {p1 .. p1}, Lio/appmetrica/analytics/coreutils/internal/services/PackageManagerUtils;->getAppVersionCodeInt(Landroid/content/Context;)I

    move-result v13

    .line 5
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->k()Lio/appmetrica/analytics/impl/Qb;

    move-result-object v14

    new-instance v15, Lio/appmetrica/analytics/impl/g5;

    invoke-direct {v15}, Lio/appmetrica/analytics/impl/g5;-><init>()V

    move-object/from16 v5, v16

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    invoke-direct/range {v5 .. v15}, Lio/appmetrica/analytics/impl/t5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/impl/ih;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;ILio/appmetrica/analytics/impl/Qb;Lio/appmetrica/analytics/impl/D9;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v6, p4

    .line 6
    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/o5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/d0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/t5;Lio/appmetrica/analytics/impl/F4;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/d0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/t5;Lio/appmetrica/analytics/impl/F4;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v0, Lio/appmetrica/analytics/impl/o5;->a:Landroid/content/Context;

    .line 9
    iput-object v6, v0, Lio/appmetrica/analytics/impl/o5;->b:Lio/appmetrica/analytics/impl/h5;

    .line 10
    iput-object v1, v0, Lio/appmetrica/analytics/impl/o5;->i:Lio/appmetrica/analytics/impl/d0;

    move-object/from16 v3, p4

    .line 11
    iput-object v3, v0, Lio/appmetrica/analytics/impl/o5;->r:Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    .line 12
    invoke-virtual/range {p5 .. p5}, Lio/appmetrica/analytics/impl/t5;->f()Lio/appmetrica/analytics/impl/do;

    move-result-object v9

    iput-object v9, v0, Lio/appmetrica/analytics/impl/o5;->t:Lio/appmetrica/analytics/impl/do;

    .line 13
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    move-result-object v3

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/za;->s()Lio/appmetrica/analytics/impl/rf;

    move-result-object v3

    iput-object v3, v0, Lio/appmetrica/analytics/impl/o5;->s:Lio/appmetrica/analytics/impl/rf;

    .line 14
    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/t5;->a(Lio/appmetrica/analytics/impl/o5;)Lio/appmetrica/analytics/impl/Og;

    move-result-object v4

    iput-object v4, v0, Lio/appmetrica/analytics/impl/o5;->k:Lio/appmetrica/analytics/impl/Og;

    .line 15
    invoke-virtual/range {p5 .. p5}, Lio/appmetrica/analytics/impl/t5;->d()Lio/appmetrica/analytics/impl/r5;

    move-result-object v3

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/r5;->a()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v3

    iput-object v3, v0, Lio/appmetrica/analytics/impl/o5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 16
    invoke-virtual/range {p5 .. p5}, Lio/appmetrica/analytics/impl/t5;->e()Lio/appmetrica/analytics/impl/s5;

    move-result-object v5

    invoke-virtual {v5}, Lio/appmetrica/analytics/impl/s5;->a()Lio/appmetrica/analytics/impl/Ue;

    move-result-object v15

    iput-object v15, v0, Lio/appmetrica/analytics/impl/o5;->c:Lio/appmetrica/analytics/impl/Ue;

    .line 17
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    move-result-object v5

    invoke-virtual {v5}, Lio/appmetrica/analytics/impl/za;->x()Lio/appmetrica/analytics/impl/Xe;

    move-result-object v5

    iput-object v5, v0, Lio/appmetrica/analytics/impl/o5;->d:Lio/appmetrica/analytics/impl/Xe;

    .line 18
    invoke-virtual {v1, v6, v3, v15}, Lio/appmetrica/analytics/impl/d0;->a(Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/Ue;)Lio/appmetrica/analytics/impl/c0;

    move-result-object v12

    iput-object v12, v0, Lio/appmetrica/analytics/impl/o5;->h:Lio/appmetrica/analytics/impl/c0;

    .line 19
    invoke-virtual/range {p5 .. p5}, Lio/appmetrica/analytics/impl/t5;->a()Lio/appmetrica/analytics/impl/V8;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/o5;->l:Lio/appmetrica/analytics/impl/V8;

    .line 20
    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/t5;->b(Lio/appmetrica/analytics/impl/o5;)Lio/appmetrica/analytics/impl/W6;

    move-result-object v5

    iput-object v5, v0, Lio/appmetrica/analytics/impl/o5;->e:Lio/appmetrica/analytics/impl/W6;

    .line 21
    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/t5;->d(Lio/appmetrica/analytics/impl/o5;)Lio/appmetrica/analytics/impl/vi;

    move-result-object v16

    .line 22
    invoke-static {}, Lio/appmetrica/analytics/impl/t5;->b()Lio/appmetrica/analytics/impl/j5;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/o5;->o:Lio/appmetrica/analytics/impl/j5;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lio/appmetrica/analytics/impl/o5;->v()V

    .line 24
    new-instance v1, Lio/appmetrica/analytics/impl/n5;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/n5;-><init>(Lio/appmetrica/analytics/impl/o5;)V

    invoke-static {v0, v9, v1}, Lio/appmetrica/analytics/impl/t5;->a(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/do;Lio/appmetrica/analytics/impl/n5;)Lio/appmetrica/analytics/impl/Ek;

    move-result-object v10

    iput-object v10, v0, Lio/appmetrica/analytics/impl/o5;->j:Lio/appmetrica/analytics/impl/Ek;

    .line 25
    invoke-virtual/range {p2 .. p2}, Lio/appmetrica/analytics/impl/h5;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v12}, Lio/appmetrica/analytics/impl/c0;->a()Lio/appmetrica/analytics/impl/b0;

    move-result-object v7

    iget-object v7, v7, Lio/appmetrica/analytics/impl/b0;->a:Ljava/lang/String;

    filled-new-array {v1, v7}, [Ljava/lang/Object;

    move-result-object v1

    const-string v7, "Read app environment for component %s. Value: %s"

    .line 27
    invoke-virtual {v3, v7, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-virtual/range {p5 .. p5}, Lio/appmetrica/analytics/impl/t5;->c()Lio/appmetrica/analytics/impl/wk;

    move-result-object v13

    iput-object v13, v0, Lio/appmetrica/analytics/impl/o5;->u:Lio/appmetrica/analytics/impl/wk;

    move-object/from16 v7, p5

    move-object v8, v15

    move-object v11, v5

    move-object/from16 v14, v16

    .line 29
    invoke-virtual/range {v7 .. v14}, Lio/appmetrica/analytics/impl/t5;->a(Lio/appmetrica/analytics/impl/Ue;Lio/appmetrica/analytics/impl/do;Lio/appmetrica/analytics/impl/Ek;Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/c0;Lio/appmetrica/analytics/impl/wk;Lio/appmetrica/analytics/impl/vi;)Lio/appmetrica/analytics/impl/v9;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/o5;->n:Lio/appmetrica/analytics/impl/v9;

    .line 30
    invoke-static/range {p0 .. p0}, Lio/appmetrica/analytics/impl/t5;->c(Lio/appmetrica/analytics/impl/o5;)Lio/appmetrica/analytics/impl/i9;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/o5;->g:Lio/appmetrica/analytics/impl/i9;

    .line 31
    invoke-static {v0, v1}, Lio/appmetrica/analytics/impl/t5;->a(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/i9;)Lio/appmetrica/analytics/impl/ti;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/o5;->f:Lio/appmetrica/analytics/impl/ti;

    .line 32
    invoke-virtual {v2, v15}, Lio/appmetrica/analytics/impl/t5;->a(Lio/appmetrica/analytics/impl/Ue;)Lio/appmetrica/analytics/impl/E3;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/o5;->q:Lio/appmetrica/analytics/impl/E3;

    move-object/from16 v1, p5

    move-object/from16 v2, v16

    move-object v3, v5

    move-object v8, v5

    move-object/from16 v5, p6

    move-object v7, v15

    .line 33
    invoke-virtual/range {v1 .. v7}, Lio/appmetrica/analytics/impl/t5;->a(Lio/appmetrica/analytics/impl/G9;Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/Og;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/Ue;)Lio/appmetrica/analytics/impl/B9;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/o5;->p:Lio/appmetrica/analytics/impl/B9;

    .line 34
    invoke-virtual {v8}, Lio/appmetrica/analytics/impl/W6;->e()V

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->s:Lio/appmetrica/analytics/impl/rf;

    .line 2
    .line 3
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Y7;->h:Lio/appmetrica/analytics/impl/K6;

    .line 4
    .line 5
    iget-object v2, v0, Lio/appmetrica/analytics/impl/Y7;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-interface {v1, v2}, Lio/appmetrica/analytics/impl/K6;->a(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Y7;->c()Lio/appmetrica/analytics/impl/c8;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lio/appmetrica/analytics/impl/of;

    .line 15
    .line 16
    iget-boolean v0, v0, Lio/appmetrica/analytics/impl/of;->d:Z

    .line 17
    .line 18
    iget-object v1, p0, Lio/appmetrica/analytics/impl/o5;->k:Lio/appmetrica/analytics/impl/Og;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iget-object v2, v1, Lio/appmetrica/analytics/impl/D5;->c:Lio/appmetrica/analytics/impl/a6;

    .line 22
    .line 23
    iget-object v2, v2, Lio/appmetrica/analytics/impl/a6;->a:Lio/appmetrica/analytics/impl/Ql;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    monitor-exit v1

    .line 26
    iget-boolean v1, v2, Lio/appmetrica/analytics/impl/Ql;->q:Z

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    move v0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    xor-int/2addr v0, v2

    .line 37
    return v0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    monitor-exit v1

    .line 40
    throw v0
.end method

.method public B()V
    .locals 0

    return-void
.end method

.method public declared-synchronized a(Lio/appmetrica/analytics/impl/F4;)V
    .locals 2

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->k:Lio/appmetrica/analytics/impl/Og;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/X4;->a(Lio/appmetrica/analytics/impl/F4;)V

    .line 16
    iget-object v0, p1, Lio/appmetrica/analytics/impl/F4;->h:Ljava/lang/Boolean;

    .line 17
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object p1, p0, Lio/appmetrica/analytics/impl/o5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->setEnabled(Z)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/F4;->h:Ljava/lang/Boolean;

    .line 20
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    iget-object p1, p0, Lio/appmetrica/analytics/impl/o5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lio/appmetrica/analytics/impl/Ql;)V
    .locals 1

    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->k:Lio/appmetrica/analytics/impl/Og;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/D5;->a(Lio/appmetrica/analytics/impl/Ql;)V

    .line 23
    iget-object p1, p0, Lio/appmetrica/analytics/impl/o5;->p:Lio/appmetrica/analytics/impl/B9;

    check-cast p1, Lio/appmetrica/analytics/impl/z5;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/z5;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/e6;)V
    .locals 4

    .line 2
    iget v0, p1, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/impl/nb;->a(I)Lio/appmetrica/analytics/impl/nb;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/e6;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/e6;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Event received on service"

    .line 6
    invoke-static {v3, v0, v1, v2}, Lio/appmetrica/analytics/impl/Mf;->a(Ljava/lang/String;Lio/appmetrica/analytics/impl/nb;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/impl/o5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->b:Lio/appmetrica/analytics/impl/h5;

    .line 9
    iget-object v0, v0, Lio/appmetrica/analytics/impl/h5;->b:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "-1"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->f:Lio/appmetrica/analytics/impl/ti;

    .line 13
    new-instance v1, Lio/appmetrica/analytics/impl/si;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/si;-><init>()V

    .line 14
    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/O2;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/N2;)Z

    :cond_1
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/ul;Lio/appmetrica/analytics/impl/Ql;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->c:Lio/appmetrica/analytics/impl/Ue;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Ue;->j(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Ue;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ve;->b()V

    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/h5;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->b:Lio/appmetrica/analytics/impl/h5;

    return-object v0
.end method

.method public final b(Lio/appmetrica/analytics/impl/e6;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->h:Lio/appmetrica/analytics/impl/c0;

    .line 3
    iget-object p1, p1, Lio/appmetrica/analytics/impl/e6;->f:Landroid/util/Pair;

    .line 4
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/c0;->a(Landroid/util/Pair;)V

    .line 5
    iget-object p1, p0, Lio/appmetrica/analytics/impl/o5;->h:Lio/appmetrica/analytics/impl/c0;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/c0;->a()Lio/appmetrica/analytics/impl/b0;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->i:Lio/appmetrica/analytics/impl/d0;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/o5;->c:Lio/appmetrica/analytics/impl/Ue;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-wide v2, p1, Lio/appmetrica/analytics/impl/b0;->b:J

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ue;->d()Lio/appmetrica/analytics/impl/b0;

    move-result-object v4

    iget-wide v4, v4, Lio/appmetrica/analytics/impl/b0;->b:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 8
    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Ue;->a(Lio/appmetrica/analytics/impl/b0;)Lio/appmetrica/analytics/impl/Ue;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ve;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const-string v1, "Save new app environment for %s. Value: %s"

    .line 10
    iget-object v2, p0, Lio/appmetrica/analytics/impl/o5;->b:Lio/appmetrica/analytics/impl/h5;

    .line 11
    iget-object p1, p1, Lio/appmetrica/analytics/impl/b0;->a:Ljava/lang/String;

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0

    throw p1
.end method

.method public c()Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->MANUAL:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->h:Lio/appmetrica/analytics/impl/c0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lio/appmetrica/analytics/impl/Rc;

    .line 5
    .line 6
    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Rc;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v1, v0, Lio/appmetrica/analytics/impl/c0;->a:Lio/appmetrica/analytics/impl/Rc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->i:Lio/appmetrica/analytics/impl/d0;

    .line 13
    .line 14
    iget-object v1, p0, Lio/appmetrica/analytics/impl/o5;->h:Lio/appmetrica/analytics/impl/c0;

    .line 15
    .line 16
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/c0;->a()Lio/appmetrica/analytics/impl/b0;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lio/appmetrica/analytics/impl/o5;->c:Lio/appmetrica/analytics/impl/Ue;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/d0;->a(Lio/appmetrica/analytics/impl/b0;Lio/appmetrica/analytics/impl/Ue;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0

    .line 28
    throw v1
.end method

.method public final declared-synchronized e()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->p:Lio/appmetrica/analytics/impl/B9;

    .line 3
    .line 4
    check-cast v0, Lio/appmetrica/analytics/impl/z5;

    .line 5
    .line 6
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/z5;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
.end method

.method public final f()Lio/appmetrica/analytics/impl/E3;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->q:Lio/appmetrica/analytics/impl/E3;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lio/appmetrica/analytics/impl/Ue;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->c:Lio/appmetrica/analytics/impl/Ue;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lio/appmetrica/analytics/impl/W6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->e:Lio/appmetrica/analytics/impl/W6;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Lio/appmetrica/analytics/impl/V8;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->l:Lio/appmetrica/analytics/impl/V8;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lio/appmetrica/analytics/impl/i9;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->g:Lio/appmetrica/analytics/impl/i9;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Lio/appmetrica/analytics/impl/v9;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->n:Lio/appmetrica/analytics/impl/v9;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Lio/appmetrica/analytics/impl/B9;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->p:Lio/appmetrica/analytics/impl/B9;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Lio/appmetrica/analytics/impl/lh;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->k:Lio/appmetrica/analytics/impl/Og;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/D5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/appmetrica/analytics/impl/lh;

    .line 8
    .line 9
    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->c:Lio/appmetrica/analytics/impl/Ue;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ue;->i()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final o()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Lio/appmetrica/analytics/impl/Xe;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->d:Lio/appmetrica/analytics/impl/Xe;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()Lio/appmetrica/analytics/impl/wk;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->u:Lio/appmetrica/analytics/impl/wk;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r()Lio/appmetrica/analytics/impl/Ek;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->j:Lio/appmetrica/analytics/impl/Ek;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Lio/appmetrica/analytics/impl/Ql;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->k:Lio/appmetrica/analytics/impl/Og;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/D5;->c:Lio/appmetrica/analytics/impl/a6;

    .line 5
    .line 6
    iget-object v1, v1, Lio/appmetrica/analytics/impl/a6;->a:Lio/appmetrica/analytics/impl/Ql;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0

    .line 12
    throw v1
.end method

.method public final t()Lio/appmetrica/analytics/impl/do;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->t:Lio/appmetrica/analytics/impl/do;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->n:Lio/appmetrica/analytics/impl/v9;

    .line 2
    .line 3
    iget v1, v0, Lio/appmetrica/analytics/impl/v9;->k:I

    .line 4
    .line 5
    iput v1, v0, Lio/appmetrica/analytics/impl/v9;->m:I

    .line 6
    .line 7
    iget-object v0, v0, Lio/appmetrica/analytics/impl/v9;->a:Lio/appmetrica/analytics/impl/Ue;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Ue;->a(I)Lio/appmetrica/analytics/impl/Ue;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ve;->b()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final v()V
    .locals 5

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->getLibraryApiLevel()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lio/appmetrica/analytics/impl/o5;->t:Lio/appmetrica/analytics/impl/do;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v1, Lio/appmetrica/analytics/impl/do;->a:Lio/appmetrica/analytics/impl/eo;

    .line 9
    .line 10
    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/eo;->a()Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "last_migration_api_level"

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v1

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ge v2, v0, :cond_1

    .line 31
    .line 32
    iget-object v2, p0, Lio/appmetrica/analytics/impl/o5;->o:Lio/appmetrica/analytics/impl/j5;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v2, Lio/appmetrica/analytics/impl/l5;

    .line 38
    .line 39
    invoke-direct {v2, p0}, Lio/appmetrica/analytics/impl/l5;-><init>(Lio/appmetrica/analytics/impl/o5;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v2}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lio/appmetrica/analytics/impl/k5;

    .line 65
    .line 66
    invoke-virtual {v3, v1}, Lio/appmetrica/analytics/impl/k5;->a(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/o5;->t:Lio/appmetrica/analytics/impl/do;

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/do;->b(I)V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    monitor-exit v1

    .line 78
    throw v0
.end method

.method public final w()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->k:Lio/appmetrica/analytics/impl/Og;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/D5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/appmetrica/analytics/impl/lh;

    .line 8
    .line 9
    iget-boolean v1, v0, Lio/appmetrica/analytics/impl/lh;->n:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->isIdentifiersValid()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lio/appmetrica/analytics/impl/o5;->r:Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    .line 20
    .line 21
    iget-object v1, p0, Lio/appmetrica/analytics/impl/o5;->n:Lio/appmetrica/analytics/impl/v9;

    .line 22
    .line 23
    iget-wide v3, v1, Lio/appmetrica/analytics/impl/v9;->l:J

    .line 24
    .line 25
    iget-wide v5, v0, Lio/appmetrica/analytics/impl/lh;->s:J

    .line 26
    .line 27
    const-string v7, "need to check permissions"

    .line 28
    .line 29
    invoke-virtual/range {v2 .. v7}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;->didTimePassSeconds(JJLjava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0
.end method

.method public final x()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->n:Lio/appmetrica/analytics/impl/v9;

    .line 2
    .line 3
    iget v1, v0, Lio/appmetrica/analytics/impl/v9;->m:I

    .line 4
    .line 5
    iget v0, v0, Lio/appmetrica/analytics/impl/v9;->k:I

    .line 6
    .line 7
    if-ge v1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->k:Lio/appmetrica/analytics/impl/Og;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/D5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lio/appmetrica/analytics/impl/lh;

    .line 16
    .line 17
    iget-boolean v0, v0, Lio/appmetrica/analytics/impl/lh;->o:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->k:Lio/appmetrica/analytics/impl/Og;

    .line 22
    .line 23
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/D5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lio/appmetrica/analytics/impl/lh;

    .line 28
    .line 29
    invoke-virtual {v0}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->isIdentifiersValid()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0
.end method

.method public final y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->k:Lio/appmetrica/analytics/impl/Og;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, v0, Lio/appmetrica/analytics/impl/D5;->a:Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    .line 11
    throw v1
.end method

.method public final z()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/o5;->k:Lio/appmetrica/analytics/impl/Og;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/D5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/appmetrica/analytics/impl/lh;

    .line 8
    .line 9
    iget-boolean v1, v0, Lio/appmetrica/analytics/impl/lh;->n:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lio/appmetrica/analytics/impl/o5;->r:Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    .line 14
    .line 15
    iget-object v1, p0, Lio/appmetrica/analytics/impl/o5;->n:Lio/appmetrica/analytics/impl/v9;

    .line 16
    .line 17
    iget-wide v3, v1, Lio/appmetrica/analytics/impl/v9;->l:J

    .line 18
    .line 19
    iget-wide v5, v0, Lio/appmetrica/analytics/impl/lh;->t:J

    .line 20
    .line 21
    const-string v7, "should force send permissions"

    .line 22
    .line 23
    invoke-virtual/range {v2 .. v7}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;->didTimePassSeconds(JJLjava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method
