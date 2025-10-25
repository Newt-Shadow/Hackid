.class public final Lio/appmetrica/analytics/impl/Kc;
.super Lio/appmetrica/analytics/impl/R2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/wi;Lio/appmetrica/analytics/impl/Gh;Lio/appmetrica/analytics/impl/Y9;Lio/appmetrica/analytics/impl/rc;Lio/appmetrica/analytics/impl/xn;Lio/appmetrica/analytics/impl/Cg;Lio/appmetrica/analytics/impl/G6;Lio/appmetrica/analytics/impl/W;Lio/appmetrica/analytics/impl/He;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p10}, Lio/appmetrica/analytics/impl/R2;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/wi;Lio/appmetrica/analytics/impl/Gh;Lio/appmetrica/analytics/impl/Y9;Lio/appmetrica/analytics/impl/rc;Lio/appmetrica/analytics/impl/xn;Lio/appmetrica/analytics/impl/Cg;Lio/appmetrica/analytics/impl/G6;Lio/appmetrica/analytics/impl/W;Lio/appmetrica/analytics/impl/He;)V

    .line 5
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/yf;Lio/appmetrica/analytics/ReporterConfig;Lio/appmetrica/analytics/impl/wi;Lio/appmetrica/analytics/impl/Y9;)V
    .locals 11

    move-object v0, p3

    .line 1
    new-instance v3, Lio/appmetrica/analytics/impl/Gh;

    new-instance v1, Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {v1, p3}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/ReporterConfig;)V

    iget-object v0, v0, Lio/appmetrica/analytics/ReporterConfig;->userProfileID:Ljava/lang/String;

    move-object v2, p2

    invoke-direct {v3, p2, v1, v0}, Lio/appmetrica/analytics/impl/Gh;-><init>(Lio/appmetrica/analytics/impl/yf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->m()Lio/appmetrica/analytics/impl/rc;

    move-result-object v5

    new-instance v6, Lio/appmetrica/analytics/impl/xn;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/xn;-><init>()V

    new-instance v7, Lio/appmetrica/analytics/impl/Cg;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/Cg;-><init>()V

    new-instance v8, Lio/appmetrica/analytics/impl/G6;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/G6;-><init>()V

    new-instance v9, Lio/appmetrica/analytics/impl/W;

    invoke-direct {v9}, Lio/appmetrica/analytics/impl/W;-><init>()V

    new-instance v10, Lio/appmetrica/analytics/impl/He;

    move-object/from16 v4, p5

    invoke-direct {v10, v4}, Lio/appmetrica/analytics/impl/He;-><init>(Lio/appmetrica/analytics/impl/Y9;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    .line 3
    invoke-direct/range {v0 .. v10}, Lio/appmetrica/analytics/impl/Kc;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/wi;Lio/appmetrica/analytics/impl/Gh;Lio/appmetrica/analytics/impl/Y9;Lio/appmetrica/analytics/impl/rc;Lio/appmetrica/analytics/impl/xn;Lio/appmetrica/analytics/impl/Cg;Lio/appmetrica/analytics/impl/G6;Lio/appmetrica/analytics/impl/W;Lio/appmetrica/analytics/impl/He;)V

    return-void
.end method


# virtual methods
.method public final j()Ljava/lang/String;
    .locals 1

    const-string v0, "[ManualReporter]"

    return-object v0
.end method
