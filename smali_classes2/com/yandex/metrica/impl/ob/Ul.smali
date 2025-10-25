.class public abstract Lcom/yandex/metrica/impl/ob/Ul;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/cm;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/Sl;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;

.field public static final synthetic e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/Ul;->a:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/yandex/metrica/impl/ob/Ul;->b:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/yandex/metrica/impl/ob/Ul;->c:Ljava/lang/Object;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/yandex/metrica/impl/ob/Ul;->d:Ljava/lang/Object;

    .line 28
    .line 29
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Sl;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/Sl;->a()Lcom/yandex/metrica/impl/ob/Sl;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/Ul;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/Sl;

    if-nez v0, :cond_2

    .line 4
    sget-object v1, Lcom/yandex/metrica/impl/ob/Ul;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/Ul;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/Sl;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lcom/yandex/metrica/impl/ob/Sl;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/Sl;-><init>(Ljava/lang/String;)V

    .line 7
    sget-object v2, Lcom/yandex/metrica/impl/ob/Ul;->b:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/cm;
    .locals 1

    .line 9
    invoke-static {}, Lcom/yandex/metrica/impl/ob/cm;->a()Lcom/yandex/metrica/impl/ob/cm;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cm;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/yandex/metrica/impl/ob/cm;->a()Lcom/yandex/metrica/impl/ob/cm;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/Ul;->a:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/yandex/metrica/impl/ob/cm;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    sget-object v1, Lcom/yandex/metrica/impl/ob/Ul;->c:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/Ul;->a:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/yandex/metrica/impl/ob/cm;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    new-instance v0, Lcom/yandex/metrica/impl/ob/cm;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/cm;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v2, Lcom/yandex/metrica/impl/ob/Ul;->a:Ljava/util/Map;

    .line 41
    .line 42
    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_1
    monitor-exit v1

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0

    .line 50
    :cond_2
    :goto_0
    return-object v0
.end method
