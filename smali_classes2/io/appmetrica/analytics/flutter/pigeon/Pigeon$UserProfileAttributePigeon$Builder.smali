.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private age:Ljava/lang/Long;

.field private boolValue:Ljava/lang/Boolean;

.field private day:Ljava/lang/Long;

.field private doubleValue:Ljava/lang/Double;

.field private genderValue:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

.field private ifUndefined:Ljava/lang/Boolean;

.field private key:Ljava/lang/String;

.field private month:Ljava/lang/Long;

.field private reset:Ljava/lang/Boolean;

.field private stringValue:Ljava/lang/String;

.field private type:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;

.field private year:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->key:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setKey(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->doubleValue:Ljava/lang/Double;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setDoubleValue(Ljava/lang/Double;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->stringValue:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setStringValue(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->boolValue:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setBoolValue(Ljava/lang/Boolean;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->year:Ljava/lang/Long;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setYear(Ljava/lang/Long;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->month:Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setMonth(Ljava/lang/Long;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->day:Ljava/lang/Long;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setDay(Ljava/lang/Long;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->age:Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setAge(Ljava/lang/Long;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->genderValue:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setGenderValue(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->ifUndefined:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setIfUndefined(Ljava/lang/Boolean;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->reset:Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setReset(Ljava/lang/Boolean;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->type:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon;->setType(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public setAge(Ljava/lang/Long;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->age:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setBoolValue(Ljava/lang/Boolean;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->boolValue:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDay(Ljava/lang/Long;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->day:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDoubleValue(Ljava/lang/Double;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->doubleValue:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setGenderValue(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->genderValue:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIfUndefined(Ljava/lang/Boolean;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->ifUndefined:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMonth(Ljava/lang/Long;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->month:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setReset(Ljava/lang/Boolean;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->reset:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->stringValue:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setType(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->type:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributeType;

    .line 2
    .line 3
    return-object p0
.end method

.method public setYear(Ljava/lang/Long;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$UserProfileAttributePigeon$Builder;->year:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method
