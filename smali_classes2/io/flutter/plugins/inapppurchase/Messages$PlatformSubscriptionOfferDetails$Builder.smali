.class public final Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private basePlanId:Ljava/lang/String;

.field private offerId:Ljava/lang/String;

.field private offerTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private offerToken:Ljava/lang/String;

.field private pricingPhases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;->basePlanId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;->setBasePlanId(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;->offerId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;->setOfferId(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;->offerToken:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;->setOfferToken(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;->offerTags:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;->setOfferTags(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;->pricingPhases:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;->setPricingPhases(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public setBasePlanId(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;->basePlanId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOfferId(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;->offerId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOfferTags(Ljava/util/List;)Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;"
        }
    .end annotation

    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;->offerTags:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOfferToken(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;->offerToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPricingPhases(Ljava/util/List;)Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;",
            ">;)",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;"
        }
    .end annotation

    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;->pricingPhases:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
