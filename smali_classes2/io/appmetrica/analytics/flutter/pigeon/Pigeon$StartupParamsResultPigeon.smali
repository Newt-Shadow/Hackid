.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StartupParamsResultPigeon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon$Builder;
    }
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

.method static fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;-><init>()V

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
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->setDeviceId(Ljava/lang/String;)V

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
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->setDeviceIdHash(Ljava/lang/String;)V

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
    check-cast v1, Ljava/util/Map;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->setParameters(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->setUuid(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->deviceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeviceIdHash()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->deviceIdHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->parameters:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->deviceId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDeviceIdHash(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->deviceIdHash:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->parameters:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->uuid:Ljava/lang/String;

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
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->deviceId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->deviceIdHash:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->parameters:Ljava/util/Map;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->uuid:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-object v0
.end method
