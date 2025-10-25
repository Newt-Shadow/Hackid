.class public Lcom/arthenica/ffmpegkit/MediaInformationSession;
.super Lcom/arthenica/ffmpegkit/AbstractSession;
.source "SourceFile"


# instance fields
.field private final completeCallback:Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

.field private mediaInformation:Lcom/arthenica/ffmpegkit/MediaInformation;


# direct methods
.method private constructor <init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;->NEVER_PRINT_LOGS:Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;

    .line 2
    .line 3
    invoke-direct {p0, p1, p3, v0}, Lcom/arthenica/ffmpegkit/AbstractSession;-><init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/LogCallback;Lcom/arthenica/ffmpegkit/LogRedirectionStrategy;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/MediaInformationSession;->completeCallback:Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

    .line 7
    .line 8
    return-void
.end method

.method public static create([Ljava/lang/String;)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 2

    .line 1
    new-instance v0, Lcom/arthenica/ffmpegkit/MediaInformationSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/arthenica/ffmpegkit/MediaInformationSession;-><init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)V

    return-object v0
.end method

.method public static create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 2

    .line 2
    new-instance v0, Lcom/arthenica/ffmpegkit/MediaInformationSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/arthenica/ffmpegkit/MediaInformationSession;-><init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)V

    return-object v0
.end method

.method public static create([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)Lcom/arthenica/ffmpegkit/MediaInformationSession;
    .locals 1

    .line 3
    new-instance v0, Lcom/arthenica/ffmpegkit/MediaInformationSession;

    invoke-direct {v0, p0, p1, p2}, Lcom/arthenica/ffmpegkit/MediaInformationSession;-><init>([Ljava/lang/String;Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;Lcom/arthenica/ffmpegkit/LogCallback;)V

    return-object v0
.end method


# virtual methods
.method public getCompleteCallback()Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/MediaInformationSession;->completeCallback:Lcom/arthenica/ffmpegkit/MediaInformationSessionCompleteCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaInformation()Lcom/arthenica/ffmpegkit/MediaInformation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/MediaInformationSession;->mediaInformation:Lcom/arthenica/ffmpegkit/MediaInformation;

    .line 2
    .line 3
    return-object v0
.end method

.method public isFFmpeg()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFFprobe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMediaInformation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setMediaInformation(Lcom/arthenica/ffmpegkit/MediaInformation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/MediaInformationSession;->mediaInformation:Lcom/arthenica/ffmpegkit/MediaInformation;

    .line 2
    .line 3
    return-void
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
    const-string v1, "MediaInformationSession{"

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
