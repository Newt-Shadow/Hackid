.class public final enum Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CRASHPAD:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

.field public static final enum UNKNOWN:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

.field private static final synthetic a:[Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;->UNKNOWN:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    .line 10
    .line 11
    new-instance v1, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    .line 12
    .line 13
    const-string v2, "CRASHPAD"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;->CRASHPAD:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;->a:[Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;
    .locals 1

    const-class v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    return-object p0
.end method

.method public static values()[Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;->a:[Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    return-object v0
.end method
