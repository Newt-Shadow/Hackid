.class public final Lcom/yandex/metrica/impl/ob/Uf;
.super Lcom/yandex/metrica/impl/ob/Lf;
.source "SourceFile"


# instance fields
.field private final i:Lcom/yandex/metrica/impl/ob/Qf;

.field private final j:Lcom/yandex/metrica/impl/ob/Xf;

.field private final k:Lcom/yandex/metrica/impl/ob/Wf;

.field private final l:Lcom/yandex/metrica/impl/ob/o2;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V
    .locals 6

    .line 1
    new-instance v1, Lcom/yandex/metrica/impl/ob/Sf;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/Sf;-><init>()V

    new-instance v3, Lcom/yandex/metrica/impl/ob/Xf;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/Xf;-><init>()V

    new-instance v4, Lcom/yandex/metrica/impl/ob/Wf;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/Wf;-><init>()V

    new-instance v5, Lcom/yandex/metrica/impl/ob/D2;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/D2;-><init>()V

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/Uf;-><init>(Lcom/yandex/metrica/impl/ob/Sf;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/Xf;Lcom/yandex/metrica/impl/ob/Wf;Lcom/yandex/metrica/impl/ob/D2;)V

    return-void
.end method

.method private constructor <init>(Lcom/yandex/metrica/impl/ob/Sf;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/Xf;Lcom/yandex/metrica/impl/ob/Wf;Lcom/yandex/metrica/impl/ob/D2;)V
    .locals 13

    move-object v1, p1

    .line 2
    new-instance v5, Lcom/yandex/metrica/impl/ob/Kf;

    invoke-direct {v5, p1}, Lcom/yandex/metrica/impl/ob/Kf;-><init>(Lcom/yandex/metrica/impl/ob/Sf;)V

    new-instance v6, Lcom/yandex/metrica/impl/ob/Qf;

    invoke-direct {v6, p1}, Lcom/yandex/metrica/impl/ob/Qf;-><init>(Lcom/yandex/metrica/impl/ob/Sf;)V

    new-instance v8, Lcom/yandex/metrica/g;

    move-object/from16 v7, p5

    invoke-direct {v8, p1, v7}, Lcom/yandex/metrica/g;-><init>(Lcom/yandex/metrica/impl/ob/Sf;Lcom/yandex/metrica/impl/ob/D2;)V

    .line 3
    invoke-static {}, Lcom/yandex/metrica/impl/ob/Pf;->a()Lcom/yandex/metrica/impl/ob/Pf;

    move-result-object v9

    .line 4
    invoke-static {}, Lcom/yandex/metrica/impl/ob/P;->g()Lcom/yandex/metrica/impl/ob/P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/P;->f()Lcom/yandex/metrica/impl/ob/l0;

    move-result-object v10

    .line 5
    invoke-static {}, Lcom/yandex/metrica/impl/ob/P;->g()Lcom/yandex/metrica/impl/ob/P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/P;->l()Lcom/yandex/metrica/impl/ob/o2;

    move-result-object v11

    .line 6
    invoke-static {}, Lcom/yandex/metrica/impl/ob/P;->g()Lcom/yandex/metrica/impl/ob/P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/P;->e()Lcom/yandex/metrica/impl/ob/a0;

    move-result-object v12

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 7
    invoke-direct/range {v0 .. v12}, Lcom/yandex/metrica/impl/ob/Uf;-><init>(Lcom/yandex/metrica/impl/ob/Sf;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/Xf;Lcom/yandex/metrica/impl/ob/Wf;Lcom/yandex/metrica/impl/ob/Kf;Lcom/yandex/metrica/impl/ob/Qf;Lcom/yandex/metrica/impl/ob/D2;Lcom/yandex/metrica/g;Lcom/yandex/metrica/impl/ob/Pf;Lcom/yandex/metrica/impl/ob/l0;Lcom/yandex/metrica/impl/ob/o2;Lcom/yandex/metrica/impl/ob/a0;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/Sf;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/Xf;Lcom/yandex/metrica/impl/ob/Wf;Lcom/yandex/metrica/impl/ob/Kf;Lcom/yandex/metrica/impl/ob/Qf;Lcom/yandex/metrica/impl/ob/D2;Lcom/yandex/metrica/g;Lcom/yandex/metrica/impl/ob/Pf;Lcom/yandex/metrica/impl/ob/l0;Lcom/yandex/metrica/impl/ob/o2;Lcom/yandex/metrica/impl/ob/a0;)V
    .locals 10

    move-object v9, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p12

    .line 8
    invoke-direct/range {v0 .. v8}, Lcom/yandex/metrica/impl/ob/Lf;-><init>(Lcom/yandex/metrica/impl/ob/Sf;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/Kf;Lcom/yandex/metrica/impl/ob/D2;Lcom/yandex/metrica/g;Lcom/yandex/metrica/impl/ob/Pf;Lcom/yandex/metrica/impl/ob/l0;Lcom/yandex/metrica/impl/ob/a0;)V

    move-object v0, p4

    .line 9
    iput-object v0, v9, Lcom/yandex/metrica/impl/ob/Uf;->k:Lcom/yandex/metrica/impl/ob/Wf;

    move-object v0, p3

    .line 10
    iput-object v0, v9, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    move-object/from16 v0, p6

    .line 11
    iput-object v0, v9, Lcom/yandex/metrica/impl/ob/Uf;->i:Lcom/yandex/metrica/impl/ob/Qf;

    move-object/from16 v0, p11

    .line 12
    iput-object v0, v9, Lcom/yandex/metrica/impl/ob/Uf;->l:Lcom/yandex/metrica/impl/ob/o2;

    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/Uf;)Lcom/yandex/metrica/impl/ob/K0;
    .locals 0

    .line 133
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->e()Lcom/yandex/metrica/impl/ob/Sf;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    invoke-static {}, Lcom/yandex/metrica/impl/ob/R2;->k()Lcom/yandex/metrica/impl/ob/R2;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/R2;->d()Lcom/yandex/metrica/impl/ob/k1;

    move-result-object p0

    .line 137
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/k1;->b()Lcom/yandex/metrica/impl/ob/K0;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/Uf;)Lcom/yandex/metrica/impl/ob/o2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Uf;->l:Lcom/yandex/metrica/impl/ob/o2;

    return-object p0
.end method

.method static c(Lcom/yandex/metrica/impl/ob/Uf;)Lcom/yandex/metrica/impl/ob/k1;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->e()Lcom/yandex/metrica/impl/ob/Sf;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {}, Lcom/yandex/metrica/impl/ob/R2;->k()Lcom/yandex/metrica/impl/ob/R2;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/R2;->d()Lcom/yandex/metrica/impl/ob/k1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Xf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->b()Lcom/yandex/metrica/impl/ob/a0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/a0;->a(Landroid/content/Context;)V

    .line 119
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->f()Lcom/yandex/metrica/impl/ob/Pf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Pf;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Of;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 14
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$A;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$A;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/app/Application;)V
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 21
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xf;->a(Landroid/app/Application;)V

    .line 22
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/g;->a(Landroid/app/Application;)Lcom/yandex/metrica/impl/ob/q$c;

    move-result-object p1

    .line 24
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$B;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$B;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Lcom/yandex/metrica/impl/ob/q$c;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/yandex/metrica/ReporterConfig;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Xf;->a(Landroid/content/Context;Lcom/yandex/metrica/ReporterConfig;)V

    .line 121
    invoke-static {p2}, Lcom/yandex/metrica/f;->c(Lcom/yandex/metrica/ReporterConfig;)Lcom/yandex/metrica/f;

    move-result-object p2

    .line 122
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/g;->b(Landroid/content/Context;)V

    .line 123
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->f()Lcom/yandex/metrica/impl/ob/Pf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Pf;->a(Landroid/content/Context;Lcom/yandex/metrica/f;)Lcom/yandex/metrica/impl/ob/Of;

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/yandex/metrica/YandexMetricaConfig;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Xf;->a(Landroid/content/Context;Lcom/yandex/metrica/YandexMetricaConfig;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->k:Lcom/yandex/metrica/impl/ob/Wf;

    .line 3
    instance-of v1, p2, Lcom/yandex/metrica/j;

    if-eqz v1, :cond_0

    .line 4
    move-object v1, p2

    check-cast v1, Lcom/yandex/metrica/j;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/yandex/metrica/j;

    invoke-direct {v1, p2}, Lcom/yandex/metrica/j;-><init>(Lcom/yandex/metrica/YandexMetricaConfig;)V

    .line 6
    :goto_0
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Wf;->a(Lcom/yandex/metrica/j;)Lcom/yandex/metrica/j;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/yandex/metrica/g;->c(Landroid/content/Context;Lcom/yandex/metrica/YandexMetricaConfig;)V

    .line 8
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v1

    new-instance v2, Lcom/yandex/metrica/impl/ob/Uf$k;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/Uf$k;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Landroid/content/Context;Lcom/yandex/metrica/YandexMetricaConfig;Lcom/yandex/metrica/j;)V

    invoke-interface {v1, v2}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->e()Lcom/yandex/metrica/impl/ob/Sf;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/yandex/metrica/impl/ob/R2;->j()V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xf;->a(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/g;->e(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object p1

    new-instance v0, Lcom/yandex/metrica/impl/ob/Uf$j;

    invoke-direct {v0, p0, p2}, Lcom/yandex/metrica/impl/ob/Uf$j;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Z)V

    invoke-interface {p1, v0}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 58
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xf;->a(Landroid/content/Intent;)V

    .line 59
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$f;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$f;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$h;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$h;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Landroid/location/Location;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;)V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 130
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xf;->a(Landroid/webkit/WebView;)V

    .line 131
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/yandex/metrica/g;->d(Landroid/webkit/WebView;Lcom/yandex/metrica/impl/ob/Uf;)V

    .line 132
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object p1

    new-instance v0, Lcom/yandex/metrica/impl/ob/Uf$w;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/Uf$w;-><init>(Lcom/yandex/metrica/impl/ob/Uf;)V

    invoke-interface {p1, v0}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/AdRevenue;)V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 89
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Zf;->reportAdRevenue(Lcom/yandex/metrica/AdRevenue;)V

    .line 90
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$p;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$p;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Lcom/yandex/metrica/AdRevenue;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 112
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 113
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xf;->a(Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$t;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$t;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/DeferredDeeplinkListener;)V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 107
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xf;->a(Lcom/yandex/metrica/DeferredDeeplinkListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$s;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$s;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Lcom/yandex/metrica/DeferredDeeplinkListener;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 101
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xf;->a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$r;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$r;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/Revenue;)V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 83
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Zf;->reportRevenue(Lcom/yandex/metrica/Revenue;)V

    .line 84
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$o;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$o;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Lcom/yandex/metrica/Revenue;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/ecommerce/ECommerceEvent;)V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 95
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Zf;->reportECommerce(Lcom/yandex/metrica/ecommerce/ECommerceEvent;)V

    .line 96
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$q;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$q;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Lcom/yandex/metrica/ecommerce/ECommerceEvent;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/profile/UserProfile;)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Zf;->reportUserProfile(Lcom/yandex/metrica/profile/UserProfile;)V

    .line 78
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$n;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$n;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Lcom/yandex/metrica/profile/UserProfile;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 52
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xf;->e(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$e;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$e;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xf;->d(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$u;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Uf$u;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 42
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Zf;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Uf$a;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Zf;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    .line 37
    new-instance p2, Lcom/yandex/metrica/impl/ob/k6;

    invoke-direct {p2}, Lcom/yandex/metrica/impl/ob/k6;-><init>()V

    .line 38
    invoke-virtual {p2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$F;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Uf$F;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Zf;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 28
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    .line 31
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$E;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Uf$E;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 46
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Zf;->reportUnhandledException(Ljava/lang/Throwable;)V

    .line 47
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$b;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$b;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$i;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$i;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Z)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 16
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xf;->c(Landroid/app/Activity;)V

    .line 17
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 19
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :catchall_0
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object p1

    new-instance v0, Lcom/yandex/metrica/impl/ob/Uf$d;

    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/impl/ob/Uf$d;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Landroid/content/Intent;)V

    invoke-interface {p1, v0}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroid/content/Context;Z)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xf;->b(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/g;->f(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object p1

    new-instance v0, Lcom/yandex/metrica/impl/ob/Uf$l;

    invoke-direct {v0, p0, p2}, Lcom/yandex/metrica/impl/ob/Uf$l;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Z)V

    invoke-interface {p1, v0}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Zf;->reportEvent(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$C;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$C;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Zf;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$D;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Uf$D;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$z;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$z;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->i:Lcom/yandex/metrica/impl/ob/Qf;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Qf;->a()Lcom/yandex/metrica/impl/ob/In;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/In;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xf;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$y;

    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$y;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    move-result-object v0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xf;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "AppMetrica"

    const-string p2, "Impossible to report event because parameters are invalid."

    .line 11
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$x;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Uf$x;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xf;->c(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$c;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$c;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Xf;->a(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$g;

    .line 19
    .line 20
    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$g;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$m;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Uf$m;-><init>(Lcom/yandex/metrica/impl/ob/Uf;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->a()Lcom/yandex/metrica/impl/ob/Kf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf;->j:Lcom/yandex/metrica/impl/ob/Xf;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->g()Lcom/yandex/metrica/g;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Lf;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/yandex/metrica/impl/ob/Uf$v;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/Uf$v;-><init>(Lcom/yandex/metrica/impl/ob/Uf;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
