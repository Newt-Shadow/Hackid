.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationPigeon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon$Builder;
    }
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
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;-><init>()V

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
    check-cast v1, Ljava/lang/Double;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->setLatitude(Ljava/lang/Double;)V

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
    check-cast v1, Ljava/lang/Double;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->setLongitude(Ljava/lang/Double;)V

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
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->setProvider(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/Double;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->setAltitude(Ljava/lang/Double;)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/Double;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->setAccuracy(Ljava/lang/Double;)V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x5

    .line 57
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/Double;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->setCourse(Ljava/lang/Double;)V

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x6

    .line 67
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/Double;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->setSpeed(Ljava/lang/Double;)V

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x7

    .line 77
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    if-nez p0, :cond_0

    .line 82
    .line 83
    const/4 p0, 0x0

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    .line 86
    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    check-cast p0, Ljava/lang/Integer;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    int-to-long v1, p0

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    check-cast p0, Ljava/lang/Long;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 100
    .line 101
    .line 102
    move-result-wide v1

    .line 103
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    :goto_1
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->setTimestamp(Ljava/lang/Long;)V

    .line 108
    .line 109
    .line 110
    return-object v0
.end method


# virtual methods
.method public getAccuracy()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->accuracy:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAltitude()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->altitude:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCourse()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->course:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->latitude:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->longitude:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->provider:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSpeed()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->speed:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->timestamp:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAccuracy(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->accuracy:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setAltitude(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->altitude:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setCourse(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->course:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setLatitude(Ljava/lang/Double;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->latitude:Ljava/lang/Double;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"latitude\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setLongitude(Ljava/lang/Double;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->longitude:Ljava/lang/Double;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"longitude\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->provider:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSpeed(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->speed:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setTimestamp(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->timestamp:Ljava/lang/Long;

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
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->latitude:Ljava/lang/Double;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->longitude:Ljava/lang/Double;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->provider:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->altitude:Ljava/lang/Double;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->accuracy:Ljava/lang/Double;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->course:Ljava/lang/Double;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->speed:Ljava/lang/Double;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->timestamp:Ljava/lang/Long;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-object v0
.end method
