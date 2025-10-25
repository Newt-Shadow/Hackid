.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private deviceId:Ljava/lang/String;

.field private deviceIdHash:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;",
            ">;"
        }
    .end annotation
.end field

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;->deviceId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->setDeviceId(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;->deviceIdHash:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->setDeviceIdHash(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;->parameters:Ljava/util/Map;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->setParameters(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;->uuid:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->setUuid(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;->deviceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDeviceIdHash(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;->deviceIdHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setParameters(Ljava/util/Map;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;->parameters:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
