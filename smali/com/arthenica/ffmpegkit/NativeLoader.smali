.class public Lcom/arthenica/ffmpegkit/NativeLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final FFMPEG_LIBRARIES:[Ljava/lang/String;

.field static final LIBRARIES_LINKED_WITH_CXX:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "avutil"

    .line 2
    .line 3
    const-string v1, "swscale"

    .line 4
    .line 5
    const-string v2, "swresample"

    .line 6
    .line 7
    const-string v3, "avcodec"

    .line 8
    .line 9
    const-string v4, "avformat"

    .line 10
    .line 11
    const-string v5, "avfilter"

    .line 12
    .line 13
    const-string v6, "avdevice"

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/arthenica/ffmpegkit/NativeLoader;->FFMPEG_LIBRARIES:[Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "chromaprint"

    .line 22
    .line 23
    const-string v2, "openh264"

    .line 24
    .line 25
    const-string v3, "rubberband"

    .line 26
    .line 27
    const-string v4, "snappy"

    .line 28
    .line 29
    const-string v5, "srt"

    .line 30
    .line 31
    const-string v6, "tesseract"

    .line 32
    .line 33
    const-string v7, "x265"

    .line 34
    .line 35
    const-string v8, "zimg"

    .line 36
    .line 37
    const-string v9, "libilbc"

    .line 38
    .line 39
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/arthenica/ffmpegkit/NativeLoader;->LIBRARIES_LINKED_WITH_CXX:[Ljava/lang/String;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static enableRedirection()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->enableRedirection()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method static getDeviceDebugInformation()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "brand: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", model: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", device: "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", api level: "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", abis: "

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", 32bit abis: "

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", 64bit abis: "

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method

.method static isTestModeDisabled()Z
    .locals 1

    .line 1
    const-string v0, "enable.ffmpeg.kit.test.mode"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method static loadAbi()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->getAbi()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_X86_64:Lcom/arthenica/ffmpegkit/Abi;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Abi;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method static loadBuildDate()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getBuildDate()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 13
    .line 14
    const-string v1, "yyyyMMdd"

    .line 15
    .line 16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Ljava/util/Date;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method private static loadExternalLibraries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/arthenica/ffmpegkit/Packages;->getExternalLibraries()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method static loadFFmpeg()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static loadFFmpegKit(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    const-string p0, "arm-v7a"

    .line 5
    .line 6
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadNativeAbi()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    :try_start_0
    const-string p0, "ffmpegkit_armv7a_neon"

    .line 17
    .line 18
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadLibrary(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->setArmV7aNeonLoaded()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    invoke-static {p0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v1, "NEON supported armeabi-v7a ffmpegkit library not found. Loading default armeabi-v7a library.%s"

    .line 36
    .line 37
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v1, "ffmpeg-kit"

    .line 42
    .line 43
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 47
    .line 48
    const-string p0, "ffmpegkit"

    .line 49
    .line 50
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadLibrary(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method static loadFFmpegKitAbiDetect()V
    .locals 1

    .line 1
    const-string v0, "ffmpegkit_abidetect"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static loadIsLTSBuild()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->isNativeLTSBuild()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method private static loadLibrary(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Ljava/lang/Error;

    .line 13
    .line 14
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->getDeviceDebugInformation()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "FFmpegKit failed to start on %s."

    .line 23
    .line 24
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_0
    :goto_0
    return-void
.end method

.method static loadLogLevel()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getNativeLogLevel()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_DEBUG:Lcom/arthenica/ffmpegkit/Level;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method private static loadNativeAbi()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->getNativeAbi()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_X86_64:Lcom/arthenica/ffmpegkit/Abi;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Abi;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method static loadPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/arthenica/ffmpegkit/Packages;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const-string v0, "test"

    .line 13
    .line 14
    return-object v0
.end method

.method static loadVersion()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getVersion()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadIsLTSBuild()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v1, "6.0"

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string v0, "%s-lts"

    .line 21
    .line 22
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_1
    return-object v1
.end method
