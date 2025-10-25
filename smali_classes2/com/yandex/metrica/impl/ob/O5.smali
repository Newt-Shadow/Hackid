.class Lcom/yandex/metrica/impl/ob/O5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


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
.method public a(Lcom/yandex/metrica/impl/ob/N5;)Lcom/yandex/metrica/impl/ob/Af;
    .locals 5

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Af;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Af;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/N5;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/Af;->d:[I

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/N5;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/Af;->d:[I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/N5;->c()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/Af;->c:I

    .line 6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/N5;->d()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/Af;->b:I

    .line 7
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/N5;->e()Z

    move-result p1

    iput-boolean p1, v0, Lcom/yandex/metrica/impl/ob/Af;->a:Z

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/Af;)Lcom/yandex/metrica/impl/ob/N5;
    .locals 4

    .line 8
    new-instance v0, Lcom/yandex/metrica/impl/ob/N5;

    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/Af;->a:Z

    iget v2, p1, Lcom/yandex/metrica/impl/ob/Af;->b:I

    iget v3, p1, Lcom/yandex/metrica/impl/ob/Af;->c:I

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/Af;->d:[I

    .line 9
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a([I)Ljava/util/Set;

    move-result-object p1

    .line 10
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/yandex/metrica/impl/ob/N5;-><init>(ZIILjava/util/Set;)V

    return-object v0
.end method

.method public bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/N5;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/O5;->a(Lcom/yandex/metrica/impl/ob/N5;)Lcom/yandex/metrica/impl/ob/Af;

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
    check-cast p1, Lcom/yandex/metrica/impl/ob/Af;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/O5;->a(Lcom/yandex/metrica/impl/ob/Af;)Lcom/yandex/metrica/impl/ob/N5;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
