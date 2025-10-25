.class public abstract Lcom/arthenica/ffmpegkit/AbstractSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/arthenica/ffmpegkit/Session;


# static fields
.field public static final DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT:I = 0x1388

.field protected static final sessionIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field protected final arguments:[Ljava/lang/String;

.field protected final createTime:Ljava/util/Date;

.field protected endTime:Ljava/util/Date;

.field protected failStackTrace:Ljava/lang/String;

.field protected future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field protected final logCallback:Lcom/arthenica/ffmpegkit/LogCallback;

.field protected final logRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

.field protected final logs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Log;",
            ">;"
        }
    .end annotation
.end field

.field protected final logsLock:Ljava/lang/Object;

.field protected returnCode:Lcom/arthenica/ffmpegkit/ReturnCode;

.field protected final sessionId:J

.field protected startTime:Ljava/util/Date;

.field protected state:Lcom/arthenica/ffmpegkit/SessionState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/arthenica/ffmpegkit/AbstractSession;->sessionIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    return-void
.end method

.method protected constructor <init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/arthenica/ffmpegkit/AbstractSession;->sessionIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->sessionId:J

    .line 11
    .line 12
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logCallback:Lcom/arthenica/ffmpegkit/LogCallback;

    .line 13
    .line 14
    new-instance p2, Ljava/util/Date;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->createTime:Ljava/util/Date;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->startTime:Ljava/util/Date;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->endTime:Ljava/util/Date;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->arguments:[Ljava/lang/String;

    .line 27
    .line 28
    new-instance p1, Ljava/util/LinkedList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logs:Ljava/util/List;

    .line 34
    .line 35
    new-instance p1, Ljava/lang/Object;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logsLock:Ljava/lang/Object;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->future:Ljava/util/concurrent/Future;

    .line 43
    .line 44
    sget-object p1, Lcom/arthenica/ffmpegkit/SessionState;->CREATED:Lcom/arthenica/ffmpegkit/SessionState;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->state:Lcom/arthenica/ffmpegkit/SessionState;

    .line 47
    .line 48
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->returnCode:Lcom/arthenica/ffmpegkit/ReturnCode;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->failStackTrace:Ljava/lang/String;

    .line 51
    .line 52
    iput-object p3, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 53
    .line 54
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->addSession(Lcom/arthenica/ffmpegkit/Session;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public addLog(Lcom/arthenica/ffmpegkit/Log;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logs:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->state:Lcom/arthenica/ffmpegkit/SessionState;

    .line 2
    .line 3
    sget-object v1, Lcom/arthenica/ffmpegkit/SessionState;->RUNNING:Lcom/arthenica/ffmpegkit/SessionState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->sessionId:J

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKit;->cancel(J)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method complete(Lcom/arthenica/ffmpegkit/ReturnCode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->returnCode:Lcom/arthenica/ffmpegkit/ReturnCode;

    .line 2
    .line 3
    sget-object p1, Lcom/arthenica/ffmpegkit/SessionState;->COMPLETED:Lcom/arthenica/ffmpegkit/SessionState;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->state:Lcom/arthenica/ffmpegkit/SessionState;

    .line 6
    .line 7
    new-instance p1, Ljava/util/Date;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->endTime:Ljava/util/Date;

    .line 13
    .line 14
    return-void
.end method

.method fail(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->failStackTrace:Ljava/lang/String;

    .line 6
    .line 7
    sget-object p1, Lcom/arthenica/ffmpegkit/SessionState;->FAILED:Lcom/arthenica/ffmpegkit/SessionState;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->state:Lcom/arthenica/ffmpegkit/SessionState;

    .line 10
    .line 11
    new-instance p1, Ljava/util/Date;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->endTime:Ljava/util/Date;

    .line 17
    .line 18
    return-void
.end method

.method public getAllLogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Log;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x1388

    .line 5
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/AbstractSession;->getAllLogs(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllLogs(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Log;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/arthenica/ffmpegkit/AbstractSession;->waitForAsynchronousMessagesInTransmit(I)V

    .line 2
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->thereAreAsynchronousMessagesInTransmit()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->sessionId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getAllLogs was called to return all logs but there are still logs being transmitted for session id %d."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ffmpeg-kit"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->getLogs()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllLogsAsString()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1388

    .line 5
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/AbstractSession;->getAllLogsAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllLogsAsString(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/arthenica/ffmpegkit/AbstractSession;->waitForAsynchronousMessagesInTransmit(I)V

    .line 2
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->thereAreAsynchronousMessagesInTransmit()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->sessionId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getAllLogsAsString was called to return all logs but there are still logs being transmitted for session id %d."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ffmpeg-kit"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->getLogsAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getArguments()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->arguments:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->arguments:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->createTime:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDuration()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->startTime:Ljava/util/Date;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->endTime:Ljava/util/Date;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    sub-long/2addr v1, v3

    .line 18
    return-wide v1

    .line 19
    :cond_0
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    return-wide v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->endTime:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFailStackTrace()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->failStackTrace:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->future:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogCallback()Lcom/arthenica/ffmpegkit/LogCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logCallback:Lcom/arthenica/ffmpegkit/LogCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogRedirectionStrategy()Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logRedirectionStrategy:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Log;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logs:Ljava/util/List;

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

.method public getLogsAsString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logsLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->logs:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/arthenica/ffmpegkit/Log;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/arthenica/ffmpegkit/Log;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw v0
.end method

.method public getOutput()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->getAllLogsAsString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getReturnCode()Lcom/arthenica/ffmpegkit/ReturnCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->returnCode:Lcom/arthenica/ffmpegkit/ReturnCode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSessionId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->sessionId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->startTime:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public getState()Lcom/arthenica/ffmpegkit/SessionState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->state:Lcom/arthenica/ffmpegkit/SessionState;

    .line 2
    .line 3
    return-object v0
.end method

.method setFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->future:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    return-void
.end method

.method startRunning()V
    .locals 1

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/SessionState;->RUNNING:Lcom/arthenica/ffmpegkit/SessionState;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->state:Lcom/arthenica/ffmpegkit/SessionState;

    .line 4
    .line 5
    new-instance v0, Ljava/util/Date;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->startTime:Ljava/util/Date;

    .line 11
    .line 12
    return-void
.end method

.method public thereAreAsynchronousMessagesInTransmit()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->sessionId:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->messagesInTransmit(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

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

.method protected waitForAsynchronousMessagesInTransmit(I)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->thereAreAsynchronousMessagesInTransmit()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    int-to-long v4, p1

    .line 16
    add-long/2addr v4, v0

    .line 17
    cmp-long v2, v2, v4

    .line 18
    .line 19
    if-gez v2, :cond_0

    .line 20
    .line 21
    monitor-enter p0

    .line 22
    const-wide/16 v2, 0x64

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_2

    .line 30
    :catch_0
    :goto_1
    :try_start_1
    monitor-exit p0

    .line 31
    goto :goto_0

    .line 32
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p1

    .line 34
    :cond_0
    return-void
.end method
