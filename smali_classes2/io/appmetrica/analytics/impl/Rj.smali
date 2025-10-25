.class public final Lio/appmetrica/analytics/impl/Rj;
.super Lio/appmetrica/analytics/impl/o5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/ih;Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/g5;)V
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

    move-object/from16 v5, v16

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    move-object/from16 v15, p7

    invoke-direct/range {v5 .. v15}, Lio/appmetrica/analytics/impl/t5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/impl/ih;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;ILio/appmetrica/analytics/impl/Qb;Lio/appmetrica/analytics/impl/D9;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v6, p4

    .line 6
    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/Rj;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/d0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/t5;Lio/appmetrica/analytics/impl/F4;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/d0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/t5;Lio/appmetrica/analytics/impl/F4;)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p6}, Lio/appmetrica/analytics/impl/o5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/d0;Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;Lio/appmetrica/analytics/impl/t5;Lio/appmetrica/analytics/impl/F4;)V

    return-void
.end method


# virtual methods
.method public final c()Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->SELF_SDK:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    .line 2
    .line 3
    return-object v0
.end method
