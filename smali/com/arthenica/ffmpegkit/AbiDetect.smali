.class public Lcom/arthenica/ffmpegkit/AbiDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ARM_V7A:Ljava/lang/String; = "arm-v7a"

.field static final ARM_V7A_NEON:Ljava/lang/String; = "arm-v7a-neon"

.field private static armV7aNeonLoaded:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadFFmpegKitAbiDetect()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getAbi()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/arthenica/ffmpegkit/AbiDetect;->armV7aNeonLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "arm-v7a-neon"

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->getNativeAbi()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static getCpuAbi()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->getNativeCpuAbi()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static native getNativeAbi()Ljava/lang/String;
.end method

.method static native getNativeBuildConf()Ljava/lang/String;
.end method

.method static native getNativeCpuAbi()Ljava/lang/String;
.end method

.method static native isNativeLTSBuild()Z
.end method

.method static setArmV7aNeonLoaded()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/arthenica/ffmpegkit/AbiDetect;->armV7aNeonLoaded:Z

    .line 3
    .line 4
    return-void
.end method
