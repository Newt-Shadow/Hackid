.class public Lcom/yandex/metrica/impl/ob/p4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/X3;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/F3;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
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
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/p4;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/p4;->b:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/p4;->c:Landroid/content/Context;

    .line 23
    .line 24
    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/D3;Lcom/yandex/metrica/impl/ob/N3;Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/R3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/yandex/metrica/impl/ob/R3;",
            ">(",
            "Lcom/yandex/metrica/impl/ob/I3;",
            "Lcom/yandex/metrica/impl/ob/D3;",
            "Lcom/yandex/metrica/impl/ob/N3<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/I3;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/R3;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/p4;->c:Landroid/content/Context;

    invoke-interface {p3, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/N3;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/D3;)Lcom/yandex/metrica/impl/ob/R3;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/I3;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0, p2}, Lcom/yandex/metrica/impl/ob/R3;->a(Lcom/yandex/metrica/impl/ob/D3;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/D3;Lcom/yandex/metrica/impl/ob/N3;)Lcom/yandex/metrica/impl/ob/F3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/I3;",
            "Lcom/yandex/metrica/impl/ob/D3;",
            "Lcom/yandex/metrica/impl/ob/N3<",
            "Lcom/yandex/metrica/impl/ob/F3;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/F3;"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/p4;->b:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/metrica/impl/ob/p4;->a(Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/D3;Lcom/yandex/metrica/impl/ob/N3;Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/R3;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/F3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/I3;)Lcom/yandex/metrica/impl/ob/X3;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/p4;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/I3;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/X3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/D3;Lcom/yandex/metrica/impl/ob/N3;)Lcom/yandex/metrica/impl/ob/X3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/I3;",
            "Lcom/yandex/metrica/impl/ob/D3;",
            "Lcom/yandex/metrica/impl/ob/N3<",
            "Lcom/yandex/metrica/impl/ob/X3;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/X3;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/p4;->a:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/metrica/impl/ob/p4;->a(Lcom/yandex/metrica/impl/ob/I3;Lcom/yandex/metrica/impl/ob/D3;Lcom/yandex/metrica/impl/ob/N3;Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/R3;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/yandex/metrica/impl/ob/X3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method
