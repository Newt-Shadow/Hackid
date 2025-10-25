.class public final Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->description:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->setDescription(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->name:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->setName(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->productId:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->setProductId(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->productType:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->setProductType(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->title:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->setTitle(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->oneTimePurchaseOfferDetails:Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->setOneTimePurchaseOfferDetails(Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->subscriptionOfferDetails:Ljava/util/List;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;->setSubscriptionOfferDetails(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOneTimePurchaseOfferDetails(Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->oneTimePurchaseOfferDetails:Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProductId(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->productId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProductType(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->productType:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSubscriptionOfferDetails(Ljava/util/List;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;",
            ">;)",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;"
        }
    .end annotation

    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->subscriptionOfferDetails:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
