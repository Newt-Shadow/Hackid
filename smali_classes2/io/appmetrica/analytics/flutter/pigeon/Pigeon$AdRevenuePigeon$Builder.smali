.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adNetwork:Ljava/lang/String;

.field private adPlacementId:Ljava/lang/String;

.field private adPlacementName:Ljava/lang/String;

.field private adRevenue:Ljava/lang/String;

.field private adType:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;

.field private adUnitId:Ljava/lang/String;

.field private adUnitName:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private payload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private precision:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->adRevenue:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setAdRevenue(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->currency:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setCurrency(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->adType:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setAdType(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->adNetwork:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setAdNetwork(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->adUnitId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setAdUnitId(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->adUnitName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setAdUnitName(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->adPlacementId:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setAdPlacementId(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->adPlacementName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setAdPlacementName(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->precision:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setPrecision(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->payload:Ljava/util/Map;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setPayload(Ljava/util/Map;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public setAdNetwork(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->adNetwork:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAdPlacementId(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->adPlacementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAdPlacementName(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->adPlacementName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAdRevenue(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->adRevenue:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAdType(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->adType:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAdUnitId(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->adUnitId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAdUnitName(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->adUnitName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCurrency(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->currency:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPayload(Ljava/util/Map;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->payload:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPrecision(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;->precision:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
