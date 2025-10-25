.class public Lcom/arthenica/ffmpegkit/Statistics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bitrate:D

.field private sessionId:J

.field private size:J

.field private speed:D

.field private time:D

.field private videoFps:F

.field private videoFrameNumber:I

.field private videoQuality:F


# direct methods
.method public constructor <init>(JIFFJDDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/arthenica/ffmpegkit/Statistics;->sessionId:J

    .line 5
    .line 6
    iput p3, p0, Lcom/arthenica/ffmpegkit/Statistics;->videoFrameNumber:I

    .line 7
    .line 8
    iput p4, p0, Lcom/arthenica/ffmpegkit/Statistics;->videoFps:F

    .line 9
    .line 10
    iput p5, p0, Lcom/arthenica/ffmpegkit/Statistics;->videoQuality:F

    .line 11
    .line 12
    iput-wide p6, p0, Lcom/arthenica/ffmpegkit/Statistics;->size:J

    .line 13
    .line 14
    iput-wide p8, p0, Lcom/arthenica/ffmpegkit/Statistics;->time:D

    .line 15
    .line 16
    iput-wide p10, p0, Lcom/arthenica/ffmpegkit/Statistics;->bitrate:D

    .line 17
    .line 18
    iput-wide p12, p0, Lcom/arthenica/ffmpegkit/Statistics;->speed:D

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getBitrate()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/arthenica/ffmpegkit/Statistics;->bitrate:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSessionId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/arthenica/ffmpegkit/Statistics;->sessionId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/arthenica/ffmpegkit/Statistics;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSpeed()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/arthenica/ffmpegkit/Statistics;->speed:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTime()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/arthenica/ffmpegkit/Statistics;->time:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVideoFps()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/arthenica/ffmpegkit/Statistics;->videoFps:F

    .line 2
    .line 3
    return v0
.end method

.method public getVideoFrameNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arthenica/ffmpegkit/Statistics;->videoFrameNumber:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoQuality()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/arthenica/ffmpegkit/Statistics;->videoQuality:F

    .line 2
    .line 3
    return v0
.end method

.method public setBitrate(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/arthenica/ffmpegkit/Statistics;->bitrate:D

    .line 2
    .line 3
    return-void
.end method

.method public setSessionId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/arthenica/ffmpegkit/Statistics;->sessionId:J

    .line 2
    .line 3
    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/arthenica/ffmpegkit/Statistics;->size:J

    .line 2
    .line 3
    return-void
.end method

.method public setSpeed(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/arthenica/ffmpegkit/Statistics;->speed:D

    .line 2
    .line 3
    return-void
.end method

.method public setTime(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/arthenica/ffmpegkit/Statistics;->time:D

    .line 2
    .line 3
    return-void
.end method

.method public setVideoFps(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arthenica/ffmpegkit/Statistics;->videoFps:F

    .line 2
    .line 3
    return-void
.end method

.method public setVideoFrameNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arthenica/ffmpegkit/Statistics;->videoFrameNumber:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoQuality(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arthenica/ffmpegkit/Statistics;->videoQuality:F

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
    const-string v1, "Statistics{"

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
    iget-wide v1, p0, Lcom/arthenica/ffmpegkit/Statistics;->sessionId:J

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", videoFrameNumber="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lcom/arthenica/ffmpegkit/Statistics;->videoFrameNumber:I

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", videoFps="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/arthenica/ffmpegkit/Statistics;->videoFps:F

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", videoQuality="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/arthenica/ffmpegkit/Statistics;->videoQuality:F

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", size="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-wide v1, p0, Lcom/arthenica/ffmpegkit/Statistics;->size:J

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", time="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-wide v1, p0, Lcom/arthenica/ffmpegkit/Statistics;->time:D

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ", bitrate="

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-wide v1, p0, Lcom/arthenica/ffmpegkit/Statistics;->bitrate:D

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, ", speed="

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-wide v1, p0, Lcom/arthenica/ffmpegkit/Statistics;->speed:D

    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const/16 v1, 0x7d

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    return-object v0
.end method
