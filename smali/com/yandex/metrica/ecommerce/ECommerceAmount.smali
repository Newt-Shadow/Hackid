.class public Lcom/yandex/metrica/ecommerce/ECommerceAmount;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/math/BigDecimal;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(DLjava/lang/String;)V
    .locals 3

    .line 2
    new-instance v0, Ljava/math/BigDecimal;

    const-wide/16 v1, 0x0

    invoke-static {p1, p2, v1, v2}, Lcom/yandex/metrica/impl/ob/A2;->a(DD)D

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-direct {p0, v0, p3}, Lcom/yandex/metrica/ecommerce/ECommerceAmount;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/A2;->a(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/yandex/metrica/ecommerce/ECommerceAmount;-><init>(Ljava/math/BigDecimal;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/ecommerce/ECommerceAmount;->a:Ljava/math/BigDecimal;

    .line 5
    iput-object p2, p0, Lcom/yandex/metrica/ecommerce/ECommerceAmount;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/ecommerce/ECommerceAmount;->a:Ljava/math/BigDecimal;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/ecommerce/ECommerceAmount;->b:Ljava/lang/String;

    .line 2
    .line 3
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
    const-string v1, "ECommerceAmount{amount="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/ecommerce/ECommerceAmount;->a:Ljava/math/BigDecimal;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", unit=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/ecommerce/ECommerceAmount;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x27

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x7d

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
