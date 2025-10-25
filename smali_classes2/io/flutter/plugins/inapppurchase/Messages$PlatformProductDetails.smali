.class public final Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlatformProductDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private oneTimePurchaseOfferDetails:Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

.field private productId:Ljava/lang/String;

.field private productType:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

.field private subscriptionOfferDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;-><init>()V

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
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->setDescription(Ljava/lang/String;)V

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
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->setName(Ljava/lang/String;)V

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
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->setProductId(Ljava/lang/String;)V

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
    check-cast v1, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->setProductType(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;)V

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
    check-cast v1, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->setTitle(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x5

    .line 57
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->setOneTimePurchaseOfferDetails(Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;)V

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x6

    .line 67
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Ljava/util/List;

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->setSubscriptionOfferDetails(Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const-class v2, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;

    .line 18
    .line 19
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->description:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->description:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->name:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->name:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->productId:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->productId:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->productType:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 50
    .line 51
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->productType:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->title:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->title:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->oneTimePurchaseOfferDetails:Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

    .line 70
    .line 71
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->oneTimePurchaseOfferDetails:Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

    .line 72
    .line 73
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->subscriptionOfferDetails:Ljava/util/List;

    .line 80
    .line 81
    iget-object p1, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->subscriptionOfferDetails:Ljava/util/List;

    .line 82
    .line 83
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    move v0, v1

    .line 91
    :goto_0
    return v0

    .line 92
    :cond_3
    :goto_1
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOneTimePurchaseOfferDetails()Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->oneTimePurchaseOfferDetails:Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->productId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProductType()Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->productType:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSubscriptionOfferDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->subscriptionOfferDetails:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->description:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->name:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->productId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->productType:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 8
    .line 9
    iget-object v4, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->title:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->oneTimePurchaseOfferDetails:Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

    .line 12
    .line 13
    iget-object v6, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->subscriptionOfferDetails:Ljava/util/List;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->description:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"description\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->name:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"name\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setOneTimePurchaseOfferDetails(Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->oneTimePurchaseOfferDetails:Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

    .line 2
    .line 3
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->productId:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"productId\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setProductType(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->productType:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"productType\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setSubscriptionOfferDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->subscriptionOfferDetails:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->title:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"title\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method toList()Ljava/util/ArrayList;
    .locals 2
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
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->description:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->name:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->productId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->productType:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->title:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->oneTimePurchaseOfferDetails:Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->subscriptionOfferDetails:Ljava/util/List;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    return-object v0
.end method
