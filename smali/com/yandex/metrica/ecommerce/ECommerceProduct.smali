.class public Lcom/yandex/metrica/ecommerce/ECommerceProduct;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private d:Ljava/util/Map;

.field private e:Lcom/yandex/metrica/ecommerce/ECommercePrice;

.field private f:Lcom/yandex/metrica/ecommerce/ECommercePrice;

.field private g:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getActualPrice()Lcom/yandex/metrica/ecommerce/ECommercePrice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->e:Lcom/yandex/metrica/ecommerce/ECommercePrice;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCategoriesPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOriginalPrice()Lcom/yandex/metrica/ecommerce/ECommercePrice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->f:Lcom/yandex/metrica/ecommerce/ECommercePrice;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayload()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->d:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPromocodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setActualPrice(Lcom/yandex/metrica/ecommerce/ECommercePrice;)Lcom/yandex/metrica/ecommerce/ECommerceProduct;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->e:Lcom/yandex/metrica/ecommerce/ECommercePrice;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCategoriesPath(Ljava/util/List;)Lcom/yandex/metrica/ecommerce/ECommerceProduct;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/metrica/ecommerce/ECommerceProduct;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/yandex/metrica/ecommerce/ECommerceProduct;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOriginalPrice(Lcom/yandex/metrica/ecommerce/ECommercePrice;)Lcom/yandex/metrica/ecommerce/ECommerceProduct;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->f:Lcom/yandex/metrica/ecommerce/ECommercePrice;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPayload(Ljava/util/Map;)Lcom/yandex/metrica/ecommerce/ECommerceProduct;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/metrica/ecommerce/ECommerceProduct;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->d:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPromocodes(Ljava/util/List;)Lcom/yandex/metrica/ecommerce/ECommerceProduct;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/metrica/ecommerce/ECommerceProduct;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

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
    const-string v1, "ECommerceProduct{sku=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->a:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->b:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->c:Ljava/util/List;

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
    iget-object v1, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->d:Ljava/util/Map;

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
    iget-object v1, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->e:Lcom/yandex/metrica/ecommerce/ECommercePrice;

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
    iget-object v1, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->f:Lcom/yandex/metrica/ecommerce/ECommercePrice;

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
    iget-object v1, p0, Lcom/yandex/metrica/ecommerce/ECommerceProduct;->g:Ljava/util/List;

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
