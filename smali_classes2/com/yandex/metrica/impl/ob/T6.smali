.class public Lcom/yandex/metrica/impl/ob/T6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ListConverter;


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/U6;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/U6;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/U6;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/T6;->a:Lcom/yandex/metrica/impl/ob/U6;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)[Lcom/yandex/metrica/impl/ob/jf;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/D6;",
            ">;)[",
            "Lcom/yandex/metrica/impl/ob/jf;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/jf;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/yandex/metrica/impl/ob/D6;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/T6;->a:Lcom/yandex/metrica/impl/ob/U6;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Lcom/yandex/metrica/impl/ob/U6;->a(Lcom/yandex/metrica/impl/ob/D6;)Lcom/yandex/metrica/impl/ob/jf;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    aput-object v2, v0, v1

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/T6;->a(Ljava/util/List;)[Lcom/yandex/metrica/impl/ob/jf;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lcom/yandex/metrica/impl/ob/jf;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
