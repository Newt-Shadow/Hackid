.class public final enum Lcom/arthenica/ffmpegkit/Signal;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/arthenica/ffmpegkit/Signal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/arthenica/ffmpegkit/Signal;

.field public static final enum SIGINT:Lcom/arthenica/ffmpegkit/Signal;

.field public static final enum SIGPIPE:Lcom/arthenica/ffmpegkit/Signal;

.field public static final enum SIGQUIT:Lcom/arthenica/ffmpegkit/Signal;

.field public static final enum SIGTERM:Lcom/arthenica/ffmpegkit/Signal;

.field public static final enum SIGXCPU:Lcom/arthenica/ffmpegkit/Signal;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/arthenica/ffmpegkit/Signal;
    .locals 5

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/Signal;->SIGINT:Lcom/arthenica/ffmpegkit/Signal;

    .line 2
    .line 3
    sget-object v1, Lcom/arthenica/ffmpegkit/Signal;->SIGQUIT:Lcom/arthenica/ffmpegkit/Signal;

    .line 4
    .line 5
    sget-object v2, Lcom/arthenica/ffmpegkit/Signal;->SIGPIPE:Lcom/arthenica/ffmpegkit/Signal;

    .line 6
    .line 7
    sget-object v3, Lcom/arthenica/ffmpegkit/Signal;->SIGTERM:Lcom/arthenica/ffmpegkit/Signal;

    .line 8
    .line 9
    sget-object v4, Lcom/arthenica/ffmpegkit/Signal;->SIGXCPU:Lcom/arthenica/ffmpegkit/Signal;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/arthenica/ffmpegkit/Signal;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/arthenica/ffmpegkit/Signal;

    .line 2
    .line 3
    const-string v1, "SIGINT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/arthenica/ffmpegkit/Signal;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/arthenica/ffmpegkit/Signal;->SIGINT:Lcom/arthenica/ffmpegkit/Signal;

    .line 11
    .line 12
    new-instance v0, Lcom/arthenica/ffmpegkit/Signal;

    .line 13
    .line 14
    const-string v1, "SIGQUIT"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v4, 0x3

    .line 18
    invoke-direct {v0, v1, v2, v4}, Lcom/arthenica/ffmpegkit/Signal;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/arthenica/ffmpegkit/Signal;->SIGQUIT:Lcom/arthenica/ffmpegkit/Signal;

    .line 22
    .line 23
    new-instance v0, Lcom/arthenica/ffmpegkit/Signal;

    .line 24
    .line 25
    const-string v1, "SIGPIPE"

    .line 26
    .line 27
    const/16 v2, 0xd

    .line 28
    .line 29
    invoke-direct {v0, v1, v3, v2}, Lcom/arthenica/ffmpegkit/Signal;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/arthenica/ffmpegkit/Signal;->SIGPIPE:Lcom/arthenica/ffmpegkit/Signal;

    .line 33
    .line 34
    new-instance v0, Lcom/arthenica/ffmpegkit/Signal;

    .line 35
    .line 36
    const-string v1, "SIGTERM"

    .line 37
    .line 38
    const/16 v2, 0xf

    .line 39
    .line 40
    invoke-direct {v0, v1, v4, v2}, Lcom/arthenica/ffmpegkit/Signal;-><init>(Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/arthenica/ffmpegkit/Signal;->SIGTERM:Lcom/arthenica/ffmpegkit/Signal;

    .line 44
    .line 45
    new-instance v0, Lcom/arthenica/ffmpegkit/Signal;

    .line 46
    .line 47
    const/4 v1, 0x4

    .line 48
    const/16 v2, 0x18

    .line 49
    .line 50
    const-string v3, "SIGXCPU"

    .line 51
    .line 52
    invoke-direct {v0, v3, v1, v2}, Lcom/arthenica/ffmpegkit/Signal;-><init>(Ljava/lang/String;II)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/arthenica/ffmpegkit/Signal;->SIGXCPU:Lcom/arthenica/ffmpegkit/Signal;

    .line 56
    .line 57
    invoke-static {}, Lcom/arthenica/ffmpegkit/Signal;->$values()[Lcom/arthenica/ffmpegkit/Signal;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcom/arthenica/ffmpegkit/Signal;->$VALUES:[Lcom/arthenica/ffmpegkit/Signal;

    .line 62
    .line 63
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
    iput p3, p0, Lcom/arthenica/ffmpegkit/Signal;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/Signal;
    .locals 1

    .line 1
    const-class v0, Lcom/arthenica/ffmpegkit/Signal;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/arthenica/ffmpegkit/Signal;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/arthenica/ffmpegkit/Signal;
    .locals 1

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/Signal;->$VALUES:[Lcom/arthenica/ffmpegkit/Signal;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/arthenica/ffmpegkit/Signal;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/arthenica/ffmpegkit/Signal;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arthenica/ffmpegkit/Signal;->value:I

    .line 2
    .line 3
    return v0
.end method
