.class public Lio/appmetrica/analytics/impl/t5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/r5;

.field public final b:Lio/appmetrica/analytics/impl/s5;

.field protected final c:Landroid/content/Context;

.field public final d:Lio/appmetrica/analytics/impl/h5;

.field public final e:Lio/appmetrica/analytics/impl/F4;

.field public final f:Lio/appmetrica/analytics/impl/m5;

.field protected final g:Lio/appmetrica/analytics/impl/Ql;

.field public final h:Lio/appmetrica/analytics/impl/ih;

.field public final i:Lio/appmetrica/analytics/impl/Q8;

.field public final j:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

.field public final k:Lio/appmetrica/analytics/impl/Qb;

.field public final l:Lio/appmetrica/analytics/impl/D9;

.field public final m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/impl/ih;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;ILio/appmetrica/analytics/impl/Qb;Lio/appmetrica/analytics/impl/D9;)V
    .locals 14

    .line 1
    new-instance v8, Lio/appmetrica/analytics/impl/Q8;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/Q8;-><init>()V

    new-instance v10, Lio/appmetrica/analytics/impl/r5;

    move-object/from16 v3, p3

    iget-object v0, v3, Lio/appmetrica/analytics/impl/F4;->a:Ljava/lang/String;

    invoke-direct {v10, v0}, Lio/appmetrica/analytics/impl/r5;-><init>(Ljava/lang/String;)V

    new-instance v11, Lio/appmetrica/analytics/impl/s5;

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct {v11, p1, v2}, Lio/appmetrica/analytics/impl/s5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;)V

    move-object v0, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lio/appmetrica/analytics/impl/t5;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/impl/ih;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/impl/Q8;ILio/appmetrica/analytics/impl/r5;Lio/appmetrica/analytics/impl/s5;Lio/appmetrica/analytics/impl/Qb;Lio/appmetrica/analytics/impl/D9;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/impl/ih;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/impl/Q8;ILio/appmetrica/analytics/impl/r5;Lio/appmetrica/analytics/impl/s5;Lio/appmetrica/analytics/impl/Qb;Lio/appmetrica/analytics/impl/D9;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/t5;->c:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/t5;->d:Lio/appmetrica/analytics/impl/h5;

    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/impl/t5;->e:Lio/appmetrica/analytics/impl/F4;

    .line 6
    iput-object p4, p0, Lio/appmetrica/analytics/impl/t5;->f:Lio/appmetrica/analytics/impl/m5;

    .line 7
    iput-object p5, p0, Lio/appmetrica/analytics/impl/t5;->g:Lio/appmetrica/analytics/impl/Ql;

    .line 8
    iput-object p6, p0, Lio/appmetrica/analytics/impl/t5;->h:Lio/appmetrica/analytics/impl/ih;

    .line 9
    iput-object p7, p0, Lio/appmetrica/analytics/impl/t5;->j:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    .line 10
    iput-object p8, p0, Lio/appmetrica/analytics/impl/t5;->i:Lio/appmetrica/analytics/impl/Q8;

    .line 11
    iput p9, p0, Lio/appmetrica/analytics/impl/t5;->m:I

    .line 12
    iput-object p10, p0, Lio/appmetrica/analytics/impl/t5;->a:Lio/appmetrica/analytics/impl/r5;

    .line 13
    iput-object p11, p0, Lio/appmetrica/analytics/impl/t5;->b:Lio/appmetrica/analytics/impl/s5;

    .line 14
    iput-object p12, p0, Lio/appmetrica/analytics/impl/t5;->k:Lio/appmetrica/analytics/impl/Qb;

    .line 15
    iput-object p13, p0, Lio/appmetrica/analytics/impl/t5;->l:Lio/appmetrica/analytics/impl/D9;

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/do;Lio/appmetrica/analytics/impl/n5;)Lio/appmetrica/analytics/impl/Ek;
    .locals 9

    .line 6
    new-instance v6, Lio/appmetrica/analytics/impl/Ek;

    new-instance v7, Lio/appmetrica/analytics/impl/Dk;

    invoke-direct {v7, p1}, Lio/appmetrica/analytics/impl/Dk;-><init>(Lio/appmetrica/analytics/impl/do;)V

    .line 7
    new-instance p1, Lio/appmetrica/analytics/impl/ta;

    .line 8
    new-instance v3, Lio/appmetrica/analytics/impl/Hk;

    .line 9
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/o5;->g()Lio/appmetrica/analytics/impl/Ue;

    move-result-object v0

    const-string v1, "foreground"

    invoke-direct {v3, v0, v1}, Lio/appmetrica/analytics/impl/Hk;-><init>(Lio/appmetrica/analytics/impl/Ue;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lio/appmetrica/analytics/impl/o1;->a()Lio/appmetrica/analytics/impl/Oj;

    move-result-object v4

    new-instance v5, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v5}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    move-object v0, p1

    move-object v1, p0

    move-object v2, v7

    .line 11
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/ta;-><init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/Dk;Lio/appmetrica/analytics/impl/Hk;Lio/appmetrica/analytics/impl/Oj;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    .line 12
    new-instance v8, Lio/appmetrica/analytics/impl/H2;

    .line 13
    new-instance v3, Lio/appmetrica/analytics/impl/Hk;

    .line 14
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/o5;->g()Lio/appmetrica/analytics/impl/Ue;

    move-result-object v0

    const-string v1, "background"

    invoke-direct {v3, v0, v1}, Lio/appmetrica/analytics/impl/Hk;-><init>(Lio/appmetrica/analytics/impl/Ue;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lio/appmetrica/analytics/impl/o1;->a()Lio/appmetrica/analytics/impl/Oj;

    move-result-object v4

    new-instance v5, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v5}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    move-object v0, v8

    move-object v1, p0

    .line 16
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/H2;-><init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/Dk;Lio/appmetrica/analytics/impl/Hk;Lio/appmetrica/analytics/impl/Oj;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    move-object v0, v6

    move-object v3, p2

    move-object v4, p1

    move-object v5, v8

    .line 17
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/Ek;-><init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/Dk;Lio/appmetrica/analytics/impl/n5;Lio/appmetrica/analytics/impl/ta;Lio/appmetrica/analytics/impl/H2;)V

    return-object v6
.end method

.method public static a(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/i9;)Lio/appmetrica/analytics/impl/ti;
    .locals 1

    .line 22
    new-instance v0, Lio/appmetrica/analytics/impl/ti;

    invoke-direct {v0, p1, p0}, Lio/appmetrica/analytics/impl/ti;-><init>(Lio/appmetrica/analytics/impl/zf;Lio/appmetrica/analytics/impl/o5;)V

    return-object v0
.end method

.method public static b()Lio/appmetrica/analytics/impl/j5;
    .locals 1

    .line 6
    new-instance v0, Lio/appmetrica/analytics/impl/j5;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/j5;-><init>()V

    return-object v0
.end method

.method public static c(Lio/appmetrica/analytics/impl/o5;)Lio/appmetrica/analytics/impl/i9;
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/i9;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/i9;-><init>(Lio/appmetrica/analytics/impl/o5;)V

    return-object v0
.end method


# virtual methods
.method public a(Lio/appmetrica/analytics/impl/G9;Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/Og;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/Ue;)Lio/appmetrica/analytics/impl/B9;
    .locals 7

    .line 23
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t5;->l:Lio/appmetrica/analytics/impl/D9;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/appmetrica/analytics/impl/D9;->a(Lio/appmetrica/analytics/impl/G9;Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/Og;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/h5;Lio/appmetrica/analytics/impl/Ue;)Lio/appmetrica/analytics/impl/C9;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Lio/appmetrica/analytics/impl/C9;->a()Lio/appmetrica/analytics/impl/B9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Ue;)Lio/appmetrica/analytics/impl/E3;
    .locals 4

    .line 25
    new-instance v0, Lio/appmetrica/analytics/impl/E3;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/t5;->c:Landroid/content/Context;

    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-direct {v3}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    invoke-direct {v0, v1, p1, v2, v3}, Lio/appmetrica/analytics/impl/E3;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ue;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/o5;)Lio/appmetrica/analytics/impl/Og;
    .locals 4

    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/Og;

    new-instance v1, Lio/appmetrica/analytics/impl/jh;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/t5;->h:Lio/appmetrica/analytics/impl/ih;

    .line 4
    new-instance v3, Lio/appmetrica/analytics/impl/U3;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/U3;-><init>()V

    invoke-direct {v1, p1, v2, v3}, Lio/appmetrica/analytics/impl/jh;-><init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/ih;Lio/appmetrica/analytics/impl/U3;)V

    .line 5
    iget-object p1, p0, Lio/appmetrica/analytics/impl/t5;->g:Lio/appmetrica/analytics/impl/Ql;

    new-instance v2, Lio/appmetrica/analytics/impl/gh;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/t5;->e:Lio/appmetrica/analytics/impl/F4;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/gh;-><init>(Lio/appmetrica/analytics/impl/F4;)V

    invoke-direct {v0, v1, p1, v2}, Lio/appmetrica/analytics/impl/Og;-><init>(Lio/appmetrica/analytics/impl/jh;Lio/appmetrica/analytics/impl/Ql;Lio/appmetrica/analytics/impl/gh;)V

    return-object v0
.end method

.method public final a()Lio/appmetrica/analytics/impl/V8;
    .locals 5

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/V8;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/t5;->c:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/t5;->d:Lio/appmetrica/analytics/impl/h5;

    iget v3, p0, Lio/appmetrica/analytics/impl/t5;->m:I

    .line 2
    new-instance v4, Lio/appmetrica/analytics/impl/a9;

    invoke-direct {v4, v1, v2}, Lio/appmetrica/analytics/impl/a9;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;)V

    invoke-direct {v0, v4, v3}, Lio/appmetrica/analytics/impl/V8;-><init>(Lio/appmetrica/analytics/impl/a9;I)V

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Ue;Lio/appmetrica/analytics/impl/do;Lio/appmetrica/analytics/impl/Ek;Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/c0;Lio/appmetrica/analytics/impl/wk;Lio/appmetrica/analytics/impl/vi;)Lio/appmetrica/analytics/impl/v9;
    .locals 14

    move-object v0, p0

    move-object/from16 v3, p2

    .line 18
    new-instance v13, Lio/appmetrica/analytics/impl/v9;

    iget-object v7, v0, Lio/appmetrica/analytics/impl/t5;->i:Lio/appmetrica/analytics/impl/Q8;

    iget v9, v0, Lio/appmetrica/analytics/impl/t5;->m:I

    new-instance v10, Lio/appmetrica/analytics/impl/q5;

    move-object/from16 v1, p7

    invoke-direct {v10, v1}, Lio/appmetrica/analytics/impl/q5;-><init>(Lio/appmetrica/analytics/impl/vi;)V

    .line 19
    new-instance v11, Lio/appmetrica/analytics/impl/c9;

    .line 20
    new-instance v1, Lio/appmetrica/analytics/impl/d9;

    invoke-direct {v1, v3}, Lio/appmetrica/analytics/impl/d9;-><init>(Lio/appmetrica/analytics/impl/do;)V

    invoke-direct {v11, v3, v1}, Lio/appmetrica/analytics/impl/c9;-><init>(Lio/appmetrica/analytics/impl/do;Lio/appmetrica/analytics/impl/d9;)V

    .line 21
    new-instance v12, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v12}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    move-object v1, v13

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v12}, Lio/appmetrica/analytics/impl/v9;-><init>(Lio/appmetrica/analytics/impl/Ue;Lio/appmetrica/analytics/impl/do;Lio/appmetrica/analytics/impl/Ek;Lio/appmetrica/analytics/impl/W6;Lio/appmetrica/analytics/impl/c0;Lio/appmetrica/analytics/impl/Q8;Lio/appmetrica/analytics/impl/wk;ILio/appmetrica/analytics/impl/q5;Lio/appmetrica/analytics/impl/c9;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    return-object v13
.end method

.method public final b(Lio/appmetrica/analytics/impl/o5;)Lio/appmetrica/analytics/impl/W6;
    .locals 4

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/W6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/t5;->c:Landroid/content/Context;

    .line 2
    invoke-static {v1}, Lio/appmetrica/analytics/impl/k7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/k7;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/t5;->d:Lio/appmetrica/analytics/impl/h5;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/k7;->c(Lio/appmetrica/analytics/impl/h5;)Lio/appmetrica/analytics/impl/j7;

    move-result-object v1

    .line 3
    new-instance v2, Lio/appmetrica/analytics/impl/S6;

    .line 4
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/o5;->c()Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/S6;-><init>(Lio/appmetrica/analytics/internal/CounterConfigurationReporterType;)V

    new-instance v3, Lio/appmetrica/analytics/impl/r7;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/r7;-><init>()V

    .line 5
    invoke-direct {v0, p1, v1, v2, v3}, Lio/appmetrica/analytics/impl/W6;-><init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/j7;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/r7;)V

    return-object v0
.end method

.method public final c()Lio/appmetrica/analytics/impl/wk;
    .locals 3

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/wk;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/t5;->c:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/t5;->d:Lio/appmetrica/analytics/impl/h5;

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/wk;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/h5;)V

    return-object v0
.end method

.method public final d()Lio/appmetrica/analytics/impl/r5;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t5;->a:Lio/appmetrica/analytics/impl/r5;

    return-object v0
.end method

.method public final d(Lio/appmetrica/analytics/impl/o5;)Lio/appmetrica/analytics/impl/vi;
    .locals 3

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/vi;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/t5;->f:Lio/appmetrica/analytics/impl/m5;

    .line 3
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/m5;->a()Lio/appmetrica/analytics/impl/vl;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/t5;->j:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    invoke-direct {v0, p1, v1, v2}, Lio/appmetrica/analytics/impl/vi;-><init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/vl;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V

    .line 4
    iget-object p1, p0, Lio/appmetrica/analytics/impl/t5;->k:Lio/appmetrica/analytics/impl/Qb;

    monitor-enter p1

    .line 5
    :try_start_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Qb;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p1

    throw v0
.end method

.method public final e()Lio/appmetrica/analytics/impl/s5;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/t5;->b:Lio/appmetrica/analytics/impl/s5;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Lio/appmetrica/analytics/impl/do;
    .locals 11

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->B()Lio/appmetrica/analytics/impl/go;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/impl/t5;->d:Lio/appmetrica/analytics/impl/h5;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v3, v0, Lio/appmetrica/analytics/impl/go;->b:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    new-instance v4, Lio/appmetrica/analytics/impl/do;

    .line 23
    .line 24
    new-instance v5, Lio/appmetrica/analytics/impl/Ue;

    .line 25
    .line 26
    iget-object v6, v0, Lio/appmetrica/analytics/impl/go;->a:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v6}, Lio/appmetrica/analytics/impl/k7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/k7;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v6, v1}, Lio/appmetrica/analytics/impl/k7;->b(Lio/appmetrica/analytics/impl/h5;)Lio/appmetrica/analytics/impl/Ta;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-direct {v5, v6}, Lio/appmetrica/analytics/impl/Ue;-><init>(Lio/appmetrica/analytics/impl/Ta;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/h5;->d()Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_0

    .line 44
    .line 45
    const-string v6, "appmetrica_vital_main.dat"

    .line 46
    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v8, "appmetrica_vital_"

    .line 50
    .line 51
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v1, Lio/appmetrica/analytics/impl/h5;->b:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, ".dat"

    .line 60
    .line 61
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-instance v7, Lio/appmetrica/analytics/impl/v5;

    .line 69
    .line 70
    const/4 v8, 0x2

    .line 71
    new-array v8, v8, [Lxc/k;

    .line 72
    .line 73
    new-instance v9, Lio/appmetrica/analytics/impl/na;

    .line 74
    .line 75
    iget-object v10, v0, Lio/appmetrica/analytics/impl/go;->a:Landroid/content/Context;

    .line 76
    .line 77
    invoke-direct {v9, v10, v1}, Lio/appmetrica/analytics/impl/na;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v1, v9}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/4 v9, 0x0

    .line 85
    aput-object v1, v8, v9

    .line 86
    .line 87
    new-instance v1, Lio/appmetrica/analytics/impl/na;

    .line 88
    .line 89
    iget-object v9, v0, Lio/appmetrica/analytics/impl/go;->a:Landroid/content/Context;

    .line 90
    .line 91
    invoke-direct {v1, v9, v6}, Lio/appmetrica/analytics/impl/na;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v6, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const/4 v6, 0x1

    .line 99
    aput-object v1, v8, v6

    .line 100
    .line 101
    invoke-static {v8}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-direct {v7, v1}, Lio/appmetrica/analytics/impl/v5;-><init>(Ljava/util/List;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    new-instance v7, Lio/appmetrica/analytics/impl/na;

    .line 110
    .line 111
    iget-object v6, v0, Lio/appmetrica/analytics/impl/go;->a:Landroid/content/Context;

    .line 112
    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v9, "appmetrica_vital_"

    .line 116
    .line 117
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v1, Lio/appmetrica/analytics/impl/h5;->b:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v1, ".dat"

    .line 126
    .line 127
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-direct {v7, v6, v1}, Lio/appmetrica/analytics/impl/na;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :goto_0
    invoke-direct {v4, v5, v7, v2}, Lio/appmetrica/analytics/impl/do;-><init>(Lio/appmetrica/analytics/impl/Ue;Lio/appmetrica/analytics/impl/ho;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    :cond_1
    check-cast v4, Lio/appmetrica/analytics/impl/do;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .line 145
    monitor-exit v0

    .line 146
    return-object v4

    .line 147
    :catchall_0
    move-exception v1

    .line 148
    monitor-exit v0

    .line 149
    throw v1
.end method
