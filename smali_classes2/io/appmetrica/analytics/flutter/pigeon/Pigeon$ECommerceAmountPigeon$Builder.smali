.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private amount:Ljava/lang/String;

.field private currency:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon$Builder;->amount:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;->setAmount(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon$Builder;->currency:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;->setCurrency(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon$Builder;->amount:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCurrency(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon$Builder;->currency:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
