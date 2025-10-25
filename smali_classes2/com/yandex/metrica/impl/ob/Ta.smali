.class public Lcom/yandex/metrica/impl/ob/Ta;
.super Lcom/yandex/metrica/ecommerce/ECommerceEvent;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:Lcom/yandex/metrica/impl/ob/Ua;

.field private final d:Lcom/yandex/metrica/impl/ob/Fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Fa;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/yandex/metrica/impl/ob/Ua;Lcom/yandex/metrica/impl/ob/Fa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yandex/metrica/impl/ob/Ua;",
            "Lcom/yandex/metrica/impl/ob/Fa;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/ecommerce/ECommerceEvent;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/yandex/metrica/impl/ob/Ta;->b:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Ta;->c:Lcom/yandex/metrica/impl/ob/Ua;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Ta;->d:Lcom/yandex/metrica/impl/ob/Fa;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getPublicDescription()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/Ta;->b:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const-string v0, "unknown cart action info"

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const-string v0, "remove cart item info"

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    const-string v0, "add cart item info"

    .line 16
    .line 17
    return-object v0
.end method

.method public toProto()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/Na<",
            "Lcom/yandex/metrica/impl/ob/mf;",
            "Lcom/yandex/metrica/impl/ob/Vm;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ta;->d:Lcom/yandex/metrica/impl/ob/Fa;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lcom/yandex/metrica/core/api/Converter;->fromModel(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "CartActionInfoEvent{eventType="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/yandex/metrica/impl/ob/Ta;->b:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", cartItem="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ta;->c:Lcom/yandex/metrica/impl/ob/Ua;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", converter="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ta;->d:Lcom/yandex/metrica/impl/ob/Fa;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x7d

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
