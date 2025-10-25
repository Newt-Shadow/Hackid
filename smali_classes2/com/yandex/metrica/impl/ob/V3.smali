.class public Lcom/yandex/metrica/impl/ob/V3;
.super Lcom/yandex/metrica/impl/ob/M3;
.source "SourceFile"


# instance fields
.field private final m:Lcom/yandex/metrica/impl/ob/Pm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/D3$a;Lcom/yandex/metrica/impl/ob/vi;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/Lg$e;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;ILcom/yandex/metrica/impl/ob/Pm;Lcom/yandex/metrica/impl/ob/f1;)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move-object v4, p4

    .line 6
    move-object v5, p5

    .line 7
    move-object/from16 v6, p6

    .line 8
    .line 9
    move-object/from16 v7, p7

    .line 10
    .line 11
    move/from16 v8, p8

    .line 12
    .line 13
    move-object/from16 v9, p10

    .line 14
    .line 15
    invoke-direct/range {v0 .. v9}, Lcom/yandex/metrica/impl/ob/M3;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/D3$a;Lcom/yandex/metrica/impl/ob/vi;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/Lg$e;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;ILcom/yandex/metrica/impl/ob/f1;)V

    .line 16
    .line 17
    .line 18
    move-object/from16 v1, p9

    .line 19
    .line 20
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/V3;->m:Lcom/yandex/metrica/impl/ob/Pm;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/U3;)Lcom/yandex/metrica/impl/ob/e3;
    .locals 10

    .line 5
    new-instance v9, Lcom/yandex/metrica/impl/ob/e3;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/M3;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/V3;->m:Lcom/yandex/metrica/impl/ob/Pm;

    .line 6
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Pm;->a()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v2

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/V3;->m:Lcom/yandex/metrica/impl/ob/Pm;

    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Pm;->i()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 8
    invoke-static {}, Lcom/yandex/metrica/impl/ob/f3;->a()Lzb/b;

    move-result-object v4

    new-instance v5, Lcom/yandex/metrica/impl/ob/c3;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/M3;->c:Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/yandex/metrica/impl/ob/c3;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/yandex/metrica/impl/ob/b3;

    .line 9
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->q()Lcom/yandex/metrica/impl/ob/Pm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Pm;->e()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v0

    .line 10
    invoke-direct {v6, p1, v0}, Lcom/yandex/metrica/impl/ob/b3;-><init>(Lcom/yandex/metrica/impl/ob/S3;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;)V

    .line 11
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/F0;->b()Lcom/yandex/metrica/impl/ob/w;

    move-result-object v7

    new-instance v8, Lcom/yandex/metrica/impl/ob/d3;

    invoke-direct {v8}, Lcom/yandex/metrica/impl/ob/d3;-><init>()V

    move-object v0, v9

    .line 12
    invoke-direct/range {v0 .. v8}, Lcom/yandex/metrica/impl/ob/e3;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lzb/b;Lcom/yandex/metrica/impl/ob/n;Lcom/yandex/metrica/impl/ob/m;Lcom/yandex/metrica/impl/ob/w;Lcom/yandex/metrica/impl/ob/d3;)V

    return-object v9
.end method

.method public a(Lcom/yandex/metrica/impl/ob/i7;Lcom/yandex/metrica/impl/ob/f7;Lcom/yandex/metrica/impl/ob/c9;)Lcom/yandex/metrica/impl/ob/n7;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/i7;",
            "Lcom/yandex/metrica/impl/ob/f7<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/c9;",
            ")",
            "Lcom/yandex/metrica/impl/ob/n7;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/yandex/metrica/impl/ob/n7;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/M3;->c:Landroid/content/Context;

    .line 2
    new-instance v2, Lcom/yandex/metrica/impl/ob/B0;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/B0;-><init>()V

    .line 3
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->q()Lcom/yandex/metrica/impl/ob/Pm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Pm;->e()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v5

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/n7;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/B0;Lcom/yandex/metrica/impl/ob/i7;Lcom/yandex/metrica/impl/ob/f7;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/c9;)V

    return-object v7
.end method

.method public b(Lcom/yandex/metrica/impl/ob/U3;)Lcom/yandex/metrica/impl/ob/f7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/U3;",
            ")",
            "Lcom/yandex/metrica/impl/ob/f7<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/l7;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/l7;-><init>(Lcom/yandex/metrica/impl/ob/U3;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public c(Lcom/yandex/metrica/impl/ob/U3;)Lcom/yandex/metrica/impl/ob/tg;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/tg;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/lg;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/lg;-><init>(Lcom/yandex/metrica/impl/ob/ig;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/yandex/metrica/impl/ob/U3$b;

    .line 9
    .line 10
    invoke-direct {v2, p1}, Lcom/yandex/metrica/impl/ob/U3$b;-><init>(Lcom/yandex/metrica/impl/ob/U3;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2, p1}, Lcom/yandex/metrica/impl/ob/tg;-><init>(Lcom/yandex/metrica/impl/ob/jg;Lcom/yandex/metrica/impl/ob/sg$a;Lcom/yandex/metrica/impl/ob/hg;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public f()Lcom/yandex/metrica/impl/ob/i7;
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/i7;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/c7;

    .line 4
    .line 5
    sget-object v2, Lcom/yandex/metrica/impl/ob/g7;->c:Lcom/yandex/metrica/impl/ob/g7;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/c7;-><init>(Lcom/yandex/metrica/impl/ob/g7;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/yandex/metrica/impl/ob/h7;

    .line 12
    .line 13
    new-instance v3, Lcom/yandex/metrica/impl/ob/P6;

    .line 14
    .line 15
    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/P6;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/h7;-><init>(Lcom/yandex/metrica/impl/ob/P6;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/i7;-><init>(Lcom/yandex/metrica/impl/ob/c7;Lcom/yandex/metrica/impl/ob/h7;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method
