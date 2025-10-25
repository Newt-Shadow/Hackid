.class public final Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private formattedPrice:Ljava/lang/String;

.field private priceAmountMicros:Ljava/lang/Long;

.field private priceCurrencyCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;->priceAmountMicros:Ljava/lang/Long;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;->setPriceAmountMicros(Ljava/lang/Long;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;->formattedPrice:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;->setFormattedPrice(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;->priceCurrencyCode:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;->setPriceCurrencyCode(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public setFormattedPrice(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;->formattedPrice:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPriceAmountMicros(Ljava/lang/Long;)Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;->priceAmountMicros:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPriceCurrencyCode(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;->priceCurrencyCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
