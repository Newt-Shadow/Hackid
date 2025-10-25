.class public Lorg/apache/tika/utils/ProcessUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PROCESS_MAP:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Process;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/tika/utils/ProcessUtils;->PROCESS_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/Thread;

    .line 13
    .line 14
    new-instance v2, Lorg/apache/tika/utils/j;

    .line 15
    .line 16
    invoke-direct {v2}, Lorg/apache/tika/utils/j;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/apache/tika/utils/ProcessUtils;->lambda$static$0()V

    return-void
.end method

.method public static escapeCommandLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    const-string v0, " "

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-boolean v0, Lorg/apache/tika/utils/SystemUtils;->IS_OS_WINDOWS:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v0, "\""

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :cond_1
    return-object p0
.end method

.method public static execute(Ljava/lang/ProcessBuilder;JII)Lorg/apache/tika/utils/FileProcessResult;
    .locals 11

    const-string v0, "\n"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    invoke-static {p0}, Lorg/apache/tika/utils/ProcessUtils;->register(Ljava/lang/Process;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    new-instance v4, Lorg/apache/tika/utils/StreamGobbler;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Lorg/apache/tika/utils/StreamGobbler;-><init>(Ljava/io/InputStream;I)V

    .line 5
    new-instance p3, Lorg/apache/tika/utils/StreamGobbler;

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p3, v5, p4}, Lorg/apache/tika/utils/StreamGobbler;-><init>(Ljava/io/InputStream;I)V

    .line 6
    new-instance p4, Ljava/lang/Thread;

    invoke-direct {p4, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    .line 8
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    .line 10
    :try_start_2
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, p2, v9}, Lorg/apache/tika/parser/external/a;->a(Ljava/lang/Process;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    const-wide/16 v2, 0x3e8

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p2

    .line 13
    invoke-virtual {p4, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 14
    invoke-virtual {v5, v2, v3}, Ljava/lang/Thread;->join(J)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p0}, Lorg/apache/tika/fork/c;->a(Ljava/lang/Process;)Ljava/lang/Process;

    .line 16
    invoke-virtual {p4, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 17
    invoke-virtual {v5, v2, v3}, Ljava/lang/Thread;->join(J)V

    const-wide/16 v2, 0x1f4

    .line 18
    invoke-static {p0, v2, v3, v9}, Lorg/apache/tika/parser/external/a;->a(Ljava/lang/Process;JLjava/util/concurrent/TimeUnit;)Z

    move-result p2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_1

    .line 19
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p2
    :try_end_4
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p2, -0x1

    .line 20
    :goto_0
    :try_start_5
    invoke-virtual {p4}, Ljava/lang/Thread;->interrupt()V

    .line 21
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 22
    invoke-virtual {p4}, Ljava/lang/Thread;->interrupt()V

    .line 23
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 24
    throw p1

    :catch_1
    move p1, v6

    .line 25
    :catch_2
    invoke-virtual {p4}, Ljava/lang/Thread;->interrupt()V

    .line 26
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    const/16 p2, -0x3e8

    .line 27
    :goto_1
    new-instance p4, Lorg/apache/tika/utils/FileProcessResult;

    invoke-direct {p4}, Lorg/apache/tika/utils/FileProcessResult;-><init>()V

    .line 28
    iput-wide v7, p4, Lorg/apache/tika/utils/FileProcessResult;->processTimeMillis:J

    .line 29
    invoke-virtual {p3}, Lorg/apache/tika/utils/StreamGobbler;->getStreamLength()J

    move-result-wide v2

    iput-wide v2, p4, Lorg/apache/tika/utils/FileProcessResult;->stderrLength:J

    .line 30
    invoke-virtual {v4}, Lorg/apache/tika/utils/StreamGobbler;->getStreamLength()J

    move-result-wide v2

    iput-wide v2, p4, Lorg/apache/tika/utils/FileProcessResult;->stdoutLength:J

    if-nez p1, :cond_2

    const/4 v6, 0x1

    .line 31
    :cond_2
    iput-boolean v6, p4, Lorg/apache/tika/utils/FileProcessResult;->isTimeout:Z

    .line 32
    iput p2, p4, Lorg/apache/tika/utils/FileProcessResult;->exitValue:I

    .line 33
    invoke-virtual {v4}, Lorg/apache/tika/utils/StreamGobbler;->getLines()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/tika/utils/StringUtils;->joinWith(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p4, Lorg/apache/tika/utils/FileProcessResult;->stdout:Ljava/lang/String;

    .line 34
    invoke-virtual {p3}, Lorg/apache/tika/utils/StreamGobbler;->getLines()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/tika/utils/StringUtils;->joinWith(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p4, Lorg/apache/tika/utils/FileProcessResult;->stderr:Ljava/lang/String;

    .line 35
    invoke-virtual {v4}, Lorg/apache/tika/utils/StreamGobbler;->getIsTruncated()Z

    move-result p1

    iput-boolean p1, p4, Lorg/apache/tika/utils/FileProcessResult;->stdoutTruncated:Z

    .line 36
    invoke-virtual {p3}, Lorg/apache/tika/utils/StreamGobbler;->getIsTruncated()Z

    move-result p1

    iput-boolean p1, p4, Lorg/apache/tika/utils/FileProcessResult;->stderrTruncated:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 37
    invoke-static {p0}, Lorg/apache/tika/fork/c;->a(Ljava/lang/Process;)Ljava/lang/Process;

    if-eqz v1, :cond_3

    .line 38
    invoke-static {v1}, Lorg/apache/tika/utils/ProcessUtils;->release(Ljava/lang/String;)Ljava/lang/Process;

    :cond_3
    return-object p4

    :catchall_1
    move-exception p1

    move-object v10, v1

    move-object v1, p0

    move-object p0, v10

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p0, v1

    :goto_2
    if-eqz v1, :cond_4

    .line 39
    invoke-static {v1}, Lorg/apache/tika/fork/c;->a(Ljava/lang/Process;)Ljava/lang/Process;

    :cond_4
    if-eqz p0, :cond_5

    .line 40
    invoke-static {p0}, Lorg/apache/tika/utils/ProcessUtils;->release(Ljava/lang/String;)Ljava/lang/Process;

    .line 41
    :cond_5
    throw p1
.end method

.method public static execute(Ljava/lang/ProcessBuilder;JLjava/nio/file/Path;I)Lorg/apache/tika/utils/FileProcessResult;
    .locals 9

    .line 42
    invoke-static {p3}, Lorg/apache/tika/utils/f;->a(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Lorg/apache/tika/pipes/fetcher/fs/d;->a(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-static {p3}, Lorg/apache/tika/utils/f;->a(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v2, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v2}, Lorg/apache/tika/utils/g;->a(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 44
    :cond_0
    invoke-static {p3}, Lorg/apache/tika/fork/b;->a(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/tika/utils/h;->a(Ljava/lang/ProcessBuilder;Ljava/io/File;)Ljava/lang/ProcessBuilder;

    const/4 v0, 0x0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    invoke-static {p0}, Lorg/apache/tika/utils/ProcessUtils;->register(Ljava/lang/Process;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 48
    new-instance v4, Lorg/apache/tika/utils/StreamGobbler;

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, p4}, Lorg/apache/tika/utils/StreamGobbler;-><init>(Ljava/io/InputStream;I)V

    .line 49
    new-instance p4, Ljava/lang/Thread;

    invoke-direct {p4, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v5, -0x1

    .line 51
    :try_start_2
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, p2, v7}, Lorg/apache/tika/parser/external/a;->a(Ljava/lang/Process;JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const-wide/16 v2, 0x3e8

    if-eqz p1, :cond_1

    .line 53
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p2

    .line 54
    invoke-virtual {p4, v2, v3}, Ljava/lang/Thread;->join(J)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {p0}, Lorg/apache/tika/fork/c;->a(Ljava/lang/Process;)Ljava/lang/Process;

    .line 56
    invoke-virtual {p4, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p2, -0x1

    goto :goto_0

    :catch_0
    move p1, v1

    :catch_1
    const/16 p2, -0x3e8

    .line 57
    :goto_0
    :try_start_4
    new-instance p4, Lorg/apache/tika/utils/FileProcessResult;

    invoke-direct {p4}, Lorg/apache/tika/utils/FileProcessResult;-><init>()V

    .line 58
    iput-wide v5, p4, Lorg/apache/tika/utils/FileProcessResult;->processTimeMillis:J

    .line 59
    invoke-virtual {v4}, Lorg/apache/tika/utils/StreamGobbler;->getStreamLength()J

    move-result-wide v2

    iput-wide v2, p4, Lorg/apache/tika/utils/FileProcessResult;->stderrLength:J

    .line 60
    invoke-static {p3}, Lorg/apache/tika/io/g;->a(Ljava/nio/file/Path;)J

    move-result-wide v2

    iput-wide v2, p4, Lorg/apache/tika/utils/FileProcessResult;->stdoutLength:J

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v1

    .line 61
    :goto_1
    iput-boolean p1, p4, Lorg/apache/tika/utils/FileProcessResult;->isTimeout:Z

    .line 62
    iput p2, p4, Lorg/apache/tika/utils/FileProcessResult;->exitValue:I

    const-string p1, ""

    .line 63
    iput-object p1, p4, Lorg/apache/tika/utils/FileProcessResult;->stdout:Ljava/lang/String;

    const-string p1, "\n"

    .line 64
    invoke-virtual {v4}, Lorg/apache/tika/utils/StreamGobbler;->getLines()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/tika/utils/StringUtils;->joinWith(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p4, Lorg/apache/tika/utils/FileProcessResult;->stderr:Ljava/lang/String;

    .line 65
    iput-boolean v1, p4, Lorg/apache/tika/utils/FileProcessResult;->stdoutTruncated:Z

    .line 66
    invoke-virtual {v4}, Lorg/apache/tika/utils/StreamGobbler;->getIsTruncated()Z

    move-result p1

    iput-boolean p1, p4, Lorg/apache/tika/utils/FileProcessResult;->stderrTruncated:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    invoke-static {p0}, Lorg/apache/tika/fork/c;->a(Ljava/lang/Process;)Ljava/lang/Process;

    .line 68
    invoke-static {v0}, Lorg/apache/tika/utils/ProcessUtils;->release(Ljava/lang/String;)Ljava/lang/Process;

    return-object p4

    :catchall_0
    move-exception p1

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_2
    if-eqz v0, :cond_3

    .line 69
    invoke-static {v0}, Lorg/apache/tika/fork/c;->a(Ljava/lang/Process;)Ljava/lang/Process;

    .line 70
    :cond_3
    invoke-static {p0}, Lorg/apache/tika/utils/ProcessUtils;->release(Ljava/lang/String;)Ljava/lang/Process;

    .line 71
    throw p1
.end method

.method private static synthetic lambda$static$0()V
    .locals 4

    .line 1
    sget-object v0, Lorg/apache/tika/utils/ProcessUtils;->PROCESS_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    new-instance v1, Lorg/apache/tika/utils/i;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/apache/tika/utils/i;-><init>()V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x1

    .line 9
    .line 10
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEachValue(JLjava/util/function/Consumer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static register(Ljava/lang/Process;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lorg/apache/tika/utils/ProcessUtils;->PROCESS_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private static release(Ljava/lang/String;)Ljava/lang/Process;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/tika/utils/ProcessUtils;->PROCESS_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Process;

    .line 8
    .line 9
    return-object p0
.end method

.method public static unescapeCommandLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-boolean v0, Lorg/apache/tika/utils/SystemUtils;->IS_OS_WINDOWS:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "\""

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x1

    .line 32
    sub-int/2addr v0, v1

    .line 33
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :cond_0
    return-object p0
.end method
