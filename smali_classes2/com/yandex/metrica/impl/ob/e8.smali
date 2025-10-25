.class public final Lcom/yandex/metrica/impl/ob/e8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/b8;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/B0;

.field private final c:Lcom/yandex/metrica/impl/ob/Q7;

.field private final d:Lcom/yandex/metrica/impl/ob/a8;

.field private final e:Lcom/yandex/metrica/impl/ob/a8;

.field private final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/e8;->f:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/e8;->a:Ljava/util/Map;

    .line 12
    .line 13
    new-instance v0, Lcom/yandex/metrica/impl/ob/B0;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/B0;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/e8;->b:Lcom/yandex/metrica/impl/ob/B0;

    .line 19
    .line 20
    new-instance v1, Lcom/yandex/metrica/impl/ob/Q7;

    .line 21
    .line 22
    const-string v2, "appmetrica_vital.dat"

    .line 23
    .line 24
    invoke-direct {v1, p1, v2, v0}, Lcom/yandex/metrica/impl/ob/Q7;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/B0;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/e8;->c:Lcom/yandex/metrica/impl/ob/Q7;

    .line 28
    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/a8;

    .line 30
    .line 31
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "GlobalServiceLocator.getInstance()"

    .line 36
    .line 37
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/F0;->s()Lcom/yandex/metrica/impl/ob/e9;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "GlobalServiceLocator.get\u2026ance().servicePreferences"

    .line 45
    .line 46
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v2, v1}, Lcom/yandex/metrica/impl/ob/a8;-><init>(Lcom/yandex/metrica/impl/ob/f8;Lcom/yandex/metrica/impl/ob/f8;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/e8;->d:Lcom/yandex/metrica/impl/ob/a8;

    .line 53
    .line 54
    new-instance v0, Lcom/yandex/metrica/impl/ob/a8;

    .line 55
    .line 56
    new-instance v2, Lcom/yandex/metrica/impl/ob/e9;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v3, "DatabaseStorageFactory.getInstance(context)"

    .line 63
    .line 64
    invoke-static {p1, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ja;->j()Lcom/yandex/metrica/impl/ob/S7;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {v2, p1}, Lcom/yandex/metrica/impl/ob/e9;-><init>(Lcom/yandex/metrica/impl/ob/S7;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v2, v1}, Lcom/yandex/metrica/impl/ob/a8;-><init>(Lcom/yandex/metrica/impl/ob/f8;Lcom/yandex/metrica/impl/ob/f8;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/e8;->e:Lcom/yandex/metrica/impl/ob/a8;

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/metrica/impl/ob/a8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/e8;->d:Lcom/yandex/metrica/impl/ob/a8;

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/yandex/metrica/impl/ob/I3;)Lcom/yandex/metrica/impl/ob/b8;
    .locals 8

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/I3;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/e8;->a:Ljava/util/Map;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lcom/yandex/metrica/impl/ob/b8;

    .line 6
    new-instance v3, Lcom/yandex/metrica/impl/ob/c9;

    .line 7
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/e8;->f:Landroid/content/Context;

    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/yandex/metrica/impl/ob/ja;->b(Lcom/yandex/metrica/impl/ob/I3;)Lcom/yandex/metrica/impl/ob/S7;

    move-result-object v4

    .line 8
    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/c9;-><init>(Lcom/yandex/metrica/impl/ob/S7;)V

    .line 9
    new-instance v4, Lcom/yandex/metrica/impl/ob/Q7;

    .line 10
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/e8;->f:Landroid/content/Context;

    .line 11
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/I3;->a()Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appmetrica_vital_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".dat"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/e8;->b:Lcom/yandex/metrica/impl/ob/B0;

    .line 14
    invoke-direct {v4, v5, p1, v6}, Lcom/yandex/metrica/impl/ob/Q7;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/B0;)V

    .line 15
    invoke-direct {v2, v3, v4, v0}, Lcom/yandex/metrica/impl/ob/b8;-><init>(Lcom/yandex/metrica/impl/ob/f8;Lcom/yandex/metrica/impl/ob/f8;Ljava/lang/String;)V

    .line 16
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_0
    check-cast v2, Lcom/yandex/metrica/impl/ob/b8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Lcom/yandex/metrica/impl/ob/a8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/e8;->e:Lcom/yandex/metrica/impl/ob/a8;

    .line 2
    .line 3
    return-object v0
.end method
