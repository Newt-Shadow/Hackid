.class public Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# static fields
.field public static final ARGUMENT_ARGUMENTS:Ljava/lang/String; = "arguments"

.field public static final ARGUMENT_FFPROBE_JSON_OUTPUT:Ljava/lang/String; = "ffprobeJsonOutput"

.field public static final ARGUMENT_SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static final ARGUMENT_WAIT_TIMEOUT:Ljava/lang/String; = "waitTimeout"

.field public static final ARGUMENT_WRITABLE:Ljava/lang/String; = "writable"

.field private static final EVENT_CHANNEL:Ljava/lang/String; = "flutter.arthenica.com/ffmpeg_kit_event"

.field public static final EVENT_COMPLETE_CALLBACK_EVENT:Ljava/lang/String; = "FFmpegKitCompleteCallbackEvent"

.field public static final EVENT_LOG_CALLBACK_EVENT:Ljava/lang/String; = "FFmpegKitLogCallbackEvent"

.field public static final EVENT_STATISTICS_CALLBACK_EVENT:Ljava/lang/String; = "FFmpegKitStatisticsCallbackEvent"

.field public static final KEY_LOG_LEVEL:Ljava/lang/String; = "level"

.field public static final KEY_LOG_MESSAGE:Ljava/lang/String; = "message"

.field public static final KEY_LOG_SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static final KEY_SESSION_COMMAND:Ljava/lang/String; = "command"

.field public static final KEY_SESSION_CREATE_TIME:Ljava/lang/String; = "createTime"

.field public static final KEY_SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static final KEY_SESSION_MEDIA_INFORMATION:Ljava/lang/String; = "mediaInformation"

.field public static final KEY_SESSION_START_TIME:Ljava/lang/String; = "startTime"

.field public static final KEY_SESSION_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_STATISTICS_BITRATE:Ljava/lang/String; = "bitrate"

.field public static final KEY_STATISTICS_SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static final KEY_STATISTICS_SIZE:Ljava/lang/String; = "size"

.field public static final KEY_STATISTICS_SPEED:Ljava/lang/String; = "speed"

.field public static final KEY_STATISTICS_TIME:Ljava/lang/String; = "time"

.field public static final KEY_STATISTICS_VIDEO_FPS:Ljava/lang/String; = "videoFps"

.field public static final KEY_STATISTICS_VIDEO_FRAME_NUMBER:Ljava/lang/String; = "videoFrameNumber"

.field public static final KEY_STATISTICS_VIDEO_QUALITY:Ljava/lang/String; = "videoQuality"

.field public static final LIBRARY_NAME:Ljava/lang/String; = "ffmpeg-kit-flutter"

.field private static final METHOD_CHANNEL:Ljava/lang/String; = "flutter.arthenica.com/ffmpeg_kit"

.field public static final PLATFORM_NAME:Ljava/lang/String; = "android"

.field public static final READABLE_REQUEST_CODE:I = 0x2710

.field public static final SESSION_TYPE_FFMPEG:I = 0x1

.field public static final SESSION_TYPE_FFPROBE:I = 0x2

.field public static final SESSION_TYPE_MEDIA_INFORMATION:I = 0x3

.field public static final WRITABLE_REQUEST_CODE:I = 0x4e20

.field private static final asyncConcurrencyLimit:I = 0xa


# instance fields
.field private activity:Landroid/app/Activity;

.field private activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private final asyncExecutorService:Ljava/util/concurrent/ExecutorService;

.field private context:Landroid/content/Context;

.field private eventChannel:Lio/flutter/plugin/common/EventChannel;

.field private eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

.field private flutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private lastInitiatedIntentResult:Lio/flutter/plugin/common/MethodChannel$Result;

.field private final logsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private methodChannel:Lio/flutter/plugin/common/MethodChannel;

.field private final resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

.field private final statisticsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->logsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->statisticsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    const/16 v0, 0xa

    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->asyncExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    new-instance v0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 33
    .line 34
    const-string v0, "FFmpegKitFlutterPlugin created %s."

    .line 35
    .line 36
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "ffmpeg-kit-flutter"

    .line 45
    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static synthetic a(Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;Lcom/arthenica/ffmpegkit/Log;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->lambda$registerGlobalCallbacks$0(Lcom/arthenica/ffmpegkit/Log;)V

    return-void
.end method

.method public static synthetic b(Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;Lcom/arthenica/ffmpegkit/Statistics;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->lambda$registerGlobalCallbacks$1(Lcom/arthenica/ffmpegkit/Statistics;)V

    return-void
.end method

.method private initActivity(Landroid/app/Activity;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-interface {p2, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "FFmpegKitFlutterPlugin %s initialised with activity %s."

    .line 7
    .line 8
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string p2, "ffmpeg-kit-flutter"

    .line 17
    .line 18
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method protected static isValidPositiveNumber(Ljava/lang/Integer;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-ltz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method private synthetic lambda$registerGlobalCallbacks$0(Lcom/arthenica/ffmpegkit/Log;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->logsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->emitLog(Lcom/arthenica/ffmpegkit/Log;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private synthetic lambda$registerGlobalCallbacks$1(Lcom/arthenica/ffmpegkit/Statistics;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->statisticsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->emitStatistics(Lcom/arthenica/ffmpegkit/Statistics;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method protected static toInt(Lcom/arthenica/ffmpegkit/Level;)I
    .locals 0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_TRACE:Lcom/arthenica/ffmpegkit/Level;

    :cond_0
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    move-result p0

    return p0
.end method

.method protected static toInt(Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)I
    .locals 2

    .line 2
    sget-object v0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin$1;->$SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method protected static toList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    instance-of v3, v2, Lorg/json/JSONArray;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    check-cast v2, Lorg/json/JSONArray;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    instance-of v3, v2, Lorg/json/JSONObject;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    check-cast v2, Lorg/json/JSONObject;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_1
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    return-object v0
.end method

.method protected static toLogMapList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Log;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/arthenica/ffmpegkit/Log;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lcom/arthenica/ffmpegkit/Log;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v0
.end method

.method protected static toLogRedirectionStrategy(I)Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    sget-object p0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->NEVER_PRINT_LOGS:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    sget-object p0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->PRINT_LOGS_WHEN_SESSION_CALLBACK_NOT_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_1
    sget-object p0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->PRINT_LOGS_WHEN_GLOBAL_CALLBACK_NOT_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_2
    sget-object p0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->PRINT_LOGS_WHEN_NO_CALLBACKS_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    sget-object p0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->ALWAYS_PRINT_LOGS:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 25
    .line 26
    return-object p0
.end method

.method protected static toLong(Ljava/util/Date;)J
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0

    .line 8
    :cond_0
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    return-wide v0
.end method

.method protected static toMap(Lcom/arthenica/ffmpegkit/Log;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/arthenica/ffmpegkit/Log;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Log;->getSessionId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Log;->getLevel()Lcom/arthenica/ffmpegkit/Level;

    move-result-object v1

    invoke-static {v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toInt(Lcom/arthenica/ffmpegkit/Level;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "message"

    .line 18
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Log;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected static toMap(Lcom/arthenica/ffmpegkit/MediaInformation;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/arthenica/ffmpegkit/MediaInformation;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/MediaInformation;->getAllProperties()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/MediaInformation;->getAllProperties()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 31
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static toMap(Lcom/arthenica/ffmpegkit/Session;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/arthenica/ffmpegkit/Session;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->getSessionId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sessionId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->getCreateTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toLong(Ljava/util/Date;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "createTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->getStartTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toLong(Ljava/util/Date;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "startTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "command"

    .line 5
    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->isFFmpeg()Z

    move-result v1

    const-string v2, "type"

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->isFFprobe()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x2

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->isMediaInformation()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    check-cast p0, Lcom/arthenica/ffmpegkit/MediaInformationSession;

    .line 12
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->getMediaInformation()Lcom/arthenica/ffmpegkit/MediaInformation;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v1, "mediaInformation"

    .line 13
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lcom/arthenica/ffmpegkit/MediaInformation;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 p0, 0x3

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-object v0
.end method

.method protected static toMap(Lcom/arthenica/ffmpegkit/Statistics;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/arthenica/ffmpegkit/Statistics;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Statistics;->getSessionId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Statistics;->getVideoFrameNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "videoFrameNumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Statistics;->getVideoFps()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "videoFps"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Statistics;->getVideoQuality()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "videoQuality"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Statistics;->getSize()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Statistics;->getSize()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Statistics;->getSize()J

    move-result-wide v1

    rem-long/2addr v1, v3

    :goto_0
    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Statistics;->getTime()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Statistics;->getBitrate()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Statistics;->getSpeed()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string v1, "speed"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected static toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_3

    .line 33
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 34
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 36
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 37
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_1

    .line 38
    check-cast v3, Lorg/json/JSONArray;

    invoke-static {v3}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 39
    :cond_1
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    .line 40
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 41
    :cond_2
    :goto_1
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method protected static toSessionMapList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/arthenica/ffmpegkit/Session;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/arthenica/ffmpegkit/Session;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lcom/arthenica/ffmpegkit/Session;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v0
.end method

.method protected static toSessionState(I)Lcom/arthenica/ffmpegkit/SessionState;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/arthenica/ffmpegkit/SessionState;->COMPLETED:Lcom/arthenica/ffmpegkit/SessionState;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lcom/arthenica/ffmpegkit/SessionState;->FAILED:Lcom/arthenica/ffmpegkit/SessionState;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    sget-object p0, Lcom/arthenica/ffmpegkit/SessionState;->RUNNING:Lcom/arthenica/ffmpegkit/SessionState;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    sget-object p0, Lcom/arthenica/ffmpegkit/SessionState;->CREATED:Lcom/arthenica/ffmpegkit/SessionState;

    .line 19
    .line 20
    return-object p0
.end method

.method protected static toStatisticsMapList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Statistics;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/arthenica/ffmpegkit/Statistics;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lcom/arthenica/ffmpegkit/Statistics;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v0
.end method

.method private uninitActivity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->activity:Landroid/app/Activity;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 12
    .line 13
    const-string v0, "ffmpeg-kit-flutter"

    .line 14
    .line 15
    const-string v1, "FFmpegKitFlutterPlugin uninitialized activity."

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method protected abstractSessionGetAllLogs(Ljava/lang/Integer;Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string p2, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v0, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p3, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {p2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->isValidPositiveNumber(Ljava/lang/Integer;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 p2, 0x1388

    .line 33
    .line 34
    :goto_0
    invoke-interface {p1, p2}, Lcom/arthenica/ffmpegkit/Session;->getAllLogs(I)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p2, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toLogMapList(Ljava/util/List;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p2, p3, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    return-void
.end method

.method protected abstractSessionGetAllLogsAsString(Ljava/lang/Integer;Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string p2, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v0, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p3, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {p2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->isValidPositiveNumber(Ljava/lang/Integer;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 p2, 0x1388

    .line 33
    .line 34
    :goto_0
    invoke-interface {p1, p2}, Lcom/arthenica/ffmpegkit/Session;->getAllLogsAsString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p2, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 39
    .line 40
    invoke-virtual {p2, p3, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-void
.end method

.method protected abstractSessionGetDuration(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string v0, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v1, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 22
    .line 23
    invoke-interface {p1}, Lcom/arthenica/ffmpegkit/Session;->getDuration()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p2, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method protected abstractSessionGetEndTime(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string v0, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v1, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p1}, Lcom/arthenica/ffmpegkit/Session;->getEndTime()Ljava/util/Date;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p2, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method protected abstractSessionGetFailStackTrace(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string v0, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v1, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 22
    .line 23
    invoke-interface {p1}, Lcom/arthenica/ffmpegkit/Session;->getFailStackTrace()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p2, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method protected abstractSessionGetLogs(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string v0, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v1, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p1}, Lcom/arthenica/ffmpegkit/Session;->getLogs()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toLogMapList(Ljava/util/List;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p2, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method protected abstractSessionGetReturnCode(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string v0, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v1, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p1}, Lcom/arthenica/ffmpegkit/Session;->getReturnCode()Lcom/arthenica/ffmpegkit/ReturnCode;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/arthenica/ffmpegkit/ReturnCode;->getValue()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p2, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method protected abstractSessionGetState(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string v0, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v1, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 22
    .line 23
    invoke-interface {p1}, Lcom/arthenica/ffmpegkit/Session;->getState()Lcom/arthenica/ffmpegkit/SessionState;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p2, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method protected abstractSessionThereAreAsynchronousMessagesInTransmit(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string v0, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v1, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 22
    .line 23
    invoke-interface {p1}, Lcom/arthenica/ffmpegkit/Session;->thereAreAsynchronousMessagesInTransmit()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p2, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method protected asyncFFmpegSessionExecute(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string v0, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v1, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p1}, Lcom/arthenica/ffmpegkit/Session;->isFFmpeg()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    check-cast p1, Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 40
    .line 41
    const-string v0, "NOT_FFMPEG_SESSION"

    .line 42
    .line 43
    const-string v1, "A session is found but it does not have the correct type."

    .line 44
    .line 45
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method protected asyncFFprobeSessionExecute(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string v0, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v1, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p1}, Lcom/arthenica/ffmpegkit/Session;->isFFprobe()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    check-cast p1, Lcom/arthenica/ffmpegkit/FFprobeSession;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncFFprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 40
    .line 41
    const-string v0, "NOT_FFPROBE_SESSION"

    .line 42
    .line 43
    const-string v1, "A session is found but it does not have the correct type."

    .line 44
    .line 45
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method protected asyncMediaInformationSessionExecute(Ljava/lang/Integer;Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string p2, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v0, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p3, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {p1}, Lcom/arthenica/ffmpegkit/Session;->isMediaInformation()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-static {p2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->isValidPositiveNumber(Ljava/lang/Integer;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/16 p2, 0x1388

    .line 39
    .line 40
    :goto_0
    check-cast p1, Lcom/arthenica/ffmpegkit/MediaInformationSession;

    .line 41
    .line 42
    invoke-static {p1, p2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncGetMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 46
    .line 47
    const/4 p2, 0x0

    .line 48
    invoke-virtual {p1, p3, p2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 53
    .line 54
    const-string p2, "NOT_MEDIA_INFORMATION_SESSION"

    .line 55
    .line 56
    const-string v0, "A session is found but it does not have the correct type."

    .line 57
    .line 58
    invoke-virtual {p1, p3, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    return-void
.end method

.method protected cancel(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKit;->cancel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected cancelSession(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKit;->cancel(J)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected clearSessions(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->clearSessions()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected closeFFmpegPipe(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->closeFFmpegPipe(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected disableLogs()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->logsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method protected disableLogs(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->disableLogs()V

    .line 2
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    return-void
.end method

.method protected disableRedirection(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->disableRedirection()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected disableStatistics()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->statisticsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method protected disableStatistics(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->disableStatistics()V

    .line 2
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    return-void
.end method

.method protected emitLog(Lcom/arthenica/ffmpegkit/Log;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "FFmpegKitLogCallbackEvent"

    .line 7
    .line 8
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lcom/arthenica/ffmpegkit/Log;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/EventChannel$EventSink;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected emitSession(Lcom/arthenica/ffmpegkit/Session;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "FFmpegKitCompleteCallbackEvent"

    .line 7
    .line 8
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lcom/arthenica/ffmpegkit/Session;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/EventChannel$EventSink;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected emitStatistics(Lcom/arthenica/ffmpegkit/Statistics;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "FFmpegKitStatisticsCallbackEvent"

    .line 7
    .line 8
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lcom/arthenica/ffmpegkit/Statistics;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/EventChannel$EventSink;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected enableLogs()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->logsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method protected enableLogs(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->enableLogs()V

    .line 2
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    return-void
.end method

.method protected enableRedirection(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->enableLogs()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->enableStatistics()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->enableRedirection()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected enableStatistics()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->statisticsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method protected enableStatistics(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->enableStatistics()V

    .line 2
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    return-void
.end method

.method protected ffmpegSession(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, [Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    sget-object v1, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->NEVER_PRINT_LOGS:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 12
    .line 13
    invoke-static {p1, v0, v0, v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lcom/arthenica/ffmpegkit/Session;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p2, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method protected ffmpegSessionExecute(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string v0, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v1, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p1}, Lcom/arthenica/ffmpegkit/Session;->isFFmpeg()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Lcom/arthenica/ffmpegkit/flutter/FFmpegSessionExecuteTask;

    .line 28
    .line 29
    check-cast p1, Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 32
    .line 33
    invoke-direct {v0, p1, v1, p2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegSessionExecuteTask;-><init>(Lcom/arthenica/ffmpegkit/FFmpegSession;Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->asyncExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 43
    .line 44
    const-string v0, "NOT_FFMPEG_SESSION"

    .line 45
    .line 46
    const-string v1, "A session is found but it does not have the correct type."

    .line 47
    .line 48
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method protected ffmpegSessionGetAllStatistics(Ljava/lang/Integer;Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string p2, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v0, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p3, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {p1}, Lcom/arthenica/ffmpegkit/Session;->isFFmpeg()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-static {p2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->isValidPositiveNumber(Ljava/lang/Integer;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/16 p2, 0x1388

    .line 39
    .line 40
    :goto_0
    check-cast p1, Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getAllStatistics(I)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p2, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toStatisticsMapList(Ljava/util/List;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p2, p3, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 57
    .line 58
    const-string p2, "NOT_FFMPEG_SESSION"

    .line 59
    .line 60
    const-string v0, "A session is found but it does not have the correct type."

    .line 61
    .line 62
    invoke-virtual {p1, p3, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void
.end method

.method protected ffmpegSessionGetStatistics(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string v0, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v1, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p1}, Lcom/arthenica/ffmpegkit/Session;->isFFmpeg()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    check-cast p1, Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getStatistics()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toStatisticsMapList(Ljava/util/List;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p2, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 44
    .line 45
    const-string v0, "NOT_FFMPEG_SESSION"

    .line 46
    .line 47
    const-string v1, "A session is found but it does not have the correct type."

    .line 48
    .line 49
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method protected ffprobeSession(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, [Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    sget-object v1, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->NEVER_PRINT_LOGS:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 12
    .line 13
    invoke-static {p1, v0, v0, v1}, Lcom/arthenica/ffmpegkit/FFprobeSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)Lcom/arthenica/ffmpegkit/FFprobeSession;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lcom/arthenica/ffmpegkit/Session;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p2, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method protected ffprobeSessionExecute(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string v0, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v1, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p1}, Lcom/arthenica/ffmpegkit/Session;->isFFprobe()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Lcom/arthenica/ffmpegkit/flutter/FFprobeSessionExecuteTask;

    .line 28
    .line 29
    check-cast p1, Lcom/arthenica/ffmpegkit/FFprobeSession;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 32
    .line 33
    invoke-direct {v0, p1, v1, p2}, Lcom/arthenica/ffmpegkit/flutter/FFprobeSessionExecuteTask;-><init>(Lcom/arthenica/ffmpegkit/FFprobeSession;Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->asyncExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 43
    .line 44
    const-string v0, "NOT_FFPROBE_SESSION"

    .line 45
    .line 46
    const-string v1, "A session is found but it does not have the correct type."

    .line 47
    .line 48
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method protected getArch(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 2
    .line 3
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->getAbi()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected getBuildDate(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 2
    .line 3
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getBuildDate()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected getExternalLibraries(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 2
    .line 3
    invoke-static {}, Lcom/arthenica/ffmpegkit/Packages;->getExternalLibraries()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected getFFmpegSessions(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 2
    .line 3
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKit;->listSessions()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toSessionMapList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected getFFmpegVersion(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 2
    .line 3
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getFFmpegVersion()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected getFFprobeSessions(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 2
    .line 3
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFprobeKit;->listFFprobeSessions()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toSessionMapList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected getLastCompletedSession(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getLastCompletedSession()Lcom/arthenica/ffmpegkit/Session;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lcom/arthenica/ffmpegkit/Session;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, p1, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected getLastSession(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getLastSession()Lcom/arthenica/ffmpegkit/Session;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lcom/arthenica/ffmpegkit/Session;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, p1, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected getLogLevel(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 2
    .line 3
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getLogLevel()Lcom/arthenica/ffmpegkit/Level;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toInt(Lcom/arthenica/ffmpegkit/Level;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected getLogRedirectionStrategy(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 2
    .line 3
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getLogRedirectionStrategy()Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toInt(Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected getMediaInformation(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string v0, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v1, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p1}, Lcom/arthenica/ffmpegkit/Session;->isMediaInformation()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    check-cast p1, Lcom/arthenica/ffmpegkit/MediaInformationSession;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->getMediaInformation()Lcom/arthenica/ffmpegkit/MediaInformation;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lcom/arthenica/ffmpegkit/MediaInformation;)Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p2, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 44
    .line 45
    const-string v0, "NOT_MEDIA_INFORMATION_SESSION"

    .line 46
    .line 47
    const-string v1, "A session is found but it does not have the correct type."

    .line 48
    .line 49
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method protected getMediaInformationSessions(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 2
    .line 3
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFprobeKit;->listMediaInformationSessions()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toSessionMapList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected getPackageName(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 2
    .line 3
    invoke-static {}, Lcom/arthenica/ffmpegkit/Packages;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected getPlatform(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 2
    .line 3
    const-string v1, "android"

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected getSafParameter(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "ffmpeg-kit-flutter"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "Cannot getSafParameter using parameters uriString: %s, openMode: %s. Uri string cannot be parsed."

    .line 14
    .line 15
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 27
    .line 28
    const-string p2, "GET_SAF_PARAMETER_FAILED"

    .line 29
    .line 30
    const-string v0, "Uri string cannot be parsed."

    .line 31
    .line 32
    invoke-virtual {p1, p3, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->context:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v2, v0, p2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSafParameter(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v2, "getSafParameter using parameters uriString: %s, openMode: %s completed with saf parameter: %s."

    .line 43
    .line 44
    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 56
    .line 57
    invoke-virtual {p1, p3, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const-string v0, "Cannot getSafParameter using parameters uriString: %s, openMode: %s. Context is null."

    .line 62
    .line 63
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 75
    .line 76
    const-string p2, "INVALID_CONTEXT"

    .line 77
    .line 78
    const-string v0, "Context is null."

    .line 79
    .line 80
    invoke-virtual {p1, p3, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method

.method protected getSession(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string v0, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v1, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lcom/arthenica/ffmpegkit/Session;)Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p2, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method protected getSessionHistorySize(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 2
    .line 3
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSessionHistorySize()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected getSessions(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 2
    .line 3
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSessions()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toSessionMapList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected getSessionsByState(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toSessionState(I)Lcom/arthenica/ffmpegkit/SessionState;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSessionsByState(Lcom/arthenica/ffmpegkit/SessionState;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toSessionMapList(Ljava/util/List;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p2, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected ignoreSignal(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/arthenica/ffmpegkit/Signal;->SIGINT:Lcom/arthenica/ffmpegkit/Signal;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sget-object v1, Lcom/arthenica/ffmpegkit/Signal;->SIGQUIT:Lcom/arthenica/ffmpegkit/Signal;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sget-object v1, Lcom/arthenica/ffmpegkit/Signal;->SIGPIPE:Lcom/arthenica/ffmpegkit/Signal;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ne v0, v2, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    sget-object v1, Lcom/arthenica/ffmpegkit/Signal;->SIGTERM:Lcom/arthenica/ffmpegkit/Signal;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ne v0, v2, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    sget-object v1, Lcom/arthenica/ffmpegkit/Signal;->SIGXCPU:Lcom/arthenica/ffmpegkit/Signal;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-ne p1, v0, :cond_4

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    move-object v1, v3

    .line 68
    :goto_0
    if-eqz v1, :cond_5

    .line 69
    .line 70
    invoke-static {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->ignoreSignal(Lcom/arthenica/ffmpegkit/Signal;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 74
    .line 75
    invoke-virtual {p1, p2, v3}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 80
    .line 81
    const-string v0, "INVALID_SIGNAL"

    .line 82
    .line 83
    const-string v1, "Signal value not supported."

    .line 84
    .line 85
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    return-void
.end method

.method protected init(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->registerGlobalCallbacks()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 5
    .line 6
    const-string v1, "ffmpeg-kit-flutter"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 11
    .line 12
    const-string v2, "flutter.arthenica.com/ffmpeg_kit"

    .line 13
    .line 14
    invoke-direct {v0, p1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "FFmpegKitFlutterPlugin method channel was already initialised."

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->eventChannel:Lio/flutter/plugin/common/EventChannel;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Lio/flutter/plugin/common/EventChannel;

    .line 33
    .line 34
    const-string v2, "flutter.arthenica.com/ffmpeg_kit_event"

    .line 35
    .line 36
    invoke-direct {v0, p1, v2}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->eventChannel:Lio/flutter/plugin/common/EventChannel;

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string p1, "FFmpegKitFlutterPlugin event channel was already initialised."

    .line 46
    .line 47
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :goto_1
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->context:Landroid/content/Context;

    .line 51
    .line 52
    const-string p1, "FFmpegKitFlutterPlugin %s initialised with context %s."

    .line 53
    .line 54
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method protected isLTSBuild(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 2
    .line 3
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->isLTSBuild()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected mediaInformationJsonParserFrom(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/MediaInformationJsonParser;->fromWithError(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformation;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lcom/arthenica/ffmpegkit/MediaInformation;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p2, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string v0, "ffmpeg-kit-flutter"

    .line 17
    .line 18
    const-string v1, "Parsing MediaInformation failed."

    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method protected mediaInformationJsonParserFromWithError(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/MediaInformationJsonParser;->fromWithError(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformation;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lcom/arthenica/ffmpegkit/MediaInformation;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p2, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string v0, "ffmpeg-kit-flutter"

    .line 17
    .line 18
    const-string v1, "Parsing MediaInformation failed."

    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 24
    .line 25
    const-string v0, "PARSE_FAILED"

    .line 26
    .line 27
    const-string v1, "Parsing MediaInformation failed with JSON error."

    .line 28
    .line 29
    invoke-virtual {p1, p2, v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method protected mediaInformationSession(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, [Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0, v0}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/MediaInformationSession;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toMap(Lcom/arthenica/ffmpegkit/Session;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p2, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method protected mediaInformationSessionExecute(Ljava/lang/Integer;Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 12
    .line 13
    const-string p2, "SESSION_NOT_FOUND"

    .line 14
    .line 15
    const-string v0, "Session not found."

    .line 16
    .line 17
    invoke-virtual {p1, p3, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {p1}, Lcom/arthenica/ffmpegkit/Session;->isMediaInformation()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-static {p2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->isValidPositiveNumber(Ljava/lang/Integer;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/16 p2, 0x1388

    .line 39
    .line 40
    :goto_0
    new-instance v0, Lcom/arthenica/ffmpegkit/flutter/MediaInformationSessionExecuteTask;

    .line 41
    .line 42
    check-cast p1, Lcom/arthenica/ffmpegkit/MediaInformationSession;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 45
    .line 46
    invoke-direct {v0, p1, p2, v1, p3}, Lcom/arthenica/ffmpegkit/flutter/MediaInformationSessionExecuteTask;-><init>(Lcom/arthenica/ffmpegkit/MediaInformationSession;ILcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->asyncExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 50
    .line 51
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 56
    .line 57
    const-string p2, "NOT_MEDIA_INFORMATION_SESSION"

    .line 58
    .line 59
    const-string v0, "A session is found but it does not have the correct type."

    .line 60
    .line 61
    invoke-virtual {p1, p3, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    return-void
.end method

.method protected messagesInTransmit(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v1, v2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->messagesInTransmit(J)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p2, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 10
    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v3, 0x1

    .line 16
    aput-object v1, v0, v3

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    move-object v4, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    :goto_0
    const/4 v5, 0x2

    .line 28
    aput-object v4, v0, v5

    .line 29
    .line 30
    const-string v4, "selectDocument completed with requestCode: %d, resultCode: %d, data: %s."

    .line 31
    .line 32
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v4, "ffmpeg-kit-flutter"

    .line 37
    .line 38
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const/16 v0, 0x2710

    .line 42
    .line 43
    if-eq p1, v0, :cond_2

    .line 44
    .line 45
    const/16 v0, 0x4e20

    .line 46
    .line 47
    if-ne p1, v0, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "FFmpegKitFlutterPlugin ignored unsupported activity result for requestCode: %d."

    .line 59
    .line 60
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    return v2

    .line 68
    :cond_2
    :goto_1
    const/4 p1, -0x1

    .line 69
    if-ne p2, p1, :cond_5

    .line 70
    .line 71
    if-nez p3, :cond_3

    .line 72
    .line 73
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 74
    .line 75
    iget-object p2, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->lastInitiatedIntentResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 76
    .line 77
    invoke-virtual {p1, p2, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object p2, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 86
    .line 87
    iget-object p3, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->lastInitiatedIntentResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 88
    .line 89
    if-nez p1, :cond_4

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    :goto_2
    invoke-virtual {p2, p3, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_5
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 101
    .line 102
    iget-object p3, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->lastInitiatedIntentResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 103
    .line 104
    const-string v0, "SELECT_CANCELLED"

    .line 105
    .line 106
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p1, p3, v0, p2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :goto_3
    return v3
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "FFmpegKitFlutterPlugin %s attached to activity %s."

    .line 10
    .line 11
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "ffmpeg-kit-flutter"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0, v0, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->initActivity(Landroid/app/Activity;Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 1
    const-string v0, "FFmpegKitFlutterPlugin %s attached to engine."

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "ffmpeg-kit-flutter"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->flutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 17
    .line 18
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, v0, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->init(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 3
    .line 4
    const-string p1, "ffmpeg-kit-flutter"

    .line 5
    .line 6
    const-string v0, "FFmpegKitFlutterPlugin stopped listening to events."

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->uninitActivity()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ffmpeg-kit-flutter"

    .line 5
    .line 6
    const-string v1, "FFmpegKitFlutterPlugin detached from activity."

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->onDetachedFromActivity()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->flutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->uninit()V

    .line 5
    .line 6
    .line 7
    const-string p1, "ffmpeg-kit-flutter"

    .line 8
    .line 9
    const-string v0, "FFmpegKitFlutterPlugin detached from engine."

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->registerGlobalCallbacks()V

    .line 4
    .line 5
    .line 6
    const-string p1, "FFmpegKitFlutterPlugin %s started listening to events on %s."

    .line 7
    .line 8
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string p2, "ffmpeg-kit-flutter"

    .line 17
    .line 18
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    const-string v1, "sessionId"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Integer;

    .line 14
    .line 15
    const-string v2, "waitTimeout"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Integer;

    .line 22
    .line 23
    const-string v3, "arguments"

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/util/List;

    .line 30
    .line 31
    const-string v4, "ffprobeJsonOutput"

    .line 32
    .line 33
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Ljava/lang/String;

    .line 38
    .line 39
    const-string v7, "writable"

    .line 40
    .line 41
    invoke-virtual {v0, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    check-cast v7, Ljava/lang/Boolean;

    .line 46
    .line 47
    iget-object v8, v0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    const/4 v11, -0x1

    .line 57
    sparse-switch v9, :sswitch_data_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :sswitch_0
    const-string v9, "ffprobeSessionExecute"

    .line 63
    .line 64
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-nez v8, :cond_0

    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_0
    const/16 v11, 0x3f

    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :sswitch_1
    const-string v9, "setLogRedirectionStrategy"

    .line 77
    .line 78
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-nez v8, :cond_1

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :cond_1
    const/16 v11, 0x3e

    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :sswitch_2
    const-string v9, "mediaInformationJsonParserFrom"

    .line 91
    .line 92
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-nez v8, :cond_2

    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :cond_2
    const/16 v11, 0x3d

    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :sswitch_3
    const-string v9, "enableLogs"

    .line 105
    .line 106
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-nez v8, :cond_3

    .line 111
    .line 112
    goto/16 :goto_0

    .line 113
    .line 114
    :cond_3
    const/16 v11, 0x3c

    .line 115
    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :sswitch_4
    const-string v9, "abstractSessionGetAllLogs"

    .line 119
    .line 120
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-nez v8, :cond_4

    .line 125
    .line 126
    goto/16 :goto_0

    .line 127
    .line 128
    :cond_4
    const/16 v11, 0x3b

    .line 129
    .line 130
    goto/16 :goto_0

    .line 131
    .line 132
    :sswitch_5
    const-string v9, "selectDocument"

    .line 133
    .line 134
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-nez v8, :cond_5

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_5
    const/16 v11, 0x3a

    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :sswitch_6
    const-string v9, "setFontDirectoryList"

    .line 147
    .line 148
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-nez v8, :cond_6

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_6
    const/16 v11, 0x39

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :sswitch_7
    const-string v9, "mediaInformationJsonParserFromWithError"

    .line 161
    .line 162
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-nez v8, :cond_7

    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_7
    const/16 v11, 0x38

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :sswitch_8
    const-string v9, "getMediaInformationSessions"

    .line 175
    .line 176
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    if-nez v8, :cond_8

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_8
    const/16 v11, 0x37

    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :sswitch_9
    const-string v9, "messagesInTransmit"

    .line 189
    .line 190
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    if-nez v8, :cond_9

    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_9
    const/16 v11, 0x36

    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :sswitch_a
    const-string v9, "getExternalLibraries"

    .line 203
    .line 204
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    if-nez v8, :cond_a

    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_a
    const/16 v11, 0x35

    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :sswitch_b
    const-string v9, "setFontconfigConfigurationPath"

    .line 217
    .line 218
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    if-nez v8, :cond_b

    .line 223
    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :cond_b
    const/16 v11, 0x34

    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :sswitch_c
    const-string v9, "mediaInformationSessionExecute"

    .line 231
    .line 232
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    if-nez v8, :cond_c

    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_c
    const/16 v11, 0x33

    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :sswitch_d
    const-string v9, "writeToPipe"

    .line 245
    .line 246
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    if-nez v8, :cond_d

    .line 251
    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :cond_d
    const/16 v11, 0x32

    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :sswitch_e
    const-string v9, "setSessionHistorySize"

    .line 259
    .line 260
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-nez v8, :cond_e

    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :cond_e
    const/16 v11, 0x31

    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :sswitch_f
    const-string v9, "disableLogs"

    .line 273
    .line 274
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v8

    .line 278
    if-nez v8, :cond_f

    .line 279
    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :cond_f
    const/16 v11, 0x30

    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :sswitch_10
    const-string v9, "getLastCompletedSession"

    .line 287
    .line 288
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v8

    .line 292
    if-nez v8, :cond_10

    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :cond_10
    const/16 v11, 0x2f

    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :sswitch_11
    const-string v9, "setEnvironmentVariable"

    .line 301
    .line 302
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    if-nez v8, :cond_11

    .line 307
    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :cond_11
    const/16 v11, 0x2e

    .line 311
    .line 312
    goto/16 :goto_0

    .line 313
    .line 314
    :sswitch_12
    const-string v9, "abstractSessionGetEndTime"

    .line 315
    .line 316
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v8

    .line 320
    if-nez v8, :cond_12

    .line 321
    .line 322
    goto/16 :goto_0

    .line 323
    .line 324
    :cond_12
    const/16 v11, 0x2d

    .line 325
    .line 326
    goto/16 :goto_0

    .line 327
    .line 328
    :sswitch_13
    const-string v9, "getLogRedirectionStrategy"

    .line 329
    .line 330
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v8

    .line 334
    if-nez v8, :cond_13

    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :cond_13
    const/16 v11, 0x2c

    .line 339
    .line 340
    goto/16 :goto_0

    .line 341
    .line 342
    :sswitch_14
    const-string v9, "abstractSessionGetLogs"

    .line 343
    .line 344
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    if-nez v8, :cond_14

    .line 349
    .line 350
    goto/16 :goto_0

    .line 351
    .line 352
    :cond_14
    const/16 v11, 0x2b

    .line 353
    .line 354
    goto/16 :goto_0

    .line 355
    .line 356
    :sswitch_15
    const-string v9, "ffmpegSessionExecute"

    .line 357
    .line 358
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v8

    .line 362
    if-nez v8, :cond_15

    .line 363
    .line 364
    goto/16 :goto_0

    .line 365
    .line 366
    :cond_15
    const/16 v11, 0x2a

    .line 367
    .line 368
    goto/16 :goto_0

    .line 369
    .line 370
    :sswitch_16
    const-string v9, "disableRedirection"

    .line 371
    .line 372
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v8

    .line 376
    if-nez v8, :cond_16

    .line 377
    .line 378
    goto/16 :goto_0

    .line 379
    .line 380
    :cond_16
    const/16 v11, 0x29

    .line 381
    .line 382
    goto/16 :goto_0

    .line 383
    .line 384
    :sswitch_17
    const-string v9, "ffprobeSession"

    .line 385
    .line 386
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v8

    .line 390
    if-nez v8, :cond_17

    .line 391
    .line 392
    goto/16 :goto_0

    .line 393
    .line 394
    :cond_17
    const/16 v11, 0x28

    .line 395
    .line 396
    goto/16 :goto_0

    .line 397
    .line 398
    :sswitch_18
    const-string v9, "registerNewFFmpegPipe"

    .line 399
    .line 400
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v8

    .line 404
    if-nez v8, :cond_18

    .line 405
    .line 406
    goto/16 :goto_0

    .line 407
    .line 408
    :cond_18
    const/16 v11, 0x27

    .line 409
    .line 410
    goto/16 :goto_0

    .line 411
    .line 412
    :sswitch_19
    const-string v9, "clearSessions"

    .line 413
    .line 414
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v8

    .line 418
    if-nez v8, :cond_19

    .line 419
    .line 420
    goto/16 :goto_0

    .line 421
    .line 422
    :cond_19
    const/16 v11, 0x26

    .line 423
    .line 424
    goto/16 :goto_0

    .line 425
    .line 426
    :sswitch_1a
    const-string v9, "getFFprobeSessions"

    .line 427
    .line 428
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v8

    .line 432
    if-nez v8, :cond_1a

    .line 433
    .line 434
    goto/16 :goto_0

    .line 435
    .line 436
    :cond_1a
    const/16 v11, 0x25

    .line 437
    .line 438
    goto/16 :goto_0

    .line 439
    .line 440
    :sswitch_1b
    const-string v9, "getPackageName"

    .line 441
    .line 442
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v8

    .line 446
    if-nez v8, :cond_1b

    .line 447
    .line 448
    goto/16 :goto_0

    .line 449
    .line 450
    :cond_1b
    const/16 v11, 0x24

    .line 451
    .line 452
    goto/16 :goto_0

    .line 453
    .line 454
    :sswitch_1c
    const-string v9, "closeFFmpegPipe"

    .line 455
    .line 456
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v8

    .line 460
    if-nez v8, :cond_1c

    .line 461
    .line 462
    goto/16 :goto_0

    .line 463
    .line 464
    :cond_1c
    const/16 v11, 0x23

    .line 465
    .line 466
    goto/16 :goto_0

    .line 467
    .line 468
    :sswitch_1d
    const-string v9, "asyncFFprobeSessionExecute"

    .line 469
    .line 470
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v8

    .line 474
    if-nez v8, :cond_1d

    .line 475
    .line 476
    goto/16 :goto_0

    .line 477
    .line 478
    :cond_1d
    const/16 v11, 0x22

    .line 479
    .line 480
    goto/16 :goto_0

    .line 481
    .line 482
    :sswitch_1e
    const-string v9, "abstractSessionGetFailStackTrace"

    .line 483
    .line 484
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result v8

    .line 488
    if-nez v8, :cond_1e

    .line 489
    .line 490
    goto/16 :goto_0

    .line 491
    .line 492
    :cond_1e
    const/16 v11, 0x21

    .line 493
    .line 494
    goto/16 :goto_0

    .line 495
    .line 496
    :sswitch_1f
    const-string v9, "ignoreSignal"

    .line 497
    .line 498
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v8

    .line 502
    if-nez v8, :cond_1f

    .line 503
    .line 504
    goto/16 :goto_0

    .line 505
    .line 506
    :cond_1f
    const/16 v11, 0x20

    .line 507
    .line 508
    goto/16 :goto_0

    .line 509
    .line 510
    :sswitch_20
    const-string v9, "thereAreAsynchronousMessagesInTransmit"

    .line 511
    .line 512
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v8

    .line 516
    if-nez v8, :cond_20

    .line 517
    .line 518
    goto/16 :goto_0

    .line 519
    .line 520
    :cond_20
    const/16 v11, 0x1f

    .line 521
    .line 522
    goto/16 :goto_0

    .line 523
    .line 524
    :sswitch_21
    const-string v9, "getArch"

    .line 525
    .line 526
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result v8

    .line 530
    if-nez v8, :cond_21

    .line 531
    .line 532
    goto/16 :goto_0

    .line 533
    .line 534
    :cond_21
    const/16 v11, 0x1e

    .line 535
    .line 536
    goto/16 :goto_0

    .line 537
    .line 538
    :sswitch_22
    const-string v9, "getMediaInformation"

    .line 539
    .line 540
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result v8

    .line 544
    if-nez v8, :cond_22

    .line 545
    .line 546
    goto/16 :goto_0

    .line 547
    .line 548
    :cond_22
    const/16 v11, 0x1d

    .line 549
    .line 550
    goto/16 :goto_0

    .line 551
    .line 552
    :sswitch_23
    const-string v9, "getLogLevel"

    .line 553
    .line 554
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    move-result v8

    .line 558
    if-nez v8, :cond_23

    .line 559
    .line 560
    goto/16 :goto_0

    .line 561
    .line 562
    :cond_23
    const/16 v11, 0x1c

    .line 563
    .line 564
    goto/16 :goto_0

    .line 565
    .line 566
    :sswitch_24
    const-string v9, "getFFmpegSessions"

    .line 567
    .line 568
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result v8

    .line 572
    if-nez v8, :cond_24

    .line 573
    .line 574
    goto/16 :goto_0

    .line 575
    .line 576
    :cond_24
    const/16 v11, 0x1b

    .line 577
    .line 578
    goto/16 :goto_0

    .line 579
    .line 580
    :sswitch_25
    const-string v9, "setLogLevel"

    .line 581
    .line 582
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result v8

    .line 586
    if-nez v8, :cond_25

    .line 587
    .line 588
    goto/16 :goto_0

    .line 589
    .line 590
    :cond_25
    const/16 v11, 0x1a

    .line 591
    .line 592
    goto/16 :goto_0

    .line 593
    .line 594
    :sswitch_26
    const-string v9, "enableStatistics"

    .line 595
    .line 596
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result v8

    .line 600
    if-nez v8, :cond_26

    .line 601
    .line 602
    goto/16 :goto_0

    .line 603
    .line 604
    :cond_26
    const/16 v11, 0x19

    .line 605
    .line 606
    goto/16 :goto_0

    .line 607
    .line 608
    :sswitch_27
    const-string v9, "getPlatform"

    .line 609
    .line 610
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    move-result v8

    .line 614
    if-nez v8, :cond_27

    .line 615
    .line 616
    goto/16 :goto_0

    .line 617
    .line 618
    :cond_27
    const/16 v11, 0x18

    .line 619
    .line 620
    goto/16 :goto_0

    .line 621
    .line 622
    :sswitch_28
    const-string v9, "abstractSessionGetAllLogsAsString"

    .line 623
    .line 624
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 625
    .line 626
    .line 627
    move-result v8

    .line 628
    if-nez v8, :cond_28

    .line 629
    .line 630
    goto/16 :goto_0

    .line 631
    .line 632
    :cond_28
    const/16 v11, 0x17

    .line 633
    .line 634
    goto/16 :goto_0

    .line 635
    .line 636
    :sswitch_29
    const-string v9, "getFFmpegVersion"

    .line 637
    .line 638
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result v8

    .line 642
    if-nez v8, :cond_29

    .line 643
    .line 644
    goto/16 :goto_0

    .line 645
    .line 646
    :cond_29
    const/16 v11, 0x16

    .line 647
    .line 648
    goto/16 :goto_0

    .line 649
    .line 650
    :sswitch_2a
    const-string v9, "getSessions"

    .line 651
    .line 652
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-result v8

    .line 656
    if-nez v8, :cond_2a

    .line 657
    .line 658
    goto/16 :goto_0

    .line 659
    .line 660
    :cond_2a
    const/16 v11, 0x15

    .line 661
    .line 662
    goto/16 :goto_0

    .line 663
    .line 664
    :sswitch_2b
    const-string v9, "getSessionsByState"

    .line 665
    .line 666
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    move-result v8

    .line 670
    if-nez v8, :cond_2b

    .line 671
    .line 672
    goto/16 :goto_0

    .line 673
    .line 674
    :cond_2b
    const/16 v11, 0x14

    .line 675
    .line 676
    goto/16 :goto_0

    .line 677
    .line 678
    :sswitch_2c
    const-string v9, "cancelSession"

    .line 679
    .line 680
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    move-result v8

    .line 684
    if-nez v8, :cond_2c

    .line 685
    .line 686
    goto/16 :goto_0

    .line 687
    .line 688
    :cond_2c
    const/16 v11, 0x13

    .line 689
    .line 690
    goto/16 :goto_0

    .line 691
    .line 692
    :sswitch_2d
    const-string v9, "asyncMediaInformationSessionExecute"

    .line 693
    .line 694
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    move-result v8

    .line 698
    if-nez v8, :cond_2d

    .line 699
    .line 700
    goto/16 :goto_0

    .line 701
    .line 702
    :cond_2d
    const/16 v11, 0x12

    .line 703
    .line 704
    goto/16 :goto_0

    .line 705
    .line 706
    :sswitch_2e
    const-string v9, "enableRedirection"

    .line 707
    .line 708
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    move-result v8

    .line 712
    if-nez v8, :cond_2e

    .line 713
    .line 714
    goto/16 :goto_0

    .line 715
    .line 716
    :cond_2e
    const/16 v11, 0x11

    .line 717
    .line 718
    goto/16 :goto_0

    .line 719
    .line 720
    :sswitch_2f
    const-string v9, "getLastSession"

    .line 721
    .line 722
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 723
    .line 724
    .line 725
    move-result v8

    .line 726
    if-nez v8, :cond_2f

    .line 727
    .line 728
    goto/16 :goto_0

    .line 729
    .line 730
    :cond_2f
    const/16 v11, 0x10

    .line 731
    .line 732
    goto/16 :goto_0

    .line 733
    .line 734
    :sswitch_30
    const-string v9, "getSessionHistorySize"

    .line 735
    .line 736
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    move-result v8

    .line 740
    if-nez v8, :cond_30

    .line 741
    .line 742
    goto/16 :goto_0

    .line 743
    .line 744
    :cond_30
    const/16 v11, 0xf

    .line 745
    .line 746
    goto/16 :goto_0

    .line 747
    .line 748
    :sswitch_31
    const-string v9, "abstractSessionGetReturnCode"

    .line 749
    .line 750
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v8

    .line 754
    if-nez v8, :cond_31

    .line 755
    .line 756
    goto/16 :goto_0

    .line 757
    .line 758
    :cond_31
    const/16 v11, 0xe

    .line 759
    .line 760
    goto/16 :goto_0

    .line 761
    .line 762
    :sswitch_32
    const-string v9, "abstractSessionGetState"

    .line 763
    .line 764
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 765
    .line 766
    .line 767
    move-result v8

    .line 768
    if-nez v8, :cond_32

    .line 769
    .line 770
    goto/16 :goto_0

    .line 771
    .line 772
    :cond_32
    const/16 v11, 0xd

    .line 773
    .line 774
    goto/16 :goto_0

    .line 775
    .line 776
    :sswitch_33
    const-string v9, "ffmpegSessionGetStatistics"

    .line 777
    .line 778
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 779
    .line 780
    .line 781
    move-result v8

    .line 782
    if-nez v8, :cond_33

    .line 783
    .line 784
    goto/16 :goto_0

    .line 785
    .line 786
    :cond_33
    const/16 v11, 0xc

    .line 787
    .line 788
    goto/16 :goto_0

    .line 789
    .line 790
    :sswitch_34
    const-string v9, "disableStatistics"

    .line 791
    .line 792
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 793
    .line 794
    .line 795
    move-result v8

    .line 796
    if-nez v8, :cond_34

    .line 797
    .line 798
    goto/16 :goto_0

    .line 799
    .line 800
    :cond_34
    const/16 v11, 0xb

    .line 801
    .line 802
    goto/16 :goto_0

    .line 803
    .line 804
    :sswitch_35
    const-string v9, "getSession"

    .line 805
    .line 806
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    move-result v8

    .line 810
    if-nez v8, :cond_35

    .line 811
    .line 812
    goto/16 :goto_0

    .line 813
    .line 814
    :cond_35
    const/16 v11, 0xa

    .line 815
    .line 816
    goto/16 :goto_0

    .line 817
    .line 818
    :sswitch_36
    const-string v9, "cancel"

    .line 819
    .line 820
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 821
    .line 822
    .line 823
    move-result v8

    .line 824
    if-nez v8, :cond_36

    .line 825
    .line 826
    goto/16 :goto_0

    .line 827
    .line 828
    :cond_36
    const/16 v11, 0x9

    .line 829
    .line 830
    goto/16 :goto_0

    .line 831
    .line 832
    :sswitch_37
    const-string v9, "ffmpegSessionGetAllStatistics"

    .line 833
    .line 834
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 835
    .line 836
    .line 837
    move-result v8

    .line 838
    if-nez v8, :cond_37

    .line 839
    .line 840
    goto/16 :goto_0

    .line 841
    .line 842
    :cond_37
    const/16 v11, 0x8

    .line 843
    .line 844
    goto/16 :goto_0

    .line 845
    .line 846
    :sswitch_38
    const-string v9, "getBuildDate"

    .line 847
    .line 848
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    move-result v8

    .line 852
    if-nez v8, :cond_38

    .line 853
    .line 854
    goto :goto_0

    .line 855
    :cond_38
    const/4 v11, 0x7

    .line 856
    goto :goto_0

    .line 857
    :sswitch_39
    const-string v9, "asyncFFmpegSessionExecute"

    .line 858
    .line 859
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result v8

    .line 863
    if-nez v8, :cond_39

    .line 864
    .line 865
    goto :goto_0

    .line 866
    :cond_39
    const/4 v11, 0x6

    .line 867
    goto :goto_0

    .line 868
    :sswitch_3a
    const-string v9, "abstractSessionGetDuration"

    .line 869
    .line 870
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 871
    .line 872
    .line 873
    move-result v8

    .line 874
    if-nez v8, :cond_3a

    .line 875
    .line 876
    goto :goto_0

    .line 877
    :cond_3a
    const/4 v11, 0x5

    .line 878
    goto :goto_0

    .line 879
    :sswitch_3b
    const-string v9, "setFontDirectory"

    .line 880
    .line 881
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 882
    .line 883
    .line 884
    move-result v8

    .line 885
    if-nez v8, :cond_3b

    .line 886
    .line 887
    goto :goto_0

    .line 888
    :cond_3b
    const/4 v11, 0x4

    .line 889
    goto :goto_0

    .line 890
    :sswitch_3c
    const-string v9, "isLTSBuild"

    .line 891
    .line 892
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 893
    .line 894
    .line 895
    move-result v8

    .line 896
    if-nez v8, :cond_3c

    .line 897
    .line 898
    goto :goto_0

    .line 899
    :cond_3c
    const/4 v11, 0x3

    .line 900
    goto :goto_0

    .line 901
    :sswitch_3d
    const-string v9, "mediaInformationSession"

    .line 902
    .line 903
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 904
    .line 905
    .line 906
    move-result v8

    .line 907
    if-nez v8, :cond_3d

    .line 908
    .line 909
    goto :goto_0

    .line 910
    :cond_3d
    const/4 v11, 0x2

    .line 911
    goto :goto_0

    .line 912
    :sswitch_3e
    const-string v9, "ffmpegSession"

    .line 913
    .line 914
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 915
    .line 916
    .line 917
    move-result v8

    .line 918
    if-nez v8, :cond_3e

    .line 919
    .line 920
    goto :goto_0

    .line 921
    :cond_3e
    const/4 v11, 0x1

    .line 922
    goto :goto_0

    .line 923
    :sswitch_3f
    const-string v9, "getSafParameter"

    .line 924
    .line 925
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 926
    .line 927
    .line 928
    move-result v8

    .line 929
    if-nez v8, :cond_3f

    .line 930
    .line 931
    goto :goto_0

    .line 932
    :cond_3f
    const/4 v11, 0x0

    .line 933
    :goto_0
    const-string v8, "Invalid ffprobe json output."

    .line 934
    .line 935
    const-string v9, "INVALID_FFPROBE_JSON_OUTPUT"

    .line 936
    .line 937
    const-string v12, "fontNameMap"

    .line 938
    .line 939
    const-string v13, "Invalid arguments array."

    .line 940
    .line 941
    const-string v14, "INVALID_ARGUMENTS"

    .line 942
    .line 943
    const-string v15, "Invalid session id."

    .line 944
    .line 945
    const-string v10, "INVALID_SESSION"

    .line 946
    .line 947
    packed-switch v11, :pswitch_data_0

    .line 948
    .line 949
    .line 950
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 951
    .line 952
    invoke-virtual {v0, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->notImplementedAsync(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 953
    .line 954
    .line 955
    goto/16 :goto_2

    .line 956
    .line 957
    :pswitch_0
    if-eqz v1, :cond_40

    .line 958
    .line 959
    invoke-virtual {v6, v1, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->ffprobeSessionExecute(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 960
    .line 961
    .line 962
    goto/16 :goto_2

    .line 963
    .line 964
    :cond_40
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 965
    .line 966
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    goto/16 :goto_2

    .line 970
    .line 971
    :pswitch_1
    const-string v1, "strategy"

    .line 972
    .line 973
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    check-cast v0, Ljava/lang/Integer;

    .line 978
    .line 979
    if-eqz v0, :cond_41

    .line 980
    .line 981
    invoke-virtual {v6, v0, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->setLogRedirectionStrategy(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 982
    .line 983
    .line 984
    goto/16 :goto_2

    .line 985
    .line 986
    :cond_41
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 987
    .line 988
    const-string v1, "INVALID_LOG_REDIRECTION_STRATEGY"

    .line 989
    .line 990
    const-string v2, "Invalid log redirection strategy value."

    .line 991
    .line 992
    invoke-virtual {v0, v5, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    .line 994
    .line 995
    goto/16 :goto_2

    .line 996
    .line 997
    :pswitch_2
    if-eqz v4, :cond_42

    .line 998
    .line 999
    invoke-virtual {v6, v4, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->mediaInformationJsonParserFrom(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1000
    .line 1001
    .line 1002
    goto/16 :goto_2

    .line 1003
    .line 1004
    :cond_42
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1005
    .line 1006
    invoke-virtual {v0, v5, v9, v8}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    .line 1008
    .line 1009
    goto/16 :goto_2

    .line 1010
    .line 1011
    :pswitch_3
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->enableLogs(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1012
    .line 1013
    .line 1014
    goto/16 :goto_2

    .line 1015
    .line 1016
    :pswitch_4
    if-eqz v1, :cond_43

    .line 1017
    .line 1018
    invoke-virtual {v6, v1, v2, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->abstractSessionGetAllLogs(Ljava/lang/Integer;Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1019
    .line 1020
    .line 1021
    goto/16 :goto_2

    .line 1022
    .line 1023
    :cond_43
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1024
    .line 1025
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    .line 1027
    .line 1028
    goto/16 :goto_2

    .line 1029
    .line 1030
    :pswitch_5
    const-string v1, "title"

    .line 1031
    .line 1032
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v1

    .line 1036
    move-object v2, v1

    .line 1037
    check-cast v2, Ljava/lang/String;

    .line 1038
    .line 1039
    const-string v1, "type"

    .line 1040
    .line 1041
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v1

    .line 1045
    move-object v3, v1

    .line 1046
    check-cast v3, Ljava/lang/String;

    .line 1047
    .line 1048
    const-string v1, "extraTypes"

    .line 1049
    .line 1050
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v0

    .line 1054
    check-cast v0, Ljava/util/List;

    .line 1055
    .line 1056
    if-eqz v0, :cond_44

    .line 1057
    .line 1058
    const/4 v1, 0x0

    .line 1059
    new-array v1, v1, [Ljava/lang/String;

    .line 1060
    .line 1061
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    check-cast v0, [Ljava/lang/String;

    .line 1066
    .line 1067
    goto :goto_1

    .line 1068
    :cond_44
    const/4 v0, 0x0

    .line 1069
    :goto_1
    move-object v4, v0

    .line 1070
    if-eqz v7, :cond_45

    .line 1071
    .line 1072
    move-object/from16 v0, p0

    .line 1073
    .line 1074
    move-object v1, v7

    .line 1075
    move-object/from16 v5, p2

    .line 1076
    .line 1077
    invoke-virtual/range {v0 .. v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->selectDocument(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1078
    .line 1079
    .line 1080
    goto/16 :goto_2

    .line 1081
    .line 1082
    :cond_45
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1083
    .line 1084
    const-string v1, "INVALID_WRITABLE"

    .line 1085
    .line 1086
    const-string v2, "Invalid writable value."

    .line 1087
    .line 1088
    invoke-virtual {v0, v5, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    .line 1090
    .line 1091
    goto/16 :goto_2

    .line 1092
    .line 1093
    :pswitch_6
    const-string v1, "fontDirectoryList"

    .line 1094
    .line 1095
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v1

    .line 1099
    check-cast v1, Ljava/util/List;

    .line 1100
    .line 1101
    invoke-virtual {v0, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v0

    .line 1105
    check-cast v0, Ljava/util/Map;

    .line 1106
    .line 1107
    if-eqz v1, :cond_46

    .line 1108
    .line 1109
    invoke-virtual {v6, v1, v0, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->setFontDirectoryList(Ljava/util/List;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1110
    .line 1111
    .line 1112
    goto/16 :goto_2

    .line 1113
    .line 1114
    :cond_46
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1115
    .line 1116
    const-string v1, "INVALID_FONT_DIRECTORY_LIST"

    .line 1117
    .line 1118
    const-string v2, "Invalid font directory list."

    .line 1119
    .line 1120
    invoke-virtual {v0, v5, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    .line 1122
    .line 1123
    goto/16 :goto_2

    .line 1124
    .line 1125
    :pswitch_7
    if-eqz v4, :cond_47

    .line 1126
    .line 1127
    invoke-virtual {v6, v4, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->mediaInformationJsonParserFromWithError(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1128
    .line 1129
    .line 1130
    goto/16 :goto_2

    .line 1131
    .line 1132
    :cond_47
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1133
    .line 1134
    invoke-virtual {v0, v5, v9, v8}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    .line 1136
    .line 1137
    goto/16 :goto_2

    .line 1138
    .line 1139
    :pswitch_8
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getMediaInformationSessions(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1140
    .line 1141
    .line 1142
    goto/16 :goto_2

    .line 1143
    .line 1144
    :pswitch_9
    if-eqz v1, :cond_48

    .line 1145
    .line 1146
    invoke-virtual {v6, v1, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->messagesInTransmit(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1147
    .line 1148
    .line 1149
    goto/16 :goto_2

    .line 1150
    .line 1151
    :cond_48
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1152
    .line 1153
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    .line 1155
    .line 1156
    goto/16 :goto_2

    .line 1157
    .line 1158
    :pswitch_a
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getExternalLibraries(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1159
    .line 1160
    .line 1161
    goto/16 :goto_2

    .line 1162
    .line 1163
    :pswitch_b
    const-string v1, "path"

    .line 1164
    .line 1165
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v0

    .line 1169
    check-cast v0, Ljava/lang/String;

    .line 1170
    .line 1171
    if-eqz v0, :cond_49

    .line 1172
    .line 1173
    invoke-virtual {v6, v0, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->setFontconfigConfigurationPath(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1174
    .line 1175
    .line 1176
    goto/16 :goto_2

    .line 1177
    .line 1178
    :cond_49
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1179
    .line 1180
    const-string v1, "INVALID_PATH"

    .line 1181
    .line 1182
    const-string v2, "Invalid path."

    .line 1183
    .line 1184
    invoke-virtual {v0, v5, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    .line 1186
    .line 1187
    goto/16 :goto_2

    .line 1188
    .line 1189
    :pswitch_c
    if-eqz v1, :cond_4a

    .line 1190
    .line 1191
    invoke-virtual {v6, v1, v2, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->mediaInformationSessionExecute(Ljava/lang/Integer;Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1192
    .line 1193
    .line 1194
    goto/16 :goto_2

    .line 1195
    .line 1196
    :cond_4a
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1197
    .line 1198
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    .line 1200
    .line 1201
    goto/16 :goto_2

    .line 1202
    .line 1203
    :pswitch_d
    const-string v1, "input"

    .line 1204
    .line 1205
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v1

    .line 1209
    check-cast v1, Ljava/lang/String;

    .line 1210
    .line 1211
    const-string v2, "pipe"

    .line 1212
    .line 1213
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v0

    .line 1217
    check-cast v0, Ljava/lang/String;

    .line 1218
    .line 1219
    if-eqz v1, :cond_4b

    .line 1220
    .line 1221
    if-eqz v0, :cond_4b

    .line 1222
    .line 1223
    invoke-virtual {v6, v1, v0, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->writeToPipe(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1224
    .line 1225
    .line 1226
    goto/16 :goto_2

    .line 1227
    .line 1228
    :cond_4b
    if-eqz v0, :cond_4c

    .line 1229
    .line 1230
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1231
    .line 1232
    const-string v1, "INVALID_INPUT"

    .line 1233
    .line 1234
    const-string v2, "Invalid input value."

    .line 1235
    .line 1236
    invoke-virtual {v0, v5, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    .line 1238
    .line 1239
    goto/16 :goto_2

    .line 1240
    .line 1241
    :cond_4c
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1242
    .line 1243
    const-string v1, "INVALID_PIPE"

    .line 1244
    .line 1245
    const-string v2, "Invalid pipe value."

    .line 1246
    .line 1247
    invoke-virtual {v0, v5, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    .line 1249
    .line 1250
    goto/16 :goto_2

    .line 1251
    .line 1252
    :pswitch_e
    const-string v1, "sessionHistorySize"

    .line 1253
    .line 1254
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v0

    .line 1258
    check-cast v0, Ljava/lang/Integer;

    .line 1259
    .line 1260
    if-eqz v0, :cond_4d

    .line 1261
    .line 1262
    invoke-virtual {v6, v0, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->setSessionHistorySize(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1263
    .line 1264
    .line 1265
    goto/16 :goto_2

    .line 1266
    .line 1267
    :cond_4d
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1268
    .line 1269
    const-string v1, "INVALID_SIZE"

    .line 1270
    .line 1271
    const-string v2, "Invalid session history size value."

    .line 1272
    .line 1273
    invoke-virtual {v0, v5, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    .line 1275
    .line 1276
    goto/16 :goto_2

    .line 1277
    .line 1278
    :pswitch_f
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->disableLogs(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1279
    .line 1280
    .line 1281
    goto/16 :goto_2

    .line 1282
    .line 1283
    :pswitch_10
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getLastCompletedSession(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1284
    .line 1285
    .line 1286
    goto/16 :goto_2

    .line 1287
    .line 1288
    :pswitch_11
    const-string v1, "variableName"

    .line 1289
    .line 1290
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v1

    .line 1294
    check-cast v1, Ljava/lang/String;

    .line 1295
    .line 1296
    const-string v2, "variableValue"

    .line 1297
    .line 1298
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v0

    .line 1302
    check-cast v0, Ljava/lang/String;

    .line 1303
    .line 1304
    if-eqz v1, :cond_4e

    .line 1305
    .line 1306
    if-eqz v0, :cond_4e

    .line 1307
    .line 1308
    invoke-virtual {v6, v1, v0, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1309
    .line 1310
    .line 1311
    goto/16 :goto_2

    .line 1312
    .line 1313
    :cond_4e
    if-eqz v0, :cond_4f

    .line 1314
    .line 1315
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1316
    .line 1317
    const-string v1, "INVALID_NAME"

    .line 1318
    .line 1319
    const-string v2, "Invalid environment variable name."

    .line 1320
    .line 1321
    invoke-virtual {v0, v5, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    .line 1323
    .line 1324
    goto/16 :goto_2

    .line 1325
    .line 1326
    :cond_4f
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1327
    .line 1328
    const-string v1, "INVALID_VALUE"

    .line 1329
    .line 1330
    const-string v2, "Invalid environment variable value."

    .line 1331
    .line 1332
    invoke-virtual {v0, v5, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    .line 1334
    .line 1335
    goto/16 :goto_2

    .line 1336
    .line 1337
    :pswitch_12
    if-eqz v1, :cond_50

    .line 1338
    .line 1339
    invoke-virtual {v6, v1, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->abstractSessionGetEndTime(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1340
    .line 1341
    .line 1342
    goto/16 :goto_2

    .line 1343
    .line 1344
    :cond_50
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1345
    .line 1346
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    .line 1348
    .line 1349
    goto/16 :goto_2

    .line 1350
    .line 1351
    :pswitch_13
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getLogRedirectionStrategy(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1352
    .line 1353
    .line 1354
    goto/16 :goto_2

    .line 1355
    .line 1356
    :pswitch_14
    if-eqz v1, :cond_51

    .line 1357
    .line 1358
    invoke-virtual {v6, v1, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->abstractSessionGetLogs(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1359
    .line 1360
    .line 1361
    goto/16 :goto_2

    .line 1362
    .line 1363
    :cond_51
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1364
    .line 1365
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    .line 1367
    .line 1368
    goto/16 :goto_2

    .line 1369
    .line 1370
    :pswitch_15
    if-eqz v1, :cond_52

    .line 1371
    .line 1372
    invoke-virtual {v6, v1, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->ffmpegSessionExecute(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1373
    .line 1374
    .line 1375
    goto/16 :goto_2

    .line 1376
    .line 1377
    :cond_52
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1378
    .line 1379
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    .line 1381
    .line 1382
    goto/16 :goto_2

    .line 1383
    .line 1384
    :pswitch_16
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->disableRedirection(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1385
    .line 1386
    .line 1387
    goto/16 :goto_2

    .line 1388
    .line 1389
    :pswitch_17
    if-eqz v3, :cond_53

    .line 1390
    .line 1391
    invoke-virtual {v6, v3, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->ffprobeSession(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1392
    .line 1393
    .line 1394
    goto/16 :goto_2

    .line 1395
    .line 1396
    :cond_53
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1397
    .line 1398
    invoke-virtual {v0, v5, v14, v13}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    .line 1400
    .line 1401
    goto/16 :goto_2

    .line 1402
    .line 1403
    :pswitch_18
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->registerNewFFmpegPipe(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1404
    .line 1405
    .line 1406
    goto/16 :goto_2

    .line 1407
    .line 1408
    :pswitch_19
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->clearSessions(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1409
    .line 1410
    .line 1411
    goto/16 :goto_2

    .line 1412
    .line 1413
    :pswitch_1a
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getFFprobeSessions(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1414
    .line 1415
    .line 1416
    goto/16 :goto_2

    .line 1417
    .line 1418
    :pswitch_1b
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getPackageName(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1419
    .line 1420
    .line 1421
    goto/16 :goto_2

    .line 1422
    .line 1423
    :pswitch_1c
    const-string v1, "ffmpegPipePath"

    .line 1424
    .line 1425
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v0

    .line 1429
    check-cast v0, Ljava/lang/String;

    .line 1430
    .line 1431
    if-eqz v0, :cond_54

    .line 1432
    .line 1433
    invoke-virtual {v6, v0, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->closeFFmpegPipe(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1434
    .line 1435
    .line 1436
    goto/16 :goto_2

    .line 1437
    .line 1438
    :cond_54
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1439
    .line 1440
    const-string v1, "INVALID_PIPE_PATH"

    .line 1441
    .line 1442
    const-string v2, "Invalid ffmpeg pipe path."

    .line 1443
    .line 1444
    invoke-virtual {v0, v5, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    .line 1446
    .line 1447
    goto/16 :goto_2

    .line 1448
    .line 1449
    :pswitch_1d
    if-eqz v1, :cond_55

    .line 1450
    .line 1451
    invoke-virtual {v6, v1, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->asyncFFprobeSessionExecute(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1452
    .line 1453
    .line 1454
    goto/16 :goto_2

    .line 1455
    .line 1456
    :cond_55
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1457
    .line 1458
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    .line 1460
    .line 1461
    goto/16 :goto_2

    .line 1462
    .line 1463
    :pswitch_1e
    if-eqz v1, :cond_56

    .line 1464
    .line 1465
    invoke-virtual {v6, v1, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->abstractSessionGetFailStackTrace(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1466
    .line 1467
    .line 1468
    goto/16 :goto_2

    .line 1469
    .line 1470
    :cond_56
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1471
    .line 1472
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    .line 1474
    .line 1475
    goto/16 :goto_2

    .line 1476
    .line 1477
    :pswitch_1f
    const-string v1, "signal"

    .line 1478
    .line 1479
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v0

    .line 1483
    check-cast v0, Ljava/lang/Integer;

    .line 1484
    .line 1485
    if-eqz v0, :cond_57

    .line 1486
    .line 1487
    invoke-virtual {v6, v0, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->ignoreSignal(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1488
    .line 1489
    .line 1490
    goto/16 :goto_2

    .line 1491
    .line 1492
    :cond_57
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1493
    .line 1494
    const-string v1, "INVALID_SIGNAL"

    .line 1495
    .line 1496
    const-string v2, "Invalid signal value."

    .line 1497
    .line 1498
    invoke-virtual {v0, v5, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    .line 1500
    .line 1501
    goto/16 :goto_2

    .line 1502
    .line 1503
    :pswitch_20
    if-eqz v1, :cond_58

    .line 1504
    .line 1505
    invoke-virtual {v6, v1, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->abstractSessionThereAreAsynchronousMessagesInTransmit(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1506
    .line 1507
    .line 1508
    goto/16 :goto_2

    .line 1509
    .line 1510
    :cond_58
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1511
    .line 1512
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    .line 1514
    .line 1515
    goto/16 :goto_2

    .line 1516
    .line 1517
    :pswitch_21
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getArch(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1518
    .line 1519
    .line 1520
    goto/16 :goto_2

    .line 1521
    .line 1522
    :pswitch_22
    if-eqz v1, :cond_59

    .line 1523
    .line 1524
    invoke-virtual {v6, v1, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getMediaInformation(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1525
    .line 1526
    .line 1527
    goto/16 :goto_2

    .line 1528
    .line 1529
    :cond_59
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1530
    .line 1531
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    .line 1533
    .line 1534
    goto/16 :goto_2

    .line 1535
    .line 1536
    :pswitch_23
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getLogLevel(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1537
    .line 1538
    .line 1539
    goto/16 :goto_2

    .line 1540
    .line 1541
    :pswitch_24
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getFFmpegSessions(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1542
    .line 1543
    .line 1544
    goto/16 :goto_2

    .line 1545
    .line 1546
    :pswitch_25
    const-string v1, "level"

    .line 1547
    .line 1548
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v0

    .line 1552
    check-cast v0, Ljava/lang/Integer;

    .line 1553
    .line 1554
    if-eqz v0, :cond_5a

    .line 1555
    .line 1556
    invoke-virtual {v6, v0, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->setLogLevel(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1557
    .line 1558
    .line 1559
    goto/16 :goto_2

    .line 1560
    .line 1561
    :cond_5a
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1562
    .line 1563
    const-string v1, "INVALID_LEVEL"

    .line 1564
    .line 1565
    const-string v2, "Invalid level value."

    .line 1566
    .line 1567
    invoke-virtual {v0, v5, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    .line 1569
    .line 1570
    goto/16 :goto_2

    .line 1571
    .line 1572
    :pswitch_26
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->enableStatistics(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1573
    .line 1574
    .line 1575
    goto/16 :goto_2

    .line 1576
    .line 1577
    :pswitch_27
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getPlatform(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1578
    .line 1579
    .line 1580
    goto/16 :goto_2

    .line 1581
    .line 1582
    :pswitch_28
    if-eqz v1, :cond_5b

    .line 1583
    .line 1584
    invoke-virtual {v6, v1, v2, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->abstractSessionGetAllLogsAsString(Ljava/lang/Integer;Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1585
    .line 1586
    .line 1587
    goto/16 :goto_2

    .line 1588
    .line 1589
    :cond_5b
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1590
    .line 1591
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    .line 1593
    .line 1594
    goto/16 :goto_2

    .line 1595
    .line 1596
    :pswitch_29
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getFFmpegVersion(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1597
    .line 1598
    .line 1599
    goto/16 :goto_2

    .line 1600
    .line 1601
    :pswitch_2a
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getSessions(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1602
    .line 1603
    .line 1604
    goto/16 :goto_2

    .line 1605
    .line 1606
    :pswitch_2b
    const-string v1, "state"

    .line 1607
    .line 1608
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v0

    .line 1612
    check-cast v0, Ljava/lang/Integer;

    .line 1613
    .line 1614
    if-eqz v0, :cond_5c

    .line 1615
    .line 1616
    invoke-virtual {v6, v0, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getSessionsByState(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1617
    .line 1618
    .line 1619
    goto/16 :goto_2

    .line 1620
    .line 1621
    :cond_5c
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1622
    .line 1623
    const-string v1, "INVALID_SESSION_STATE"

    .line 1624
    .line 1625
    const-string v2, "Invalid session state value."

    .line 1626
    .line 1627
    invoke-virtual {v0, v5, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    .line 1629
    .line 1630
    goto/16 :goto_2

    .line 1631
    .line 1632
    :pswitch_2c
    if-eqz v1, :cond_5d

    .line 1633
    .line 1634
    invoke-virtual {v6, v1, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->cancelSession(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1635
    .line 1636
    .line 1637
    goto/16 :goto_2

    .line 1638
    .line 1639
    :cond_5d
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1640
    .line 1641
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    .line 1643
    .line 1644
    goto/16 :goto_2

    .line 1645
    .line 1646
    :pswitch_2d
    if-eqz v1, :cond_5e

    .line 1647
    .line 1648
    invoke-virtual {v6, v1, v2, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->asyncMediaInformationSessionExecute(Ljava/lang/Integer;Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1649
    .line 1650
    .line 1651
    goto/16 :goto_2

    .line 1652
    .line 1653
    :cond_5e
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1654
    .line 1655
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    .line 1657
    .line 1658
    goto/16 :goto_2

    .line 1659
    .line 1660
    :pswitch_2e
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->enableRedirection(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1661
    .line 1662
    .line 1663
    goto/16 :goto_2

    .line 1664
    .line 1665
    :pswitch_2f
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getLastSession(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1666
    .line 1667
    .line 1668
    goto/16 :goto_2

    .line 1669
    .line 1670
    :pswitch_30
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getSessionHistorySize(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1671
    .line 1672
    .line 1673
    goto/16 :goto_2

    .line 1674
    .line 1675
    :pswitch_31
    if-eqz v1, :cond_5f

    .line 1676
    .line 1677
    invoke-virtual {v6, v1, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->abstractSessionGetReturnCode(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1678
    .line 1679
    .line 1680
    goto/16 :goto_2

    .line 1681
    .line 1682
    :cond_5f
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1683
    .line 1684
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    .line 1686
    .line 1687
    goto/16 :goto_2

    .line 1688
    .line 1689
    :pswitch_32
    if-eqz v1, :cond_60

    .line 1690
    .line 1691
    invoke-virtual {v6, v1, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->abstractSessionGetState(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1692
    .line 1693
    .line 1694
    goto/16 :goto_2

    .line 1695
    .line 1696
    :cond_60
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1697
    .line 1698
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    .line 1700
    .line 1701
    goto/16 :goto_2

    .line 1702
    .line 1703
    :pswitch_33
    if-eqz v1, :cond_61

    .line 1704
    .line 1705
    invoke-virtual {v6, v1, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->ffmpegSessionGetStatistics(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1706
    .line 1707
    .line 1708
    goto/16 :goto_2

    .line 1709
    .line 1710
    :cond_61
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1711
    .line 1712
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    .line 1714
    .line 1715
    goto/16 :goto_2

    .line 1716
    .line 1717
    :pswitch_34
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->disableStatistics(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1718
    .line 1719
    .line 1720
    goto/16 :goto_2

    .line 1721
    .line 1722
    :pswitch_35
    if-eqz v1, :cond_62

    .line 1723
    .line 1724
    invoke-virtual {v6, v1, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getSession(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1725
    .line 1726
    .line 1727
    goto/16 :goto_2

    .line 1728
    .line 1729
    :cond_62
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1730
    .line 1731
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    .line 1733
    .line 1734
    goto/16 :goto_2

    .line 1735
    .line 1736
    :pswitch_36
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->cancel(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1737
    .line 1738
    .line 1739
    goto/16 :goto_2

    .line 1740
    .line 1741
    :pswitch_37
    if-eqz v1, :cond_63

    .line 1742
    .line 1743
    invoke-virtual {v6, v1, v2, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->ffmpegSessionGetAllStatistics(Ljava/lang/Integer;Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1744
    .line 1745
    .line 1746
    goto/16 :goto_2

    .line 1747
    .line 1748
    :cond_63
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1749
    .line 1750
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    .line 1752
    .line 1753
    goto/16 :goto_2

    .line 1754
    .line 1755
    :pswitch_38
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getBuildDate(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1756
    .line 1757
    .line 1758
    goto/16 :goto_2

    .line 1759
    .line 1760
    :pswitch_39
    if-eqz v1, :cond_64

    .line 1761
    .line 1762
    invoke-virtual {v6, v1, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->asyncFFmpegSessionExecute(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1763
    .line 1764
    .line 1765
    goto/16 :goto_2

    .line 1766
    .line 1767
    :cond_64
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1768
    .line 1769
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    .line 1771
    .line 1772
    goto/16 :goto_2

    .line 1773
    .line 1774
    :pswitch_3a
    if-eqz v1, :cond_65

    .line 1775
    .line 1776
    invoke-virtual {v6, v1, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->abstractSessionGetDuration(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1777
    .line 1778
    .line 1779
    goto/16 :goto_2

    .line 1780
    .line 1781
    :cond_65
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1782
    .line 1783
    invoke-virtual {v0, v5, v10, v15}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    .line 1785
    .line 1786
    goto/16 :goto_2

    .line 1787
    .line 1788
    :pswitch_3b
    const-string v1, "fontDirectory"

    .line 1789
    .line 1790
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1791
    .line 1792
    .line 1793
    move-result-object v1

    .line 1794
    check-cast v1, Ljava/lang/String;

    .line 1795
    .line 1796
    invoke-virtual {v0, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v0

    .line 1800
    check-cast v0, Ljava/util/Map;

    .line 1801
    .line 1802
    if-eqz v1, :cond_66

    .line 1803
    .line 1804
    invoke-virtual {v6, v1, v0, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->setFontDirectory(Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1805
    .line 1806
    .line 1807
    goto :goto_2

    .line 1808
    :cond_66
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1809
    .line 1810
    const-string v1, "INVALID_FONT_DIRECTORY"

    .line 1811
    .line 1812
    const-string v2, "Invalid font directory."

    .line 1813
    .line 1814
    invoke-virtual {v0, v5, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    .line 1816
    .line 1817
    goto :goto_2

    .line 1818
    :pswitch_3c
    invoke-virtual {v6, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->isLTSBuild(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1819
    .line 1820
    .line 1821
    goto :goto_2

    .line 1822
    :pswitch_3d
    if-eqz v3, :cond_67

    .line 1823
    .line 1824
    invoke-virtual {v6, v3, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->mediaInformationSession(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1825
    .line 1826
    .line 1827
    goto :goto_2

    .line 1828
    :cond_67
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1829
    .line 1830
    invoke-virtual {v0, v5, v14, v13}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    .line 1832
    .line 1833
    goto :goto_2

    .line 1834
    :pswitch_3e
    if-eqz v3, :cond_68

    .line 1835
    .line 1836
    invoke-virtual {v6, v3, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->ffmpegSession(Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1837
    .line 1838
    .line 1839
    goto :goto_2

    .line 1840
    :cond_68
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1841
    .line 1842
    invoke-virtual {v0, v5, v14, v13}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    .line 1844
    .line 1845
    goto :goto_2

    .line 1846
    :pswitch_3f
    const-string v1, "uri"

    .line 1847
    .line 1848
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1849
    .line 1850
    .line 1851
    move-result-object v1

    .line 1852
    check-cast v1, Ljava/lang/String;

    .line 1853
    .line 1854
    const-string v2, "openMode"

    .line 1855
    .line 1856
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 1857
    .line 1858
    .line 1859
    move-result-object v0

    .line 1860
    check-cast v0, Ljava/lang/String;

    .line 1861
    .line 1862
    if-eqz v1, :cond_69

    .line 1863
    .line 1864
    if-eqz v0, :cond_69

    .line 1865
    .line 1866
    invoke-virtual {v6, v1, v0, v5}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->getSafParameter(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1867
    .line 1868
    .line 1869
    goto :goto_2

    .line 1870
    :cond_69
    if-eqz v1, :cond_6a

    .line 1871
    .line 1872
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1873
    .line 1874
    const-string v1, "INVALID_OPEN_MODE"

    .line 1875
    .line 1876
    const-string v2, "Invalid openMode value."

    .line 1877
    .line 1878
    invoke-virtual {v0, v5, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    .line 1880
    .line 1881
    goto :goto_2

    .line 1882
    :cond_6a
    iget-object v0, v6, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 1883
    .line 1884
    const-string v1, "INVALID_URI"

    .line 1885
    .line 1886
    const-string v2, "Invalid uri value."

    .line 1887
    .line 1888
    invoke-virtual {v0, v5, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    .line 1890
    .line 1891
    :goto_2
    return-void

    .line 1892
    nop

    .line 1893
    :sswitch_data_0
    .sparse-switch
        -0x7e6482d9 -> :sswitch_3f
        -0x7d5ff76f -> :sswitch_3e
        -0x7202c932 -> :sswitch_3d
        -0x6f42e773 -> :sswitch_3c
        -0x67f04264 -> :sswitch_3b
        -0x66a401aa -> :sswitch_3a
        -0x629525e0 -> :sswitch_39
        -0x541b4b7a -> :sswitch_38
        -0x52d40761 -> :sswitch_37
        -0x5185d186 -> :sswitch_36
        -0x4be241a0 -> :sswitch_35
        -0x49b3d1d5 -> :sswitch_34
        -0x49773bf8 -> :sswitch_33
        -0x48ab64f1 -> :sswitch_32
        -0x47653081 -> :sswitch_31
        -0x447e03cb -> :sswitch_30
        -0x3f8b2616 -> :sswitch_2f
        -0x3c0bbad7 -> :sswitch_2e
        -0x3bd93d9d -> :sswitch_2d
        -0x3ad17144 -> :sswitch_2c
        -0x3411fb19 -> :sswitch_2b
        -0x3065f1ed -> :sswitch_2a
        -0x17904cc3 -> :sswitch_29
        -0x177a550f -> :sswitch_28
        -0x14685a17 -> :sswitch_27
        -0x139f14fa -> :sswitch_26
        -0x1278eede -> :sswitch_25
        -0x1067f928 -> :sswitch_24
        -0xd314fea -> :sswitch_23
        -0x80b01e2 -> :sswitch_22
        -0x482c734 -> :sswitch_21
        0x256bd39 -> :sswitch_20
        0x5d1331a -> :sswitch_1f
        0x801109d -> :sswitch_1e
        0xab4da13 -> :sswitch_1d
        0xfd2f98b -> :sswitch_1c
        0x1000d6bb -> :sswitch_1b
        0x24c29597 -> :sswitch_1a
        0x27bf4e0a -> :sswitch_19
        0x2cf77550 -> :sswitch_18
        0x358d3986 -> :sswitch_17
        0x377166a4 -> :sswitch_16
        0x3de2f1a4 -> :sswitch_15
        0x3fb52771 -> :sswitch_14
        0x42d08b51 -> :sswitch_13
        0x45e19946 -> :sswitch_12
        0x487741ed -> :sswitch_11
        0x4d2630f7 -> :sswitch_10
        0x50a6a8b7 -> :sswitch_f
        0x52ad7e41 -> :sswitch_e
        0x558bef88 -> :sswitch_d
        0x569db4c7 -> :sswitch_c
        0x576a5428 -> :sswitch_b
        0x5cbb0a58 -> :sswitch_a
        0x5d58fd61 -> :sswitch_9
        0x61b634db -> :sswitch_8
        0x663388a9 -> :sswitch_7
        0x68a3b45a -> :sswitch_6
        0x6c1fae37 -> :sswitch_5
        0x6f4c29ee -> :sswitch_4
        0x70d4e5d2 -> :sswitch_3
        0x73f50439 -> :sswitch_2
        0x7514275d -> :sswitch_1
        0x793fb30f -> :sswitch_0
    .end sparse-switch

    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    .line 1983
    .line 1984
    .line 1985
    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    .line 1998
    .line 1999
    .line 2000
    .line 2001
    .line 2002
    .line 2003
    .line 2004
    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    .line 2010
    .line 2011
    .line 2012
    .line 2013
    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    .line 2020
    .line 2021
    .line 2022
    .line 2023
    .line 2024
    .line 2025
    .line 2026
    .line 2027
    .line 2028
    .line 2029
    .line 2030
    .line 2031
    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    .line 2038
    .line 2039
    .line 2040
    .line 2041
    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    .line 2050
    .line 2051
    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    .line 2060
    .line 2061
    .line 2062
    .line 2063
    .line 2064
    .line 2065
    .line 2066
    .line 2067
    .line 2068
    .line 2069
    .line 2070
    .line 2071
    .line 2072
    .line 2073
    .line 2074
    .line 2075
    .line 2076
    .line 2077
    .line 2078
    .line 2079
    .line 2080
    .line 2081
    .line 2082
    .line 2083
    .line 2084
    .line 2085
    .line 2086
    .line 2087
    .line 2088
    .line 2089
    .line 2090
    .line 2091
    .line 2092
    .line 2093
    .line 2094
    .line 2095
    .line 2096
    .line 2097
    .line 2098
    .line 2099
    .line 2100
    .line 2101
    .line 2102
    .line 2103
    .line 2104
    .line 2105
    .line 2106
    .line 2107
    .line 2108
    .line 2109
    .line 2110
    .line 2111
    .line 2112
    .line 2113
    .line 2114
    .line 2115
    .line 2116
    .line 2117
    .line 2118
    .line 2119
    .line 2120
    .line 2121
    .line 2122
    .line 2123
    .line 2124
    .line 2125
    .line 2126
    .line 2127
    .line 2128
    .line 2129
    .line 2130
    .line 2131
    .line 2132
    .line 2133
    .line 2134
    .line 2135
    .line 2136
    .line 2137
    .line 2138
    .line 2139
    .line 2140
    .line 2141
    .line 2142
    .line 2143
    .line 2144
    .line 2145
    .line 2146
    .line 2147
    .line 2148
    .line 2149
    .line 2150
    .line 2151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected registerGlobalCallbacks()V
    .locals 1

    .line 1
    new-instance v0, Lcom/arthenica/ffmpegkit/flutter/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/arthenica/ffmpegkit/flutter/e;-><init>(Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->enableFFmpegSessionCompleteCallback(Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/arthenica/ffmpegkit/flutter/f;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/arthenica/ffmpegkit/flutter/f;-><init>(Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->enableFFprobeSessionCompleteCallback(Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/arthenica/ffmpegkit/flutter/g;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/arthenica/ffmpegkit/flutter/g;-><init>(Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->enableMediaInformationSessionCompleteCallback(Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/arthenica/ffmpegkit/flutter/h;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/arthenica/ffmpegkit/flutter/h;-><init>(Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->enableLogCallback(Lcom/arthenica/ffmpegkit/LogCallback;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/arthenica/ffmpegkit/flutter/i;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/arthenica/ffmpegkit/flutter/i;-><init>(Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->enableStatisticsCallback(Lcom/arthenica/ffmpegkit/StatisticsCallback;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method protected registerNewFFmpegPipe(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->registerNewFFmpegPipe(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, p1, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "ffmpeg-kit-flutter"

    .line 16
    .line 17
    const-string v1, "Cannot registerNewFFmpegPipe. Context is null."

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 23
    .line 24
    const-string v1, "INVALID_CONTEXT"

    .line 25
    .line 26
    const-string v2, "Context is null."

    .line 27
    .line 28
    invoke-virtual {v0, p1, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method protected selectDocument(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v3, "android.intent.action.CREATE_DOCUMENT"

    .line 12
    .line 13
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 21
    .line 22
    const-string v3, "android.intent.action.GET_CONTENT"

    .line 23
    .line 24
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v3, "android.intent.category.OPENABLE"

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    :goto_0
    if-eqz p3, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string v3, "*/*"

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    :goto_1
    if-eqz p2, :cond_2

    .line 47
    .line 48
    const-string v3, "android.intent.extra.TITLE"

    .line 49
    .line 50
    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    :cond_2
    if-eqz p4, :cond_3

    .line 54
    .line 55
    const-string v3, "android.intent.extra.MIME_TYPES"

    .line 56
    .line 57
    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object v3, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->context:Landroid/content/Context;

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x2

    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v7, 0x4

    .line 66
    const-string v8, "ffmpeg-kit-flutter"

    .line 67
    .line 68
    if-eqz v3, :cond_8

    .line 69
    .line 70
    iget-object v3, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->activity:Landroid/app/Activity;

    .line 71
    .line 72
    if-eqz v3, :cond_6

    .line 73
    .line 74
    :try_start_0
    iput-object p5, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->lastInitiatedIntentResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_4

    .line 81
    .line 82
    const/16 v9, 0x4e20

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    const/16 v9, 0x2710

    .line 86
    .line 87
    :goto_2
    invoke-virtual {v3, v0, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_6

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-array v3, v7, [Ljava/lang/Object;

    .line 93
    .line 94
    aput-object p1, v3, v6

    .line 95
    .line 96
    aput-object p3, v3, v2

    .line 97
    .line 98
    aput-object p2, v3, v5

    .line 99
    .line 100
    if-nez p4, :cond_5

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    :goto_3
    aput-object v4, v3, v1

    .line 108
    .line 109
    const-string p1, "Failed to selectDocument using parameters writable: %s, type: %s, title: %s and extra types: %s!"

    .line 110
    .line 111
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v8, p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 119
    .line 120
    const-string p2, "SELECT_FAILED"

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {p1, p5, p2, p3}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_6
    new-array v0, v7, [Ljava/lang/Object;

    .line 131
    .line 132
    aput-object p1, v0, v6

    .line 133
    .line 134
    aput-object p3, v0, v2

    .line 135
    .line 136
    aput-object p2, v0, v5

    .line 137
    .line 138
    if-nez p4, :cond_7

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_7
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    :goto_4
    aput-object v4, v0, v1

    .line 146
    .line 147
    const-string p1, "Cannot selectDocument using parameters writable: %s, type: %s, title: %s and extra types: %s. Activity is null."

    .line 148
    .line 149
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 157
    .line 158
    const-string p2, "INVALID_ACTIVITY"

    .line 159
    .line 160
    const-string p3, "Activity is null."

    .line 161
    .line 162
    invoke-virtual {p1, p5, p2, p3}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_8
    new-array v0, v7, [Ljava/lang/Object;

    .line 167
    .line 168
    aput-object p1, v0, v6

    .line 169
    .line 170
    aput-object p3, v0, v2

    .line 171
    .line 172
    aput-object p2, v0, v5

    .line 173
    .line 174
    if-nez p4, :cond_9

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_9
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    :goto_5
    aput-object v4, v0, v1

    .line 182
    .line 183
    const-string p1, "Cannot selectDocument using parameters writable: %s, type: %s, title: %s and extra types: %s. Context is null."

    .line 184
    .line 185
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 193
    .line 194
    const-string p2, "INVALID_CONTEXT"

    .line 195
    .line 196
    const-string p3, "Context is null."

    .line 197
    .line 198
    invoke-virtual {p1, p5, p2, p3}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :goto_6
    return-void
.end method

.method protected setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p3, p2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected setFontDirectory(Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->setFontDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p3, p2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p1, "ffmpeg-kit-flutter"

    .line 16
    .line 17
    const-string p2, "Cannot setFontDirectory. Context is null."

    .line 18
    .line 19
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 23
    .line 24
    const-string p2, "INVALID_CONTEXT"

    .line 25
    .line 26
    const-string v0, "Context is null."

    .line 27
    .line 28
    invoke-virtual {p1, p3, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method protected setFontDirectoryList(Ljava/util/List;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->context:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->setFontDirectoryList(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p3, p2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p1, "ffmpeg-kit-flutter"

    .line 16
    .line 17
    const-string p2, "Cannot setFontDirectoryList. Context is null."

    .line 18
    .line 19
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 23
    .line 24
    const-string p2, "INVALID_CONTEXT"

    .line 25
    .line 26
    const-string v0, "Context is null."

    .line 27
    .line 28
    invoke-virtual {p1, p3, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method protected setFontconfigConfigurationPath(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->setFontconfigConfigurationPath(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected setLogLevel(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/Level;->from(I)Lcom/arthenica/ffmpegkit/Level;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->setLogLevel(Lcom/arthenica/ffmpegkit/Level;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected setLogRedirectionStrategy(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->toLogRedirectionStrategy(I)Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->setLogRedirectionStrategy(Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected setSessionHistorySize(Ljava/lang/Integer;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->setSessionHistorySize(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, p2, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected uninit()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->uninitMethodChannel()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->uninitEventChannel()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->context:Landroid/content/Context;

    .line 9
    .line 10
    const-string v0, "ffmpeg-kit-flutter"

    .line 11
    .line 12
    const-string v1, "FFmpegKitFlutterPlugin uninitialized."

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected uninitEventChannel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->eventChannel:Lio/flutter/plugin/common/EventChannel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ffmpeg-kit-flutter"

    .line 6
    .line 7
    const-string v1, "FFmpegKitFlutterPlugin event channel was already uninitialised."

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->eventChannel:Lio/flutter/plugin/common/EventChannel;

    .line 18
    .line 19
    return-void
.end method

.method protected uninitMethodChannel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ffmpeg-kit-flutter"

    .line 6
    .line 7
    const-string v1, "FFmpegKitFlutterPlugin method channel was already uninitialised."

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 18
    .line 19
    return-void
.end method

.method protected writeToPipe(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, v1, p3}, Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->asyncExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 11
    .line 12
    .line 13
    return-void
.end method
