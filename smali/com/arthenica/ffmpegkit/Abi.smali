.class public final enum Lcom/arthenica/ffmpegkit/Abi;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/arthenica/ffmpegkit/Abi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/arthenica/ffmpegkit/Abi;

.field public static final enum ABI_ARM:Lcom/arthenica/ffmpegkit/Abi;

.field public static final enum ABI_ARM64_V8A:Lcom/arthenica/ffmpegkit/Abi;

.field public static final enum ABI_ARMV7A:Lcom/arthenica/ffmpegkit/Abi;

.field public static final enum ABI_ARMV7A_NEON:Lcom/arthenica/ffmpegkit/Abi;

.field public static final enum ABI_UNKNOWN:Lcom/arthenica/ffmpegkit/Abi;

.field public static final enum ABI_X86:Lcom/arthenica/ffmpegkit/Abi;

.field public static final enum ABI_X86_64:Lcom/arthenica/ffmpegkit/Abi;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/arthenica/ffmpegkit/Abi;
    .locals 7

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARMV7A_NEON:Lcom/arthenica/ffmpegkit/Abi;

    .line 2
    .line 3
    sget-object v1, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARMV7A:Lcom/arthenica/ffmpegkit/Abi;

    .line 4
    .line 5
    sget-object v2, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARM:Lcom/arthenica/ffmpegkit/Abi;

    .line 6
    .line 7
    sget-object v3, Lcom/arthenica/ffmpegkit/Abi;->ABI_X86:Lcom/arthenica/ffmpegkit/Abi;

    .line 8
    .line 9
    sget-object v4, Lcom/arthenica/ffmpegkit/Abi;->ABI_X86_64:Lcom/arthenica/ffmpegkit/Abi;

    .line 10
    .line 11
    sget-object v5, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARM64_V8A:Lcom/arthenica/ffmpegkit/Abi;

    .line 12
    .line 13
    sget-object v6, Lcom/arthenica/ffmpegkit/Abi;->ABI_UNKNOWN:Lcom/arthenica/ffmpegkit/Abi;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Lcom/arthenica/ffmpegkit/Abi;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/arthenica/ffmpegkit/Abi;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "armeabi-v7a-neon"

    .line 5
    .line 6
    const-string v3, "ABI_ARMV7A_NEON"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/arthenica/ffmpegkit/Abi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARMV7A_NEON:Lcom/arthenica/ffmpegkit/Abi;

    .line 12
    .line 13
    new-instance v0, Lcom/arthenica/ffmpegkit/Abi;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "armeabi-v7a"

    .line 17
    .line 18
    const-string v3, "ABI_ARMV7A"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/arthenica/ffmpegkit/Abi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARMV7A:Lcom/arthenica/ffmpegkit/Abi;

    .line 24
    .line 25
    new-instance v0, Lcom/arthenica/ffmpegkit/Abi;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "armeabi"

    .line 29
    .line 30
    const-string v3, "ABI_ARM"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/arthenica/ffmpegkit/Abi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARM:Lcom/arthenica/ffmpegkit/Abi;

    .line 36
    .line 37
    new-instance v0, Lcom/arthenica/ffmpegkit/Abi;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "x86"

    .line 41
    .line 42
    const-string v3, "ABI_X86"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/arthenica/ffmpegkit/Abi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_X86:Lcom/arthenica/ffmpegkit/Abi;

    .line 48
    .line 49
    new-instance v0, Lcom/arthenica/ffmpegkit/Abi;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "x86_64"

    .line 53
    .line 54
    const-string v3, "ABI_X86_64"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/arthenica/ffmpegkit/Abi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_X86_64:Lcom/arthenica/ffmpegkit/Abi;

    .line 60
    .line 61
    new-instance v0, Lcom/arthenica/ffmpegkit/Abi;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "arm64-v8a"

    .line 65
    .line 66
    const-string v3, "ABI_ARM64_V8A"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/arthenica/ffmpegkit/Abi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARM64_V8A:Lcom/arthenica/ffmpegkit/Abi;

    .line 72
    .line 73
    new-instance v0, Lcom/arthenica/ffmpegkit/Abi;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "unknown"

    .line 77
    .line 78
    const-string v3, "ABI_UNKNOWN"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lcom/arthenica/ffmpegkit/Abi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_UNKNOWN:Lcom/arthenica/ffmpegkit/Abi;

    .line 84
    .line 85
    invoke-static {}, Lcom/arthenica/ffmpegkit/Abi;->$values()[Lcom/arthenica/ffmpegkit/Abi;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lcom/arthenica/ffmpegkit/Abi;->$VALUES:[Lcom/arthenica/ffmpegkit/Abi;

    .line 90
    .line 91
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/arthenica/ffmpegkit/Abi;->name:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/Abi;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/arthenica/ffmpegkit/Abi;->ABI_UNKNOWN:Lcom/arthenica/ffmpegkit/Abi;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARM:Lcom/arthenica/ffmpegkit/Abi;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Abi;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    sget-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARMV7A:Lcom/arthenica/ffmpegkit/Abi;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Abi;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_2
    sget-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARMV7A_NEON:Lcom/arthenica/ffmpegkit/Abi;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Abi;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_3
    sget-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_ARM64_V8A:Lcom/arthenica/ffmpegkit/Abi;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Abi;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_4
    sget-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_X86:Lcom/arthenica/ffmpegkit/Abi;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Abi;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_5
    sget-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_X86_64:Lcom/arthenica/ffmpegkit/Abi;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Abi;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_6

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_6
    sget-object p0, Lcom/arthenica/ffmpegkit/Abi;->ABI_UNKNOWN:Lcom/arthenica/ffmpegkit/Abi;

    .line 85
    .line 86
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/Abi;
    .locals 1

    .line 1
    const-class v0, Lcom/arthenica/ffmpegkit/Abi;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/arthenica/ffmpegkit/Abi;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/arthenica/ffmpegkit/Abi;
    .locals 1

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/Abi;->$VALUES:[Lcom/arthenica/ffmpegkit/Abi;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/arthenica/ffmpegkit/Abi;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/arthenica/ffmpegkit/Abi;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/Abi;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
