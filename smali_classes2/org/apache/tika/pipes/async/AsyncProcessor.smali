.class public Lorg/apache/tika/pipes/async/AsyncProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tika/pipes/async/AsyncProcessor$FetchEmitWorker;
    }
.end annotation


# static fields
.field private static final LOG:Lmf/c;

.field private static MAX_OFFER_WAIT_MS:J = 0x0L

.field static final PARSER_FUTURE_CODE:I = 0x1

.field static final WATCHER_FUTURE_CODE:I = 0x3


# instance fields
.field private addedEmitterSemaphores:Z

.field private final asyncConfig:Lorg/apache/tika/pipes/async/AsyncConfig;

.field private final emitData:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lorg/apache/tika/pipes/emitter/EmitData;",
            ">;"
        }
    .end annotation
.end field

.field private final executorCompletionService:Ljava/util/concurrent/ExecutorCompletionService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ExecutorCompletionService<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final fetchEmitTuples:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lorg/apache/tika/pipes/FetchEmitTuple;",
            ">;"
        }
    .end annotation
.end field

.field isShuttingDown:Z

.field private volatile numEmitterThreadsFinished:I

.field private volatile numParserThreadsFinished:I

.field private final totalProcessed:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lorg/apache/tika/pipes/async/AsyncProcessor;

    .line 2
    .line 3
    invoke-static {v0}, Lmf/e;->l(Ljava/lang/Class;)Lmf/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/apache/tika/pipes/async/AsyncProcessor;->LOG:Lmf/c;

    .line 8
    .line 9
    const-wide/32 v0, 0x1d4c0

    .line 10
    .line 11
    .line 12
    sput-wide v0, Lorg/apache/tika/pipes/async/AsyncProcessor;->MAX_OFFER_WAIT_MS:J

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/tika/pipes/async/AsyncProcessor;-><init>(Ljava/nio/file/Path;Lorg/apache/tika/pipes/pipesiterator/PipesIterator;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lorg/apache/tika/pipes/pipesiterator/PipesIterator;)V
    .locals 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->totalProcessed:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->numParserThreadsFinished:I

    .line 5
    iput v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->numEmitterThreadsFinished:I

    .line 6
    iput-boolean v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->addedEmitterSemaphores:Z

    .line 7
    iput-boolean v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->isShuttingDown:Z

    .line 8
    invoke-static {p1}, Lorg/apache/tika/pipes/async/AsyncConfig;->load(Ljava/nio/file/Path;)Lorg/apache/tika/pipes/async/AsyncConfig;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->asyncConfig:Lorg/apache/tika/pipes/async/AsyncConfig;

    .line 9
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Lorg/apache/tika/pipes/async/AsyncConfig;->getQueueSize()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v2, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->fetchEmitTuples:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 10
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v2, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->emitData:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 11
    invoke-virtual {v1}, Lorg/apache/tika/pipes/PipesConfigBase;->getNumClients()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/tika/pipes/async/AsyncConfig;->getNumEmitters()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 12
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 13
    new-instance v3, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {v3, v2}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v3, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->executorCompletionService:Ljava/util/concurrent/ExecutorCompletionService;

    .line 14
    :try_start_0
    invoke-static {p1}, Lorg/apache/tika/detect/b;->a(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/tika/pipes/PipesConfigBase;->getTikaConfig()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/tika/detect/b;->a(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/apache/tika/pipes/async/d;->a(Ljava/nio/file/Path;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15
    sget-object v2, Lorg/apache/tika/pipes/async/AsyncProcessor;->LOG:Lmf/c;

    const-string v4, "TikaConfig for AsyncProcessor ({}) is different from TikaConfig for workers ({}). If this is intended, please ignore this warning."

    .line 16
    invoke-static {p1}, Lorg/apache/tika/detect/b;->a(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    .line 17
    invoke-virtual {v1}, Lorg/apache/tika/pipes/PipesConfigBase;->getTikaConfig()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tika/detect/b;->a(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    .line 18
    invoke-interface {v2, v4, p1, v1}, Lmf/c;->l(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    :cond_0
    new-instance p1, Lorg/apache/tika/pipes/async/e;

    invoke-direct {p1, p0}, Lorg/apache/tika/pipes/async/e;-><init>(Lorg/apache/tika/pipes/async/AsyncProcessor;)V

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    if-eqz p2, :cond_1

    .line 20
    instance-of p1, p2, Lorg/apache/tika/pipes/pipesiterator/TotalCounter;

    if-eqz p1, :cond_1

    .line 21
    sget-object p1, Lorg/apache/tika/pipes/async/AsyncProcessor;->LOG:Lmf/c;

    const-string v1, "going to total counts"

    invoke-interface {p1, v1}, Lmf/c;->m(Ljava/lang/String;)V

    .line 22
    check-cast p2, Lorg/apache/tika/pipes/pipesiterator/TotalCounter;

    invoke-direct {p0, p2}, Lorg/apache/tika/pipes/async/AsyncProcessor;->startCounter(Lorg/apache/tika/pipes/pipesiterator/TotalCounter;)V

    :cond_1
    move p1, v0

    .line 23
    :goto_0
    iget-object p2, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->asyncConfig:Lorg/apache/tika/pipes/async/AsyncConfig;

    invoke-virtual {p2}, Lorg/apache/tika/pipes/PipesConfigBase;->getNumClients()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 24
    iget-object p2, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->executorCompletionService:Ljava/util/concurrent/ExecutorCompletionService;

    new-instance v7, Lorg/apache/tika/pipes/async/AsyncProcessor$FetchEmitWorker;

    iget-object v3, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->asyncConfig:Lorg/apache/tika/pipes/async/AsyncConfig;

    iget-object v4, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->fetchEmitTuples:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v5, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->emitData:Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/tika/pipes/async/AsyncProcessor$FetchEmitWorker;-><init>(Lorg/apache/tika/pipes/async/AsyncProcessor;Lorg/apache/tika/pipes/async/AsyncConfig;Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/ArrayBlockingQueue;Lorg/apache/tika/pipes/async/g;)V

    invoke-virtual {p2, v7}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 25
    :cond_2
    iget-object p1, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->asyncConfig:Lorg/apache/tika/pipes/async/AsyncConfig;

    invoke-virtual {p1}, Lorg/apache/tika/pipes/PipesConfigBase;->getTikaConfig()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/tika/pipes/emitter/EmitterManager;->load(Ljava/nio/file/Path;)Lorg/apache/tika/pipes/emitter/EmitterManager;

    move-result-object p1

    .line 26
    :goto_1
    iget-object p2, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->asyncConfig:Lorg/apache/tika/pipes/async/AsyncConfig;

    invoke-virtual {p2}, Lorg/apache/tika/pipes/async/AsyncConfig;->getNumEmitters()I

    move-result p2

    if-ge v0, p2, :cond_3

    .line 27
    iget-object p2, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->executorCompletionService:Ljava/util/concurrent/ExecutorCompletionService;

    new-instance v1, Lorg/apache/tika/pipes/async/AsyncEmitter;

    iget-object v2, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->asyncConfig:Lorg/apache/tika/pipes/async/AsyncConfig;

    iget-object v3, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->emitData:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v2, v3, p1}, Lorg/apache/tika/pipes/async/AsyncEmitter;-><init>(Lorg/apache/tika/pipes/async/AsyncConfig;Ljava/util/concurrent/ArrayBlockingQueue;Lorg/apache/tika/pipes/emitter/EmitterManager;)V

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 28
    sget-object p2, Lorg/apache/tika/pipes/async/AsyncProcessor;->LOG:Lmf/c;

    const-string v0, "problem initializing AsyncProcessor"

    invoke-interface {p2, v0, p1}, Lmf/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    iget-object p2, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 30
    iget-object p2, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->asyncConfig:Lorg/apache/tika/pipes/async/AsyncConfig;

    invoke-virtual {p2}, Lorg/apache/tika/pipes/async/AsyncConfig;->getPipesReporter()Lorg/apache/tika/pipes/PipesReporter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/tika/pipes/PipesReporter;->error(Ljava/lang/Throwable;)V

    .line 31
    throw p1
.end method

.method public static synthetic a(Lorg/apache/tika/pipes/async/AsyncProcessor;Lorg/apache/tika/pipes/pipesiterator/TotalCounter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tika/pipes/async/AsyncProcessor;->lambda$startCounter$1(Lorg/apache/tika/pipes/pipesiterator/TotalCounter;)V

    return-void
.end method

.method public static synthetic b(Lorg/apache/tika/pipes/async/AsyncProcessor;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/tika/pipes/async/AsyncProcessor;->lambda$new$0()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic c(Lorg/apache/tika/pipes/async/AsyncProcessor;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->totalProcessed:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static bridge synthetic e()Lmf/c;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/tika/pipes/async/AsyncProcessor;->LOG:Lmf/c;

    return-object v0
.end method

.method static bridge synthetic f()J
    .locals 2

    .line 1
    sget-wide v0, Lorg/apache/tika/pipes/async/AsyncProcessor;->MAX_OFFER_WAIT_MS:J

    return-wide v0
.end method

.method private synthetic lambda$new$0()Ljava/lang/Integer;
    .locals 2

    .line 1
    :goto_0
    const-wide/16 v0, 0x1f4

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/apache/tika/pipes/async/AsyncProcessor;->checkActive()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v0, 0x3

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method private synthetic lambda$startCounter$1(Lorg/apache/tika/pipes/pipesiterator/TotalCounter;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Lorg/apache/tika/pipes/pipesiterator/TotalCounter;->startTotalCount()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->asyncConfig:Lorg/apache/tika/pipes/async/AsyncConfig;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/apache/tika/pipes/async/AsyncConfig;->getPipesReporter()Lorg/apache/tika/pipes/PipesReporter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p1}, Lorg/apache/tika/pipes/pipesiterator/TotalCounter;->getTotalCount()Lorg/apache/tika/pipes/pipesiterator/TotalCountResult;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lorg/apache/tika/pipes/pipesiterator/TotalCountResult;->getStatus()Lorg/apache/tika/pipes/pipesiterator/TotalCountResult$STATUS;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    sget-object v2, Lorg/apache/tika/pipes/pipesiterator/TotalCountResult$STATUS;->NOT_COMPLETED:Lorg/apache/tika/pipes/pipesiterator/TotalCountResult$STATUS;

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    const-wide/16 v1, 0x1f4

    .line 23
    .line 24
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lorg/apache/tika/pipes/pipesiterator/TotalCounter;->getTotalCount()Lorg/apache/tika/pipes/pipesiterator/TotalCountResult;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Lorg/apache/tika/pipes/async/AsyncProcessor;->LOG:Lmf/c;

    .line 32
    .line 33
    const-string v3, "counter total  {} {} "

    .line 34
    .line 35
    invoke-virtual {v1}, Lorg/apache/tika/pipes/pipesiterator/TotalCountResult;->getStatus()Lorg/apache/tika/pipes/pipesiterator/TotalCountResult$STATUS;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v1}, Lorg/apache/tika/pipes/pipesiterator/TotalCountResult;->getTotalCount()J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-interface {v2, v3, v4, v5}, Lmf/c;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lorg/apache/tika/pipes/PipesReporter;->report(Lorg/apache/tika/pipes/pipesiterator/TotalCountResult;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lorg/apache/tika/pipes/pipesiterator/TotalCountResult;->getStatus()Lorg/apache/tika/pipes/pipesiterator/TotalCountResult$STATUS;

    .line 54
    .line 55
    .line 56
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    :cond_0
    return-void
.end method

.method private startCounter(Lorg/apache/tika/pipes/pipesiterator/TotalCounter;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lorg/apache/tika/pipes/async/f;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/apache/tika/pipes/async/f;-><init>(Lorg/apache/tika/pipes/async/AsyncProcessor;Lorg/apache/tika/pipes/pipesiterator/TotalCounter;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public declared-synchronized checkActive()Z
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->executorCompletionService:Ljava/util/concurrent/ExecutorCompletionService;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutorCompletionService;->poll()Ljava/util/concurrent/Future;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eq v2, v1, :cond_2

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    if-ne v2, v3, :cond_0

    .line 28
    .line 29
    sget-object v0, Lorg/apache/tika/pipes/async/AsyncProcessor;->LOG:Lmf/c;

    .line 30
    .line 31
    const-string v2, "watcher thread finished"

    .line 32
    .line 33
    invoke-interface {v0, v2}, Lmf/c;->m(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, "Don\'t recognize this future code: "

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :cond_1
    iget v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->numEmitterThreadsFinished:I

    .line 61
    .line 62
    add-int/2addr v0, v1

    .line 63
    iput v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->numEmitterThreadsFinished:I

    .line 64
    .line 65
    sget-object v0, Lorg/apache/tika/pipes/async/AsyncProcessor;->LOG:Lmf/c;

    .line 66
    .line 67
    const-string v2, "emitter thread finished, total {}"

    .line 68
    .line 69
    iget v3, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->numEmitterThreadsFinished:I

    .line 70
    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-interface {v0, v2, v3}, Lmf/c;->q(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->numParserThreadsFinished:I

    .line 80
    .line 81
    add-int/2addr v0, v1

    .line 82
    iput v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->numParserThreadsFinished:I

    .line 83
    .line 84
    sget-object v0, Lorg/apache/tika/pipes/async/AsyncProcessor;->LOG:Lmf/c;

    .line 85
    .line 86
    const-string v2, "fetchEmitWorker finished, total {}"

    .line 87
    .line 88
    iget v3, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->numParserThreadsFinished:I

    .line 89
    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-interface {v0, v2, v3}, Lmf/c;->q(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    :try_start_2
    sget-object v1, Lorg/apache/tika/pipes/async/AsyncProcessor;->LOG:Lmf/c;

    .line 100
    .line 101
    const-string v2, "execution exception"

    .line 102
    .line 103
    invoke-interface {v1, v2, v0}, Lmf/c;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->asyncConfig:Lorg/apache/tika/pipes/async/AsyncConfig;

    .line 107
    .line 108
    invoke-virtual {v1}, Lorg/apache/tika/pipes/async/AsyncConfig;->getPipesReporter()Lorg/apache/tika/pipes/PipesReporter;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1, v0}, Lorg/apache/tika/pipes/PipesReporter;->error(Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    new-instance v1, Ljava/lang/RuntimeException;

    .line 116
    .line 117
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    throw v1

    .line 121
    :cond_3
    :goto_0
    iget v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->numParserThreadsFinished:I

    .line 122
    .line 123
    iget-object v2, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->asyncConfig:Lorg/apache/tika/pipes/async/AsyncConfig;

    .line 124
    .line 125
    invoke-virtual {v2}, Lorg/apache/tika/pipes/PipesConfigBase;->getNumClients()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    const/4 v3, 0x0

    .line 130
    if-ne v0, v2, :cond_6

    .line 131
    .line 132
    iget-boolean v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->addedEmitterSemaphores:Z

    .line 133
    .line 134
    if-nez v0, :cond_6

    .line 135
    .line 136
    move v0, v3

    .line 137
    :goto_1
    iget-object v2, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->asyncConfig:Lorg/apache/tika/pipes/async/AsyncConfig;

    .line 138
    .line 139
    invoke-virtual {v2}, Lorg/apache/tika/pipes/async/AsyncConfig;->getNumEmitters()I

    .line 140
    .line 141
    .line 142
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    if-ge v0, v2, :cond_5

    .line 144
    .line 145
    :try_start_3
    iget-object v2, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->emitData:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 146
    .line 147
    sget-object v4, Lorg/apache/tika/pipes/async/AsyncEmitter;->EMIT_DATA_STOP_SEMAPHORE:Lorg/apache/tika/pipes/emitter/EmitData;

    .line 148
    .line 149
    sget-wide v5, Lorg/apache/tika/pipes/async/AsyncProcessor;->MAX_OFFER_WAIT_MS:J

    .line 150
    .line 151
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 152
    .line 153
    invoke-virtual {v2, v4, v5, v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_4

    .line 158
    .line 159
    add-int/lit8 v0, v0, 0x1

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 163
    .line 164
    sget-wide v1, Lorg/apache/tika/pipes/async/AsyncProcessor;->MAX_OFFER_WAIT_MS:J

    .line 165
    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v4, "Couldn\'t offer emit data stop semaphore within "

    .line 172
    .line 173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v1, " ms"

    .line 180
    .line 181
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    :catch_1
    move-exception v0

    .line 193
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    .line 194
    .line 195
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    throw v1

    .line 199
    :cond_5
    iput-boolean v1, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->addedEmitterSemaphores:Z

    .line 200
    .line 201
    :cond_6
    iget v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->numParserThreadsFinished:I

    .line 202
    .line 203
    iget-object v2, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->asyncConfig:Lorg/apache/tika/pipes/async/AsyncConfig;

    .line 204
    .line 205
    invoke-virtual {v2}, Lorg/apache/tika/pipes/PipesConfigBase;->getNumClients()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-ne v0, v2, :cond_8

    .line 210
    .line 211
    iget v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->numEmitterThreadsFinished:I

    .line 212
    .line 213
    iget-object v2, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->asyncConfig:Lorg/apache/tika/pipes/async/AsyncConfig;

    .line 214
    .line 215
    invoke-virtual {v2}, Lorg/apache/tika/pipes/async/AsyncConfig;->getNumEmitters()I

    .line 216
    .line 217
    .line 218
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 219
    if-eq v0, v2, :cond_7

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_7
    move v1, v3

    .line 223
    :cond_8
    :goto_2
    monitor-exit p0

    .line 224
    return v1

    .line 225
    :catchall_0
    move-exception v0

    .line 226
    monitor-exit p0

    .line 227
    throw v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->asyncConfig:Lorg/apache/tika/pipes/async/AsyncConfig;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/apache/tika/pipes/async/AsyncConfig;->getPipesReporter()Lorg/apache/tika/pipes/PipesReporter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lorg/apache/tika/pipes/PipesReporter;->close()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public finished()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->asyncConfig:Lorg/apache/tika/pipes/async/AsyncConfig;

    .line 3
    .line 4
    invoke-virtual {v1}, Lorg/apache/tika/pipes/PipesConfigBase;->getNumClients()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->fetchEmitTuples:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 11
    .line 12
    sget-object v2, Lorg/apache/tika/pipes/pipesiterator/PipesIterator;->COMPLETED_SEMAPHORE:Lorg/apache/tika/pipes/FetchEmitTuple;

    .line 13
    .line 14
    sget-wide v3, Lorg/apache/tika/pipes/async/AsyncProcessor;->MAX_OFFER_WAIT_MS:J

    .line 15
    .line 16
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    .line 18
    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 28
    .line 29
    sget-wide v1, Lorg/apache/tika/pipes/async/AsyncProcessor;->MAX_OFFER_WAIT_MS:J

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "Couldn\'t offer completed semaphore within "

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, " ms"

    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_1
    return-void
.end method

.method public getCapacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->fetchEmitTuples:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->remainingCapacity()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getTotalProcessed()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->totalProcessed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public declared-synchronized offer(Ljava/util/List;J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/tika/pipes/FetchEmitTuple;",
            ">;J)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->isShuttingDown:Z

    if-nez v0, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->asyncConfig:Lorg/apache/tika/pipes/async/AsyncConfig;

    invoke-virtual {v1}, Lorg/apache/tika/pipes/async/AsyncConfig;->getQueueSize()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    sub-long/2addr v2, v0

    cmp-long v2, v2, p2

    if-gez v2, :cond_1

    .line 5
    iget-object v2, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->fetchEmitTuples:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->remainingCapacity()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v2, v3, :cond_0

    .line 6
    :try_start_1
    iget-object v2, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->fetchEmitTuples:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v2

    .line 8
    :try_start_2
    sget-object v3, Lorg/apache/tika/pipes/async/AsyncProcessor;->LOG:Lmf/c;

    const-string v4, "couldn\'t add full list"

    invoke-interface {v3, v4, v2}, Lmf/c;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-wide/16 v2, 0x64

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 11
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_2
    :try_start_3
    new-instance p2, Lorg/apache/tika/pipes/async/OfferLargerThanQueueSize;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p3, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->asyncConfig:Lorg/apache/tika/pipes/async/AsyncConfig;

    .line 13
    invoke-virtual {p3}, Lorg/apache/tika/pipes/async/AsyncConfig;->getQueueSize()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lorg/apache/tika/pipes/async/OfferLargerThanQueueSize;-><init>(II)V

    throw p2

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t call offer after calling close() or shutdownNow()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized offer(Lorg/apache/tika/pipes/FetchEmitTuple;J)Z
    .locals 2

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->fetchEmitTuples:Ljava/util/concurrent/ArrayBlockingQueue;

    if-eqz v0, :cond_1

    .line 16
    iget-boolean v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->isShuttingDown:Z

    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lorg/apache/tika/pipes/async/AsyncProcessor;->checkActive()Z

    .line 18
    iget-object v0, p0, Lorg/apache/tika/pipes/async/AsyncProcessor;->fetchEmitTuples:Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 19
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t call offer after calling close() or shutdownNow()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "queue hasn\'t been initialized yet."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
