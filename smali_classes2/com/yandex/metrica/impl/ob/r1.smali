.class public Lcom/yandex/metrica/impl/ob/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/p1;


# instance fields
.field private final A:Lcom/yandex/metrica/impl/ob/e2;

.field private a:Lcom/yandex/metrica/impl/ob/pi;

.field private b:Z

.field private final c:Landroid/content/Context;

.field private volatile d:Lcom/yandex/metrica/MetricaService$d;

.field private final e:Lcom/yandex/metrica/impl/ob/Eh;

.field private f:Lcom/yandex/metrica/impl/ob/X0;

.field private final g:Lcom/yandex/metrica/impl/ob/B0;

.field private h:Lcom/yandex/metrica/impl/ob/j4;

.field private final i:Lcom/yandex/metrica/impl/ob/A1;

.field private j:Lcom/yandex/metrica/impl/ob/Vc;

.field private k:Lcom/yandex/metrica/impl/ob/e9;

.field private l:Lcom/yandex/metrica/impl/ob/L1;

.field private final m:Lcom/yandex/metrica/impl/ob/E0;

.field private final n:Lcom/yandex/metrica/impl/ob/za;

.field private final o:Lcom/yandex/metrica/impl/ob/l3;

.field private p:Lcom/yandex/metrica/impl/ob/Y6;

.field private final q:Lcom/yandex/metrica/impl/ob/o6;

.field private final r:Lcom/yandex/metrica/impl/ob/B7;

.field private final s:Lcom/yandex/metrica/impl/ob/w;

.field private final t:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field private final u:Lcom/yandex/metrica/impl/ob/y1;

.field private v:Lcom/yandex/metrica/impl/ob/mm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/mm<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/yandex/metrica/impl/ob/mm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/mm<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/yandex/metrica/impl/ob/e7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/e7<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field private z:Lcom/yandex/metrica/impl/ob/M1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/MetricaService$d;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/p4;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/p4;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/r1;-><init>(Landroid/content/Context;Lcom/yandex/metrica/MetricaService$d;Lcom/yandex/metrica/impl/ob/p4;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/MetricaService$d;Lcom/yandex/metrica/impl/ob/j4;Lcom/yandex/metrica/impl/ob/A1;Lcom/yandex/metrica/impl/ob/B0;Lcom/yandex/metrica/impl/ob/E0;Lcom/yandex/metrica/impl/ob/za;Lcom/yandex/metrica/impl/ob/l3;Lcom/yandex/metrica/impl/ob/Eh;Lcom/yandex/metrica/impl/ob/w;Lcom/yandex/metrica/impl/ob/o6;Lcom/yandex/metrica/impl/ob/B7;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/y1;Lcom/yandex/metrica/impl/ob/e2;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 13
    iput-boolean v2, v0, Lcom/yandex/metrica/impl/ob/r1;->b:Z

    .line 14
    new-instance v2, Lcom/yandex/metrica/impl/ob/r1$a;

    invoke-direct {v2, p0}, Lcom/yandex/metrica/impl/ob/r1$a;-><init>(Lcom/yandex/metrica/impl/ob/r1;)V

    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/r1;->w:Lcom/yandex/metrica/impl/ob/mm;

    .line 15
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/r1;->c:Landroid/content/Context;

    move-object v2, p2

    .line 16
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/r1;->d:Lcom/yandex/metrica/MetricaService$d;

    move-object v2, p3

    .line 17
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/r1;->h:Lcom/yandex/metrica/impl/ob/j4;

    move-object v2, p4

    .line 18
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/r1;->i:Lcom/yandex/metrica/impl/ob/A1;

    move-object v2, p5

    .line 19
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/r1;->g:Lcom/yandex/metrica/impl/ob/B0;

    move-object v2, p6

    .line 20
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/r1;->m:Lcom/yandex/metrica/impl/ob/E0;

    move-object v2, p7

    .line 21
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/r1;->n:Lcom/yandex/metrica/impl/ob/za;

    move-object v2, p8

    .line 22
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/r1;->o:Lcom/yandex/metrica/impl/ob/l3;

    move-object v2, p9

    .line 23
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/r1;->e:Lcom/yandex/metrica/impl/ob/Eh;

    move-object v2, p10

    .line 24
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/r1;->s:Lcom/yandex/metrica/impl/ob/w;

    move-object/from16 v2, p13

    .line 25
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/r1;->t:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-object/from16 v2, p14

    .line 26
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/r1;->y:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-object/from16 v2, p15

    .line 27
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/r1;->u:Lcom/yandex/metrica/impl/ob/y1;

    move-object v2, p11

    .line 28
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/r1;->q:Lcom/yandex/metrica/impl/ob/o6;

    move-object v2, p12

    .line 29
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/r1;->r:Lcom/yandex/metrica/impl/ob/B7;

    .line 30
    new-instance v2, Lcom/yandex/metrica/impl/ob/M1;

    invoke-direct {v2, p0, p1}, Lcom/yandex/metrica/impl/ob/M1;-><init>(Lcom/yandex/metrica/impl/ob/p1;Landroid/content/Context;)V

    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/r1;->z:Lcom/yandex/metrica/impl/ob/M1;

    move-object/from16 v1, p16

    .line 31
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/r1;->A:Lcom/yandex/metrica/impl/ob/e2;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/MetricaService$d;Lcom/yandex/metrica/impl/ob/p4;)V
    .locals 17

    move-object/from16 v10, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2
    new-instance v4, Lcom/yandex/metrica/impl/ob/j4;

    move-object v3, v4

    move-object/from16 v5, p3

    invoke-direct {v4, v10, v5}, Lcom/yandex/metrica/impl/ob/j4;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/p4;)V

    new-instance v5, Lcom/yandex/metrica/impl/ob/A1;

    move-object v4, v5

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/A1;-><init>()V

    new-instance v6, Lcom/yandex/metrica/impl/ob/B0;

    move-object v5, v6

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/B0;-><init>()V

    new-instance v7, Lcom/yandex/metrica/impl/ob/E0;

    move-object v6, v7

    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/E0;-><init>()V

    new-instance v8, Lcom/yandex/metrica/impl/ob/za;

    move-object v7, v8

    invoke-direct {v8, v10}, Lcom/yandex/metrica/impl/ob/za;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/yandex/metrica/impl/ob/l3;->a()Lcom/yandex/metrica/impl/ob/l3;

    move-result-object v8

    new-instance v11, Lcom/yandex/metrica/impl/ob/Eh;

    move-object v9, v11

    invoke-direct {v11, v10}, Lcom/yandex/metrica/impl/ob/Eh;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yandex/metrica/impl/ob/F0;->b()Lcom/yandex/metrica/impl/ob/w;

    move-result-object v10

    .line 5
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v11

    invoke-virtual {v11}, Lcom/yandex/metrica/impl/ob/F0;->h()Lcom/yandex/metrica/impl/ob/f1;

    move-result-object v11

    .line 6
    invoke-virtual {v11}, Lcom/yandex/metrica/impl/ob/f1;->c()Lcom/yandex/metrica/impl/ob/o6;

    move-result-object v11

    .line 7
    invoke-static {}, Lcom/yandex/metrica/impl/ob/B7;->a()Lcom/yandex/metrica/impl/ob/B7;

    move-result-object v12

    .line 8
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v13

    invoke-virtual {v13}, Lcom/yandex/metrica/impl/ob/F0;->q()Lcom/yandex/metrica/impl/ob/Pm;

    move-result-object v13

    invoke-virtual {v13}, Lcom/yandex/metrica/impl/ob/Pm;->e()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v13

    .line 9
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v14

    invoke-virtual {v14}, Lcom/yandex/metrica/impl/ob/F0;->q()Lcom/yandex/metrica/impl/ob/Pm;

    move-result-object v14

    invoke-virtual {v14}, Lcom/yandex/metrica/impl/ob/Pm;->a()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v14

    new-instance v16, Lcom/yandex/metrica/impl/ob/y1;

    move-object/from16 v15, v16

    invoke-direct/range {v16 .. v16}, Lcom/yandex/metrica/impl/ob/y1;-><init>()V

    .line 10
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/metrica/impl/ob/F0;->n()Lcom/yandex/metrica/impl/ob/e2;

    move-result-object v16

    .line 11
    invoke-direct/range {v0 .. v16}, Lcom/yandex/metrica/impl/ob/r1;-><init>(Landroid/content/Context;Lcom/yandex/metrica/MetricaService$d;Lcom/yandex/metrica/impl/ob/j4;Lcom/yandex/metrica/impl/ob/A1;Lcom/yandex/metrica/impl/ob/B0;Lcom/yandex/metrica/impl/ob/E0;Lcom/yandex/metrica/impl/ob/za;Lcom/yandex/metrica/impl/ob/l3;Lcom/yandex/metrica/impl/ob/Eh;Lcom/yandex/metrica/impl/ob/w;Lcom/yandex/metrica/impl/ob/o6;Lcom/yandex/metrica/impl/ob/B7;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/y1;Lcom/yandex/metrica/impl/ob/e2;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/r1;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/r1;->c:Landroid/content/Context;

    return-object p0
.end method

.method private a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->j:Lcom/yandex/metrica/impl/ob/Vc;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Vc;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    :cond_0
    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/r1;Landroid/content/Intent;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->e:Lcom/yandex/metrica/impl/ob/Eh;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Eh;->a()V

    .line 71
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/r1;->A:Lcom/yandex/metrica/impl/ob/e2;

    const-string v0, "screen_size"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Tl;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/e2;->a(Lcom/yandex/metrica/impl/ob/c2;)V

    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/r1;Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 2

    .line 64
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/r1;->a:Lcom/yandex/metrica/impl/ob/pi;

    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->j:Lcom/yandex/metrica/impl/ob/Vc;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Vc;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->f:Lcom/yandex/metrica/impl/ob/X0;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/r1;->a:Lcom/yandex/metrica/impl/ob/pi;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/pi;->t()Lcom/yandex/metrica/impl/ob/Zh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/X0;->a(Lcom/yandex/metrica/impl/ob/Zh;)V

    .line 68
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->n:Lcom/yandex/metrica/impl/ob/za;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/za;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 69
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/r1;->e:Lcom/yandex/metrica/impl/ob/Eh;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Eh;->b(Lcom/yandex/metrica/impl/ob/pi;)V

    return-void
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/r1;)Lcom/yandex/metrica/impl/ob/e7;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/r1;->x:Lcom/yandex/metrica/impl/ob/e7;

    return-object p0
.end method

.method private b(Landroid/content/Intent;I)V
    .locals 6

    if-eqz p1, :cond_6

    .line 16
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 17
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_3

    .line 18
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 19
    new-instance v0, Lcom/yandex/metrica/impl/ob/z3;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/z3;-><init>(Landroid/os/Bundle;)V

    .line 20
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/r1;->c:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/yandex/metrica/impl/ob/z3;->a(Lcom/yandex/metrica/impl/ob/z3;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    .line 21
    :cond_2
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/c0;->a(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p1

    .line 22
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/c0;->a:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    .line 23
    :goto_1
    sget-object v4, Lcom/yandex/metrica/impl/ob/a1;->c:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v4

    iget v5, p1, Lcom/yandex/metrica/impl/ob/c0;->e:I

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    or-int/2addr v1, v3

    if-eqz v1, :cond_5

    goto :goto_3

    .line 24
    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/r1;->l:Lcom/yandex/metrica/impl/ob/L1;

    .line 25
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/i4;->a(Lcom/yandex/metrica/impl/ob/z3;)Lcom/yandex/metrica/impl/ob/i4;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/ob/D3;

    invoke-direct {v3, v0}, Lcom/yandex/metrica/impl/ob/D3;-><init>(Lcom/yandex/metrica/impl/ob/z3;)V

    .line 26
    invoke-virtual {v1, v2, p1, v3}, Lcom/yandex/metrica/impl/ob/L1;->a(Lcom/yandex/metrica/impl/ob/i4;Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/D3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :catchall_0
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/r1;->d:Lcom/yandex/metrica/MetricaService$d;

    invoke-interface {p1, p2}, Lcom/yandex/metrica/MetricaService$d;->a(I)V

    return-void
.end method

.method static b(Lcom/yandex/metrica/impl/ob/r1;Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/r1;->j:Lcom/yandex/metrica/impl/ob/Vc;

    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Vc;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/r1;)Lcom/yandex/metrica/impl/ob/pi;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/r1;->a:Lcom/yandex/metrica/impl/ob/pi;

    return-object p0
.end method

.method private c(Landroid/os/Bundle;)Ljava/lang/Integer;
    .locals 2

    .line 3
    const-class v0, Lcom/yandex/metrica/impl/ob/A3;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 4
    sget-object v0, Lcom/yandex/metrica/impl/ob/A3;->c:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PROCESS_CFG_OBJ"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/A3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/A3;->g()Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method static d(Lcom/yandex/metrica/impl/ob/r1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->a:Lcom/yandex/metrica/impl/ob/pi;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->o()Lcom/yandex/metrica/impl/ob/dh;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/r1;->a:Lcom/yandex/metrica/impl/ob/pi;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/dh;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/yandex/metrica/impl/ob/r1;)Lcom/yandex/metrica/impl/ob/Eh;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/r1;->e:Lcom/yandex/metrica/impl/ob/Eh;

    .line 2
    .line 3
    return-object p0
.end method

.method static f(Lcom/yandex/metrica/impl/ob/r1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/r1;->e:Lcom/yandex/metrica/impl/ob/Eh;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Eh;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 2
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/r1;->b:Z

    const/16 v1, 0x15

    if-nez v0, :cond_3

    .line 3
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->s()Lcom/yandex/metrica/impl/ob/e9;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->k:Lcom/yandex/metrica/impl/ob/e9;

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->m:Lcom/yandex/metrica/impl/ob/E0;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/r1;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/E0;->a(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->x()V

    .line 6
    invoke-static {}, Lcom/yandex/metrica/impl/ob/fm;->c()Lcom/yandex/metrica/impl/ob/fm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fm;->d()V

    .line 7
    new-instance v0, Lcom/yandex/metrica/impl/ob/Vc;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/r1;->c:Landroid/content/Context;

    .line 8
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/vc;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/vc;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/r1;->c:Landroid/content/Context;

    .line 9
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/H2;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/H2;

    move-result-object v3

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/r1;->k:Lcom/yandex/metrica/impl/ob/e9;

    invoke-direct {v0, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/Vc;-><init>(Lcom/yandex/metrica/impl/ob/vc;Lcom/yandex/metrica/impl/ob/H2;Lcom/yandex/metrica/impl/ob/e9;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->j:Lcom/yandex/metrica/impl/ob/Vc;

    .line 10
    new-instance v0, Lcom/yandex/metrica/impl/ob/pi$b;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/r1;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/yandex/metrica/impl/ob/pi$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/pi$b;->a()Lcom/yandex/metrica/impl/ob/pi;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->a:Lcom/yandex/metrica/impl/ob/pi;

    .line 11
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->t()Lcom/yandex/metrica/impl/ob/sd;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->i:Lcom/yandex/metrica/impl/ob/A1;

    new-instance v2, Lcom/yandex/metrica/impl/ob/v1;

    invoke-direct {v2, p0}, Lcom/yandex/metrica/impl/ob/v1;-><init>(Lcom/yandex/metrica/impl/ob/r1;)V

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/A1;->b(Lcom/yandex/metrica/impl/ob/A1$e;)V

    .line 14
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->i:Lcom/yandex/metrica/impl/ob/A1;

    new-instance v2, Lcom/yandex/metrica/impl/ob/w1;

    invoke-direct {v2, p0}, Lcom/yandex/metrica/impl/ob/w1;-><init>(Lcom/yandex/metrica/impl/ob/r1;)V

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/A1;->c(Lcom/yandex/metrica/impl/ob/A1$e;)V

    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->i:Lcom/yandex/metrica/impl/ob/A1;

    new-instance v2, Lcom/yandex/metrica/impl/ob/x1;

    invoke-direct {v2, p0}, Lcom/yandex/metrica/impl/ob/x1;-><init>(Lcom/yandex/metrica/impl/ob/r1;)V

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/A1;->a(Lcom/yandex/metrica/impl/ob/A1$e;)V

    .line 16
    new-instance v0, Lcom/yandex/metrica/impl/ob/t1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/t1;-><init>(Lcom/yandex/metrica/impl/ob/r1;)V

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/p3;->a(Lcom/yandex/metrica/impl/ob/o3;)Lcom/yandex/metrica/impl/ob/p3$b;

    move-result-object v0

    new-instance v2, Lcom/yandex/metrica/impl/ob/s1;

    invoke-direct {v2, p0}, Lcom/yandex/metrica/impl/ob/s1;-><init>(Lcom/yandex/metrica/impl/ob/r1;)V

    .line 17
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/p3$b;->a(Lcom/yandex/metrica/impl/ob/m3;)Lcom/yandex/metrica/impl/ob/p3$b;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/p3$b;->a()Lcom/yandex/metrica/impl/ob/p3;

    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/r1;->o:Lcom/yandex/metrica/impl/ob/l3;

    const-class v3, Lcom/yandex/metrica/impl/ob/q3;

    invoke-virtual {v2, p0, v3, v0}, Lcom/yandex/metrica/impl/ob/l3;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/yandex/metrica/impl/ob/p3;)V

    .line 20
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->r()Lcom/yandex/metrica/impl/ob/xb;

    move-result-object v0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/r1;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/r1;->a:Lcom/yandex/metrica/impl/ob/pi;

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/xb;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/pi;)V

    .line 21
    new-instance v0, Lcom/yandex/metrica/impl/ob/X0;

    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/r1;->k:Lcom/yandex/metrica/impl/ob/e9;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/r1;->a:Lcom/yandex/metrica/impl/ob/pi;

    .line 22
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/pi;->t()Lcom/yandex/metrica/impl/ob/Zh;

    move-result-object v6

    .line 23
    new-instance v7, Ldc/c;

    invoke-direct {v7}, Ldc/c;-><init>()V

    new-instance v8, Lcom/yandex/metrica/impl/ob/x2;

    invoke-direct {v8}, Lcom/yandex/metrica/impl/ob/x2;-><init>()V

    .line 24
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    move-result-object v9

    move-object v4, v0

    .line 25
    invoke-direct/range {v4 .. v9}, Lcom/yandex/metrica/impl/ob/X0;-><init>(Lcom/yandex/metrica/impl/ob/e9;Lcom/yandex/metrica/impl/ob/Zh;Ldc/d;Lcom/yandex/metrica/impl/ob/x2;Lcom/yandex/metrica/impl/ob/M0;)V

    .line 26
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->f:Lcom/yandex/metrica/impl/ob/X0;

    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->a:Lcom/yandex/metrica/impl/ob/pi;

    if-eqz v0, :cond_0

    .line 28
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/r1;->e:Lcom/yandex/metrica/impl/ob/Eh;

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/Eh;->b(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->a:Lcom/yandex/metrica/impl/ob/pi;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/r1;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 30
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->u:Lcom/yandex/metrica/impl/ob/y1;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/r1;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/r1;->h:Lcom/yandex/metrica/impl/ob/j4;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/L1;

    .line 33
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/F0;->q()Lcom/yandex/metrica/impl/ob/Pm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/Pm;->e()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v4

    new-instance v5, Lcom/yandex/metrica/impl/ob/B0;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/B0;-><init>()V

    .line 34
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/L1;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/j4;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/B0;)V

    .line 35
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->l:Lcom/yandex/metrica/impl/ob/L1;

    .line 36
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->c:Landroid/content/Context;

    const-string v2, "20799a27-fa80-4b36-b2db-0f8141f24180"

    .line 37
    invoke-static {v0, v2}, Lcom/yandex/metrica/YandexMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/IReporter;

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->g:Lcom/yandex/metrica/impl/ob/B0;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/r1;->c:Landroid/content/Context;

    const-string v3, "appmetrica_crashes"

    .line 39
    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/B0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/r1;->u:Lcom/yandex/metrica/impl/ob/y1;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/r1;->w:Lcom/yandex/metrica/impl/ob/mm;

    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    new-instance v2, Lcom/yandex/metrica/impl/ob/Y6;

    invoke-direct {v2, v0, v3}, Lcom/yandex/metrica/impl/ob/Y6;-><init>(Ljava/io/File;Lcom/yandex/metrica/impl/ob/mm;)V

    .line 43
    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/r1;->p:Lcom/yandex/metrica/impl/ob/Y6;

    .line 44
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/r1;->t:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v3, Lcom/yandex/metrica/impl/ob/u6;

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/r1;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/r1;->w:Lcom/yandex/metrica/impl/ob/mm;

    invoke-direct {v3, v4, v0, v5}, Lcom/yandex/metrica/impl/ob/u6;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/yandex/metrica/impl/ob/mm;)V

    invoke-interface {v2, v3}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 45
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->p:Lcom/yandex/metrica/impl/ob/Y6;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Y6;->a()V

    .line 46
    :cond_1
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->u:Lcom/yandex/metrica/impl/ob/y1;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/r1;->l:Lcom/yandex/metrica/impl/ob/L1;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    new-instance v0, Lcom/yandex/metrica/impl/ob/t7;

    new-instance v3, Lcom/yandex/metrica/impl/ob/v7;

    invoke-direct {v3, v2}, Lcom/yandex/metrica/impl/ob/v7;-><init>(Lcom/yandex/metrica/impl/ob/L1;)V

    invoke-direct {v0, v3}, Lcom/yandex/metrica/impl/ob/t7;-><init>(Lcom/yandex/metrica/impl/ob/v7;)V

    .line 50
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->x:Lcom/yandex/metrica/impl/ob/e7;

    .line 51
    new-instance v0, Lcom/yandex/metrica/impl/ob/u1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/u1;-><init>(Lcom/yandex/metrica/impl/ob/r1;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->v:Lcom/yandex/metrica/impl/ob/mm;

    .line 52
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->r:Lcom/yandex/metrica/impl/ob/B7;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/B7;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->x:Lcom/yandex/metrica/impl/ob/e7;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/e7;->a()V

    .line 54
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->y:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v2, Lcom/yandex/metrica/impl/ob/F7;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/F7;-><init>()V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 55
    :cond_2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->f()Lcom/yandex/metrica/impl/ob/ib;

    move-result-object v0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/r1;->a:Lcom/yandex/metrica/impl/ob/pi;

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/ib;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/r1;->b:Z

    goto :goto_0

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 58
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/r1;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/g1;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/g1;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/g1;->b(Landroid/content/res/Configuration;)V

    .line 59
    :goto_0
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->q:Lcom/yandex/metrica/impl/ob/o6;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/r1;->v:Lcom/yandex/metrica/impl/ob/mm;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/o6;->a(Lcom/yandex/metrica/impl/ob/mm;)V

    :cond_4
    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->z:Lcom/yandex/metrica/impl/ob/M1;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/M1;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->i:Lcom/yandex/metrica/impl/ob/A1;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/A1;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/r1;->b(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(Landroid/content/Intent;II)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p3}, Lcom/yandex/metrica/impl/ob/r1;->b(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/r1;->c(Landroid/os/Bundle;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->s:Lcom/yandex/metrica/impl/ob/w;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/w;->b(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/yandex/metrica/MetricaService$d;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/r1;->d:Lcom/yandex/metrica/MetricaService$d;

    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->l:Lcom/yandex/metrica/impl/ob/L1;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/L1;->a(Ljava/io/File;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    const-class v0, Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 75
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->l:Lcom/yandex/metrica/impl/ob/L1;

    new-instance v1, Lcom/yandex/metrica/impl/ob/c0;

    invoke-direct {v1, p3, p1, p2}, Lcom/yandex/metrica/impl/ob/c0;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, p4}, Lcom/yandex/metrica/impl/ob/L1;->a(Lcom/yandex/metrica/impl/ob/c0;Landroid/os/Bundle;)V

    return-void
.end method

.method public b()V
    .locals 2

    const/16 v0, 0x15

    .line 12
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->q:Lcom/yandex/metrica/impl/ob/o6;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/r1;->v:Lcom/yandex/metrica/impl/ob/mm;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/o6;->b(Lcom/yandex/metrica/impl/ob/mm;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->i:Lcom/yandex/metrica/impl/ob/A1;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/A1;->b(Landroid/content/Intent;)V

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "com.yandex.metrica.IMetricaService"

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/client"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pid"

    .line 8
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "psid"

    .line 9
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/r1;->h:Lcom/yandex/metrica/impl/ob/j4;

    invoke-virtual {v2, v1, v0, p1}, Lcom/yandex/metrica/impl/ob/j4;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/r1;->s:Lcom/yandex/metrica/impl/ob/w;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/w;->a(I)V

    :cond_1
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/r1;->c(Landroid/os/Bundle;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->s:Lcom/yandex/metrica/impl/ob/w;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/w;->c(I)V

    :cond_0
    return-void
.end method

.method public c(Landroid/content/Intent;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->i:Lcom/yandex/metrica/impl/ob/A1;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/A1;->c(Landroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/g1;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/g1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/g1;->b(Landroid/content/res/Configuration;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public reportData(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-class v0, Lcom/yandex/metrica/CounterConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->f:Lcom/yandex/metrica/impl/ob/X0;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/X0;->a()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/r1;->l:Lcom/yandex/metrica/impl/ob/L1;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/c0;->a(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/ob/c0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/L1;->a(Lcom/yandex/metrica/impl/ob/c0;Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
