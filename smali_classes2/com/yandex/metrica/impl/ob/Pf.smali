.class public Lcom/yandex/metrica/impl/ob/Pf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/Pf$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/Of;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/Sf;

.field private final c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/Sf;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Pf;->a:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Pf;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Pf;->b:Lcom/yandex/metrica/impl/ob/Sf;

    .line 14
    .line 15
    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/Pf;
    .locals 1

    .line 2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/Pf$b;->a()Lcom/yandex/metrica/impl/ob/Pf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/Pf;)Lcom/yandex/metrica/impl/ob/Sf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Pf;->b:Lcom/yandex/metrica/impl/ob/Sf;

    return-object p0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Of;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pf;->b:Lcom/yandex/metrica/impl/ob/Sf;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/yandex/metrica/impl/ob/R2;->k()Lcom/yandex/metrica/impl/ob/R2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pf;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 13
    .line 14
    new-instance v1, Lcom/yandex/metrica/impl/ob/Pf$a;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, Lcom/yandex/metrica/impl/ob/Pf$a;-><init>(Lcom/yandex/metrica/impl/ob/Pf;Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/yandex/metrica/core/api/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/Of;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Pf;->c:Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    .line 25
    .line 26
    invoke-direct {v0, v1, p1, p2}, Lcom/yandex/metrica/impl/ob/Of;-><init>(Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Pf;->a:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/yandex/metrica/f;)Lcom/yandex/metrica/impl/ob/Of;
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pf;->a:Ljava/util/Map;

    iget-object v1, p2, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/Of;

    if-nez v0, :cond_1

    .line 10
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Pf;->a:Ljava/util/Map;

    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pf;->a:Ljava/util/Map;

    iget-object v2, p2, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/Of;

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p2, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/Pf;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Of;

    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Of;->a(Lcom/yandex/metrica/f;)V

    move-object v0, p1

    .line 14
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Of;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pf;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/Of;

    if-nez v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Pf;->a:Ljava/util/Map;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pf;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/Of;

    if-nez v0, :cond_0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/Pf;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Of;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Of;->d(Ljava/lang/String;)V

    move-object v0, p1

    .line 8
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method
