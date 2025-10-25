.class public final Lcom/yandex/metrica/impl/ob/jd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/kd;
.implements Lcom/yandex/metrica/impl/ob/ki;


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/yandex/metrica/modules/api/ModuleEntryPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/jd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lcom/yandex/metrica/modules/api/ModuleEntryPoint;

    .line 6
    invoke-interface {v2}, Lcom/yandex/metrica/modules/api/ModuleEntryPoint;->a()Lcom/yandex/metrica/modules/api/RemoteConfigExtensionConfiguration;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/yandex/metrica/modules/api/RemoteConfigExtensionConfiguration;->e()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lyc/e0;->t(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    move-result-object v2

    .line 7
    :goto_1
    invoke-static {v1, v2}, Lyc/m;->v(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v1}, Lyc/e0;->o(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/gi;Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 3

    .line 9
    new-instance v0, Lcom/yandex/metrica/impl/ob/id;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/id;-><init>(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 10
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/jd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/modules/api/ModuleEntryPoint;

    .line 12
    invoke-interface {v1}, Lcom/yandex/metrica/modules/api/ModuleEntryPoint;->a()Lcom/yandex/metrica/modules/api/RemoteConfigExtensionConfiguration;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 13
    invoke-interface {v1}, Lcom/yandex/metrica/modules/api/ModuleEntryPoint;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/id;->a(Ljava/lang/String;)Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;

    move-result-object v1

    .line 14
    invoke-interface {v2}, Lcom/yandex/metrica/modules/api/RemoteConfigExtensionConfiguration;->b()Lcom/yandex/metrica/modules/api/RemoteConfigUpdateListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/yandex/metrica/modules/api/RemoteConfigUpdateListener;->a(Lcom/yandex/metrica/modules/api/ModuleFullRemoteConfig;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/yandex/metrica/modules/api/ModuleEntryPoint;

    .line 23
    .line 24
    invoke-interface {v2}, Lcom/yandex/metrica/modules/api/ModuleEntryPoint;->a()Lcom/yandex/metrica/modules/api/RemoteConfigExtensionConfiguration;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {v2}, Lcom/yandex/metrica/modules/api/RemoteConfigExtensionConfiguration;->d()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_1
    invoke-static {v1, v2}, Lyc/m;->v(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-object v1
.end method

.method public c()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/hd;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/jd;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/yandex/metrica/modules/api/ModuleEntryPoint;

    .line 23
    .line 24
    invoke-interface {v2}, Lcom/yandex/metrica/modules/api/ModuleEntryPoint;->a()Lcom/yandex/metrica/modules/api/RemoteConfigExtensionConfiguration;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-interface {v2}, Lcom/yandex/metrica/modules/api/ModuleEntryPoint;->getIdentifier()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v4, Lcom/yandex/metrica/impl/ob/hd;

    .line 35
    .line 36
    invoke-direct {v4, v3}, Lcom/yandex/metrica/impl/ob/hd;-><init>(Lcom/yandex/metrica/modules/api/RemoteConfigExtensionConfiguration;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v4}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v2, 0x0

    .line 45
    :goto_1
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-static {v1}, Lyc/e0;->o(Ljava/lang/Iterable;)Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
