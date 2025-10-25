.class public final enum Lcom/arthenica/ffmpegkit/Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/arthenica/ffmpegkit/Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_DEBUG:Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_ERROR:Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_FATAL:Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_INFO:Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_PANIC:Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_QUIET:Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_STDERR:Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_TRACE:Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_VERBOSE:Lcom/arthenica/ffmpegkit/Level;

.field public static final enum AV_LOG_WARNING:Lcom/arthenica/ffmpegkit/Level;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/arthenica/ffmpegkit/Level;
    .locals 10

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_STDERR:Lcom/arthenica/ffmpegkit/Level;

    .line 2
    .line 3
    sget-object v1, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_QUIET:Lcom/arthenica/ffmpegkit/Level;

    .line 4
    .line 5
    sget-object v2, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_PANIC:Lcom/arthenica/ffmpegkit/Level;

    .line 6
    .line 7
    sget-object v3, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_FATAL:Lcom/arthenica/ffmpegkit/Level;

    .line 8
    .line 9
    sget-object v4, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_ERROR:Lcom/arthenica/ffmpegkit/Level;

    .line 10
    .line 11
    sget-object v5, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_WARNING:Lcom/arthenica/ffmpegkit/Level;

    .line 12
    .line 13
    sget-object v6, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_INFO:Lcom/arthenica/ffmpegkit/Level;

    .line 14
    .line 15
    sget-object v7, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_VERBOSE:Lcom/arthenica/ffmpegkit/Level;

    .line 16
    .line 17
    sget-object v8, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_DEBUG:Lcom/arthenica/ffmpegkit/Level;

    .line 18
    .line 19
    sget-object v9, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_TRACE:Lcom/arthenica/ffmpegkit/Level;

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Lcom/arthenica/ffmpegkit/Level;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    .line 2
    .line 3
    const/16 v1, -0x10

    .line 4
    .line 5
    const-string v2, "AV_LOG_STDERR"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_STDERR:Lcom/arthenica/ffmpegkit/Level;

    .line 12
    .line 13
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, -0x8

    .line 17
    const-string v4, "AV_LOG_QUIET"

    .line 18
    .line 19
    invoke-direct {v0, v4, v1, v2}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_QUIET:Lcom/arthenica/ffmpegkit/Level;

    .line 23
    .line 24
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    .line 25
    .line 26
    const-string v1, "AV_LOG_PANIC"

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-direct {v0, v1, v2, v3}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_PANIC:Lcom/arthenica/ffmpegkit/Level;

    .line 33
    .line 34
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    .line 35
    .line 36
    const-string v1, "AV_LOG_FATAL"

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    const/16 v3, 0x8

    .line 40
    .line 41
    invoke-direct {v0, v1, v2, v3}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_FATAL:Lcom/arthenica/ffmpegkit/Level;

    .line 45
    .line 46
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    .line 47
    .line 48
    const/4 v1, 0x4

    .line 49
    const/16 v2, 0x10

    .line 50
    .line 51
    const-string v4, "AV_LOG_ERROR"

    .line 52
    .line 53
    invoke-direct {v0, v4, v1, v2}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_ERROR:Lcom/arthenica/ffmpegkit/Level;

    .line 57
    .line 58
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    .line 59
    .line 60
    const/4 v1, 0x5

    .line 61
    const/16 v2, 0x18

    .line 62
    .line 63
    const-string v4, "AV_LOG_WARNING"

    .line 64
    .line 65
    invoke-direct {v0, v4, v1, v2}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    .line 66
    .line 67
    .line 68
    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_WARNING:Lcom/arthenica/ffmpegkit/Level;

    .line 69
    .line 70
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    .line 71
    .line 72
    const/4 v1, 0x6

    .line 73
    const/16 v2, 0x20

    .line 74
    .line 75
    const-string v4, "AV_LOG_INFO"

    .line 76
    .line 77
    invoke-direct {v0, v4, v1, v2}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    .line 78
    .line 79
    .line 80
    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_INFO:Lcom/arthenica/ffmpegkit/Level;

    .line 81
    .line 82
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    .line 83
    .line 84
    const/4 v1, 0x7

    .line 85
    const/16 v2, 0x28

    .line 86
    .line 87
    const-string v4, "AV_LOG_VERBOSE"

    .line 88
    .line 89
    invoke-direct {v0, v4, v1, v2}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_VERBOSE:Lcom/arthenica/ffmpegkit/Level;

    .line 93
    .line 94
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    .line 95
    .line 96
    const-string v1, "AV_LOG_DEBUG"

    .line 97
    .line 98
    const/16 v2, 0x30

    .line 99
    .line 100
    invoke-direct {v0, v1, v3, v2}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_DEBUG:Lcom/arthenica/ffmpegkit/Level;

    .line 104
    .line 105
    new-instance v0, Lcom/arthenica/ffmpegkit/Level;

    .line 106
    .line 107
    const/16 v1, 0x9

    .line 108
    .line 109
    const/16 v2, 0x38

    .line 110
    .line 111
    const-string v3, "AV_LOG_TRACE"

    .line 112
    .line 113
    invoke-direct {v0, v3, v1, v2}, Lcom/arthenica/ffmpegkit/Level;-><init>(Ljava/lang/String;II)V

    .line 114
    .line 115
    .line 116
    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_TRACE:Lcom/arthenica/ffmpegkit/Level;

    .line 117
    .line 118
    invoke-static {}, Lcom/arthenica/ffmpegkit/Level;->$values()[Lcom/arthenica/ffmpegkit/Level;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    sput-object v0, Lcom/arthenica/ffmpegkit/Level;->$VALUES:[Lcom/arthenica/ffmpegkit/Level;

    .line 123
    .line 124
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
    iput p3, p0, Lcom/arthenica/ffmpegkit/Level;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static from(I)Lcom/arthenica/ffmpegkit/Level;
    .locals 2

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_STDERR:Lcom/arthenica/ffmpegkit/Level;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_QUIET:Lcom/arthenica/ffmpegkit/Level;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne p0, v1, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_PANIC:Lcom/arthenica/ffmpegkit/Level;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne p0, v1, :cond_2

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_2
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_FATAL:Lcom/arthenica/ffmpegkit/Level;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ne p0, v1, :cond_3

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_3
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_ERROR:Lcom/arthenica/ffmpegkit/Level;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ne p0, v1, :cond_4

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_4
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_WARNING:Lcom/arthenica/ffmpegkit/Level;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-ne p0, v1, :cond_5

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_5
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_INFO:Lcom/arthenica/ffmpegkit/Level;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-ne p0, v1, :cond_6

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_6
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_VERBOSE:Lcom/arthenica/ffmpegkit/Level;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-ne p0, v1, :cond_7

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_7
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_DEBUG:Lcom/arthenica/ffmpegkit/Level;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-ne p0, v1, :cond_8

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_8
    sget-object p0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_TRACE:Lcom/arthenica/ffmpegkit/Level;

    .line 83
    .line 84
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/Level;
    .locals 1

    .line 1
    const-class v0, Lcom/arthenica/ffmpegkit/Level;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/arthenica/ffmpegkit/Level;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/arthenica/ffmpegkit/Level;
    .locals 1

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->$VALUES:[Lcom/arthenica/ffmpegkit/Level;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/arthenica/ffmpegkit/Level;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/arthenica/ffmpegkit/Level;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arthenica/ffmpegkit/Level;->value:I

    .line 2
    .line 3
    return v0
.end method
