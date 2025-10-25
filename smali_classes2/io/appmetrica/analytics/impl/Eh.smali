.class public final Lio/appmetrica/analytics/impl/Eh;
.super Lio/appmetrica/analytics/impl/o5;
.source "SourceFile"


# instance fields
.field public final v:Ljava/lang/String;

.field public final w:Lio/appmetrica/analytics/impl/P6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/P6;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/D9;)V
    .locals 17

    .line 1
    new-instance v3, Lio/appmetrica/analytics/impl/d0;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/d0;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;

    invoke-direct {v4}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;-><init>()V

    new-instance v16, Lio/appmetrica/analytics/impl/t5;

    new-instance v11, Lio/appmetrica/analytics/impl/zh;

    move-object/from16 v2, p4

    invoke-direct {v11, v2}, Lio/appmetrica/analytics/impl/zh;-><init>(Lio/appmetrica/analytics/impl/P6;)V

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

    move-object/from16 v5, v16

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    move-object/from16 v15, p7

    invoke-direct/range {v5 .. v15}, Lio/appmetrica/analytics/impl/t5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/impl/ih;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;ILio/appmetrica/analytics/impl/Qb;Lio/appmetrica/analytics/impl/D9;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    .line 6
    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/Eh;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/d0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/t5;Lio/appmetrica/analytics/impl/P6;Lio/appmetrica/analytics/impl/F4;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/d0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/t5;Lio/appmetrica/analytics/impl/P6;Lio/appmetrica/analytics/impl/F4;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    .line 7
    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/o5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/d0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/t5;Lio/appmetrica/analytics/impl/F4;)V

    .line 8
    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/h5;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Eh;->v:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lio/appmetrica/analytics/impl/Eh;->w:Lio/appmetrica/analytics/impl/P6;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lio/appmetrica/analytics/impl/F4;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Lio/appmetrica/analytics/impl/o5;->a(Lio/appmetrica/analytics/impl/F4;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Eh;->w:Lio/appmetrica/analytics/impl/P6;

    .line 6
    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Eh;->v:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p1, p1, Lio/appmetrica/analytics/impl/F4;->i:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lio/appmetrica/analytics/impl/P6;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method
