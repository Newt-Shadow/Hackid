.class public final Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private accountIdentifiers:Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

.field private developerPayload:Ljava/lang/String;

.field private isAcknowledged:Ljava/lang/Boolean;

.field private isAutoRenewing:Ljava/lang/Boolean;

.field private orderId:Ljava/lang/String;

.field private originalJson:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private purchaseState:Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;

.field private purchaseTime:Ljava/lang/Long;

.field private purchaseToken:Ljava/lang/String;

.field private quantity:Ljava/lang/Long;

.field private signature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->orderId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setOrderId(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setPackageName(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->purchaseTime:Ljava/lang/Long;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setPurchaseTime(Ljava/lang/Long;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->purchaseToken:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setPurchaseToken(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->signature:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setSignature(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->products:Ljava/util/List;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setProducts(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->isAutoRenewing:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setIsAutoRenewing(Ljava/lang/Boolean;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->originalJson:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setOriginalJson(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->developerPayload:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setDeveloperPayload(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->isAcknowledged:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setIsAcknowledged(Ljava/lang/Boolean;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->quantity:Ljava/lang/Long;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setQuantity(Ljava/lang/Long;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->purchaseState:Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setPurchaseState(Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->accountIdentifiers:Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setAccountIdentifiers(Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;)V

    .line 69
    .line 70
    .line 71
    return-object v0
.end method

.method public setAccountIdentifiers(Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->accountIdentifiers:Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDeveloperPayload(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->developerPayload:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsAcknowledged(Ljava/lang/Boolean;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->isAcknowledged:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsAutoRenewing(Ljava/lang/Boolean;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->isAutoRenewing:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOrderId(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->orderId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOriginalJson(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->originalJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProducts(Ljava/util/List;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;"
        }
    .end annotation

    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->products:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPurchaseState(Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->purchaseState:Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPurchaseTime(Ljava/lang/Long;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->purchaseTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPurchaseToken(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->purchaseToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setQuantity(Ljava/lang/Long;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->quantity:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;->signature:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
