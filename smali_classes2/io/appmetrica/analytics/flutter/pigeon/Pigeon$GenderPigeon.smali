.class public final enum Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GenderPigeon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

.field public static final enum FEMALE:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

.field public static final enum MALE:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

.field public static final enum OTHER:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

.field public static final enum UNDEFINED:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;


# instance fields
.field final index:I


# direct methods
.method private static synthetic $values()[Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;
    .locals 4

    .line 1
    sget-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;->MALE:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 2
    .line 3
    sget-object v1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;->FEMALE:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 4
    .line 5
    sget-object v2, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;->OTHER:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 6
    .line 7
    sget-object v3, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;->UNDEFINED:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 2
    .line 3
    const-string v1, "MALE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;->MALE:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 10
    .line 11
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 12
    .line 13
    const-string v1, "FEMALE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;->FEMALE:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 20
    .line 21
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 22
    .line 23
    const-string v1, "OTHER"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;->OTHER:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 30
    .line 31
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 32
    .line 33
    const-string v1, "UNDEFINED"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;->UNDEFINED:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 40
    .line 41
    invoke-static {}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;->$values()[Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;->$VALUES:[Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 46
    .line 47
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
    iput p3, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;->index:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;
    .locals 1

    .line 1
    const-class v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;->$VALUES:[Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/appmetrica/analytics/flutter/pigeon/Pigeon$GenderPigeon;

    .line 8
    .line 9
    return-object v0
.end method
