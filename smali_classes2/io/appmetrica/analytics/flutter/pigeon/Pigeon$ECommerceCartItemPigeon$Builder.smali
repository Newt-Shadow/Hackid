.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private product:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

.field private quantity:Ljava/lang/String;

.field private referrer:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

.field private revenue:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon$Builder;->product:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;->setProduct(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon$Builder;->quantity:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;->setQuantity(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon$Builder;->revenue:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;->setRevenue(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon$Builder;->referrer:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;->setReferrer(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public setProduct(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon$Builder;->product:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    .line 2
    .line 3
    return-object p0
.end method

.method public setQuantity(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon$Builder;->quantity:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setReferrer(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon$Builder;->referrer:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRevenue(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon$Builder;->revenue:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    .line 2
    .line 3
    return-object p0
.end method
