.class public Lcom/yandex/metrica/impl/ob/U3;
.super Lcom/yandex/metrica/impl/ob/L3;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ig;
.implements Lcom/yandex/metrica/impl/ob/hg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/U3$b;
    }
.end annotation


# instance fields
.field private final A:Lcom/yandex/metrica/impl/ob/sg;

.field private final B:Lcom/yandex/metrica/impl/ob/tg;

.field private final C:Lcom/yandex/metrica/impl/ob/s2;

.field private final D:Lcom/yandex/metrica/impl/ob/e7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/e7<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final E:Lcom/yandex/metrica/impl/ob/e3;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/D3$a;Lcom/yandex/metrica/impl/ob/B3;Lcom/yandex/metrica/impl/ob/x2;Lcom/yandex/metrica/impl/ob/B0;Lcom/yandex/metrica/impl/ob/V3;Lcom/yandex/metrica/impl/ob/sg;Lcom/yandex/metrica/impl/ob/s2;)V
    .locals 8

    move-object v6, p0

    move-object/from16 v7, p8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p8

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/L3;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/B3;Lcom/yandex/metrica/impl/ob/x2;Lcom/yandex/metrica/impl/ob/M3;)V

    move-object/from16 v0, p9

    .line 9
    iput-object v0, v6, Lcom/yandex/metrica/impl/ob/U3;->A:Lcom/yandex/metrica/impl/ob/sg;

    .line 10
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/L3;->k()Lcom/yandex/metrica/impl/ob/I4;

    move-result-object v0

    .line 11
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->e:Lcom/yandex/metrica/impl/ob/a1;

    new-instance v2, Lcom/yandex/metrica/impl/ob/C5;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/I4;->b()Lcom/yandex/metrica/impl/ob/E5;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/C5;-><init>(Lcom/yandex/metrica/impl/ob/E5;)V

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/I4;->a(Lcom/yandex/metrica/impl/ob/a1;Lcom/yandex/metrica/impl/ob/x5;)V

    .line 12
    invoke-virtual {v7, p0}, Lcom/yandex/metrica/impl/ob/V3;->c(Lcom/yandex/metrica/impl/ob/U3;)Lcom/yandex/metrica/impl/ob/tg;

    move-result-object v0

    iput-object v0, v6, Lcom/yandex/metrica/impl/ob/U3;->B:Lcom/yandex/metrica/impl/ob/tg;

    move-object/from16 v0, p10

    .line 13
    iput-object v0, v6, Lcom/yandex/metrica/impl/ob/U3;->C:Lcom/yandex/metrica/impl/ob/s2;

    .line 14
    invoke-virtual/range {p8 .. p8}, Lcom/yandex/metrica/impl/ob/V3;->f()Lcom/yandex/metrica/impl/ob/i7;

    move-result-object v0

    .line 15
    invoke-virtual {v7, p0}, Lcom/yandex/metrica/impl/ob/V3;->b(Lcom/yandex/metrica/impl/ob/U3;)Lcom/yandex/metrica/impl/ob/f7;

    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/L3;->f()Lcom/yandex/metrica/impl/ob/c9;

    move-result-object v2

    .line 17
    invoke-virtual {v7, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/V3;->a(Lcom/yandex/metrica/impl/ob/i7;Lcom/yandex/metrica/impl/ob/f7;Lcom/yandex/metrica/impl/ob/c9;)Lcom/yandex/metrica/impl/ob/n7;

    move-result-object v0

    iput-object v0, v6, Lcom/yandex/metrica/impl/ob/U3;->D:Lcom/yandex/metrica/impl/ob/e7;

    .line 18
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/n7;->a()V

    move-object v0, p1

    move-object v1, p7

    .line 19
    invoke-direct {p0, p1, p7}, Lcom/yandex/metrica/impl/ob/U3;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/B0;)V

    .line 20
    invoke-virtual {v7, p0}, Lcom/yandex/metrica/impl/ob/V3;->a(Lcom/yandex/metrica/impl/ob/U3;)Lcom/yandex/metrica/impl/ob/e3;

    move-result-object v0

    iput-object v0, v6, Lcom/yandex/metrica/impl/ob/U3;->E:Lcom/yandex/metrica/impl/ob/e3;

    move-object v1, p4

    .line 21
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/D3$a;->q:Ljava/lang/Boolean;

    move-object v2, p3

    invoke-virtual {v0, p3, v1}, Lcom/yandex/metrica/impl/ob/e3;->a(Lcom/yandex/metrica/impl/ob/pi;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/D3$a;Lcom/yandex/metrica/impl/ob/sg;Lcom/yandex/metrica/impl/ob/s2;Lcom/yandex/metrica/impl/ob/vi;)V
    .locals 20

    .line 1
    new-instance v5, Lcom/yandex/metrica/impl/ob/B3;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/B3;-><init>()V

    new-instance v6, Lcom/yandex/metrica/impl/ob/x2;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/x2;-><init>()V

    new-instance v7, Lcom/yandex/metrica/impl/ob/B0;

    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/B0;-><init>()V

    new-instance v19, Lcom/yandex/metrica/impl/ob/V3;

    new-instance v14, Lcom/yandex/metrica/impl/ob/T3;

    move-object/from16 v4, p6

    invoke-direct {v14, v4}, Lcom/yandex/metrica/impl/ob/T3;-><init>(Lcom/yandex/metrica/impl/ob/s2;)V

    .line 2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->q()Lcom/yandex/metrica/impl/ob/Pm;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Pm;->d()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v15

    .line 4
    invoke-virtual/range {p3 .. p3}, Lcom/yandex/metrica/impl/ob/I3;->b()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/ob/A2;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v16

    .line 5
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->q()Lcom/yandex/metrica/impl/ob/Pm;

    move-result-object v17

    .line 6
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->h()Lcom/yandex/metrica/impl/ob/f1;

    move-result-object v18

    move-object/from16 v8, v19

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p7

    move-object/from16 v13, p2

    invoke-direct/range {v8 .. v18}, Lcom/yandex/metrica/impl/ob/V3;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/D3$a;Lcom/yandex/metrica/impl/ob/vi;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/Lg$e;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;ILcom/yandex/metrica/impl/ob/Pm;Lcom/yandex/metrica/impl/ob/f1;)V

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 7
    invoke-direct/range {v0 .. v10}, Lcom/yandex/metrica/impl/ob/U3;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/pi;Lcom/yandex/metrica/impl/ob/D3$a;Lcom/yandex/metrica/impl/ob/B3;Lcom/yandex/metrica/impl/ob/x2;Lcom/yandex/metrica/impl/ob/B0;Lcom/yandex/metrica/impl/ob/V3;Lcom/yandex/metrica/impl/ob/sg;Lcom/yandex/metrica/impl/ob/s2;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/B0;)V
    .locals 1

    const-string v0, "YandexMetricaNativeCrashes"

    .line 1
    invoke-virtual {p2, p1, v0}, Lcom/yandex/metrica/impl/ob/B0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p2, Lcom/yandex/metrica/impl/ob/U3$a;

    invoke-direct {p2, p0}, Lcom/yandex/metrica/impl/ob/U3$a;-><init>(Lcom/yandex/metrica/impl/ob/U3;)V

    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/Y6;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Y6;-><init>(Ljava/io/File;Lcom/yandex/metrica/impl/ob/mm;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Y6;->a()V

    :cond_0
    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/U3;Ljava/io/File;)V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/U3;->D:Lcom/yandex/metrica/impl/ob/e7;

    invoke-interface {p0, p1}, Lcom/yandex/metrica/impl/ob/e7;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/U3;->A:Lcom/yandex/metrica/impl/ob/sg;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/U3;->B:Lcom/yandex/metrica/impl/ob/tg;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/sg;->a(Lcom/yandex/metrica/impl/ob/tg;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public a()V
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/L3;->x()Lcom/yandex/metrica/impl/ob/b8;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b8;->c(Z)V

    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/D3$a;)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/L3;->a(Lcom/yandex/metrica/impl/ob/D3$a;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/U3;->C:Lcom/yandex/metrica/impl/ob/s2;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/D3$a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/s2;->a(Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 1

    .line 7
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/L3;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/U3;->E:Lcom/yandex/metrica/impl/ob/e3;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/e3;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    return-void
.end method

.method public s()Lcom/yandex/metrica/CounterConfiguration$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/CounterConfiguration$b;->b:Lcom/yandex/metrica/CounterConfiguration$b;

    .line 2
    .line 3
    return-object v0
.end method
