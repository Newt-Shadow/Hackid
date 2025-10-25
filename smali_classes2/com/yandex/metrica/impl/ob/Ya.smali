.class public Lcom/yandex/metrica/impl/ob/Ya;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/yandex/metrica/impl/ob/Xa;

.field public final f:Lcom/yandex/metrica/impl/ob/Xa;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/ecommerce/ECommerceProduct;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->getCategoriesPath()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->getPayload()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->getActualPrice()Lcom/yandex/metrica/ecommerce/ECommercePrice;

    move-result-object v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    move-object v6, v5

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/Xa;

    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->getActualPrice()Lcom/yandex/metrica/ecommerce/ECommercePrice;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/yandex/metrica/impl/ob/Xa;-><init>(Lcom/yandex/metrica/ecommerce/ECommercePrice;)V

    move-object v6, v0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->getOriginalPrice()Lcom/yandex/metrica/ecommerce/ECommercePrice;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v7, v5

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Xa;

    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->getOriginalPrice()Lcom/yandex/metrica/ecommerce/ECommercePrice;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/yandex/metrica/impl/ob/Xa;-><init>(Lcom/yandex/metrica/ecommerce/ECommercePrice;)V

    move-object v7, v0

    .line 7
    :goto_1
    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->getPromocodes()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    move-object v0, p0

    move-object v5, v6

    move-object v6, v7

    move-object v7, p1

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/yandex/metrica/impl/ob/Ya;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/yandex/metrica/impl/ob/Xa;Lcom/yandex/metrica/impl/ob/Xa;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/yandex/metrica/impl/ob/Xa;Lcom/yandex/metrica/impl/ob/Xa;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/Xa;",
            "Lcom/yandex/metrica/impl/ob/Xa;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ya;->a:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Ya;->b:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Ya;->c:Ljava/util/List;

    .line 13
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Ya;->d:Ljava/util/Map;

    .line 14
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Ya;->e:Lcom/yandex/metrica/impl/ob/Xa;

    .line 15
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/Ya;->f:Lcom/yandex/metrica/impl/ob/Xa;

    .line 16
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/Ya;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ProductWrapper{sku=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ya;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", name=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Ya;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", categoriesPath="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ya;->c:Ljava/util/List;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", payload="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ya;->d:Ljava/util/Map;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", actualPrice="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ya;->e:Lcom/yandex/metrica/impl/ob/Xa;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", originalPrice="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ya;->f:Lcom/yandex/metrica/impl/ob/Xa;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", promocodes="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Ya;->g:Ljava/util/List;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const/16 v1, 0x7d

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0
.end method
