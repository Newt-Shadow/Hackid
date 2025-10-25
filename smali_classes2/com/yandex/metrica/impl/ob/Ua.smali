.class public Lcom/yandex/metrica/impl/ob/Ua;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/metrica/impl/ob/Ya;

.field public final b:Ljava/math/BigDecimal;

.field public final c:Lcom/yandex/metrica/impl/ob/Xa;

.field public final d:Lcom/yandex/metrica/impl/ob/ab;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/ecommerce/ECommerceCartItem;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ya;

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceCartItem;->getProduct()Lcom/yandex/metrica/ecommerce/ECommerceProduct;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Ya;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceProduct;)V

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceCartItem;->getQuantity()Ljava/math/BigDecimal;

    move-result-object v1

    new-instance v2, Lcom/yandex/metrica/impl/ob/Xa;

    .line 4
    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceCartItem;->getRevenue()Lcom/yandex/metrica/ecommerce/ECommercePrice;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/Xa;-><init>(Lcom/yandex/metrica/ecommerce/ECommercePrice;)V

    .line 5
    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceCartItem;->getReferrer()Lcom/yandex/metrica/ecommerce/ECommerceReferrer;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/yandex/metrica/impl/ob/ab;

    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceCartItem;->getReferrer()Lcom/yandex/metrica/ecommerce/ECommerceReferrer;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/yandex/metrica/impl/ob/ab;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceReferrer;)V

    move-object p1, v3

    .line 6
    :goto_0
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/yandex/metrica/impl/ob/Ua;-><init>(Lcom/yandex/metrica/impl/ob/Ya;Ljava/math/BigDecimal;Lcom/yandex/metrica/impl/ob/Xa;Lcom/yandex/metrica/impl/ob/ab;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Ya;Ljava/math/BigDecimal;Lcom/yandex/metrica/impl/ob/Xa;Lcom/yandex/metrica/impl/ob/ab;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ua;->a:Lcom/yandex/metrica/impl/ob/Ya;

    .line 9
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Ua;->b:Ljava/math/BigDecimal;

    .line 10
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Ua;->c:Lcom/yandex/metrica/impl/ob/Xa;

    .line 11
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Ua;->d:Lcom/yandex/metrica/impl/ob/ab;

    return-void
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
    const-string v1, "CartItemWrapper{product="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ua;->a:Lcom/yandex/metrica/impl/ob/Ya;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", quantity="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ua;->b:Ljava/math/BigDecimal;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", revenue="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ua;->c:Lcom/yandex/metrica/impl/ob/Xa;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", referrer="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ua;->d:Lcom/yandex/metrica/impl/ob/ab;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x7d

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
