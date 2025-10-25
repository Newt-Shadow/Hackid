.class Lcom/yandex/metrica/impl/ob/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ListConverter;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a([Lcom/yandex/metrica/impl/ob/If$y;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/yandex/metrica/impl/ob/If$y;",
            ")",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/zl;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 10
    aget-object v2, p1, v1

    .line 11
    new-instance v3, Lcom/yandex/metrica/impl/ob/zl;

    iget v4, v2, Lcom/yandex/metrica/impl/ob/If$y;->a:I

    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/zl$b;->a(I)Lcom/yandex/metrica/impl/ob/zl$b;

    move-result-object v4

    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/If$y;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/yandex/metrica/impl/ob/zl;-><init>(Lcom/yandex/metrica/impl/ob/zl$b;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/util/List;)[Lcom/yandex/metrica/impl/ob/If$y;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/zl;",
            ">;)[",
            "Lcom/yandex/metrica/impl/ob/If$y;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/If$y;

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/zl;

    .line 4
    new-instance v3, Lcom/yandex/metrica/impl/ob/If$y;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/If$y;-><init>()V

    .line 5
    iget-object v4, v2, Lcom/yandex/metrica/impl/ob/zl;->a:Lcom/yandex/metrica/impl/ob/zl$b;

    iget v4, v4, Lcom/yandex/metrica/impl/ob/zl$b;->a:I

    iput v4, v3, Lcom/yandex/metrica/impl/ob/If$y;->a:I

    .line 6
    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/zl;->b:Ljava/lang/String;

    iput-object v2, v3, Lcom/yandex/metrica/impl/ob/If$y;->b:Ljava/lang/String;

    .line 7
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ba;->a(Ljava/util/List;)[Lcom/yandex/metrica/impl/ob/If$y;

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
    check-cast p1, [Lcom/yandex/metrica/impl/ob/If$y;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ba;->a([Lcom/yandex/metrica/impl/ob/If$y;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
