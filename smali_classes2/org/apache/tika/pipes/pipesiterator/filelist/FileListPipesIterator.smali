.class public Lorg/apache/tika/pipes/pipesiterator/filelist/FileListPipesIterator;
.super Lorg/apache/tika/pipes/pipesiterator/PipesIterator;
.source "SourceFile"


# instance fields
.field private fileList:Ljava/lang/String;
    .annotation runtime Lorg/apache/tika/config/Field;
    .end annotation
.end field

.field private fileListPath:Ljava/nio/file/Path;

.field private hasHeader:Z
    .annotation runtime Lorg/apache/tika/config/Field;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/tika/pipes/pipesiterator/PipesIterator;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/apache/tika/pipes/pipesiterator/filelist/FileListPipesIterator;->hasHeader:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public checkInitialization(Lorg/apache/tika/config/InitializableProblemHandler;)V
    .locals 3

    .line 1
    const-string p1, "fileList"

    .line 2
    .line 3
    iget-object v0, p0, Lorg/apache/tika/pipes/pipesiterator/filelist/FileListPipesIterator;->fileList:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lorg/apache/tika/config/TikaConfig;->mustNotBeEmpty(Ljava/lang/String;Ljava/lang/String;)V

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
    iget-object p1, p0, Lorg/apache/tika/pipes/pipesiterator/filelist/FileListPipesIterator;->fileList:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    new-array v1, v0, [Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1, v1}, Laf/r0;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lorg/apache/tika/pipes/pipesiterator/filelist/FileListPipesIterator;->fileListPath:Ljava/nio/file/Path;

    .line 36
    .line 37
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 38
    .line 39
    invoke-static {p1, v0}, Lorg/apache/tika/config/a;->a(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    new-instance p1, Lorg/apache/tika/exception/TikaConfigException;

    .line 47
    .line 48
    iget-object v0, p0, Lorg/apache/tika/pipes/pipesiterator/filelist/FileListPipesIterator;->fileList:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v2, "file list "

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " does not exist. Must specify an existing file"

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p1, v0}, Lorg/apache/tika/exception/TikaConfigException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method

.method protected enqueue()V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/apache/tika/pipes/pipesiterator/filelist/FileListPipesIterator;->fileListPath:Ljava/nio/file/Path;

    .line 2
    .line 3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/apache/tika/pipes/pipesiterator/filelist/a;->a(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/tika/pipes/pipesiterator/filelist/FileListPipesIterator;->hasHeader:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v3, v1

    .line 21
    :goto_0
    if-eqz v3, :cond_2

    .line 22
    .line 23
    const-string v1, "#"

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-static {v3}, Lorg/apache/tika/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    new-instance v4, Lorg/apache/tika/pipes/fetcher/FetchKey;

    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/apache/tika/pipes/pipesiterator/PipesIterator;->getFetcherName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v4, v1, v3}, Lorg/apache/tika/pipes/fetcher/FetchKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v5, Lorg/apache/tika/pipes/emitter/EmitKey;

    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/apache/tika/pipes/pipesiterator/PipesIterator;->getEmitterName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v5, v1, v3}, Lorg/apache/tika/pipes/emitter/EmitKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v7, Lorg/apache/tika/parser/ParseContext;

    .line 56
    .line 57
    invoke-direct {v7}, Lorg/apache/tika/parser/ParseContext;-><init>()V

    .line 58
    .line 59
    .line 60
    const-class v1, Lorg/apache/tika/pipes/HandlerConfig;

    .line 61
    .line 62
    invoke-virtual {p0}, Lorg/apache/tika/pipes/pipesiterator/PipesIterator;->getHandlerConfig()Lorg/apache/tika/pipes/HandlerConfig;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v7, v1, v2}, Lorg/apache/tika/parser/ParseContext;->set(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Lorg/apache/tika/pipes/FetchEmitTuple;

    .line 70
    .line 71
    new-instance v6, Lorg/apache/tika/metadata/Metadata;

    .line 72
    .line 73
    invoke-direct {v6}, Lorg/apache/tika/metadata/Metadata;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lorg/apache/tika/pipes/pipesiterator/PipesIterator;->getOnParseException()Lorg/apache/tika/pipes/FetchEmitTuple$ON_PARSE_EXCEPTION;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    move-object v2, v1

    .line 81
    invoke-direct/range {v2 .. v8}, Lorg/apache/tika/pipes/FetchEmitTuple;-><init>(Ljava/lang/String;Lorg/apache/tika/pipes/fetcher/FetchKey;Lorg/apache/tika/pipes/emitter/EmitKey;Lorg/apache/tika/metadata/Metadata;Lorg/apache/tika/parser/ParseContext;Lorg/apache/tika/pipes/FetchEmitTuple$ON_PARSE_EXCEPTION;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lorg/apache/tika/pipes/pipesiterator/PipesIterator;->tryToAdd(Lorg/apache/tika/pipes/FetchEmitTuple;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :catchall_0
    move-exception v1

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catchall_1
    move-exception v0

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    :cond_3
    :goto_1
    throw v1
.end method

.method public setFileList(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/apache/tika/config/Field;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/apache/tika/pipes/pipesiterator/filelist/FileListPipesIterator;->fileList:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHasHeader(Z)V
    .locals 0
    .annotation runtime Lorg/apache/tika/config/Field;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lorg/apache/tika/pipes/pipesiterator/filelist/FileListPipesIterator;->hasHeader:Z

    .line 2
    .line 3
    return-void
.end method
