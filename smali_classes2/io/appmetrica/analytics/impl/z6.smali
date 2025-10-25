.class public final Lio/appmetrica/analytics/impl/z6;
.super Lio/appmetrica/analytics/impl/R2;
.source "SourceFile"


# instance fields
.field public final o:Lio/appmetrica/analytics/impl/A6;

.field public final p:Lio/appmetrica/analytics/impl/yn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/wi;Lio/appmetrica/analytics/impl/Gh;Lio/appmetrica/analytics/impl/Y9;Lio/appmetrica/analytics/impl/A6;Lio/appmetrica/analytics/impl/yn;Lio/appmetrica/analytics/impl/rc;Lio/appmetrica/analytics/impl/xn;Lio/appmetrica/analytics/impl/Cg;Lio/appmetrica/analytics/impl/G6;Lio/appmetrica/analytics/impl/W;Lio/appmetrica/analytics/impl/He;)V
    .locals 12

    move-object v11, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    .line 4
    invoke-direct/range {v0 .. v10}, Lio/appmetrica/analytics/impl/R2;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/wi;Lio/appmetrica/analytics/impl/Gh;Lio/appmetrica/analytics/impl/Y9;Lio/appmetrica/analytics/impl/rc;Lio/appmetrica/analytics/impl/xn;Lio/appmetrica/analytics/impl/Cg;Lio/appmetrica/analytics/impl/G6;Lio/appmetrica/analytics/impl/W;Lio/appmetrica/analytics/impl/He;)V

    move-object/from16 v0, p5

    .line 5
    iput-object v0, v11, Lio/appmetrica/analytics/impl/z6;->o:Lio/appmetrica/analytics/impl/A6;

    move-object/from16 v0, p6

    .line 6
    iput-object v0, v11, Lio/appmetrica/analytics/impl/z6;->p:Lio/appmetrica/analytics/impl/yn;

    .line 7
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/yf;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/wi;Lio/appmetrica/analytics/impl/Y9;)V
    .locals 13

    move-object/from16 v0, p3

    .line 1
    new-instance v3, Lio/appmetrica/analytics/impl/Gh;

    new-instance v1, Lio/appmetrica/analytics/internal/CounterConfiguration;

    sget-object v2, Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;->CRASH:Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    invoke-direct {v1, v0, v2}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    iget-object v0, v0, Lio/appmetrica/analytics/AppMetricaConfig;->userProfileID:Ljava/lang/String;

    move-object v2, p2

    invoke-direct {v3, p2, v1, v0}, Lio/appmetrica/analytics/impl/Gh;-><init>(Lio/appmetrica/analytics/impl/yf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V

    new-instance v5, Lio/appmetrica/analytics/impl/A6;

    move-object v1, p1

    invoke-direct {v5, p1}, Lio/appmetrica/analytics/impl/A6;-><init>(Landroid/content/Context;)V

    new-instance v6, Lio/appmetrica/analytics/impl/yn;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/yn;-><init>()V

    .line 2
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->m()Lio/appmetrica/analytics/impl/rc;

    move-result-object v7

    new-instance v8, Lio/appmetrica/analytics/impl/xn;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/xn;-><init>()V

    new-instance v9, Lio/appmetrica/analytics/impl/Cg;

    invoke-direct {v9}, Lio/appmetrica/analytics/impl/Cg;-><init>()V

    new-instance v10, Lio/appmetrica/analytics/impl/G6;

    invoke-direct {v10}, Lio/appmetrica/analytics/impl/G6;-><init>()V

    new-instance v11, Lio/appmetrica/analytics/impl/W;

    invoke-direct {v11}, Lio/appmetrica/analytics/impl/W;-><init>()V

    new-instance v12, Lio/appmetrica/analytics/impl/He;

    move-object/from16 v4, p5

    invoke-direct {v12, v4}, Lio/appmetrica/analytics/impl/He;-><init>(Lio/appmetrica/analytics/impl/Y9;)V

    move-object v0, p0

    move-object/from16 v2, p4

    .line 3
    invoke-direct/range {v0 .. v12}, Lio/appmetrica/analytics/impl/z6;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/wi;Lio/appmetrica/analytics/impl/Gh;Lio/appmetrica/analytics/impl/Y9;Lio/appmetrica/analytics/impl/A6;Lio/appmetrica/analytics/impl/yn;Lio/appmetrica/analytics/impl/rc;Lio/appmetrica/analytics/impl/xn;Lio/appmetrica/analytics/impl/Cg;Lio/appmetrica/analytics/impl/G6;Lio/appmetrica/analytics/impl/W;Lio/appmetrica/analytics/impl/He;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/wn;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/z6;->o:Lio/appmetrica/analytics/impl/A6;

    .line 2
    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/z6;->p:Lio/appmetrica/analytics/impl/yn;

    .line 4
    .line 5
    iget-object v2, p0, Lio/appmetrica/analytics/impl/R2;->b:Lio/appmetrica/analytics/impl/Gh;

    .line 6
    .line 7
    invoke-virtual {v1, p1, v2}, Lio/appmetrica/analytics/impl/yn;->a(Lio/appmetrica/analytics/impl/wn;Lio/appmetrica/analytics/impl/Gh;)Lio/appmetrica/analytics/impl/wh;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/A6;->a(Lio/appmetrica/analytics/impl/wh;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/R2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Unhandled exception received: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v1, 0x0

    .line 31
    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final b(Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->errorEnvironment:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/R2;->b(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    const-string v0, "[CrashReporter]"

    return-object v0
.end method
