.class Lio/appmetrica/analytics/flutter/utils/Converter$2;
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
        "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;",
        "Lio/appmetrica/analytics/AdType;",
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
    sget-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;->UNKNOWN:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;->NATIVE:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;

    .line 11
    .line 12
    sget-object v1, Lio/appmetrica/analytics/AdType;->NATIVE:Lio/appmetrica/analytics/AdType;

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    sget-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;->BANNER:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;

    .line 18
    .line 19
    sget-object v1, Lio/appmetrica/analytics/AdType;->BANNER:Lio/appmetrica/analytics/AdType;

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;->REWARDED:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;

    .line 25
    .line 26
    sget-object v1, Lio/appmetrica/analytics/AdType;->REWARDED:Lio/appmetrica/analytics/AdType;

    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    sget-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;->INTERSTITIAL:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;

    .line 32
    .line 33
    sget-object v1, Lio/appmetrica/analytics/AdType;->INTERSTITIAL:Lio/appmetrica/analytics/AdType;

    .line 34
    .line 35
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    sget-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;->MREC:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;

    .line 39
    .line 40
    sget-object v1, Lio/appmetrica/analytics/AdType;->MREC:Lio/appmetrica/analytics/AdType;

    .line 41
    .line 42
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    sget-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;->APP_OPEN:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;

    .line 46
    .line 47
    sget-object v1, Lio/appmetrica/analytics/AdType;->APP_OPEN:Lio/appmetrica/analytics/AdType;

    .line 48
    .line 49
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    sget-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;->OTHER:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AdTypePigeon;

    .line 53
    .line 54
    sget-object v1, Lio/appmetrica/analytics/AdType;->OTHER:Lio/appmetrica/analytics/AdType;

    .line 55
    .line 56
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    return-void
.end method
