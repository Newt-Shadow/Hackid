.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private accuracy:Ljava/lang/Double;

.field private altitude:Ljava/lang/Double;

.field private course:Ljava/lang/Double;

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

.field private provider:Ljava/lang/String;

.field private speed:Ljava/lang/Double;

.field private timestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;->latitude:Ljava/lang/Double;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->setLatitude(Ljava/lang/Double;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;->longitude:Ljava/lang/Double;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->setLongitude(Ljava/lang/Double;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;->provider:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->setProvider(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;->altitude:Ljava/lang/Double;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->setAltitude(Ljava/lang/Double;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;->accuracy:Ljava/lang/Double;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->setAccuracy(Ljava/lang/Double;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;->course:Ljava/lang/Double;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->setCourse(Ljava/lang/Double;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;->speed:Ljava/lang/Double;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->setSpeed(Ljava/lang/Double;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;->timestamp:Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->setTimestamp(Ljava/lang/Long;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public setAccuracy(Ljava/lang/Double;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;->accuracy:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAltitude(Ljava/lang/Double;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;->altitude:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCourse(Ljava/lang/Double;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;->course:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLatitude(Ljava/lang/Double;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;->latitude:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLongitude(Ljava/lang/Double;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;->longitude:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;->provider:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSpeed(Ljava/lang/Double;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;->speed:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTimestamp(Ljava/lang/Long;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;->timestamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method
