.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private fiat:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;

.field private internalComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon$Builder;->fiat:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;->setFiat(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon$Builder;->internalComponents:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon;->setInternalComponents(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public setFiat(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon$Builder;->fiat:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;

    .line 2
    .line 3
    return-object p0
.end method

.method public setInternalComponents(Ljava/util/List;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommerceAmountPigeon;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ECommercePricePigeon$Builder;->internalComponents:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
