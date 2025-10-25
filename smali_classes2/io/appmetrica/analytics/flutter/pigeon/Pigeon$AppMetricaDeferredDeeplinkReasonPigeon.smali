.class public final enum Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppMetricaDeferredDeeplinkReasonPigeon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

.field public static final enum NOT_A_FIRST_LAUNCH:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

.field public static final enum NO_ERROR:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

.field public static final enum NO_REFERRER:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

.field public static final enum PARSE_ERROR:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

.field public static final enum UNKNOWN:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;


# instance fields
.field final index:I


# direct methods
.method private static synthetic $values()[Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;
    .locals 5

    .line 1
    sget-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->NOT_A_FIRST_LAUNCH:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 2
    .line 3
    sget-object v1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->PARSE_ERROR:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 4
    .line 5
    sget-object v2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->UNKNOWN:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 6
    .line 7
    sget-object v3, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->NO_REFERRER:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 8
    .line 9
    sget-object v4, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->NO_ERROR:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 2
    .line 3
    const-string v1, "NOT_A_FIRST_LAUNCH"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->NOT_A_FIRST_LAUNCH:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 10
    .line 11
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 12
    .line 13
    const-string v1, "PARSE_ERROR"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->PARSE_ERROR:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 20
    .line 21
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 22
    .line 23
    const-string v1, "UNKNOWN"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->UNKNOWN:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 30
    .line 31
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 32
    .line 33
    const-string v1, "NO_REFERRER"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->NO_REFERRER:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 40
    .line 41
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 42
    .line 43
    const-string v1, "NO_ERROR"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->NO_ERROR:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 50
    .line 51
    invoke-static {}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->$values()[Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->$VALUES:[Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 56
    .line 57
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->index:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;
    .locals 1

    .line 1
    const-class v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->$VALUES:[Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaDeferredDeeplinkReasonPigeon;

    .line 8
    .line 9
    return-object v0
.end method
