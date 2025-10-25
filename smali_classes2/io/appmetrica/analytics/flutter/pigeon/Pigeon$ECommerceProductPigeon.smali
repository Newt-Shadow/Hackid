.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECommerceProductPigeon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon$Builder;
    }
.end annotation


# instance fields
.field private actualPrice:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

.field private categoriesPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private originalPrice:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

.field private payload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private promocodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sku:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->setSku(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->setName(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/List;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->setCategoriesPath(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/util/Map;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->setPayload(Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x0

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    move-object v1, v2

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    check-cast v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-static {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :goto_0
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->setActualPrice(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;)V

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x5

    .line 66
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    check-cast v1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-static {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :goto_1
    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->setOriginalPrice(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;)V

    .line 80
    .line 81
    .line 82
    const/4 v1, 0x6

    .line 83
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Ljava/util/List;

    .line 88
    .line 89
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->setPromocodes(Ljava/util/List;)V

    .line 90
    .line 91
    .line 92
    return-object v0
.end method


# virtual methods
.method public getActualPrice()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->actualPrice:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

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
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->categoriesPath:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOriginalPrice()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->originalPrice:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

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
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->payload:Ljava/util/Map;

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
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->promocodes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->sku:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setActualPrice(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->actualPrice:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    .line 2
    .line 3
    return-void
.end method

.method public setCategoriesPath(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->categoriesPath:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOriginalPrice(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->originalPrice:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    .line 2
    .line 3
    return-void
.end method

.method public setPayload(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->payload:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setPromocodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->promocodes:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setSku(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->sku:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"sku\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method toList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->sku:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->name:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->categoriesPath:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->payload:Ljava/util/Map;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->actualPrice:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    move-object v1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;->toList()Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->originalPrice:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;->toList()Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->promocodes:Ljava/util/List;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    return-object v0
.end method
