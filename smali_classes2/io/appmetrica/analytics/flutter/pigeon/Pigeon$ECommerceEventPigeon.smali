.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECommerceEventPigeon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon$Builder;
    }
.end annotation


# instance fields
.field private cartItem:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;

.field private eventType:Ljava/lang/String;

.field private order:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;

.field private product:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

.field private referrer:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

.field private screen:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;-><init>()V

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
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->setEventType(Ljava/lang/String;)V

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
    const/4 v2, 0x0

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    move-object v1, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    check-cast v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-static {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->setCartItem(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    move-object v1, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    check-cast v1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-static {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :goto_1
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->setOrder(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;)V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x3

    .line 54
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    move-object v1, v2

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    check-cast v1, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-static {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_2
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->setProduct(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;)V

    .line 69
    .line 70
    .line 71
    const/4 v1, 0x4

    .line 72
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    move-object v1, v2

    .line 79
    goto :goto_3

    .line 80
    :cond_3
    check-cast v1, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-static {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    :goto_3
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->setReferrer(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;)V

    .line 87
    .line 88
    .line 89
    const/4 v1, 0x5

    .line 90
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    if-nez p0, :cond_4

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_4
    check-cast p0, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-static {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    :goto_4
    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->setScreen(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;)V

    .line 104
    .line 105
    .line 106
    return-object v0
.end method


# virtual methods
.method public getCartItem()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->cartItem:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->eventType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOrder()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->order:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProduct()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->product:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReferrer()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->referrer:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScreen()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->screen:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCartItem(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->cartItem:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;

    .line 2
    .line 3
    return-void
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->eventType:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"eventType\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setOrder(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->order:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;

    .line 2
    .line 3
    return-void
.end method

.method public setProduct(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->product:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    .line 2
    .line 3
    return-void
.end method

.method public setReferrer(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->referrer:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

    .line 2
    .line 3
    return-void
.end method

.method public setScreen(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->screen:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;

    .line 2
    .line 3
    return-void
.end method

.method toList()Ljava/util/ArrayList;
    .locals 3
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
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->eventType:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->cartItem:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    move-object v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceCartItemPigeon;->toList()Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->order:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    move-object v1, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceOrderPigeon;->toList()Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->product:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    move-object v1, v2

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceProductPigeon;->toList()Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->referrer:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;

    .line 53
    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    move-object v1, v2

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    invoke-virtual {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceReferrerPigeon;->toList()Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceEventPigeon;->screen:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;

    .line 66
    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_4
    invoke-virtual {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceScreenPigeon;->toList()Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    :goto_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    return-object v0
.end method
