.class public Lcom/arthenica/ffmpegkit/FFmpegKitConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;
    }
.end annotation


# static fields
.field static final FFMPEG_KIT_NAMED_PIPE_PREFIX:Ljava/lang/String; = "fk_pipe_"

.field static final TAG:Ljava/lang/String; = "ffmpeg-kit"

.field private static activeLogLevel:Lcom/arthenica/ffmpegkit/Level;

.field private static asyncConcurrencyLimit:I

.field private static asyncExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static globalFFmpegSessionCompleteCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

.field private static globalFFprobeSessionCompleteCallback:Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;

.field private static globalLogCallback:Lcom/arthenica/ffmpegkit/LogCallback;

.field private static globalLogRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

.field private static globalMediaInformationSessionCompleteCallback:Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

.field private static globalStatisticsCallback:Lcom/arthenica/ffmpegkit/StatisticsCallback;

.field private static final safFileDescriptorMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;",
            ">;"
        }
    .end annotation
.end field

.field private static final safIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;",
            ">;"
        }
    .end annotation
.end field

.field private static final sessionHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Session;",
            ">;"
        }
    .end annotation
.end field

.field private static final sessionHistoryLock:Ljava/lang/Object;

.field private static final sessionHistoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/arthenica/ffmpegkit/Session;",
            ">;"
        }
    .end annotation
.end field

.field private static sessionHistorySize:I

.field private static final uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "com.arthenica"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->registerRootPackage(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Loading ffmpeg-kit."

    .line 7
    .line 8
    const-string v1, "ffmpeg-kit"

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadFFmpeg()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadFFmpegKit(Z)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadLogLevel()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/Level;->from(I)Lcom/arthenica/ffmpegkit/Level;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->activeLogLevel:Lcom/arthenica/ffmpegkit/Level;

    .line 37
    .line 38
    const/16 v0, 0xa

    .line 39
    .line 40
    sput v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncConcurrencyLimit:I

    .line 41
    .line 42
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sput-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    sput v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistorySize:I

    .line 49
    .line 50
    new-instance v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$1;

    .line 51
    .line 52
    invoke-direct {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$1;-><init>()V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryMap:Ljava/util/Map;

    .line 56
    .line 57
    new-instance v0, Ljava/util/LinkedList;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    .line 63
    .line 64
    new-instance v0, Ljava/lang/Object;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    sput-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogCallback:Lcom/arthenica/ffmpegkit/LogCallback;

    .line 73
    .line 74
    sput-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalStatisticsCallback:Lcom/arthenica/ffmpegkit/StatisticsCallback;

    .line 75
    .line 76
    sput-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalFFmpegSessionCompleteCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    .line 77
    .line 78
    sput-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalFFprobeSessionCompleteCallback:Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;

    .line 79
    .line 80
    sput-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalMediaInformationSessionCompleteCallback:Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

    .line 81
    .line 82
    new-instance v0, Landroid/util/SparseArray;

    .line 83
    .line 84
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safIdMap:Landroid/util/SparseArray;

    .line 88
    .line 89
    new-instance v0, Landroid/util/SparseArray;

    .line 90
    .line 91
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 92
    .line 93
    .line 94
    sput-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safFileDescriptorMap:Landroid/util/SparseArray;

    .line 95
    .line 96
    sget-object v0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->PRINT_LOGS_WHEN_NO_CALLBACKS_DEFINED:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 97
    .line 98
    sput-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 99
    .line 100
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadPackageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadAbi()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadVersion()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadBuildDate()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string v2, "Loaded ffmpeg-kit-%s-%s-%s-%s."

    .line 121
    .line 122
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
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

.method static bridge synthetic a()I
    .locals 1

    .line 1
    sget v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistorySize:I

    return v0
.end method

.method static addSession(Lcom/arthenica/ffmpegkit/Session;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryMap:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->getSessionId()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->getSessionId()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->deleteExpiredSessions()V

    .line 37
    .line 38
    .line 39
    :cond_0
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public static argumentsToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "null"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    array-length v2, p0

    .line 13
    if-ge v1, v2, :cond_2

    .line 14
    .line 15
    if-lez v1, :cond_1

    .line 16
    .line 17
    const-string v2, " "

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    :cond_1
    aget-object v2, p0, v1

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static asyncFFmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;

    invoke-direct {v0, p0}, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;-><init>(Lcom/arthenica/ffmpegkit/FFmpegSession;)V

    .line 2
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/AbstractSession;->setFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public static asyncFFmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;

    invoke-direct {v0, p0}, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;-><init>(Lcom/arthenica/ffmpegkit/FFmpegSession;)V

    .line 5
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/arthenica/ffmpegkit/AbstractSession;->setFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public static asyncFFprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/arthenica/ffmpegkit/AsyncFFprobeExecuteTask;

    invoke-direct {v0, p0}, Lcom/arthenica/ffmpegkit/AsyncFFprobeExecuteTask;-><init>(Lcom/arthenica/ffmpegkit/FFprobeSession;)V

    .line 2
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/AbstractSession;->setFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public static asyncFFprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/arthenica/ffmpegkit/AsyncFFprobeExecuteTask;

    invoke-direct {v0, p0}, Lcom/arthenica/ffmpegkit/AsyncFFprobeExecuteTask;-><init>(Lcom/arthenica/ffmpegkit/FFprobeSession;)V

    .line 5
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/arthenica/ffmpegkit/AbstractSession;->setFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public static asyncGetMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;-><init>(Lcom/arthenica/ffmpegkit/MediaInformationSession;Ljava/lang/Integer;)V

    .line 2
    sget-object p1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/arthenica/ffmpegkit/AbstractSession;->setFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public static asyncGetMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;Ljava/util/concurrent/ExecutorService;I)V
    .locals 1

    .line 4
    new-instance v0, Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;-><init>(Lcom/arthenica/ffmpegkit/MediaInformationSession;Ljava/lang/Integer;)V

    .line 5
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/arthenica/ffmpegkit/AbstractSession;->setFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public static clearSessions()V
    .locals 2

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v1
.end method

.method public static closeFFmpegPipe(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private static deleteExpiredSessions()V
    .locals 4

    .line 1
    :catch_0
    :cond_0
    :goto_0
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistorySize:I

    .line 8
    .line 9
    if-le v1, v2, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/arthenica/ffmpegkit/Session;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryMap:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/arthenica/ffmpegkit/Session;->getSessionId()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method private static native disableNativeRedirection()V
.end method

.method public static disableRedirection()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->disableNativeRedirection()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static enableFFmpegSessionCompleteCallback(Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalFFmpegSessionCompleteCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    .line 2
    .line 3
    return-void
.end method

.method public static enableFFprobeSessionCompleteCallback(Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalFFprobeSessionCompleteCallback:Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;

    .line 2
    .line 3
    return-void
.end method

.method public static enableLogCallback(Lcom/arthenica/ffmpegkit/LogCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogCallback:Lcom/arthenica/ffmpegkit/LogCallback;

    .line 2
    .line 3
    return-void
.end method

.method public static enableMediaInformationSessionCompleteCallback(Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalMediaInformationSessionCompleteCallback:Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

    .line 2
    .line 3
    return-void
.end method

.method private static native enableNativeRedirection()V
.end method

.method public static enableRedirection()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->enableNativeRedirection()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static enableStatisticsCallback(Lcom/arthenica/ffmpegkit/StatisticsCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalStatisticsCallback:Lcom/arthenica/ffmpegkit/StatisticsCallback;

    .line 2
    .line 3
    return-void
.end method

.method static extractExtensionFromSafDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ltz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, p0

    .line 19
    :goto_0
    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    .line 20
    .line 21
    const-string v2, " ."

    .line 22
    .line 23
    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-object p0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v0, "Failed to extract extension from saf display name: %s.%s"

    .line 41
    .line 42
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string v0, "ffmpeg-kit"

    .line 47
    .line 48
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    const-string p0, "raw"

    .line 52
    .line 53
    return-object p0
.end method

.method public static ffmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->startRunning()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->getSessionId()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->getArguments()[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v0, v1, v2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->nativeFFmpegExecute(J[Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    new-instance v1, Lcom/arthenica/ffmpegkit/ReturnCode;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lcom/arthenica/ffmpegkit/ReturnCode;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/arthenica/ffmpegkit/AbstractSession;->complete(Lcom/arthenica/ffmpegkit/ReturnCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/AbstractSession;->fail(Ljava/lang/Exception;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->getArguments()[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v0, "FFmpeg execute failed: %s.%s"

    .line 46
    .line 47
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v0, "ffmpeg-kit"

    .line 52
    .line 53
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public static ffprobeExecute(Lcom/arthenica/ffmpegkit/FFprobeSession;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->startRunning()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->getSessionId()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->getArguments()[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v0, v1, v2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->nativeFFprobeExecute(J[Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    new-instance v1, Lcom/arthenica/ffmpegkit/ReturnCode;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lcom/arthenica/ffmpegkit/ReturnCode;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/arthenica/ffmpegkit/AbstractSession;->complete(Lcom/arthenica/ffmpegkit/ReturnCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/AbstractSession;->fail(Ljava/lang/Exception;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->getArguments()[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v0, "FFprobe execute failed: %s.%s"

    .line 46
    .line 47
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v0, "ffmpeg-kit"

    .line 52
    .line 53
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public static getAsyncConcurrencyLimit()I
    .locals 1

    .line 1
    sget v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncConcurrencyLimit:I

    .line 2
    .line 3
    return v0
.end method

.method public static getBuildDate()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getNativeBuildDate()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getFFmpegSessionCompleteCallback()Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalFFmpegSessionCompleteCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getFFmpegSessions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/FFmpegSession;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/arthenica/ffmpegkit/Session;

    .line 26
    .line 27
    invoke-interface {v3}, Lcom/arthenica/ffmpegkit/Session;->isFFmpeg()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    check-cast v3, Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    monitor-exit v1

    .line 40
    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw v0
.end method

.method public static getFFmpegVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getNativeFFmpegVersion()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getFFprobeSessionCompleteCallback()Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalFFprobeSessionCompleteCallback:Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getFFprobeSessions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/FFprobeSession;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/arthenica/ffmpegkit/Session;

    .line 26
    .line 27
    invoke-interface {v3}, Lcom/arthenica/ffmpegkit/Session;->isFFprobe()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    check-cast v3, Lcom/arthenica/ffmpegkit/FFprobeSession;

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    monitor-exit v1

    .line 40
    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw v0
.end method

.method public static getLastCompletedSession()Lcom/arthenica/ffmpegkit/Session;
    .locals 5

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_1

    .line 13
    .line 14
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/arthenica/ffmpegkit/Session;

    .line 21
    .line 22
    invoke-interface {v2}, Lcom/arthenica/ffmpegkit/Session;->getState()Lcom/arthenica/ffmpegkit/SessionState;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    sget-object v4, Lcom/arthenica/ffmpegkit/SessionState;->COMPLETED:Lcom/arthenica/ffmpegkit/SessionState;

    .line 27
    .line 28
    if-ne v3, v4, :cond_0

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-object v2

    .line 32
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    const/4 v0, 0x0

    .line 37
    return-object v0

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw v1
.end method

.method public static getLastSession()Lcom/arthenica/ffmpegkit/Session;
    .locals 3

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-lez v2, :cond_0

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/lit8 v2, v2, -0x1

    .line 17
    .line 18
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/arthenica/ffmpegkit/Session;

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    const/4 v0, 0x0

    .line 28
    return-object v0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1
.end method

.method public static getLogLevel()Lcom/arthenica/ffmpegkit/Level;
    .locals 1

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->activeLogLevel:Lcom/arthenica/ffmpegkit/Level;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getLogRedirectionStrategy()Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;
    .locals 1

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->startRunning()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->getSessionId()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->getArguments()[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v0, v1, v2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->nativeFFprobeExecute(J[Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    new-instance v1, Lcom/arthenica/ffmpegkit/ReturnCode;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lcom/arthenica/ffmpegkit/ReturnCode;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/arthenica/ffmpegkit/AbstractSession;->complete(Lcom/arthenica/ffmpegkit/ReturnCode;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/arthenica/ffmpegkit/ReturnCode;->isValueSuccess()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/arthenica/ffmpegkit/AbstractSession;->getAllLogs(I)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x0

    .line 44
    :goto_0
    if-ge v2, v1, :cond_1

    .line 45
    .line 46
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lcom/arthenica/ffmpegkit/Log;

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/arthenica/ffmpegkit/Log;->getLevel()Lcom/arthenica/ffmpegkit/Level;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    sget-object v5, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_STDERR:Lcom/arthenica/ffmpegkit/Level;

    .line 57
    .line 58
    if-ne v4, v5, :cond_0

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/arthenica/ffmpegkit/Log;->getMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Lcom/arthenica/ffmpegkit/MediaInformationJsonParser;->fromWithError(Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformation;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->setMediaInformation(Lcom/arthenica/ffmpegkit/MediaInformation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p0, p1}, Lcom/arthenica/ffmpegkit/AbstractSession;->fail(Ljava/lang/Exception;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->getArguments()[Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p1}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const-string p1, "Get media information execute failed: %s.%s"

    .line 103
    .line 104
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    const-string p1, "ffmpeg-kit"

    .line 109
    .line 110
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :cond_2
    :goto_1
    return-void
.end method

.method public static getMediaInformationSessionCompleteCallback()Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalMediaInformationSessionCompleteCallback:Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getMediaInformationSessions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/MediaInformationSession;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/arthenica/ffmpegkit/Session;

    .line 26
    .line 27
    invoke-interface {v3}, Lcom/arthenica/ffmpegkit/Session;->isMediaInformation()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    check-cast v3, Lcom/arthenica/ffmpegkit/MediaInformationSession;

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    monitor-exit v1

    .line 40
    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw v0
.end method

.method private static native getNativeBuildDate()Ljava/lang/String;
.end method

.method private static native getNativeFFmpegVersion()Ljava/lang/String;
.end method

.method static native getNativeLogLevel()I
.end method

.method private static native getNativeVersion()Ljava/lang/String;
.end method

.method public static getSafParameter(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "_display_name"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    move-object v2, p1

    .line 12
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 13
    .line 14
    .line 15
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_1
    move-exception p2

    .line 39
    :try_start_3
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 43
    :cond_0
    const-string v2, "unknown"

    .line 44
    .line 45
    :goto_1
    if-eqz v1, :cond_1

    .line 46
    .line 47
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 48
    .line 49
    .line 50
    :cond_1
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safIdMap:Landroid/util/SparseArray;

    .line 57
    .line 58
    new-instance v3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;

    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-direct {v3, v4, p1, p2, p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;-><init>(Ljava/lang/Integer;Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string p1, "saf:"

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p1, "."

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-static {v2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->extractExtensionFromSafDisplayName(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :catchall_2
    move-exception p0

    .line 105
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const-string p2, "Failed to get %s column for %s.%s"

    .line 118
    .line 119
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const-string p2, "ffmpeg-kit"

    .line 124
    .line 125
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    throw p0
.end method

.method public static getSafParameterForRead(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "r"

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSafParameter(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getSafParameterForWrite(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "w"

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSafParameter(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getSession(J)Lcom/arthenica/ffmpegkit/Session;
    .locals 2

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryMap:Ljava/util/Map;

    .line 5
    .line 6
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/arthenica/ffmpegkit/Session;

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public static getSessionHistorySize()I
    .locals 1

    .line 1
    sget v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistorySize:I

    .line 2
    .line 3
    return v0
.end method

.method public static getSessions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Session;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    .line 5
    .line 6
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method public static getSessionsByState(Lcom/arthenica/ffmpegkit/SessionState;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/arthenica/ffmpegkit/SessionState;",
            ")",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Session;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistoryList:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/arthenica/ffmpegkit/Session;

    .line 26
    .line 27
    invoke-interface {v3}, Lcom/arthenica/ffmpegkit/Session;->getState()Lcom/arthenica/ffmpegkit/SessionState;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-ne v4, p0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    monitor-exit v1

    .line 38
    return-object v0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public static getSupportedCameraIds(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/CameraSupport;->extractSupportedCameraIds(Landroid/content/Context;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->isLTSBuild()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getNativeVersion()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "%s-lts"

    .line 16
    .line 17
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getNativeVersion()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method private static native ignoreNativeSignal(I)V
.end method

.method public static ignoreSignal(Lcom/arthenica/ffmpegkit/Signal;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Signal;->getValue()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->ignoreNativeSignal(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static isLTSBuild()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->isNativeLTSBuild()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private static log(JI[B)V
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/arthenica/ffmpegkit/Level;->from(I)Lcom/arthenica/ffmpegkit/Level;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    .line 8
    .line 9
    .line 10
    new-instance p3, Lcom/arthenica/ffmpegkit/Log;

    .line 11
    .line 12
    invoke-direct {p3, p0, p1, v0, v1}, Lcom/arthenica/ffmpegkit/Log;-><init>(JLcom/arthenica/ffmpegkit/Level;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 16
    .line 17
    sget-object v3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->activeLogLevel:Lcom/arthenica/ffmpegkit/Level;

    .line 18
    .line 19
    sget-object v4, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_QUIET:Lcom/arthenica/ffmpegkit/Level;

    .line 20
    .line 21
    if-ne v3, v4, :cond_0

    .line 22
    .line 23
    sget-object v3, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_STDERR:Lcom/arthenica/ffmpegkit/Level;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ne p2, v3, :cond_1

    .line 30
    .line 31
    :cond_0
    sget-object v3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->activeLogLevel:Lcom/arthenica/ffmpegkit/Level;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-le p2, v3, :cond_2

    .line 38
    .line 39
    :cond_1
    return-void

    .line 40
    :cond_2
    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/4 p1, 0x1

    .line 45
    const-string p2, "ffmpeg-kit"

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->getLogRedirectionStrategy()Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {p0, p3}, Lcom/arthenica/ffmpegkit/Session;->addLog(Lcom/arthenica/ffmpegkit/Log;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->getLogCallback()Lcom/arthenica/ffmpegkit/LogCallback;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    :try_start_0
    invoke-interface {p0}, Lcom/arthenica/ffmpegkit/Session;->getLogCallback()Lcom/arthenica/ffmpegkit/LogCallback;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-interface {p0, p3}, Lcom/arthenica/ffmpegkit/LogCallback;->apply(Lcom/arthenica/ffmpegkit/Log;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception p0

    .line 72
    invoke-static {p0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v4, "Exception thrown inside session log callback.%s"

    .line 81
    .line 82
    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :goto_0
    move p0, p1

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    move p0, v3

    .line 92
    :goto_1
    sget-object v4, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogCallback:Lcom/arthenica/ffmpegkit/LogCallback;

    .line 93
    .line 94
    if-eqz v4, :cond_4

    .line 95
    .line 96
    :try_start_1
    invoke-interface {v4, p3}, Lcom/arthenica/ffmpegkit/LogCallback;->apply(Lcom/arthenica/ffmpegkit/Log;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :catch_1
    move-exception p3

    .line 101
    invoke-static {p3}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    const-string v3, "Exception thrown inside global log callback.%s"

    .line 110
    .line 111
    invoke-static {v3, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    :goto_2
    move v3, p1

    .line 119
    :cond_4
    sget-object p3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$LogRedirectionStrategy:[I

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    aget p3, p3, v2

    .line 126
    .line 127
    if-eq p3, p1, :cond_a

    .line 128
    .line 129
    const/4 p1, 0x2

    .line 130
    if-eq p3, p1, :cond_8

    .line 131
    .line 132
    const/4 p1, 0x3

    .line 133
    if-eq p3, p1, :cond_7

    .line 134
    .line 135
    const/4 p1, 0x4

    .line 136
    if-eq p3, p1, :cond_5

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_5
    if-nez v3, :cond_6

    .line 140
    .line 141
    if-eqz p0, :cond_9

    .line 142
    .line 143
    :cond_6
    return-void

    .line 144
    :cond_7
    if-eqz p0, :cond_9

    .line 145
    .line 146
    return-void

    .line 147
    :cond_8
    if-eqz v3, :cond_9

    .line 148
    .line 149
    return-void

    .line 150
    :cond_9
    :goto_3
    sget-object p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$2;->$SwitchMap$com$arthenica$ffmpegkit$Level:[I

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    aget p0, p0, p1

    .line 157
    .line 158
    packed-switch p0, :pswitch_data_0

    .line 159
    .line 160
    .line 161
    invoke-static {p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :pswitch_0
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :pswitch_1
    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :pswitch_2
    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :pswitch_3
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    :cond_a
    :goto_4
    :pswitch_4
    return-void

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static native messagesInTransmit(J)I
.end method

.method static native nativeFFmpegCancel(J)V
.end method

.method private static native nativeFFmpegExecute(J[Ljava/lang/String;)I
.end method

.method static native nativeFFprobeExecute(J[Ljava/lang/String;)I
.end method

.method public static parseArguments(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    move v4, v3

    .line 14
    move v5, v4

    .line 15
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-ge v3, v6, :cond_d

    .line 20
    .line 21
    if-lez v3, :cond_0

    .line 22
    .line 23
    add-int/lit8 v6, v3, -0x1

    .line 24
    .line 25
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/4 v6, 0x0

    .line 35
    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    const/16 v8, 0x20

    .line 40
    .line 41
    if-ne v7, v8, :cond_3

    .line 42
    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-lez v6, :cond_c

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_2
    :goto_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const/16 v8, 0x27

    .line 72
    .line 73
    const/16 v9, 0x5c

    .line 74
    .line 75
    const/4 v10, 0x1

    .line 76
    if-ne v7, v8, :cond_7

    .line 77
    .line 78
    if-eqz v6, :cond_4

    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eq v8, v9, :cond_7

    .line 85
    .line 86
    :cond_4
    if-eqz v4, :cond_5

    .line 87
    .line 88
    move v4, v2

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    if-eqz v5, :cond_6

    .line 91
    .line 92
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_6
    move v4, v10

    .line 97
    goto :goto_3

    .line 98
    :cond_7
    const/16 v8, 0x22

    .line 99
    .line 100
    if-ne v7, v8, :cond_b

    .line 101
    .line 102
    if-eqz v6, :cond_8

    .line 103
    .line 104
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eq v6, v9, :cond_b

    .line 109
    .line 110
    :cond_8
    if-eqz v5, :cond_9

    .line 111
    .line 112
    move v5, v2

    .line 113
    goto :goto_3

    .line 114
    :cond_9
    if-eqz v4, :cond_a

    .line 115
    .line 116
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_a
    move v5, v10

    .line 121
    goto :goto_3

    .line 122
    :cond_b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    :cond_c
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-lez p0, :cond_e

    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    :cond_e
    new-array p0, v2, [Ljava/lang/String;

    .line 142
    .line 143
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    check-cast p0, [Ljava/lang/String;

    .line 148
    .line 149
    return-object p0
.end method

.method public static printToLogcat(ILjava/lang/String;)V
    .locals 5

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "ffmpeg-kit"

    .line 6
    .line 7
    const/16 v2, 0xfa0

    .line 8
    .line 9
    if-gt v0, v2, :cond_1

    .line 10
    .line 11
    invoke-static {p0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const-string p1, ""

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/16 v4, 0xa

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-gez v3, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p0, v1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p0, v1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-gtz v0, :cond_0

    .line 58
    .line 59
    return-void
.end method

.method public static registerNewFFmpegPipe(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    const-string v1, "pipes"

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v2, "ffmpeg-kit"

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

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
    const-string v0, "Failed to create pipes directory: %s."

    .line 36
    .line 37
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_0
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 46
    .line 47
    sget-object v3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const-string v4, "fk_pipe_"

    .line 58
    .line 59
    filled-new-array {v0, p0, v4, v3}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string v0, "{0}{1}{2}{3}"

    .line 64
    .line 65
    invoke-static {v0, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->closeFFmpegPipe(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->registerNewNativeFFmpegPipe(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const-string v0, "Failed to register new FFmpeg pipe %s. Operation failed with rc=%d."

    .line 88
    .line 89
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    return-object v1
.end method

.method private static native registerNewNativeFFmpegPipe(Ljava/lang/String;)I
.end method

.method private static safClose(I)I
    .locals 6

    .line 1
    const-string v0, "ffmpeg-kit"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safFileDescriptorMap:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    check-cast v3, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->delete(I)V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safIdMap:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->getSafId()Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 38
    .line 39
    .line 40
    return v4

    .line 41
    :cond_0
    const-string v2, "ParcelFileDescriptor for SAF fd %d not found."

    .line 42
    .line 43
    new-array v3, v4, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    aput-object v4, v3, v1

    .line 50
    .line 51
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const-string v2, "SAF fd %d not found."

    .line 60
    .line 61
    new-array v3, v4, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    aput-object v4, v3, v1

    .line 68
    .line 69
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v2

    .line 78
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {v2}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    filled-new-array {p0, v2}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const-string v2, "Failed to close SAF fd: %d.%s"

    .line 91
    .line 92
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :goto_0
    return v1
.end method

.method private static safOpen(I)I
    .locals 6

    .line 1
    const-string v0, "ffmpeg-kit"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safIdMap:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->getUri()Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->getOpenMode()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig$SAFProtocolUrl;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    sget-object v4, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->safFileDescriptorMap:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return v3

    .line 43
    :cond_0
    const-string v2, "SAF id %d not found."

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    new-array v3, v3, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    aput-object v4, v3, v1

    .line 53
    .line 54
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v2

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v2}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    filled-new-array {p0, v2}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string v2, "Failed to open SAF id: %d.%s"

    .line 76
    .line 77
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :goto_0
    return v1
.end method

.method public static sessionStateToString(Lcom/arthenica/ffmpegkit/SessionState;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static setAsyncConcurrencyLimit(I)V
    .locals 1

    .line 1
    if-lez p0, :cond_0

    .line 2
    .line 3
    sput p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncConcurrencyLimit:I

    .line 4
    .line 5
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sput-object p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->asyncExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->setNativeEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static setFontDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1, p2}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->setFontDirectoryList(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static setFontDirectoryList(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    const-string v1, "fontconfig"

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const-string v1, "ffmpeg-kit"

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v2, "Created temporary font conf directory: %s."

    .line 33
    .line 34
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 42
    .line 43
    const-string v2, "fonts.conf"

    .line 44
    .line 45
    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v3, "Deleted old temporary font configuration: %s."

    .line 67
    .line 68
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v3, ""

    .line 78
    .line 79
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    if-eqz p2, :cond_3

    .line 84
    .line 85
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-lez v4, :cond_3

    .line 90
    .line 91
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 92
    .line 93
    .line 94
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    move v4, v3

    .line 103
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_4

    .line 108
    .line 109
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Ljava/util/Map$Entry;

    .line 114
    .line 115
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    check-cast v6, Ljava/lang/String;

    .line 120
    .line 121
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Ljava/lang/String;

    .line 126
    .line 127
    if-eqz v6, :cond_2

    .line 128
    .line 129
    if-eqz v5, :cond_2

    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-lez v7, :cond_2

    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-lez v7, :cond_2

    .line 150
    .line 151
    const-string v7, "    <match target=\"pattern\">\n"

    .line 152
    .line 153
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v7, "        <test qual=\"any\" name=\"family\">\n"

    .line 157
    .line 158
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    const-string v7, "            <string>%s</string>\n"

    .line 166
    .line 167
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v6, "        </test>\n"

    .line 175
    .line 176
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v6, "        <edit name=\"family\" mode=\"assign\" binding=\"same\">\n"

    .line 180
    .line 181
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v5, "        </edit>\n"

    .line 196
    .line 197
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v5, "    </match>\n"

    .line 201
    .line 202
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    add-int/lit8 v4, v4, 0x1

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_3
    move v4, v3

    .line 209
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v5, "<?xml version=\"1.0\"?>\n"

    .line 215
    .line 216
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v5, "<!DOCTYPE fontconfig SYSTEM \"fonts.dtd\">\n"

    .line 220
    .line 221
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v5, "<fontconfig>\n"

    .line 225
    .line 226
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v5, "    <dir prefix=\"cwd\">.</dir>\n"

    .line 230
    .line 231
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    if-eqz v6, :cond_5

    .line 243
    .line 244
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    check-cast v6, Ljava/lang/String;

    .line 249
    .line 250
    const-string v7, "    <dir>"

    .line 251
    .line 252
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v6, "</dir>\n"

    .line 259
    .line 260
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_5
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v2, "</fontconfig>\n"

    .line 268
    .line 269
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 273
    .line 274
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 275
    .line 276
    .line 277
    const/4 v5, 0x1

    .line 278
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    .line 279
    .line 280
    invoke-direct {v6, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    invoke-virtual {v6, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 298
    .line 299
    .line 300
    const-string p0, "Saved new temporary font configuration with %d font name mappings."

    .line 301
    .line 302
    new-array p2, v5, [Ljava/lang/Object;

    .line 303
    .line 304
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    aput-object v4, p2, v3

    .line 309
    .line 310
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->setFontconfigConfigurationPath(Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 329
    .line 330
    .line 331
    move-result p2

    .line 332
    if-eqz p2, :cond_6

    .line 333
    .line 334
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object p2

    .line 338
    check-cast p2, Ljava/lang/String;

    .line 339
    .line 340
    const-string v0, "Font directory %s registered successfully."

    .line 341
    .line 342
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object p2

    .line 346
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p2

    .line 350
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    .line 352
    .line 353
    goto :goto_2

    .line 354
    :cond_6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object p0

    .line 358
    if-eqz p0, :cond_7

    .line 359
    .line 360
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    :goto_3
    check-cast p0, Ljava/io/FileOutputStream;

    .line 365
    .line 366
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 367
    .line 368
    .line 369
    goto :goto_4

    .line 370
    :catchall_0
    move-exception p0

    .line 371
    goto :goto_5

    .line 372
    :catch_0
    move-exception p0

    .line 373
    :try_start_2
    const-string p2, "Failed to set font directory: %s.%s"

    .line 374
    .line 375
    const/4 v0, 0x2

    .line 376
    new-array v0, v0, [Ljava/lang/Object;

    .line 377
    .line 378
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    aput-object p1, v0, v3

    .line 387
    .line 388
    invoke-static {p0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p0

    .line 392
    aput-object p0, v0, v5

    .line 393
    .line 394
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p0

    .line 398
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    if-eqz p0, :cond_7

    .line 406
    .line 407
    :try_start_3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 411
    goto :goto_3

    .line 412
    :catch_1
    :cond_7
    :goto_4
    return-void

    .line 413
    :goto_5
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    if-eqz p1, :cond_8

    .line 418
    .line 419
    :try_start_4
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    check-cast p1, Ljava/io/FileOutputStream;

    .line 424
    .line 425
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 426
    .line 427
    .line 428
    :catch_2
    :cond_8
    throw p0
.end method

.method public static setFontconfigConfigurationPath(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "FONTCONFIG_PATH"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->setNativeEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static setLogLevel(Lcom/arthenica/ffmpegkit/Level;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sput-object p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->activeLogLevel:Lcom/arthenica/ffmpegkit/Level;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->setNativeLogLevel(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static setLogRedirectionStrategy(Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalLogRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 2
    .line 3
    return-void
.end method

.method private static native setNativeEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native setNativeLogLevel(I)V
.end method

.method public static setSessionHistorySize(I)V
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ge p0, v0, :cond_1

    .line 4
    .line 5
    if-lez p0, :cond_0

    .line 6
    .line 7
    sput p0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->sessionHistorySize:I

    .line 8
    .line 9
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->deleteExpiredSessions()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "Session history size must not exceed the hard limit!"

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method private static statistics(JIFFJDDD)V
    .locals 16

    .line 1
    new-instance v15, Lcom/arthenica/ffmpegkit/Statistics;

    .line 2
    .line 3
    move-object v1, v15

    .line 4
    move-wide/from16 v2, p0

    .line 5
    .line 6
    move/from16 v4, p2

    .line 7
    .line 8
    move/from16 v5, p3

    .line 9
    .line 10
    move/from16 v6, p4

    .line 11
    .line 12
    move-wide/from16 v7, p5

    .line 13
    .line 14
    move-wide/from16 v9, p7

    .line 15
    .line 16
    move-wide/from16 v11, p9

    .line 17
    .line 18
    move-wide/from16 v13, p11

    .line 19
    .line 20
    invoke-direct/range {v1 .. v14}, Lcom/arthenica/ffmpegkit/Statistics;-><init>(JIFFJDDD)V

    .line 21
    .line 22
    .line 23
    invoke-static/range {p0 .. p1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getSession(J)Lcom/arthenica/ffmpegkit/Session;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "ffmpeg-kit"

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/arthenica/ffmpegkit/Session;->isFFmpeg()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    check-cast v0, Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 38
    .line 39
    invoke-virtual {v0, v15}, Lcom/arthenica/ffmpegkit/FFmpegSession;->addStatistics(Lcom/arthenica/ffmpegkit/Statistics;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getStatisticsCallback()Lcom/arthenica/ffmpegkit/StatisticsCallback;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    :try_start_0
    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getStatisticsCallback()Lcom/arthenica/ffmpegkit/StatisticsCallback;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0, v15}, Lcom/arthenica/ffmpegkit/StatisticsCallback;->apply(Lcom/arthenica/ffmpegkit/Statistics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v2, "Exception thrown inside session statistics callback.%s"

    .line 66
    .line 67
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_0
    :goto_0
    sget-object v0, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->globalStatisticsCallback:Lcom/arthenica/ffmpegkit/StatisticsCallback;

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    :try_start_1
    invoke-interface {v0, v15}, Lcom/arthenica/ffmpegkit/StatisticsCallback;->apply(Lcom/arthenica/ffmpegkit/Statistics;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :catch_1
    move-exception v0

    .line 83
    move-object v2, v0

    .line 84
    invoke-static {v2}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v2, "Exception thrown inside global statistics callback.%s"

    .line 93
    .line 94
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    :cond_1
    :goto_1
    return-void
.end method
