.class public Lio/appmetrica/analytics/flutter/utils/Converter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final adTypeToNative:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;",
            "Lio/appmetrica/analytics/AdType;",
            ">;"
        }
    .end annotation
.end field

.field private static final genderToNative:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;",
            "Lio/appmetrica/analytics/profile/GenderAttribute$Gender;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/utils/Converter$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/utils/Converter$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/appmetrica/analytics/flutter/utils/Converter;->genderToNative:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Lio/appmetrica/analytics/flutter/utils/Converter$2;

    .line 9
    .line 10
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/utils/Converter$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/appmetrica/analytics/flutter/utils/Converter;->adTypeToNative:Ljava/util/Map;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;)Landroid/location/Location;
    .locals 3

    .line 105
    new-instance v0, Landroid/location/Location;

    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->getLongitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 107
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 108
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->getAltitude()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->getCourse()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    .line 112
    :cond_1
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->getTimestamp()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 114
    :cond_2
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->getAccuracy()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 115
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 116
    :cond_3
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->getSpeed()Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 117
    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/location/Location;->setSpeed(F)V

    :cond_4
    return-object v0
.end method

.method public static toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;)Lio/appmetrica/analytics/AdRevenue;
    .locals 3

    .line 205
    new-instance v0, Ljava/math/BigDecimal;

    .line 206
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->getAdRevenue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    .line 208
    invoke-static {v0, v1}, Lio/appmetrica/analytics/AdRevenue;->newBuilder(Ljava/math/BigDecimal;Ljava/util/Currency;)Lio/appmetrica/analytics/AdRevenue$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->getAdType()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 210
    sget-object v2, Lio/appmetrica/analytics/flutter/utils/Converter;->adTypeToNative:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/AdType;

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AdRevenue$Builder;->withAdType(Lio/appmetrica/analytics/AdType;)Lio/appmetrica/analytics/AdRevenue$Builder;

    .line 212
    :cond_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->getAdNetwork()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AdRevenue$Builder;->withAdNetwork(Ljava/lang/String;)Lio/appmetrica/analytics/AdRevenue$Builder;

    .line 214
    :cond_1
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 215
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AdRevenue$Builder;->withAdUnitId(Ljava/lang/String;)Lio/appmetrica/analytics/AdRevenue$Builder;

    .line 216
    :cond_2
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->getAdUnitName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 217
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AdRevenue$Builder;->withAdUnitName(Ljava/lang/String;)Lio/appmetrica/analytics/AdRevenue$Builder;

    .line 218
    :cond_3
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->getAdPlacementId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 219
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AdRevenue$Builder;->withAdPlacementId(Ljava/lang/String;)Lio/appmetrica/analytics/AdRevenue$Builder;

    .line 220
    :cond_4
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->getAdPlacementName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 221
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AdRevenue$Builder;->withAdPlacementName(Ljava/lang/String;)Lio/appmetrica/analytics/AdRevenue$Builder;

    .line 222
    :cond_5
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->getPrecision()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 223
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AdRevenue$Builder;->withPrecision(Ljava/lang/String;)Lio/appmetrica/analytics/AdRevenue$Builder;

    .line 224
    :cond_6
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdRevenuePigeon;->getPayload()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 225
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/AdRevenue$Builder;->withPayload(Ljava/util/Map;)Lio/appmetrica/analytics/AdRevenue$Builder;

    .line 226
    :cond_7
    invoke-virtual {v0}, Lio/appmetrica/analytics/AdRevenue$Builder;->build()Lio/appmetrica/analytics/AdRevenue;

    move-result-object p0

    return-object p0
.end method

.method public static toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;)Lio/appmetrica/analytics/AppMetricaConfig;
    .locals 4

    .line 19
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/AppMetricaConfig;->newConfigBuilder(Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getAdvIdentifiersTracking()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAdvIdentifiersTracking(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 22
    :cond_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getAnrMonitoring()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAnrMonitoring(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 24
    :cond_1
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getAnrMonitoringTimeout()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAnrMonitoringTimeout(I)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 26
    :cond_2
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getAppBuildNumber()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 27
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAppBuildNumber(I)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 28
    :cond_3
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getAppEnvironment()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 29
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 31
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 32
    invoke-virtual {v0, v3, v2}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    goto :goto_0

    .line 33
    :cond_5
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getAppOpenTrackingEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 34
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAppOpenTrackingEnabled(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 35
    :cond_6
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 36
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAppVersion(Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 37
    :cond_7
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getCrashReporting()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 38
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withCrashReporting(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 39
    :cond_8
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getCustomHosts()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 40
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withCustomHosts(Ljava/util/List;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 41
    :cond_9
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getDataSendingEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 42
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withDataSendingEnabled(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 43
    :cond_a
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 44
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withDeviceType(Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 45
    :cond_b
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getDispatchPeriodSeconds()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 46
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withDispatchPeriodSeconds(I)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 47
    :cond_c
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getErrorEnvironment()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 48
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 51
    invoke-virtual {v0, v3, v2}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withErrorEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    goto :goto_1

    .line 52
    :cond_e
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getFirstActivationAsUpdate()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 53
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->handleFirstActivationAsUpdate(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 54
    :cond_f
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getLocation()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 55
    invoke-static {v1}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withLocation(Landroid/location/Location;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 56
    :cond_10
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getLocationTracking()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 57
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withLocationTracking(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 58
    :cond_11
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getLogs()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 59
    invoke-virtual {v0}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withLogs()Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 60
    :cond_12
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getMaxReportsCount()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 61
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withMaxReportsCount(I)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 62
    :cond_13
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getMaxReportsInDatabaseCount()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 63
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withMaxReportsInDatabaseCount(I)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 64
    :cond_14
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getNativeCrashReporting()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 65
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withNativeCrashReporting(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 66
    :cond_15
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getPreloadInfo()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 67
    invoke-static {v1}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;)Lio/appmetrica/analytics/PreloadInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withPreloadInfo(Lio/appmetrica/analytics/PreloadInfo;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 68
    :cond_16
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getRevenueAutoTrackingEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 69
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withRevenueAutoTrackingEnabled(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 70
    :cond_17
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getSessionTimeout()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 71
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withSessionTimeout(I)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 72
    :cond_18
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getSessionsAutoTrackingEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 73
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withSessionsAutoTrackingEnabled(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 74
    :cond_19
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->getUserProfileID()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 75
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withUserProfileID(Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 76
    :cond_1a
    invoke-virtual {v0}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->build()Lio/appmetrica/analytics/AppMetricaConfig;

    move-result-object p0

    return-object p0
.end method

.method public static toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;)Lio/appmetrica/analytics/PreloadInfo;
    .locals 3

    .line 98
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/PreloadInfo;->newBuilder(Ljava/lang/String;)Lio/appmetrica/analytics/PreloadInfo$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;->getAdditionalInfo()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 100
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 102
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/PreloadInfo$Builder;->setAdditionalParams(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/PreloadInfo$Builder;

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v0}, Lio/appmetrica/analytics/PreloadInfo$Builder;->build()Lio/appmetrica/analytics/PreloadInfo;

    move-result-object p0

    return-object p0
.end method

.method public static toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;)Lio/appmetrica/analytics/ReporterConfig;
    .locals 4

    .line 77
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/ReporterConfig;->newConfigBuilder(Ljava/lang/String;)Lio/appmetrica/analytics/ReporterConfig$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->getAppEnvironment()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 79
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 81
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v0, v3, v2}, Lio/appmetrica/analytics/ReporterConfig$Builder;->withAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/ReporterConfig$Builder;

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->getDataSendingEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->withDataSendingEnabled(Z)Lio/appmetrica/analytics/ReporterConfig$Builder;

    .line 85
    :cond_2
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->getDispatchPeriodSeconds()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 86
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->withDispatchPeriodSeconds(I)Lio/appmetrica/analytics/ReporterConfig$Builder;

    .line 87
    :cond_3
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->getLogs()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 88
    invoke-virtual {v0}, Lio/appmetrica/analytics/ReporterConfig$Builder;->withLogs()Lio/appmetrica/analytics/ReporterConfig$Builder;

    .line 89
    :cond_4
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->getMaxReportsCount()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 90
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->withMaxReportsCount(I)Lio/appmetrica/analytics/ReporterConfig$Builder;

    .line 91
    :cond_5
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->getMaxReportsInDatabaseCount()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 92
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->withMaxReportsInDatabaseCount(I)Lio/appmetrica/analytics/ReporterConfig$Builder;

    .line 93
    :cond_6
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->getSessionTimeout()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 94
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->withSessionTimeout(I)Lio/appmetrica/analytics/ReporterConfig$Builder;

    .line 95
    :cond_7
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->getUserProfileID()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 96
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/ReporterConfig$Builder;->withUserProfileID(Ljava/lang/String;)Lio/appmetrica/analytics/ReporterConfig$Builder;

    .line 97
    :cond_8
    invoke-virtual {v0}, Lio/appmetrica/analytics/ReporterConfig$Builder;->build()Lio/appmetrica/analytics/ReporterConfig;

    move-result-object p0

    return-object p0
.end method

.method public static toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;)Lio/appmetrica/analytics/Revenue;
    .locals 3

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigDecimal;

    const v2, 0xf4240

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lio/appmetrica/analytics/Revenue;->newBuilder(JLjava/util/Currency;)Lio/appmetrica/analytics/Revenue$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;->getProductId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/Revenue$Builder;->withProductID(Ljava/lang/String;)Lio/appmetrica/analytics/Revenue$Builder;

    .line 7
    :cond_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;->getPayload()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/Revenue$Builder;->withPayload(Ljava/lang/String;)Lio/appmetrica/analytics/Revenue$Builder;

    .line 9
    :cond_1
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;->getQuantity()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/Revenue$Builder;->withQuantity(Ljava/lang/Integer;)Lio/appmetrica/analytics/Revenue$Builder;

    .line 11
    :cond_2
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;->getReceipt()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 12
    invoke-static {}, Lio/appmetrica/analytics/Revenue$Receipt;->newBuilder()Lio/appmetrica/analytics/Revenue$Receipt$Builder;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;->getData()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/Revenue$Receipt$Builder;->withData(Ljava/lang/String;)Lio/appmetrica/analytics/Revenue$Receipt$Builder;

    .line 15
    :cond_3
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;->getSignature()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 16
    invoke-virtual {v1, p0}, Lio/appmetrica/analytics/Revenue$Receipt$Builder;->withSignature(Ljava/lang/String;)Lio/appmetrica/analytics/Revenue$Receipt$Builder;

    .line 17
    :cond_4
    invoke-virtual {v1}, Lio/appmetrica/analytics/Revenue$Receipt$Builder;->build()Lio/appmetrica/analytics/Revenue$Receipt;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/Revenue$Builder;->withReceipt(Lio/appmetrica/analytics/Revenue$Receipt;)Lio/appmetrica/analytics/Revenue$Builder;

    .line 18
    :cond_5
    invoke-virtual {v0}, Lio/appmetrica/analytics/Revenue$Builder;->build()Lio/appmetrica/analytics/Revenue;

    move-result-object p0

    return-object p0
.end method

.method public static toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ExternalAttributionPigeon;)Lio/appmetrica/analytics/flutter/utils/FlutterExternalAttribution;
    .locals 3

    .line 227
    new-instance v0, Lio/appmetrica/analytics/flutter/utils/Converter$3;

    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/utils/Converter$3;-><init>()V

    .line 228
    new-instance v1, Lio/appmetrica/analytics/flutter/utils/FlutterExternalAttribution;

    .line 229
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ExternalAttributionPigeon;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v2, Lorg/json/JSONObject;

    .line 230
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ExternalAttributionPigeon;->getData()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lio/appmetrica/analytics/flutter/utils/FlutterExternalAttribution;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method public static toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;)Lio/appmetrica/analytics/plugins/PluginErrorDetails;
    .locals 3

    .line 194
    new-instance v0, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;

    invoke-direct {v0}, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;-><init>()V

    .line 195
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;->getExceptionClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;->withExceptionClass(Ljava/lang/String;)Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;->withMessage(Ljava/lang/String;)Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;

    move-result-object v0

    const-string v1, "flutter"

    .line 197
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;->withPlatform(Ljava/lang/String;)Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;->getDartVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;->withVirtualMachineVersion(Ljava/lang/String;)Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;->getBacktrace()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;

    .line 202
    invoke-static {v2}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;)Lio/appmetrica/analytics/plugins/StackTraceItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;->withStacktrace(Ljava/util/List;)Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;

    .line 204
    :cond_1
    invoke-virtual {v0}, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;->build()Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    move-result-object p0

    return-object p0
.end method

.method public static toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;)Lio/appmetrica/analytics/plugins/StackTraceItem;
    .locals 2

    .line 187
    new-instance v0, Lio/appmetrica/analytics/plugins/StackTraceItem$Builder;

    invoke-direct {v0}, Lio/appmetrica/analytics/plugins/StackTraceItem$Builder;-><init>()V

    .line 188
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/plugins/StackTraceItem$Builder;->withFileName(Ljava/lang/String;)Lio/appmetrica/analytics/plugins/StackTraceItem$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/plugins/StackTraceItem$Builder;->withClassName(Ljava/lang/String;)Lio/appmetrica/analytics/plugins/StackTraceItem$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/plugins/StackTraceItem$Builder;->withMethodName(Ljava/lang/String;)Lio/appmetrica/analytics/plugins/StackTraceItem$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;->getLine()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/plugins/StackTraceItem$Builder;->withLine(Ljava/lang/Integer;)Lio/appmetrica/analytics/plugins/StackTraceItem$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;->getColumn()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/plugins/StackTraceItem$Builder;->withColumn(Ljava/lang/Integer;)Lio/appmetrica/analytics/plugins/StackTraceItem$Builder;

    move-result-object p0

    .line 193
    invoke-virtual {p0}, Lio/appmetrica/analytics/plugins/StackTraceItem$Builder;->build()Lio/appmetrica/analytics/plugins/StackTraceItem;

    move-result-object p0

    return-object p0
.end method

.method public static toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfilePigeon;)Lio/appmetrica/analytics/profile/UserProfile;
    .locals 8

    .line 118
    invoke-static {}, Lio/appmetrica/analytics/profile/UserProfile;->newBuilder()Lio/appmetrica/analytics/profile/UserProfile$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfilePigeon;->getAttributes()Ljava/util/List;

    move-result-object p0

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;

    .line 122
    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getType()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 123
    sget-object v4, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$flutter$pigeon$Pigeon$UserProfileAttributeType:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const-string v4, ""

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 124
    :pswitch_0
    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/appmetrica/analytics/profile/Attribute;->customString(Ljava/lang/String;)Lio/appmetrica/analytics/profile/StringAttribute;

    move-result-object v3

    .line 125
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getReset()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 126
    invoke-virtual {v3}, Lio/appmetrica/analytics/profile/StringAttribute;->withValueReset()Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getStringValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v4, v6

    .line 128
    :cond_2
    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getIfUndefined()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/profile/StringAttribute;->withValueIfUndefined(Ljava/lang/String;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/profile/StringAttribute;->withValue(Ljava/lang/String;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :pswitch_1
    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/appmetrica/analytics/profile/Attribute;->customNumber(Ljava/lang/String;)Lio/appmetrica/analytics/profile/NumberAttribute;

    move-result-object v3

    .line 132
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getReset()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 133
    invoke-virtual {v3}, Lio/appmetrica/analytics/profile/NumberAttribute;->withValueReset()Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_4
    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getDoubleValue()Ljava/lang/Double;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 135
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 136
    :cond_5
    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getIfUndefined()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 137
    invoke-virtual {v3, v6, v7}, Lio/appmetrica/analytics/profile/NumberAttribute;->withValueIfUndefined(D)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 138
    :cond_6
    invoke-virtual {v3, v6, v7}, Lio/appmetrica/analytics/profile/NumberAttribute;->withValue(D)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 139
    :pswitch_2
    invoke-static {}, Lio/appmetrica/analytics/profile/Attribute;->notificationsEnabled()Lio/appmetrica/analytics/profile/NotificationsEnabledAttribute;

    move-result-object v3

    .line 140
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getReset()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 141
    invoke-virtual {v3}, Lio/appmetrica/analytics/profile/BooleanAttribute;->withValueReset()Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 142
    :cond_7
    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getBoolValue()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 143
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 144
    :cond_8
    invoke-virtual {v3, v5}, Lio/appmetrica/analytics/profile/BooleanAttribute;->withValue(Z)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 145
    :pswitch_3
    invoke-static {}, Lio/appmetrica/analytics/profile/Attribute;->name()Lio/appmetrica/analytics/profile/NameAttribute;

    move-result-object v3

    .line 146
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getReset()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 147
    invoke-virtual {v3}, Lio/appmetrica/analytics/profile/StringAttribute;->withValueReset()Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 148
    :cond_9
    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getStringValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object v4, v2

    .line 149
    :cond_a
    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/profile/StringAttribute;->withValue(Ljava/lang/String;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 150
    :pswitch_4
    invoke-static {}, Lio/appmetrica/analytics/profile/Attribute;->gender()Lio/appmetrica/analytics/profile/GenderAttribute;

    move-result-object v3

    .line 151
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getReset()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 152
    invoke-virtual {v3}, Lio/appmetrica/analytics/profile/GenderAttribute;->withValueReset()Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 153
    :cond_b
    sget-object v4, Lio/appmetrica/analytics/flutter/utils/Converter;->genderToNative:Ljava/util/Map;

    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getGenderValue()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/profile/GenderAttribute$Gender;

    if-eqz v2, :cond_c

    goto :goto_1

    .line 154
    :cond_c
    sget-object v2, Lio/appmetrica/analytics/profile/GenderAttribute$Gender;->OTHER:Lio/appmetrica/analytics/profile/GenderAttribute$Gender;

    .line 155
    :goto_1
    invoke-virtual {v3, v2}, Lio/appmetrica/analytics/profile/GenderAttribute;->withValue(Lio/appmetrica/analytics/profile/GenderAttribute$Gender;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 156
    :pswitch_5
    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/appmetrica/analytics/profile/Attribute;->customCounter(Ljava/lang/String;)Lio/appmetrica/analytics/profile/CounterAttribute;

    move-result-object v3

    .line 157
    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getDoubleValue()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 158
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 159
    :cond_d
    invoke-virtual {v3, v6, v7}, Lio/appmetrica/analytics/profile/CounterAttribute;->withDelta(D)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 160
    :pswitch_6
    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/appmetrica/analytics/profile/Attribute;->customBoolean(Ljava/lang/String;)Lio/appmetrica/analytics/profile/BooleanAttribute;

    move-result-object v3

    .line 161
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getReset()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 162
    invoke-virtual {v3}, Lio/appmetrica/analytics/profile/BooleanAttribute;->withValueReset()Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 163
    :cond_e
    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getBoolValue()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 164
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 165
    :cond_f
    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getIfUndefined()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 166
    invoke-virtual {v3, v5}, Lio/appmetrica/analytics/profile/BooleanAttribute;->withValueIfUndefined(Z)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 167
    :cond_10
    invoke-virtual {v3, v5}, Lio/appmetrica/analytics/profile/BooleanAttribute;->withValue(Z)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 168
    :pswitch_7
    invoke-static {}, Lio/appmetrica/analytics/profile/Attribute;->birthDate()Lio/appmetrica/analytics/profile/BirthDateAttribute;

    move-result-object v3

    .line 169
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getReset()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 170
    invoke-virtual {v3}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->withValueReset()Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 171
    :cond_11
    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getYear()Ljava/lang/Long;

    move-result-object v4

    .line 172
    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getMonth()Ljava/lang/Long;

    move-result-object v5

    .line 173
    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getDay()Ljava/lang/Long;

    move-result-object v6

    .line 174
    invoke-virtual {v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->getAge()Ljava/lang/Long;

    move-result-object v2

    if-nez v4, :cond_12

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->withAge(I)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_12
    if-nez v5, :cond_13

    .line 176
    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->withBirthDate(I)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_13
    if-nez v6, :cond_14

    .line 177
    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v2

    .line 178
    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v4

    .line 179
    invoke-virtual {v3, v2, v4}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->withBirthDate(II)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 180
    :cond_14
    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v2

    .line 181
    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v4

    .line 182
    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v5

    .line 183
    invoke-virtual {v3, v2, v4, v5}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->withBirthDate(III)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 184
    :cond_15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    if-eqz v1, :cond_16

    .line 185
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/profile/UserProfile$Builder;->apply(Lio/appmetrica/analytics/profile/UserProfileUpdate;)Lio/appmetrica/analytics/profile/UserProfile$Builder;

    goto :goto_2

    .line 186
    :cond_17
    invoke-virtual {v0}, Lio/appmetrica/analytics/profile/UserProfile$Builder;->build()Lio/appmetrica/analytics/profile/UserProfile;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toPigeon(Ljava/util/Map;Lio/appmetrica/analytics/DeferredDeeplinkParametersListener$Error;Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/appmetrica/analytics/DeferredDeeplinkParametersListener$Error;",
            "Ljava/lang/String;",
            ")",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 50
    new-instance p1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon$Builder;

    invoke-direct {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon$Builder;-><init>()V

    .line 51
    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon$Builder;->setParameters(Ljava/util/Map;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon$Builder;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon$Builder;->build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_4

    .line 53
    sget-object p0, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$DeferredDeeplinkParametersListener$Error:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    .line 54
    sget-object p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->UNKNOWN:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    goto :goto_0

    .line 55
    :cond_1
    sget-object p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->NO_REFERRER:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    goto :goto_0

    .line 56
    :cond_2
    sget-object p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->PARSE_ERROR:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    goto :goto_0

    .line 57
    :cond_3
    sget-object p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->NOT_A_FIRST_LAUNCH:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    goto :goto_0

    .line 58
    :cond_4
    sget-object p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->UNKNOWN:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    :goto_0
    if-eqz p1, :cond_5

    .line 59
    invoke-virtual {p1}, Lio/appmetrica/analytics/DeferredDeeplinkParametersListener$Error;->getDescription()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const-string p1, ""

    .line 60
    :goto_1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon$Builder;

    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon$Builder;-><init>()V

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon$Builder;->setParameters(Ljava/util/Map;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon$Builder;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon$Builder;

    invoke-direct {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon$Builder;-><init>()V

    .line 62
    invoke-virtual {v1, p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon$Builder;->setReason(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon$Builder;

    move-result-object p0

    .line 63
    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon$Builder;->setMessage(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon$Builder;

    move-result-object p0

    .line 64
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon$Builder;->setDescription(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon$Builder;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon$Builder;->build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon;

    move-result-object p0

    .line 66
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon$Builder;->setError(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon$Builder;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon$Builder;->build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkParametersPigeon;

    move-result-object p0

    return-object p0
.end method

.method public static toPigeon(Ljava/lang/String;Lio/appmetrica/analytics/DeferredDeeplinkListener$Error;Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon;
    .locals 2

    if-eqz p0, :cond_0

    .line 32
    new-instance p1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon$Builder;

    invoke-direct {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon$Builder;-><init>()V

    .line 33
    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon$Builder;->setDeeplink(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon$Builder;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon$Builder;->build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_4

    .line 35
    sget-object p0, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$DeferredDeeplinkListener$Error:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    .line 36
    sget-object p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->UNKNOWN:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    goto :goto_0

    .line 37
    :cond_1
    sget-object p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->NO_REFERRER:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    goto :goto_0

    .line 38
    :cond_2
    sget-object p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->PARSE_ERROR:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    goto :goto_0

    .line 39
    :cond_3
    sget-object p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->NOT_A_FIRST_LAUNCH:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    goto :goto_0

    .line 40
    :cond_4
    sget-object p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->UNKNOWN:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    :goto_0
    if-eqz p1, :cond_5

    .line 41
    invoke-virtual {p1}, Lio/appmetrica/analytics/DeferredDeeplinkListener$Error;->getDescription()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const-string p1, ""

    .line 42
    :goto_1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon$Builder;

    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon$Builder;-><init>()V

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon$Builder;->setDeeplink(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon$Builder;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon$Builder;

    invoke-direct {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon$Builder;-><init>()V

    .line 44
    invoke-virtual {v1, p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon$Builder;->setReason(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon$Builder;

    move-result-object p0

    .line 45
    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon$Builder;->setMessage(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon$Builder;

    move-result-object p0

    .line 46
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon$Builder;->setDescription(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon$Builder;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon$Builder;->build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon;

    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon$Builder;->setError(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkErrorPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon$Builder;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon$Builder;->build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkPigeon;

    move-result-object p0

    return-object p0
.end method

.method public static toPigeon(Lio/appmetrica/analytics/StartupParamsItem;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;
    .locals 2

    .line 8
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;

    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;-><init>()V

    .line 9
    invoke-virtual {p0}, Lio/appmetrica/analytics/StartupParamsItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;->setId(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lio/appmetrica/analytics/StartupParamsItem;->getStatus()Lio/appmetrica/analytics/StartupParamsItemStatus;

    move-result-object v1

    invoke-static {v1}, Lio/appmetrica/analytics/flutter/utils/Converter;->toPigeon(Lio/appmetrica/analytics/StartupParamsItemStatus;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;->setStatus(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lio/appmetrica/analytics/StartupParamsItem;->getErrorDetails()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;->setErrorDetails(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;->build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;

    move-result-object p0

    return-object p0
.end method

.method public static toPigeon(Lio/appmetrica/analytics/StartupParamsItemStatus;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/flutter/utils/Converter$4;->$SwitchMap$io$appmetrica$analytics$StartupParamsItemStatus:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 2
    sget-object p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;->UNKNOWN_ERROR:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;->FEATURE_DISABLED:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;->NETWORK_ERROR:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;->INVALID_VALUE_FROM_PROVIDER:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;

    return-object p0

    .line 6
    :cond_3
    sget-object p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;->PROVIDER_UNAVAILABLE:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;

    return-object p0

    .line 7
    :cond_4
    sget-object p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;->OK:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;

    return-object p0
.end method

.method public static toPigeon(Lio/appmetrica/analytics/StartupParamsCallback$Result;Lio/appmetrica/analytics/StartupParamsCallback$Reason;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 25
    new-instance p1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;

    invoke-direct {p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;-><init>()V

    if-eqz p0, :cond_0

    .line 26
    invoke-static {p0}, Lio/appmetrica/analytics/flutter/utils/Converter;->toPigeon(Lio/appmetrica/analytics/StartupParamsCallback$Result;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;->setResult(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;->build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;

    move-result-object p0

    return-object p0

    .line 28
    :cond_1
    new-instance v1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;

    invoke-direct {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;-><init>()V

    if-eqz p0, :cond_2

    .line 29
    invoke-static {p0}, Lio/appmetrica/analytics/flutter/utils/Converter;->toPigeon(Lio/appmetrica/analytics/StartupParamsCallback$Result;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;

    move-result-object v0

    :cond_2
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;->setResult(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;

    move-result-object p0

    .line 30
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/utils/Converter;->toPigeon(Lio/appmetrica/analytics/StartupParamsCallback$Reason;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;->setReason(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;

    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;->build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;

    move-result-object p0

    return-object p0
.end method

.method public static toPigeon(Lio/appmetrica/analytics/StartupParamsCallback$Reason;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;
    .locals 1

    .line 22
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon$Builder;

    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon$Builder;-><init>()V

    iget-object p0, p0, Lio/appmetrica/analytics/StartupParamsCallback$Reason;->value:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon$Builder;->setValue(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon$Builder;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon$Builder;->build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;

    move-result-object p0

    return-object p0
.end method

.method public static toPigeon(Lio/appmetrica/analytics/StartupParamsCallback$Result;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;
    .locals 4

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    iget-object v1, p0, Lio/appmetrica/analytics/StartupParamsCallback$Result;->parameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/StartupParamsItem;

    invoke-static {v2}, Lio/appmetrica/analytics/flutter/utils/Converter;->toPigeon(Lio/appmetrica/analytics/StartupParamsItem;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;

    invoke-direct {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;-><init>()V

    iget-object v2, p0, Lio/appmetrica/analytics/StartupParamsCallback$Result;->deviceId:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;->setDeviceId(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/StartupParamsCallback$Result;->deviceIdHash:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;->setDeviceIdHash(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;->setParameters(Ljava/util/Map;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/StartupParamsCallback$Result;->uuid:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;->setUuid(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;->build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;

    move-result-object p0

    return-object p0
.end method
