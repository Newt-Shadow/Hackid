.class public final Lcom/yandex/metrica/impl/ob/Y9;
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
.method public a(Lcom/yandex/metrica/impl/ob/If$r;)Lcom/yandex/metrica/impl/ob/si;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/si;

    .line 2
    .line 3
    iget p1, p1, Lcom/yandex/metrica/impl/ob/If$r;->a:I

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/si;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/si;

    .line 2
    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$r;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$r;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/si;->a()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, v0, Lcom/yandex/metrica/impl/ob/If$r;->a:I

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/If$r;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/Y9;->a(Lcom/yandex/metrica/impl/ob/If$r;)Lcom/yandex/metrica/impl/ob/si;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
