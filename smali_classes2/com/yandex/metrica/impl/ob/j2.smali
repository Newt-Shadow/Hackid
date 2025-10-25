.class public Lcom/yandex/metrica/impl/ob/j2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/k2;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/i2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/k2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/j2;->b:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/j2;->a:Lcom/yandex/metrica/impl/ob/k2;

    .line 7
    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/j2;->c:Ljava/util/Map;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lcom/yandex/metrica/CounterConfiguration$b;)Lcom/yandex/metrica/impl/ob/i2;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/j2;->c:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/yandex/metrica/impl/ob/i2;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/yandex/metrica/impl/ob/i2;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/j2;->b:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/j2;->a:Lcom/yandex/metrica/impl/ob/k2;

    .line 17
    .line 18
    invoke-direct {v0, p1, v1, p2, v2}, Lcom/yandex/metrica/impl/ob/i2;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/yandex/metrica/CounterConfiguration$b;Lcom/yandex/metrica/impl/ob/k2;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/j2;->c:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :cond_0
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1
.end method
