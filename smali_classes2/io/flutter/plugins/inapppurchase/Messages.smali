.class public Lio/flutter/plugins/inapppurchase/Messages;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/inapppurchase/Messages$FlutterError;,
        Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;,
        Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseApi;,
        Lio/flutter/plugins/inapppurchase/Messages$VoidResult;,
        Lio/flutter/plugins/inapppurchase/Messages$NullableResult;,
        Lio/flutter/plugins/inapppurchase/Messages$Result;,
        Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformSubscriptionOfferDetails;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryResponse;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingConfigResponse;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformOneTimePurchaseOfferDetails;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformQueryProduct;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;,
        Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;,
        Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static createConnectionError(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$FlutterError;
    .locals 3

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Unable to establish connection on channel: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, "."

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v1, ""

    .line 26
    .line 27
    const-string v2, "channel-error"

    .line 28
    .line 29
    invoke-direct {v0, v2, p0, v1}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method protected static wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    instance-of v1, p0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast p0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 12
    .line 13
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;->code:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;->details:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v2, "Cause: "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, ", Stacktrace: "

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :goto_0
    return-object v0
.end method
