.class public Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;
.super Lorg/apache/tika/pipes/pipesiterator/PipesIterator;
.source "SourceFile"

# interfaces
.implements Lorg/apache/tika/pipes/pipesiterator/TotalCounter;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator$FileCountWorker;,
        Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator$FSFileVisitor;
    }
.end annotation


# static fields
.field private static final LOG:Lmf/c;


# instance fields
.field private basePath:Ljava/nio/file/Path;

.field private countTotal:Z

.field private fileCountWorker:Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator$FileCountWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

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
    sput-object v0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->LOG:Lmf/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/tika/pipes/pipesiterator/PipesIterator;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->countTotal:Z

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/tika/pipes/pipesiterator/PipesIterator;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->countTotal:Z

    .line 5
    iput-object p1, p0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->basePath:Ljava/nio/file/Path;

    return-void
.end method

.method static bridge synthetic T0()Lmf/c;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->LOG:Lmf/c;

    return-object v0
.end method

.method static synthetic access$000(Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;)Lorg/apache/tika/pipes/HandlerConfig;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/tika/pipes/pipesiterator/PipesIterator;->getHandlerConfig()Lorg/apache/tika/pipes/HandlerConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;Lorg/apache/tika/pipes/FetchEmitTuple;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/tika/pipes/pipesiterator/PipesIterator;->tryToAdd(Lorg/apache/tika/pipes/FetchEmitTuple;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic t0(Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;)Ljava/nio/file/Path;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->basePath:Ljava/nio/file/Path;

    return-object p0
.end method


# virtual methods
.method public checkInitialization(Lorg/apache/tika/config/InitializableProblemHandler;)V
    .locals 1

    .line 1
    const-string p1, "basePath"

    .line 2
    .line 3
    iget-object v0, p0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->basePath:Ljava/nio/file/Path;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lorg/apache/tika/config/TikaConfig;->mustNotBeEmpty(Ljava/lang/String;Ljava/nio/file/Path;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "fetcherName"

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/apache/tika/pipes/pipesiterator/PipesIterator;->getFetcherName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lorg/apache/tika/config/TikaConfig;->mustNotBeEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string p1, "emitterName"

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/apache/tika/pipes/pipesiterator/PipesIterator;->getFetcherName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p1, v0}, Lorg/apache/tika/config/TikaConfig;->mustNotBeEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->fileCountWorker:Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator$FileCountWorker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator$FileCountWorker;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected enqueue()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->basePath:Ljava/nio/file/Path;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/nio/file/LinkOption;

    .line 5
    .line 6
    invoke-static {v0, v1}, Lorg/apache/tika/pipes/fetcher/fs/d;->a(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->basePath:Ljava/nio/file/Path;

    .line 13
    .line 14
    new-instance v1, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator$FSFileVisitor;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/apache/tika/pipes/pipesiterator/PipesIterator;->getFetcherName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p0}, Lorg/apache/tika/pipes/pipesiterator/PipesIterator;->getEmitterName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-direct {v1, p0, v2, v3, v4}, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator$FSFileVisitor;-><init>(Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;Ljava/lang/String;Ljava/lang/String;Lorg/apache/tika/pipes/pipesiterator/fs/f;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lorg/apache/tika/pipes/pipesiterator/fs/a;->a(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    instance-of v2, v1, Ljava/util/concurrent/TimeoutException;

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    check-cast v1, Ljava/util/concurrent/TimeoutException;

    .line 44
    .line 45
    throw v1

    .line 46
    :cond_0
    throw v0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    iget-object v1, p0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->basePath:Ljava/nio/file/Path;

    .line 50
    .line 51
    invoke-static {v1}, Lorg/apache/tika/detect/b;->a(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v3, "\"basePath\" directory does not exist: "

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0
.end method

.method public getTotalCount()Lorg/apache/tika/pipes/pipesiterator/TotalCountResult;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->countTotal:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lorg/apache/tika/pipes/pipesiterator/TotalCountResult;->UNSUPPORTED:Lorg/apache/tika/pipes/pipesiterator/TotalCountResult;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->fileCountWorker:Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator$FileCountWorker;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator$FileCountWorker;->getTotalCount()Lorg/apache/tika/pipes/pipesiterator/TotalCountResult;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public initialize(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tika/config/Param;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->countTotal:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator$FileCountWorker;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->basePath:Ljava/nio/file/Path;

    .line 8
    .line 9
    invoke-direct {p1, v0}, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator$FileCountWorker;-><init>(Ljava/nio/file/Path;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->fileCountWorker:Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator$FileCountWorker;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setBasePath(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/apache/tika/config/Field;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    invoke-static {p1, v0}, Laf/r0;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->basePath:Ljava/nio/file/Path;

    .line 9
    .line 10
    return-void
.end method

.method public setCountTotal(Z)V
    .locals 0
    .annotation runtime Lorg/apache/tika/config/Field;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->countTotal:Z

    .line 2
    .line 3
    return-void
.end method

.method public startTotalCount()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->countTotal:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator;->fileCountWorker:Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator$FileCountWorker;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/apache/tika/pipes/pipesiterator/fs/FileSystemPipesIterator$FileCountWorker;->startTotalCount()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
