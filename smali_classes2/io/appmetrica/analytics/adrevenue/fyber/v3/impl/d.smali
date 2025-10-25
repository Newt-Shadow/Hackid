.class public final Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueProcessor;


# instance fields
.field public final a:Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/c;

.field public final b:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/c;Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/d;->a:Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/c;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/d;->b:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Fyber"

    return-object v0
.end method

.method public final varargs process([Ljava/lang/Object;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-class v2, Lcom/fyber/fairbid/ads/ImpressionData;

    .line 6
    .line 7
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->isArgumentsOfClasses([Ljava/lang/Object;[Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    return v3

    .line 19
    :cond_0
    aget-object v1, v1, v3

    .line 20
    .line 21
    check-cast v1, Lcom/fyber/fairbid/ads/ImpressionData;

    .line 22
    .line 23
    iget-object v2, v0, Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/d;->b:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    .line 24
    .line 25
    invoke-interface {v2}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getInternalClientModuleFacade()Lio/appmetrica/analytics/modulesapi/internal/common/InternalClientModuleFacade;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v4, v0, Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/d;->a:Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/c;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Lcom/fyber/fairbid/ads/ImpressionData;->getPlacementType()Lcom/fyber/fairbid/ads/PlacementType;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    new-instance v15, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;

    .line 39
    .line 40
    invoke-interface {v1}, Lcom/fyber/fairbid/ads/ImpressionData;->getNetPayout()D

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    const-wide/16 v7, 0x0

    .line 45
    .line 46
    invoke-static {v5, v6, v7, v8}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getFiniteDoubleOrDefault(DD)D

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-interface {v1}, Lcom/fyber/fairbid/ads/ImpressionData;->getCurrency()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-static {v5}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const/4 v14, 0x1

    .line 63
    if-nez v4, :cond_1

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    :goto_0
    move-object v8, v5

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    sget-object v5, Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/b;->a:[I

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    aget v5, v5, v8

    .line 75
    .line 76
    if-eq v5, v14, :cond_4

    .line 77
    .line 78
    const/4 v8, 0x2

    .line 79
    if-eq v5, v8, :cond_3

    .line 80
    .line 81
    const/4 v8, 0x3

    .line 82
    if-eq v5, v8, :cond_2

    .line 83
    .line 84
    sget-object v5, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->OTHER:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    sget-object v5, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->INTERSTITIAL:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    sget-object v5, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->REWARDED:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    sget-object v5, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->BANNER:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :goto_1
    invoke-interface {v1}, Lcom/fyber/fairbid/ads/ImpressionData;->getDemandSource()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-interface {v1}, Lcom/fyber/fairbid/ads/ImpressionData;->getCreativeId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-interface {v1}, Lcom/fyber/fairbid/ads/ImpressionData;->getPriceAccuracy()Lcom/fyber/fairbid/ads/ImpressionData$PriceAccuracy;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    new-instance v13, Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/a;

    .line 113
    .line 114
    invoke-direct {v13, v4}, Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/a;-><init>(Lcom/fyber/fairbid/ads/PlacementType;)V

    .line 115
    .line 116
    .line 117
    const/4 v11, 0x0

    .line 118
    const/4 v12, 0x0

    .line 119
    const/4 v4, 0x0

    .line 120
    const/16 v16, 0x1

    .line 121
    .line 122
    move-object v5, v15

    .line 123
    move-object/from16 v17, v13

    .line 124
    .line 125
    move-object v13, v4

    .line 126
    move v4, v14

    .line 127
    move-object v14, v1

    .line 128
    move-object v1, v15

    .line 129
    move-object/from16 v15, v17

    .line 130
    .line 131
    invoke-direct/range {v5 .. v16}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 132
    .line 133
    .line 134
    invoke-interface {v2, v1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalClientModuleFacade;->reportAdRevenue(Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;)V

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getMainPublicOrAnonymousLogger()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    new-array v2, v3, [Ljava/lang/Object;

    .line 142
    .line 143
    const-string v3, "Ad Revenue from Fyber was reported"

    .line 144
    .line 145
    invoke-virtual {v1, v3, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    return v4
.end method
