.class public final Lcom/yandex/metrica/impl/ob/D9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/Converter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a([B)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/yandex/metrica/impl/ob/zf;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/zf;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/ym/MessageNano;[B)Lcom/google/protobuf/nano/ym/MessageNano;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/zf;

    .line 9
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/zf;->a:[Lcom/yandex/metrica/impl/ob/zf$a;

    const-string v0, "EventExtrasProto.EventEx\u2026s.parseFrom(input).extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    array-length v0, p1

    invoke-static {v0}, Lyc/e0;->b(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lod/g;->b(II)I

    move-result v0

    .line 11
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 12
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 13
    iget-object v4, v3, Lcom/yandex/metrica/impl/ob/zf$a;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/zf$a;->b:[B

    invoke-static {v4, v3}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object v3

    invoke-virtual {v3}, Lxc/k;->c()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lxc/k;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public a(Ljava/util/Map;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)[B"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/zf;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/zf;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v2, v1, [Lcom/yandex/metrica/impl/ob/zf$a;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    new-instance v5, Lcom/yandex/metrica/impl/ob/zf$a;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/zf$a;-><init>()V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/zf;->a:[Lcom/yandex/metrica/impl/ob/zf$a;

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v3, 0x1

    if-gez v3, :cond_1

    invoke-static {}, Lyc/m;->q()V

    :cond_1
    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/zf;->a:[Lcom/yandex/metrica/impl/ob/zf$a;

    aget-object v4, v4, v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/yandex/metrica/impl/ob/zf$a;->a:Ljava/lang/String;

    .line 6
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/zf;->a:[Lcom/yandex/metrica/impl/ob/zf$a;

    aget-object v3, v4, v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v3, Lcom/yandex/metrica/impl/ob/zf$a;->b:[B

    move v3, v2

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v0}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    move-result-object p1

    const-string v0, "MessageNano.toByteArray(proto)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/D9;->a(Ljava/util/Map;)[B

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
    check-cast p1, [B

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/D9;->a([B)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
