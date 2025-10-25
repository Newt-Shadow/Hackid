.class public final Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlatformPricingPhase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase$Builder;
    }
.end annotation


# instance fields
.field private billingCycleCount:Ljava/lang/Long;

.field private billingPeriod:Ljava/lang/String;

.field private formattedPrice:Ljava/lang/String;

.field private priceAmountMicros:Ljava/lang/Long;

.field private priceCurrencyCode:Ljava/lang/String;

.field private recurrenceMode:Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;-><init>()V

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
    check-cast v1, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->setBillingCycleCount(Ljava/lang/Long;)V

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
    check-cast v1, Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->setRecurrenceMode(Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;)V

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
    check-cast v1, Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->setPriceAmountMicros(Ljava/lang/Long;)V

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
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->setBillingPeriod(Ljava/lang/String;)V

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
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->setFormattedPrice(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x5

    .line 57
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->setPriceCurrencyCode(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
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
    const-class v2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;

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
    check-cast p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;

    .line 18
    .line 19
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->billingCycleCount:Ljava/lang/Long;

    .line 20
    .line 21
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->billingCycleCount:Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->recurrenceMode:Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;

    .line 30
    .line 31
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->recurrenceMode:Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->priceAmountMicros:Ljava/lang/Long;

    .line 40
    .line 41
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->priceAmountMicros:Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->billingPeriod:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->billingPeriod:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->formattedPrice:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->formattedPrice:Ljava/lang/String;

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
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->priceCurrencyCode:Ljava/lang/String;

    .line 70
    .line 71
    iget-object p1, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->priceCurrencyCode:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move v0, v1

    .line 81
    :goto_0
    return v0

    .line 82
    :cond_3
    :goto_1
    return v1
.end method

.method public getBillingCycleCount()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->billingCycleCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBillingPeriod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->billingPeriod:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFormattedPrice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->formattedPrice:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPriceAmountMicros()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->priceAmountMicros:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->priceCurrencyCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecurrenceMode()Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->recurrenceMode:Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->billingCycleCount:Ljava/lang/Long;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->recurrenceMode:Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->priceAmountMicros:Ljava/lang/Long;

    .line 6
    .line 7
    iget-object v3, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->billingPeriod:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->formattedPrice:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->priceCurrencyCode:Ljava/lang/String;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public setBillingCycleCount(Ljava/lang/Long;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->billingCycleCount:Ljava/lang/Long;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"billingCycleCount\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setBillingPeriod(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->billingPeriod:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"billingPeriod\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setFormattedPrice(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->formattedPrice:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"formattedPrice\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setPriceAmountMicros(Ljava/lang/Long;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->priceAmountMicros:Ljava/lang/Long;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"priceAmountMicros\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setPriceCurrencyCode(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->priceCurrencyCode:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"priceCurrencyCode\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setRecurrenceMode(Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->recurrenceMode:Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"recurrenceMode\" is null."

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
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->billingCycleCount:Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->recurrenceMode:Lio/flutter/plugins/inapppurchase/Messages$PlatformRecurrenceMode;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->priceAmountMicros:Ljava/lang/Long;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->billingPeriod:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->formattedPrice:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPricingPhase;->priceCurrencyCode:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    return-object v0
.end method
