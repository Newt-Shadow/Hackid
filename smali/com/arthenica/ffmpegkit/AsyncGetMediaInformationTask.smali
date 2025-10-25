.class public Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final completeCallback:Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

.field private final mediaInformationSession:Lcom/arthenica/ffmpegkit/MediaInformationSession;

.field private final waitTimeout:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/arthenica/ffmpegkit/MediaInformationSession;)V
    .locals 1

    const/16 v0, 0x1388

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;-><init>(Lcom/arthenica/ffmpegkit/MediaInformationSession;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Lcom/arthenica/ffmpegkit/MediaInformationSession;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;->mediaInformationSession:Lcom/arthenica/ffmpegkit/MediaInformationSession;

    .line 4
    invoke-virtual {p1}, Lcom/arthenica/ffmpegkit/MediaInformationSession;->getCompleteCallback()Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;->completeCallback:Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

    .line 5
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;->waitTimeout:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;->mediaInformationSession:Lcom/arthenica/ffmpegkit/MediaInformationSession;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;->waitTimeout:Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;->completeCallback:Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

    .line 13
    .line 14
    const-string v1, "ffmpeg-kit"

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;->mediaInformationSession:Lcom/arthenica/ffmpegkit/MediaInformationSession;

    .line 19
    .line 20
    invoke-interface {v0, v2}, Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;->apply(Lcom/arthenica/ffmpegkit/MediaInformationSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v2, "Exception thrown inside session complete callback.%s"

    .line 34
    .line 35
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_0
    :goto_0
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getMediaInformationSessionCompleteCallback()Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    :try_start_1
    iget-object v2, p0, Lcom/arthenica/ffmpegkit/AsyncGetMediaInformationTask;->mediaInformationSession:Lcom/arthenica/ffmpegkit/MediaInformationSession;

    .line 49
    .line 50
    invoke-interface {v0, v2}, Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;->apply(Lcom/arthenica/ffmpegkit/MediaInformationSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_1
    move-exception v0

    .line 55
    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, "Exception thrown inside global complete callback.%s"

    .line 64
    .line 65
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_1
    return-void
.end method
