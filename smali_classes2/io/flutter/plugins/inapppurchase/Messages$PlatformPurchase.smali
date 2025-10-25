.class public final Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlatformPurchase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase$Builder;
    }
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
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;-><init>()V

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
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setOrderId(Ljava/lang/String;)V

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
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setPackageName(Ljava/lang/String;)V

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
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setPurchaseTime(Ljava/lang/Long;)V

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
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setPurchaseToken(Ljava/lang/String;)V

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
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setSignature(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x5

    .line 57
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/util/List;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setProducts(Ljava/util/List;)V

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x6

    .line 67
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setIsAutoRenewing(Ljava/lang/Boolean;)V

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x7

    .line 77
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setOriginalJson(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/16 v1, 0x8

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setDeveloperPayload(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/16 v1, 0x9

    .line 98
    .line 99
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setIsAcknowledged(Ljava/lang/Boolean;)V

    .line 106
    .line 107
    .line 108
    const/16 v1, 0xa

    .line 109
    .line 110
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Ljava/lang/Long;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setQuantity(Ljava/lang/Long;)V

    .line 117
    .line 118
    .line 119
    const/16 v1, 0xb

    .line 120
    .line 121
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setPurchaseState(Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;)V

    .line 128
    .line 129
    .line 130
    const/16 v1, 0xc

    .line 131
    .line 132
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    .line 137
    .line 138
    invoke-virtual {v0, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->setAccountIdentifiers(Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;)V

    .line 139
    .line 140
    .line 141
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
    const-class v2, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;

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
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;

    .line 19
    .line 20
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->orderId:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->orderId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->packageName:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->packageName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->purchaseTime:Ljava/lang/Long;

    .line 41
    .line 42
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->purchaseTime:Ljava/lang/Long;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->purchaseToken:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->purchaseToken:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->signature:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->signature:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->products:Ljava/util/List;

    .line 71
    .line 72
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->products:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->isAutoRenewing:Ljava/lang/Boolean;

    .line 81
    .line 82
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->isAutoRenewing:Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->originalJson:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->originalJson:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->developerPayload:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->developerPayload:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->isAcknowledged:Ljava/lang/Boolean;

    .line 111
    .line 112
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->isAcknowledged:Ljava/lang/Boolean;

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_2

    .line 119
    .line 120
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->quantity:Ljava/lang/Long;

    .line 121
    .line 122
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->quantity:Ljava/lang/Long;

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_2

    .line 129
    .line 130
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->purchaseState:Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;

    .line 131
    .line 132
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->purchaseState:Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_2

    .line 139
    .line 140
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->accountIdentifiers:Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    .line 141
    .line 142
    iget-object p1, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->accountIdentifiers:Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    .line 143
    .line 144
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_2

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_2
    move v0, v1

    .line 152
    :goto_0
    return v0

    .line 153
    :cond_3
    :goto_1
    return v1
.end method

.method public getAccountIdentifiers()Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->accountIdentifiers:Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->developerPayload:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsAcknowledged()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->isAcknowledged:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsAutoRenewing()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->isAutoRenewing:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->orderId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->originalJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->products:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPurchaseState()Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->purchaseState:Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPurchaseTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->purchaseTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPurchaseToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->purchaseToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getQuantity()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->quantity:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->signature:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 13

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->orderId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->purchaseTime:Ljava/lang/Long;

    .line 6
    .line 7
    iget-object v3, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->purchaseToken:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->signature:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->products:Ljava/util/List;

    .line 12
    .line 13
    iget-object v6, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->isAutoRenewing:Ljava/lang/Boolean;

    .line 14
    .line 15
    iget-object v7, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->originalJson:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->developerPayload:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->isAcknowledged:Ljava/lang/Boolean;

    .line 20
    .line 21
    iget-object v10, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->quantity:Ljava/lang/Long;

    .line 22
    .line 23
    iget-object v11, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->purchaseState:Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;

    .line 24
    .line 25
    iget-object v12, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->accountIdentifiers:Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    .line 26
    .line 27
    filled-new-array/range {v0 .. v12}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0
.end method

.method public setAccountIdentifiers(Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->accountIdentifiers:Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    .line 2
    .line 3
    return-void
.end method

.method public setDeveloperPayload(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->developerPayload:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"developerPayload\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setIsAcknowledged(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->isAcknowledged:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"isAcknowledged\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setIsAutoRenewing(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->isAutoRenewing:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"isAutoRenewing\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->orderId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOriginalJson(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->originalJson:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"originalJson\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"packageName\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setProducts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->products:Ljava/util/List;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"products\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setPurchaseState(Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->purchaseState:Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"purchaseState\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setPurchaseTime(Ljava/lang/Long;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->purchaseTime:Ljava/lang/Long;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"purchaseTime\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setPurchaseToken(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->purchaseToken:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"purchaseToken\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setQuantity(Ljava/lang/Long;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->quantity:Ljava/lang/Long;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"quantity\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->signature:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"signature\" is null."

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
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->orderId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->purchaseTime:Ljava/lang/Long;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->purchaseToken:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->signature:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->products:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->isAutoRenewing:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->originalJson:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->developerPayload:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->isAcknowledged:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->quantity:Ljava/lang/Long;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->purchaseState:Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchaseState;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchase;->accountIdentifiers:Lio/flutter/plugins/inapppurchase/Messages$PlatformAccountIdentifiers;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    return-object v0
.end method
