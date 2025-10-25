.class public Lcom/arthenica/ffmpegkit/FFmpegSession;
.super Lcom/arthenica/ffmpegkit/AbstractSession;
.source "SourceFile"


# instance fields
.field private final completeCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

.field private final statistics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Statistics;",
            ">;"
        }
    .end annotation
.end field

.field private final statisticsCallback:Lcom/arthenica/ffmpegkit/StatisticsCallback;

.field private final statisticsLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p5}, Lcom/arthenica/ffmpegkit/AbstractSession;-><init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->completeCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statisticsCallback:Lcom/arthenica/ffmpegkit/StatisticsCallback;

    .line 7
    .line 8
    new-instance p1, Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statistics:Ljava/util/List;

    .line 14
    .line 15
    new-instance p1, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statisticsLock:Ljava/lang/Object;

    .line 21
    .line 22
    return-void
.end method

.method public static create([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .locals 7

    .line 1
    new-instance v6, Lcom/arthenica/ffmpegkit/FFmpegSession;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getLogRedirectionStrategy()Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    move-result-object v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/arthenica/ffmpegkit/FFmpegSession;-><init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V

    return-object v6
.end method

.method public static create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .locals 7

    .line 2
    new-instance v6, Lcom/arthenica/ffmpegkit/FFmpegSession;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getLogRedirectionStrategy()Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    move-result-object v5

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/arthenica/ffmpegkit/FFmpegSession;-><init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V

    return-object v6
.end method

.method public static create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .locals 7

    .line 3
    new-instance v6, Lcom/arthenica/ffmpegkit/FFmpegSession;

    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getLogRedirectionStrategy()Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    move-result-object v5

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/arthenica/ffmpegkit/FFmpegSession;-><init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V

    return-object v6
.end method

.method public static create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)Lcom/arthenica/ffmpegkit/FFmpegSession;
    .locals 7

    .line 4
    new-instance v6, Lcom/arthenica/ffmpegkit/FFmpegSession;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/arthenica/ffmpegkit/FFmpegSession;-><init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/StatisticsCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V

    return-object v6
.end method


# virtual methods
.method public addStatistics(Lcom/arthenica/ffmpegkit/Statistics;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statisticsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statistics:Ljava/util/List;

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

.method public getAllStatistics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Statistics;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x1388

    .line 5
    invoke-virtual {p0, v0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getAllStatistics(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllStatistics(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Statistics;",
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

    const-string v0, "getAllStatistics was called to return all statistics but there are still statistics being transmitted for session id %d."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ffmpeg-kit"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/FFmpegSession;->getStatistics()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCompleteCallback()Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->completeCallback:Lcom/arthenica/ffmpegkit/FFmpegSessionCompleteCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastReceivedStatistics()Lcom/arthenica/ffmpegkit/Statistics;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statisticsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statistics:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statistics:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/lit8 v2, v2, -0x1

    .line 19
    .line 20
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/arthenica/ffmpegkit/Statistics;

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-object v1

    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    const/4 v0, 0x0

    .line 30
    return-object v0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw v1
.end method

.method public getStatistics()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/arthenica/ffmpegkit/Statistics;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statisticsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statistics:Ljava/util/List;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public getStatisticsCallback()Lcom/arthenica/ffmpegkit/StatisticsCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/FFmpegSession;->statisticsCallback:Lcom/arthenica/ffmpegkit/StatisticsCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public isFFmpeg()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFFprobe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMediaInformation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "FFmpegSession{"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "sessionId="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-wide v1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->sessionId:J

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", createTime="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->createTime:Ljava/util/Date;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", startTime="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->startTime:Ljava/util/Date;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", endTime="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->endTime:Ljava/util/Date;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", arguments="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->arguments:[Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, ", logs="

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/arthenica/ffmpegkit/AbstractSession;->getLogsAsString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ", state="

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->state:Lcom/arthenica/ffmpegkit/SessionState;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, ", returnCode="

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->returnCode:Lcom/arthenica/ffmpegkit/ReturnCode;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v1, ", failStackTrace="

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const/16 v1, 0x27

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v2, p0, Lcom/arthenica/ffmpegkit/AbstractSession;->failStackTrace:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const/16 v1, 0x7d

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    return-object v0
.end method
