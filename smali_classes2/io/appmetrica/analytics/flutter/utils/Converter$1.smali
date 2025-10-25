.class Lio/appmetrica/analytics/flutter/utils/Converter$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/utils/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;",
        "Lio/appmetrica/analytics/profile/GenderAttribute$Gender;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;->MALE:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 5
    .line 6
    sget-object v1, Lio/appmetrica/analytics/profile/GenderAttribute$Gender;->MALE:Lio/appmetrica/analytics/profile/GenderAttribute$Gender;

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;->FEMALE:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 12
    .line 13
    sget-object v1, Lio/appmetrica/analytics/profile/GenderAttribute$Gender;->FEMALE:Lio/appmetrica/analytics/profile/GenderAttribute$Gender;

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    sget-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;->OTHER:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 19
    .line 20
    sget-object v1, Lio/appmetrica/analytics/profile/GenderAttribute$Gender;->OTHER:Lio/appmetrica/analytics/profile/GenderAttribute$Gender;

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method
