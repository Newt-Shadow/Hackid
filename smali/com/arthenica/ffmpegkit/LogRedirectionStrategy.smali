.class public final enum Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

.field public static final enum ALWAYS_PRINT_LOGS:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

.field public static final enum NEVER_PRINT_LOGS:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

.field public static final enum PRINT_LOGS_WHEN_GLOBAL_CALLBACK_NOT_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

.field public static final enum PRINT_LOGS_WHEN_NO_CALLBACKS_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

.field public static final enum PRINT_LOGS_WHEN_SESSION_CALLBACK_NOT_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;


# direct methods
.method private static synthetic $values()[Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;
    .locals 5

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->ALWAYS_PRINT_LOGS:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 2
    .line 3
    sget-object v1, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->PRINT_LOGS_WHEN_NO_CALLBACKS_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 4
    .line 5
    sget-object v2, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->PRINT_LOGS_WHEN_GLOBAL_CALLBACK_NOT_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 6
    .line 7
    sget-object v3, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->PRINT_LOGS_WHEN_SESSION_CALLBACK_NOT_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 8
    .line 9
    sget-object v4, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->NEVER_PRINT_LOGS:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

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
    new-instance v0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 2
    .line 3
    const-string v1, "ALWAYS_PRINT_LOGS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->ALWAYS_PRINT_LOGS:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 10
    .line 11
    new-instance v0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 12
    .line 13
    const-string v1, "PRINT_LOGS_WHEN_NO_CALLBACKS_DEFINED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->PRINT_LOGS_WHEN_NO_CALLBACKS_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 20
    .line 21
    new-instance v0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 22
    .line 23
    const-string v1, "PRINT_LOGS_WHEN_GLOBAL_CALLBACK_NOT_DEFINED"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->PRINT_LOGS_WHEN_GLOBAL_CALLBACK_NOT_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 30
    .line 31
    new-instance v0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 32
    .line 33
    const-string v1, "PRINT_LOGS_WHEN_SESSION_CALLBACK_NOT_DEFINED"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->PRINT_LOGS_WHEN_SESSION_CALLBACK_NOT_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 40
    .line 41
    new-instance v0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 42
    .line 43
    const-string v1, "NEVER_PRINT_LOGS"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->NEVER_PRINT_LOGS:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 50
    .line 51
    invoke-static {}, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->$values()[Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->$VALUES:[Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 56
    .line 57
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;
    .locals 1

    .line 1
    const-class v0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;
    .locals 1

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->$VALUES:[Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 8
    .line 9
    return-object v0
.end method
