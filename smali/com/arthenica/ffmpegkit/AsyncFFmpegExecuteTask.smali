.class public Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final completeCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

.field private final ffmpegSession:Lcom/arthenica/ffmpegkit/FFmpegSession;


# direct methods
.method public constructor <init>(Lcom/arthenica/ffmpegkit/FFmpegSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;->ffmpegSession:Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getCompleteCallback()Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;->completeCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;->ffmpegSession:Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->ffmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;->completeCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    .line 7
    .line 8
    const-string v1, "ffmpeg-kit"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;->ffmpegSession:Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 13
    .line 14
    invoke-interface {v0, v2}, Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;->apply(Lcom/arthenica/ffmpegkit/FFmpegSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "Exception thrown inside session complete callback.%s"

    .line 28
    .line 29
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getFFmpegSessionCompleteCallback()Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    :try_start_1
    iget-object v2, p0, Lcom/arthenica/ffmpegkit/AsyncFFmpegExecuteTask;->ffmpegSession:Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 43
    .line 44
    invoke-interface {v0, v2}, Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;->apply(Lcom/arthenica/ffmpegkit/FFmpegSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_1
    move-exception v0

    .line 49
    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v2, "Exception thrown inside global complete callback.%s"

    .line 58
    .line 59
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_1
    return-void
.end method
