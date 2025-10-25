.class public Lcom/yandex/metrica/impl/ob/Xa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/metrica/impl/ob/Sa;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/Sa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/ecommerce/ECommercePrice;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Sa;

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommercePrice;->getFiat()Lcom/yandex/metrica/ecommerce/ECommerceAmount;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Sa;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceAmount;)V

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommercePrice;->getInternalComponents()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Xa;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/Xa;-><init>(Lcom/yandex/metrica/impl/ob/Sa;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Sa;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/Sa;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/Sa;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Xa;->a:Lcom/yandex/metrica/impl/ob/Sa;

    .line 7
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Xa;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/ecommerce/ECommerceAmount;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/Sa;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/yandex/metrica/ecommerce/ECommerceAmount;

    .line 23
    .line 24
    new-instance v2, Lcom/yandex/metrica/impl/ob/Sa;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/yandex/metrica/ecommerce/ECommerceAmount;->getAmount()Ljava/math/BigDecimal;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v1}, Lcom/yandex/metrica/ecommerce/ECommerceAmount;->getUnit()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v2, v3, v1}, Lcom/yandex/metrica/impl/ob/Sa;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    :cond_1
    return-object v0
.end method


# virtual methods
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
    const-string v1, "PriceWrapper{fiat="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Xa;->a:Lcom/yandex/metrica/impl/ob/Sa;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", internalComponents="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Xa;->b:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x7d

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
