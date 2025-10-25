.class public Lcom/yandex/metrica/impl/ob/Rf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Sf;

.field private final b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

.field private final c:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/yandex/metrica/impl/ob/hm;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/Sf;)V
    .locals 7

    .line 1
    new-instance v3, Lcom/yandex/metrica/impl/ob/Kf;

    invoke-direct {v3, p2}, Lcom/yandex/metrica/impl/ob/Kf;-><init>(Lcom/yandex/metrica/impl/ob/Sf;)V

    new-instance v4, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v0, Lcom/yandex/metrica/impl/ob/Gn;

    const-string v1, "Context"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v0}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    new-instance v5, Lcom/yandex/metrica/impl/ob/Hn;

    new-instance v0, Lcom/yandex/metrica/impl/ob/Gn;

    const-string v1, "Event name"

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v0}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    new-instance v6, Lcom/yandex/metrica/impl/ob/hm;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/hm;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/Rf;-><init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/Sf;Lcom/yandex/metrica/impl/ob/Kf;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/hm;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/Sf;Lcom/yandex/metrica/impl/ob/Kf;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/Kn;Lcom/yandex/metrica/impl/ob/hm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/core/api/executors/ICommonExecutor;",
            "Lcom/yandex/metrica/impl/ob/Sf;",
            "Lcom/yandex/metrica/impl/ob/Kf;",
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/hm;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Rf;->a:Lcom/yandex/metrica/impl/ob/Sf;

    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Rf;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 5
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Rf;->c:Lcom/yandex/metrica/impl/ob/Kn;

    .line 6
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Rf;->d:Lcom/yandex/metrica/impl/ob/Kn;

    .line 7
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/Rf;->e:Lcom/yandex/metrica/impl/ob/hm;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/Rf;)Lcom/yandex/metrica/impl/ob/Sf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Rf;->a:Lcom/yandex/metrica/impl/ob/Sf;

    return-object p0
.end method

.method static b(Lcom/yandex/metrica/impl/ob/Rf;)Lcom/yandex/metrica/impl/ob/K0;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Rf;->a:Lcom/yandex/metrica/impl/ob/Sf;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/yandex/metrica/impl/ob/R2;->k()Lcom/yandex/metrica/impl/ob/R2;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/R2;->d()Lcom/yandex/metrica/impl/ob/k1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/k1;->b()Lcom/yandex/metrica/impl/ob/K0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf;->c:Lcom/yandex/metrica/impl/ob/Kn;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf;->e:Lcom/yandex/metrica/impl/ob/hm;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/hm;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/interact/CellularNetworkInfo;->getCelluralInfo()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public a()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Rf$b;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/Rf$b;-><init>(Lcom/yandex/metrica/impl/ob/Rf;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/IIdentifierCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf;->c:Lcom/yandex/metrica/impl/ob/Kn;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Rf$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Rf$a;-><init>(Lcom/yandex/metrica/impl/ob/Rf;Landroid/content/Context;Lcom/yandex/metrica/IIdentifierCallback;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf;->c:Lcom/yandex/metrica/impl/ob/Kn;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 16
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Rf$f;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Rf$f;-><init>(Lcom/yandex/metrica/impl/ob/Rf;Landroid/content/Context;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf;->c:Lcom/yandex/metrica/impl/ob/Kn;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 9
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Rf;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v0, Lcom/yandex/metrica/impl/ob/Rf$d;

    invoke-direct {v0, p0, p2}, Lcom/yandex/metrica/impl/ob/Rf$d;-><init>(Lcom/yandex/metrica/impl/ob/Rf;Z)V

    invoke-interface {p1, v0}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/p$Ucc;Z)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf;->a:Lcom/yandex/metrica/impl/ob/Sf;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/yandex/metrica/impl/ob/R2;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "Main API key is not activated"

    .line 13
    invoke-interface {p1, p2}, Lcom/yandex/metrica/p$Ucc;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Rf$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Rf$e;-><init>(Lcom/yandex/metrica/impl/ob/Rf;Lcom/yandex/metrica/p$Ucc;Z)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf;->c:Lcom/yandex/metrica/impl/ob/Kn;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf;->a:Lcom/yandex/metrica/impl/ob/Sf;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/R2;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/R2;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/R2;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf;->b:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    new-instance v1, Lcom/yandex/metrica/impl/ob/Rf$c;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/Rf$c;-><init>(Lcom/yandex/metrica/impl/ob/Rf;)V

    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf;->c:Lcom/yandex/metrica/impl/ob/Kn;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf;->c:Lcom/yandex/metrica/impl/ob/Kn;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf;->a:Lcom/yandex/metrica/impl/ob/Sf;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/R2;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/R2;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/R2;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
