.class Lio/flutter/plugins/inapppurchase/Translator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static currencySymbolFromCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method static fromAlternativeBillingOnlyReportingDetails(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/b;)Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/h;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse$Builder;->setBillingResult(Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;)Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/b;->a()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-virtual {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse$Builder;->setExternalTransactionToken(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method static fromBillingConfig(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/f;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lio/flutter/plugins/inapppurchase/Translator;->fromBillingResult(Lcom/android/billingclient/api/h;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse$Builder;->setBillingResult(Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/f;->a()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-virtual {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse$Builder;->setCountryCode(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method static fromBillingResult(Lcom/android/billingclient/api/h;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;
    .locals 3

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/billingclient/api/h;->b()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-long v1, v1

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult$Builder;->setResponseCode(Ljava/lang/Long;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/android/billingclient/api/h;->a()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method static fromOneTimePurchaseOfferDetails(Lcom/android/billingclient/api/i$a;)Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;

    .line 6
    .line 7
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/billingclient/api/i$a;->b()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;->setPriceAmountMicros(Ljava/lang/Long;)Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/android/billingclient/api/i$a;->c()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;->setPriceCurrencyCode(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/android/billingclient/api/i$a;->a()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;->setFormattedPrice(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method static fromPricingPhase(Lcom/android/billingclient/api/i$b;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;
    .locals 3

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/billingclient/api/i$b;->c()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->setFormattedPrice(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/android/billingclient/api/i$b;->e()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->setPriceCurrencyCode(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/android/billingclient/api/i$b;->d()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->setPriceAmountMicros(Ljava/lang/Long;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lcom/android/billingclient/api/i$b;->a()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    int-to-long v1, v1

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->setBillingCycleCount(Ljava/lang/Long;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/android/billingclient/api/i$b;->b()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->setBillingPeriod(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/android/billingclient/api/i$b;->f()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    invoke-static {p0}, Lio/flutter/plugins/inapppurchase/Translator;->toPlatformRecurrenceMode(I)Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v0, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->setRecurrenceMode(Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method

.method static fromPricingPhases(Lcom/android/billingclient/api/i$c;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/i$c;",
            ")",
            "Ljava/util/List<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/billingclient/api/i$c;->a()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/billingclient/api/i$b;

    .line 25
    .line 26
    invoke-static {v1}, Lio/flutter/plugins/inapppurchase/Translator;->fromPricingPhase(Lcom/android/billingclient/api/i$b;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object v0
.end method

.method static fromProductDetail(Lcom/android/billingclient/api/i;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/billingclient/api/i;->g()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->setTitle(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/android/billingclient/api/i;->a()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->setDescription(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/android/billingclient/api/i;->d()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->setProductId(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/android/billingclient/api/i;->e()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Lio/flutter/plugins/inapppurchase/Translator;->toPlatformProductType(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->setProductType(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->setName(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/android/billingclient/api/i;->c()Lcom/android/billingclient/api/i$a;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lio/flutter/plugins/inapppurchase/Translator;->fromOneTimePurchaseOfferDetails(Lcom/android/billingclient/api/i$a;)Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->setOneTimePurchaseOfferDetails(Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/android/billingclient/api/i;->f()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Lio/flutter/plugins/inapppurchase/Translator;->fromSubscriptionOfferDetailsList(Ljava/util/List;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v0, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->setSubscriptionOfferDetails(Ljava/util/List;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method static fromProductDetailsList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)",
            "Ljava/util/List<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/billingclient/api/i;

    .line 28
    .line 29
    invoke-static {v1}, Lio/flutter/plugins/inapppurchase/Translator;->fromProductDetail(Lcom/android/billingclient/api/i;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0
.end method

.method static fromPurchase(Lcom/android/billingclient/api/Purchase;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;
    .locals 3

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->c()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->setOrderId(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->setPackageName(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->h()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->setPurchaseTime(Ljava/lang/Long;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->i()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->setPurchaseToken(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->k()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->setSignature(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->f()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->setProducts(Ljava/util/List;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->n()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->setIsAutoRenewing(Ljava/lang/Boolean;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->d()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->setOriginalJson(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->setDeveloperPayload(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->m()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->setIsAcknowledged(Ljava/lang/Boolean;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->g()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-static {v1}, Lio/flutter/plugins/inapppurchase/Translator;->toPlatformPurchaseState(I)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->setPurchaseState(Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->j()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    int-to-long v1, v1

    .line 115
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->setQuantity(Ljava/lang/Long;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->a()Lcom/android/billingclient/api/a;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    if-eqz p0, :cond_0

    .line 128
    .line 129
    new-instance v1, Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers$Builder;

    .line 130
    .line 131
    invoke-direct {v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers$Builder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->a()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers$Builder;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->b()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {v1, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {v0, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->setAccountIdentifiers(Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;

    .line 155
    .line 156
    .line 157
    :cond_0
    invoke-virtual {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    return-object p0
.end method

.method static fromPurchaseHistoryRecord(Lcom/android/billingclient/api/PurchaseHistoryRecord;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;
    .locals 3

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->d()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->setPurchaseTime(Ljava/lang/Long;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->e()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->setPurchaseToken(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->g()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->setSignature(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->c()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->setProducts(Ljava/util/List;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->setDeveloperPayload(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->setOriginalJson(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->f()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    int-to-long v1, p0

    .line 63
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v0, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->setQuantity(Ljava/lang/Long;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method

.method static fromPurchaseHistoryRecordList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;)",
            "Ljava/util/List<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 28
    .line 29
    invoke-static {v1}, Lio/flutter/plugins/inapppurchase/Translator;->fromPurchaseHistoryRecord(Lcom/android/billingclient/api/PurchaseHistoryRecord;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0
.end method

.method static fromPurchasesList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)",
            "Ljava/util/List<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 28
    .line 29
    invoke-static {v1}, Lio/flutter/plugins/inapppurchase/Translator;->fromPurchase(Lcom/android/billingclient/api/Purchase;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0
.end method

.method static fromSubscriptionOfferDetails(Lcom/android/billingclient/api/i$d;)Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/billingclient/api/i$d;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;->setOfferId(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/android/billingclient/api/i$d;->a()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;->setBasePlanId(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/android/billingclient/api/i$d;->c()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;->setOfferTags(Ljava/util/List;)Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/android/billingclient/api/i$d;->d()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;->setOfferToken(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/android/billingclient/api/i$d;->e()Lcom/android/billingclient/api/i$c;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lio/flutter/plugins/inapppurchase/Translator;->fromPricingPhases(Lcom/android/billingclient/api/i$c;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v0, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;->setPricingPhases(Ljava/util/List;)Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method static fromSubscriptionOfferDetailsList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i$d;",
            ">;)",
            "Ljava/util/List<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/billingclient/api/i$d;

    .line 25
    .line 26
    invoke-static {v1}, Lio/flutter/plugins/inapppurchase/Translator;->fromSubscriptionOfferDetails(Lcom/android/billingclient/api/i$d;)Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-object v0
.end method

.method static fromUserChoiceDetails(Lcom/android/billingclient/api/l;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/billingclient/api/l;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails$Builder;->setExternalTransactionToken(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/android/billingclient/api/l;->b()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails$Builder;->setOriginalExternalTransactionId(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/android/billingclient/api/l;->c()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lio/flutter/plugins/inapppurchase/Translator;->fromUserChoiceProductsList(Ljava/util/List;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails$Builder;->setProducts(Ljava/util/List;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method static fromUserChoiceProduct(Lcom/android/billingclient/api/l$a;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/billingclient/api/l$a;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;->setId(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/android/billingclient/api/l$a;->b()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;->setOfferToken(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/android/billingclient/api/l$a;->c()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lio/flutter/plugins/inapppurchase/Translator;->toPlatformProductType(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;->setType(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;->build()Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method static fromUserChoiceProductsList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/l$a;",
            ">;)",
            "Ljava/util/List<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/billingclient/api/l$a;

    .line 32
    .line 33
    invoke-static {v1}, Lio/flutter/plugins/inapppurchase/Translator;->fromUserChoiceProduct(Lcom/android/billingclient/api/l$a;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object v0
.end method

.method static toPlatformProductType(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x360a33

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const v1, 0x5fb1edc

    .line 12
    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "inapp"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const-string v0, "subs"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    move p0, v2

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    const/4 p0, -0x1

    .line 38
    :goto_1
    if-eq p0, v2, :cond_3

    .line 39
    .line 40
    sget-object p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;->INAPP:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_3
    sget-object p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;->SUBS:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 44
    .line 45
    return-object p0
.end method

.method static toPlatformPurchaseState(I)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;->UNSPECIFIED:Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;->PENDING:Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    sget-object p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;->PURCHASED:Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    sget-object p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;->UNSPECIFIED:Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;

    .line 19
    .line 20
    return-object p0
.end method

.method static toPlatformRecurrenceMode(I)Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;->NON_RECURRING:Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    sget-object p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;->NON_RECURRING:Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    sget-object p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;->FINITE_RECURRING:Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_2
    sget-object p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;->INFINITE_RECURRING:Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;

    .line 20
    .line 21
    return-object p0
.end method

.method static toProduct(Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;)Lcom/android/billingclient/api/j$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/j$b;->a()Lcom/android/billingclient/api/j$b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;->getProductId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/j$b$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/j$b$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;->getProductType()Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lio/flutter/plugins/inapppurchase/Translator;->toProductTypeString(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/j$b$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/j$b$a;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/android/billingclient/api/j$b$a;->a()Lcom/android/billingclient/api/j$b;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method static toProductList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/j$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;

    .line 21
    .line 22
    invoke-static {v1}, Lio/flutter/plugins/inapppurchase/Translator;->toProduct(Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;)Lcom/android/billingclient/api/j$b;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-object v0
.end method

.method static toProductTypeString(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lio/flutter/plugins/inapppurchase/Translator$1;->$SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformProductType:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const-string p0, "subs"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "Unknown product type: "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const/4 v1, 0x0

    .line 38
    const-string v2, "UNKNOWN_TYPE"

    .line 39
    .line 40
    invoke-direct {v0, v2, p0, v1}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    const-string p0, "inapp"

    .line 45
    .line 46
    return-object p0
.end method
