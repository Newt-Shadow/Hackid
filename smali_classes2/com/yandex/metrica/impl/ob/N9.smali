.class public final Lcom/yandex/metrica/impl/ob/N9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/Converter;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/jd;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "GlobalServiceLocator.getInstance()"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->j()Lcom/yandex/metrica/impl/ob/jd;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "GlobalServiceLocator.get\u2026tance().modulesController"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/N9;->a:Lcom/yandex/metrica/impl/ob/jd;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a([Lcom/yandex/metrica/impl/ob/If$l;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/yandex/metrica/impl/ob/If$l;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/N9;->a:Lcom/yandex/metrica/impl/ob/jd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/jd;->c()Ljava/util/Map;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 14
    iget-object v5, v4, Lcom/yandex/metrica/impl/ob/If$l;->a:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/metrica/impl/ob/hd;

    if-eqz v5, :cond_0

    .line 15
    iget-object v6, v4, Lcom/yandex/metrica/impl/ob/If$l;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/yandex/metrica/impl/ob/If$l;->b:[B

    invoke-virtual {v5, v4}, Lcom/yandex/metrica/impl/ob/hd;->a([B)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    .line 16
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {v1}, Lyc/e0;->o(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map;)[Lcom/yandex/metrica/impl/ob/If$l;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)[",
            "Lcom/yandex/metrica/impl/ob/If$l;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/N9;->a:Lcom/yandex/metrica/impl/ob/jd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/jd;->c()Ljava/util/Map;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/metrica/impl/ob/hd;

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 6
    new-instance v5, Lcom/yandex/metrica/impl/ob/If$l;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/If$l;-><init>()V

    .line 7
    iput-object v3, v5, Lcom/yandex/metrica/impl/ob/If$l;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v4, v2}, Lcom/yandex/metrica/impl/ob/hd;->a(Ljava/lang/Object;)[B

    move-result-object v2

    iput-object v2, v5, Lcom/yandex/metrica/impl/ob/If$l;->b:[B

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    .line 9
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    new-array p1, p1, [Lcom/yandex/metrica/impl/ob/If$l;

    .line 10
    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, [Lcom/yandex/metrica/impl/ob/If$l;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/N9;->a(Ljava/util/Map;)[Lcom/yandex/metrica/impl/ob/If$l;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lcom/yandex/metrica/impl/ob/If$l;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/N9;->a([Lcom/yandex/metrica/impl/ob/If$l;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
