.class public Lcom/yandex/metrica/impl/ob/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/yandex/metrica/impl/ob/bb;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/ecommerce/ECommerceReferrer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceReferrer;->getType()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceReferrer;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceReferrer;->getScreen()Lcom/yandex/metrica/ecommerce/ECommerceScreen;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/yandex/metrica/impl/ob/bb;

    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceReferrer;->getScreen()Lcom/yandex/metrica/ecommerce/ECommerceScreen;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/yandex/metrica/impl/ob/bb;-><init>(Lcom/yandex/metrica/ecommerce/ECommerceScreen;)V

    move-object p1, v2

    .line 4
    :goto_0
    invoke-direct {p0, v0, v1, p1}, Lcom/yandex/metrica/impl/ob/ab;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bb;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/bb;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ab;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ab;->b:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ab;->c:Lcom/yandex/metrica/impl/ob/bb;

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
    const-string v1, "ReferrerWrapper{type=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ab;->a:Ljava/lang/String;

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
    const-string v2, ", identifier=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ab;->b:Ljava/lang/String;

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
    const-string v1, ", screen="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ab;->c:Lcom/yandex/metrica/impl/ob/bb;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x7d

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method
