.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cartItem:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;

.field private eventType:Ljava/lang/String;

.field private order:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;

.field private product:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

.field private referrer:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

.field private screen:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;->eventType:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->setEventType(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;->cartItem:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->setCartItem(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;->order:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->setOrder(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;->product:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->setProduct(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;->referrer:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->setReferrer(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;->screen:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->setScreen(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public setCartItem(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;->cartItem:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEventType(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;->eventType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOrder(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;->order:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProduct(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;->product:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    .line 2
    .line 3
    return-object p0
.end method

.method public setReferrer(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;->referrer:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

    .line 2
    .line 3
    return-object p0
.end method

.method public setScreen(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;->screen:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;

    .line 2
    .line 3
    return-object p0
.end method
