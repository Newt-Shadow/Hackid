.class public final Lcom/yandex/metrica/impl/ob/c8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lorg/json/JSONObject;

.field private final b:Lcom/yandex/metrica/impl/ob/f8;

.field private final c:Lcom/yandex/metrica/impl/ob/f8;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/yandex/metrica/impl/ob/d8;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/f8;Lcom/yandex/metrica/impl/ob/f8;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/d8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c8;->b:Lcom/yandex/metrica/impl/ob/f8;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/c8;->c:Lcom/yandex/metrica/impl/ob/f8;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/c8;->d:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/c8;->e:Lcom/yandex/metrica/impl/ob/d8;

    .line 11
    .line 12
    return-void
.end method

.method private final a(Lcom/yandex/metrica/impl/ob/f8;)Lorg/json/JSONObject;
    .locals 1

    .line 8
    :try_start_0
    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/f8;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/c8;->a(Ljava/lang/Throwable;)V

    .line 10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    return-object v0
.end method

.method private final a(Ljava/lang/Throwable;)V
    .locals 4

    .line 18
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/c8;->d:Ljava/lang/String;

    const-string v2, "tag"

    invoke-static {v2, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object v1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lpd/c;

    move-result-object v2

    invoke-interface {v2}, Lpd/c;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "exception"

    invoke-static {v3, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object v2

    filled-new-array {v1, v2}, [Lxc/k;

    move-result-object v1

    .line 21
    invoke-static {v1}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    move-result-object v1

    .line 22
    check-cast v0, Lcom/yandex/metrica/impl/ob/nh;

    const-string v2, "vital_data_provider_exception"

    invoke-virtual {v0, v2, v1}, Lcom/yandex/metrica/impl/ob/nh;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 23
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    move-result-object v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error during reading vital data for tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/c8;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    check-cast v0, Lcom/yandex/metrica/impl/ob/nh;

    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/nh;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lorg/json/JSONObject;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c8;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c8;->b:Lcom/yandex/metrica/impl/ob/f8;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/c8;->a(Lcom/yandex/metrica/impl/ob/f8;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/c8;->c:Lcom/yandex/metrica/impl/ob/f8;

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/c8;->a(Lcom/yandex/metrica/impl/ob/f8;)Lorg/json/JSONObject;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/c8;->e:Lcom/yandex/metrica/impl/ob/d8;

    invoke-interface {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/d8;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/c8;->a:Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/c8;->a(Lorg/json/JSONObject;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c8;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    const-string v1, "fileContents"

    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lorg/json/JSONObject;)V
    .locals 1

    monitor-enter p0

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contents.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c8;->b:Lcom/yandex/metrica/impl/ob/f8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    :try_start_1
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/f8;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    :try_start_2
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/c8;->a(Ljava/lang/Throwable;)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c8;->c:Lcom/yandex/metrica/impl/ob/f8;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 16
    :try_start_3
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/f8;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 17
    :try_start_4
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/c8;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
