.class public Lcom/yandex/metrica/impl/ob/t9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


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
.method public a(Lcom/yandex/metrica/impl/ob/If$b;)Lcom/yandex/metrica/impl/ob/i;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/i;

    .line 2
    .line 3
    iget v1, p1, Lcom/yandex/metrica/impl/ob/If$b;->a:I

    .line 4
    .line 5
    iget p1, p1, Lcom/yandex/metrica/impl/ob/If$b;->b:I

    .line 6
    .line 7
    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/i;-><init>(II)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/i;

    .line 2
    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$b;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$b;-><init>()V

    .line 6
    .line 7
    .line 8
    iget v1, p1, Lcom/yandex/metrica/impl/ob/i;->a:I

    .line 9
    .line 10
    iput v1, v0, Lcom/yandex/metrica/impl/ob/If$b;->a:I

    .line 11
    .line 12
    iget p1, p1, Lcom/yandex/metrica/impl/ob/i;->b:I

    .line 13
    .line 14
    iput p1, v0, Lcom/yandex/metrica/impl/ob/If$b;->b:I

    .line 15
    .line 16
    return-object v0
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/If$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/t9;->a(Lcom/yandex/metrica/impl/ob/If$b;)Lcom/yandex/metrica/impl/ob/i;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
