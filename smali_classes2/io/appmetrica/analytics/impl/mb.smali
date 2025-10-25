.class public final Lio/appmetrica/analytics/impl/mb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/common/InternalClientModuleFacade;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ad;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/ad;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ad;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/impl/mb;->a:Lio/appmetrica/analytics/impl/ad;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final reportAdRevenue(Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/mb;->a:Lio/appmetrica/analytics/impl/ad;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getAdRevenue()Ljava/math/BigDecimal;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getCurrency()Ljava/util/Currency;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lio/appmetrica/analytics/AdRevenue;->newBuilder(Ljava/math/BigDecimal;Ljava/util/Currency;)Lio/appmetrica/analytics/AdRevenue$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getAdType()Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->values()[Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    .line 23
    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const/4 v1, -0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object v2, Lio/appmetrica/analytics/impl/Zc;->a:[I

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    aget v1, v2, v1

    .line 36
    .line 37
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    :pswitch_0
    new-instance p1, Lxc/i;

    .line 41
    .line 42
    invoke-direct {p1}, Lxc/i;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :pswitch_1
    sget-object v1, Lio/appmetrica/analytics/AdType;->OTHER:Lio/appmetrica/analytics/AdType;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :pswitch_2
    sget-object v1, Lio/appmetrica/analytics/AdType;->APP_OPEN:Lio/appmetrica/analytics/AdType;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :pswitch_3
    sget-object v1, Lio/appmetrica/analytics/AdType;->MREC:Lio/appmetrica/analytics/AdType;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_4
    sget-object v1, Lio/appmetrica/analytics/AdType;->INTERSTITIAL:Lio/appmetrica/analytics/AdType;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :pswitch_5
    sget-object v1, Lio/appmetrica/analytics/AdType;->REWARDED:Lio/appmetrica/analytics/AdType;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :pswitch_6
    sget-object v1, Lio/appmetrica/analytics/AdType;->BANNER:Lio/appmetrica/analytics/AdType;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :pswitch_7
    sget-object v1, Lio/appmetrica/analytics/AdType;->NATIVE:Lio/appmetrica/analytics/AdType;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :pswitch_8
    const/4 v1, 0x0

    .line 68
    :goto_1
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AdRevenue$Builder;->withAdType(Lio/appmetrica/analytics/AdType;)Lio/appmetrica/analytics/AdRevenue$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getAdNetwork()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AdRevenue$Builder;->withAdNetwork(Ljava/lang/String;)Lio/appmetrica/analytics/AdRevenue$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getAdUnitId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AdRevenue$Builder;->withAdUnitId(Ljava/lang/String;)Lio/appmetrica/analytics/AdRevenue$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getAdUnitName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AdRevenue$Builder;->withAdUnitName(Ljava/lang/String;)Lio/appmetrica/analytics/AdRevenue$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getAdPlacementId()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AdRevenue$Builder;->withAdPlacementId(Ljava/lang/String;)Lio/appmetrica/analytics/AdRevenue$Builder;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getAdPlacementName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AdRevenue$Builder;->withAdPlacementName(Ljava/lang/String;)Lio/appmetrica/analytics/AdRevenue$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getPrecision()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AdRevenue$Builder;->withPrecision(Ljava/lang/String;)Lio/appmetrica/analytics/AdRevenue$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getPayload()Ljava/util/Map;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AdRevenue$Builder;->withPayload(Ljava/util/Map;)Lio/appmetrica/analytics/AdRevenue$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lio/appmetrica/analytics/AdRevenue$Builder;->build()Lio/appmetrica/analytics/AdRevenue;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getAutoCollected()Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {v0, p1}, Lio/appmetrica/analytics/ModulesFacade;->reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;Ljava/lang/Boolean;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final reportEvent(Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lio/appmetrica/analytics/ModuleEvent;->newBuilder(I)Lio/appmetrica/analytics/ModuleEvent$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withName(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->getValue()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withValue(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->getServiceDataReporterType()Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withServiceDataReporterType(I)Lio/appmetrica/analytics/ModuleEvent$Builder;

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->getCategory()Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Category;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    sget-object v2, Lio/appmetrica/analytics/impl/lb;->a:[I

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    aget v1, v2, v1

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    if-eq v1, v2, :cond_2

    .line 54
    .line 55
    const/4 v2, 0x2

    .line 56
    if-eq v1, v2, :cond_1

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget-object v1, Lio/appmetrica/analytics/ModuleEvent$Category;->GENERAL:Lio/appmetrica/analytics/ModuleEvent$Category;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    sget-object v1, Lio/appmetrica/analytics/ModuleEvent$Category;->SYSTEM:Lio/appmetrica/analytics/ModuleEvent$Category;

    .line 64
    .line 65
    :goto_0
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withCategory(Lio/appmetrica/analytics/ModuleEvent$Category;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->getExtras()Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withExtras(Ljava/util/Map;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->getAttributes()Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withAttributes(Ljava/util/Map;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->getEnvironment()Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withEnvironment(Ljava/util/Map;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->build()Lio/appmetrica/analytics/ModuleEvent;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Lio/appmetrica/analytics/ModulesFacade;->reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method
