.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdRevenuePigeon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon$Builder;
    }
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
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;-><init>()V

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
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setAdRevenue(Ljava/lang/String;)V

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
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setCurrency(Ljava/lang/String;)V

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
    if-nez v1, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;->values()[Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v1, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    aget-object v1, v2, v1

    .line 46
    .line 47
    :goto_0
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setAdType(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;)V

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setAdNetwork(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x4

    .line 61
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setAdUnitId(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 v1, 0x5

    .line 71
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setAdUnitName(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 v1, 0x6

    .line 81
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setAdPlacementId(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 v1, 0x7

    .line 91
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setAdPlacementName(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/16 v1, 0x8

    .line 101
    .line 102
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setPrecision(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const/16 v1, 0x9

    .line 112
    .line 113
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    check-cast p0, Ljava/util/Map;

    .line 118
    .line 119
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->setPayload(Ljava/util/Map;)V

    .line 120
    .line 121
    .line 122
    return-object v0
.end method


# virtual methods
.method public getAdNetwork()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adNetwork:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdPlacementId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adPlacementId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdPlacementName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adPlacementName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdRevenue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adRevenue:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdType()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adType:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adUnitId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdUnitName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adUnitName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->currency:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayload()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->payload:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrecision()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->precision:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAdNetwork(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adNetwork:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdPlacementId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adPlacementId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdPlacementName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adPlacementName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdRevenue(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adRevenue:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"adRevenue\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setAdType(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adType:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;

    .line 2
    .line 3
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adUnitId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdUnitName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adUnitName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->currency:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"currency\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setPayload(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->payload:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setPrecision(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->precision:Ljava/lang/String;

    .line 2
    .line 3
    return-void
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
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adRevenue:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->currency:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adType:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget v1, v1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;->index:I

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adNetwork:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adUnitId:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adUnitName:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adPlacementId:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->adPlacementName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->precision:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->payload:Ljava/util/Map;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    return-object v0
.end method
