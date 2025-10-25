.class public Lio/appmetrica/analytics/flutter/impl/AppMetricaConfigConverterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigConverterPigeon;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJson(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lio/appmetrica/analytics/flutter/utils/Converter;->toNative(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;)Lio/appmetrica/analytics/AppMetricaConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lio/appmetrica/analytics/AppMetricaConfig;->toJson()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
