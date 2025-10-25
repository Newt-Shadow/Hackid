.class public Lcom/yandex/metrica/impl/ob/hi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ji;
.implements Lcom/yandex/metrica/impl/ob/Q0;


# static fields
.field static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/ob/gi;",
            "Lcom/yandex/metrica/IParamsCallback$Reason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/T1;

.field private final c:Lcom/yandex/metrica/impl/ob/mi;

.field private final d:Landroid/os/Handler;

.field private e:Lcom/yandex/metrica/impl/ob/cm;

.field private final f:Lcom/yandex/metrica/impl/ob/f0$a;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/ob/Yh;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/hi$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/hi$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/yandex/metrica/impl/ob/hi;->j:Ljava/util/Map;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/b9;Landroid/os/Handler;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/mi;

    invoke-direct {v0, p1, p3}, Lcom/yandex/metrica/impl/ob/mi;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/b9;)V

    invoke-direct {p0, p2, v0, p4}, Lcom/yandex/metrica/impl/ob/hi;-><init>(Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/mi;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/mi;Landroid/os/Handler;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "yandex_mobile_metrica_uuid"

    const-string v1, "yandex_mobile_metrica_device_id"

    const-string v2, "appmetrica_device_id_hash"

    const-string v3, "yandex_mobile_metrica_get_ad_url"

    const-string v4, "yandex_mobile_metrica_report_ad_url"

    const-string v5, "yandex_mobile_metrica_clids"

    .line 3
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hi;->a:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hi;->g:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hi;->h:Ljava/util/Map;

    .line 6
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hi;->b:Lcom/yandex/metrica/impl/ob/T1;

    .line 7
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/hi;->d:Landroid/os/Handler;

    .line 9
    new-instance p1, Lcom/yandex/metrica/impl/ob/hi$b;

    invoke-direct {p1, p0}, Lcom/yandex/metrica/impl/ob/hi$b;-><init>(Lcom/yandex/metrica/impl/ob/hi;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hi;->f:Lcom/yandex/metrica/impl/ob/f0$a;

    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/Yh;Landroid/os/Bundle;)V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hi;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hi;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 45
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 47
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    invoke-virtual {p2, v0, v2}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 48
    :goto_0
    invoke-interface {p1, v2}, Lcom/yandex/metrica/impl/ob/Yh;->onReceive(Ljava/util/Map;)V

    goto :goto_5

    :cond_1
    const-string v1, "startup_error_key_code"

    .line 49
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 50
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 51
    sget-object v1, Lcom/yandex/metrica/impl/ob/gi;->b:Lcom/yandex/metrica/impl/ob/gi;

    const/4 v3, 0x1

    if-eq p2, v3, :cond_3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    goto :goto_1

    .line 52
    :cond_2
    sget-object v1, Lcom/yandex/metrica/impl/ob/gi;->d:Lcom/yandex/metrica/impl/ob/gi;

    goto :goto_1

    .line 53
    :cond_3
    sget-object v1, Lcom/yandex/metrica/impl/ob/gi;->c:Lcom/yandex/metrica/impl/ob/gi;

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_7

    .line 54
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/mi;->a()Z

    move-result p2

    if-nez p2, :cond_6

    .line 55
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/hi;->e:Lcom/yandex/metrica/impl/ob/cm;

    if-eqz p2, :cond_5

    .line 56
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/hi;->i:Ljava/util/Map;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Clids error. Passed clids: %s, and clids from server are empty."

    invoke-virtual {p2, v4, v3}, Lcom/yandex/metrica/coreutils/logger/a;->fw(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_5
    sget-object p2, Lcom/yandex/metrica/IParamsCallback$Reason;->INCONSISTENT_CLIDS:Lcom/yandex/metrica/IParamsCallback$Reason;

    goto :goto_2

    .line 58
    :cond_6
    sget-object v1, Lcom/yandex/metrica/impl/ob/gi;->b:Lcom/yandex/metrica/impl/ob/gi;

    :cond_7
    move-object p2, v2

    :goto_2
    if-nez p2, :cond_9

    .line 59
    sget-object p2, Lcom/yandex/metrica/impl/ob/hi;->j:Ljava/util/Map;

    sget-object v3, Lcom/yandex/metrica/IParamsCallback$Reason;->UNKNOWN:Lcom/yandex/metrica/IParamsCallback$Reason;

    .line 60
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_8

    goto :goto_3

    :cond_8
    move-object v3, p2

    .line 61
    :goto_3
    move-object p2, v3

    check-cast p2, Lcom/yandex/metrica/IParamsCallback$Reason;

    :cond_9
    if-nez v0, :cond_a

    goto :goto_4

    .line 62
    :cond_a
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 63
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    invoke-virtual {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 64
    :goto_4
    invoke-interface {p1, p2, v2}, Lcom/yandex/metrica/impl/ob/Yh;->a(Lcom/yandex/metrica/IParamsCallback$Reason;Ljava/util/Map;)V

    .line 65
    :goto_5
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/hi;->h:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/hi;->h:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 67
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/hi;->b:Lcom/yandex/metrica/impl/ob/T1;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/T1;->f()V

    :cond_b
    return-void
.end method

.method private f()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->h:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/util/List;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/util/Map$Entry;

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Lcom/yandex/metrica/impl/ob/Yh;

    .line 75
    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    new-instance v3, Landroid/os/Bundle;

    .line 79
    .line 80
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v2, v3}, Lcom/yandex/metrica/impl/ob/hi;->a(Lcom/yandex/metrica/impl/ob/Yh;Landroid/os/Bundle;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 88
    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/mi;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Landroid/os/Bundle;Lcom/yandex/metrica/impl/ob/Yh;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hi;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/mi;->a(Landroid/os/Bundle;)V

    .line 16
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/hi;->f()V

    .line 17
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/hi;->f()V

    if-eqz p2, :cond_0

    .line 18
    invoke-direct {p0, p2, p1}, Lcom/yandex/metrica/impl/ob/hi;->a(Lcom/yandex/metrica/impl/ob/Yh;Landroid/os/Bundle;)V

    .line 19
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/yandex/metrica/IIdentifierCallback;Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/IIdentifierCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/Qh;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/Qh;-><init>(Lcom/yandex/metrica/IIdentifierCallback;)V

    .line 3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/hi;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    invoke-virtual {v1, p3}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/util/Map;)V

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->b:Lcom/yandex/metrica/impl/ob/T1;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/T1;->g()V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->h:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    invoke-virtual {v1, p2}, Lcom/yandex/metrica/impl/ob/mi;->b(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    new-instance v1, Lcom/yandex/metrica/impl/ob/ii;

    invoke-direct {v1, p0, v0}, Lcom/yandex/metrica/impl/ob/ii;-><init>(Lcom/yandex/metrica/impl/ob/hi;Lcom/yandex/metrica/impl/ob/Yh;)V

    .line 10
    new-instance v0, Lcom/yandex/metrica/impl/ob/f0;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hi;->d:Landroid/os/Handler;

    invoke-direct {v0, v2, v1}, Lcom/yandex/metrica/impl/ob/f0;-><init>(Landroid/os/Handler;Lcom/yandex/metrica/impl/ob/f0$a;)V

    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->b:Lcom/yandex/metrica/impl/ob/T1;

    invoke-virtual {v1, p2, v0, p3}, Lcom/yandex/metrica/impl/ob/T1;->a(Ljava/util/List;Landroid/os/ResultReceiver;Ljava/util/Map;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, p2}, Lcom/yandex/metrica/impl/ob/hi;->a(Lcom/yandex/metrica/impl/ob/Yh;Landroid/os/Bundle;)V

    .line 13
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public a(Lcom/yandex/metrica/impl/ob/cm;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hi;->e:Lcom/yandex/metrica/impl/ob/cm;

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/gl;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/mi;->a(Lcom/yandex/metrica/impl/ob/gl;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hi;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->b:Lcom/yandex/metrica/impl/ob/T1;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/T1;->a(Ljava/lang/String;)V

    .line 41
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hi;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/mi;->b()Ljava/util/List;

    move-result-object v1

    .line 23
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 25
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/util/List;)V

    .line 26
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/hi;->b:Lcom/yandex/metrica/impl/ob/T1;

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/T1;->a(Ljava/util/List;)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 28
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/util/List;)V

    .line 29
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->b:Lcom/yandex/metrica/impl/ob/T1;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/T1;->a(Ljava/util/List;)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/hi;->b:Lcom/yandex/metrica/impl/ob/T1;

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/T1;->a(Ljava/util/List;)V

    .line 31
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hi;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Tl;->i(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/hi;->i:Ljava/util/Map;

    .line 36
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->b:Lcom/yandex/metrica/impl/ob/T1;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/T1;->a(Ljava/util/Map;)V

    .line 37
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/util/Map;)V

    .line 38
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/mi;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hi;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->b:Lcom/yandex/metrica/impl/ob/T1;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/T1;->b(Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()Lcom/yandex/metrica/impl/ob/ra;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/mi;->d()Lcom/yandex/metrica/impl/ob/ra;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/fl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/mi;->f()Lcom/yandex/metrica/impl/ob/fl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/mi;->g()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public g()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/hi;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->c:Lcom/yandex/metrica/impl/ob/mi;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    const/4 v2, 0x6

    .line 8
    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    .line 9
    .line 10
    const-string v3, "yandex_mobile_metrica_clids"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v3, v2, v4

    .line 14
    .line 15
    const-string v3, "appmetrica_device_id_hash"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    aput-object v3, v2, v4

    .line 19
    .line 20
    const-string v3, "yandex_mobile_metrica_device_id"

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    aput-object v3, v2, v4

    .line 24
    .line 25
    const-string v3, "yandex_mobile_metrica_get_ad_url"

    .line 26
    .line 27
    const/4 v4, 0x3

    .line 28
    aput-object v3, v2, v4

    .line 29
    .line 30
    const-string v3, "yandex_mobile_metrica_report_ad_url"

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    aput-object v3, v2, v4

    .line 34
    .line 35
    const-string v3, "yandex_mobile_metrica_uuid"

    .line 36
    .line 37
    const/4 v4, 0x5

    .line 38
    aput-object v3, v2, v4

    .line 39
    .line 40
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/mi;->b(Ljava/util/List;)Z

    .line 45
    .line 46
    .line 47
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    monitor-exit v1

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/hi;->i:Ljava/util/Map;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hi;->a:Ljava/util/List;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/hi;->f:Lcom/yandex/metrica/impl/ob/f0$a;

    .line 56
    .line 57
    new-instance v4, Lcom/yandex/metrica/impl/ob/f0;

    .line 58
    .line 59
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/hi;->d:Landroid/os/Handler;

    .line 60
    .line 61
    invoke-direct {v4, v5, v3}, Lcom/yandex/metrica/impl/ob/f0;-><init>(Landroid/os/Handler;Lcom/yandex/metrica/impl/ob/f0$a;)V

    .line 62
    .line 63
    .line 64
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/hi;->b:Lcom/yandex/metrica/impl/ob/T1;

    .line 65
    .line 66
    invoke-virtual {v3, v2, v4, v1}, Lcom/yandex/metrica/impl/ob/T1;->a(Ljava/util/List;Landroid/os/ResultReceiver;Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception v2

    .line 72
    monitor-exit v1

    .line 73
    throw v2

    .line 74
    :catchall_1
    move-exception v1

    .line 75
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    throw v1
.end method
