.class public final Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private accountId:Ljava/lang/String;

.field private obfuscatedProfileId:Ljava/lang/String;

.field private offerToken:Ljava/lang/String;

.field private oldProduct:Ljava/lang/String;

.field private product:Ljava/lang/String;

.field private prorationMode:Ljava/lang/Long;

.field private purchaseToken:Ljava/lang/String;

.field private replacementMode:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;->product:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->setProduct(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;->prorationMode:Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->setProrationMode(Ljava/lang/Long;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;->replacementMode:Ljava/lang/Long;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->setReplacementMode(Ljava/lang/Long;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;->offerToken:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->setOfferToken(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;->accountId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->setAccountId(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;->obfuscatedProfileId:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->setObfuscatedProfileId(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;->oldProduct:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->setOldProduct(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;->purchaseToken:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams;->setPurchaseToken(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public setAccountId(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;->accountId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setObfuscatedProfileId(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;->obfuscatedProfileId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOfferToken(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;->offerToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOldProduct(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;->oldProduct:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProduct(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;->product:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProrationMode(Ljava/lang/Long;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;->prorationMode:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPurchaseToken(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;->purchaseToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setReplacementMode(Ljava/lang/Long;)Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingFlowParams$Builder;->replacementMode:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method
