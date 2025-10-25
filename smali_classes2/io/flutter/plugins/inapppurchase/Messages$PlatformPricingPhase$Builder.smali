.class public final Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private billingCycleCount:Ljava/lang/Long;

.field private billingPeriod:Ljava/lang/String;

.field private formattedPrice:Ljava/lang/String;

.field private priceAmountMicros:Ljava/lang/Long;

.field private priceCurrencyCode:Ljava/lang/String;

.field private recurrenceMode:Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->billingCycleCount:Ljava/lang/Long;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->setBillingCycleCount(Ljava/lang/Long;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->recurrenceMode:Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->setRecurrenceMode(Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->priceAmountMicros:Ljava/lang/Long;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->setPriceAmountMicros(Ljava/lang/Long;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->billingPeriod:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->setBillingPeriod(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->formattedPrice:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->setFormattedPrice(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->priceCurrencyCode:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->setPriceCurrencyCode(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public setBillingCycleCount(Ljava/lang/Long;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->billingCycleCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setBillingPeriod(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->billingPeriod:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFormattedPrice(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->formattedPrice:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPriceAmountMicros(Ljava/lang/Long;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->priceAmountMicros:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPriceCurrencyCode(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->priceCurrencyCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRecurrenceMode(Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->recurrenceMode:Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;

    .line 2
    .line 3
    return-object p0
.end method
