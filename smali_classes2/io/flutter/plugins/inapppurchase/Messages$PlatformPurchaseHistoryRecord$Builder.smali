.class public final Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private developerPayload:Ljava/lang/String;

.field private originalJson:Ljava/lang/String;

.field private products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
.method public build()Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->quantity:Ljava/lang/Long;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;->setQuantity(Ljava/lang/Long;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->purchaseTime:Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;->setPurchaseTime(Ljava/lang/Long;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->developerPayload:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;->setDeveloperPayload(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->originalJson:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;->setOriginalJson(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->purchaseToken:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;->setPurchaseToken(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->signature:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;->setSignature(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->products:Ljava/util/List;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord;->setProducts(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public setDeveloperPayload(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->developerPayload:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOriginalJson(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->originalJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProducts(Ljava/util/List;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;"
        }
    .end annotation

    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->products:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPurchaseTime(Ljava/lang/Long;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->purchaseTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPurchaseToken(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->purchaseToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setQuantity(Ljava/lang/Long;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->quantity:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseHistoryRecord$Builder;->signature:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
