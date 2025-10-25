.class public Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final inputPath:Ljava/lang/String;

.field private final namedPipePath:Ljava/lang/String;

.field private final result:Lio/flutter/plugin/common/MethodChannel$Result;

.field private final resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;->inputPath:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;->namedPipePath:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    const-string v0, "ffmpeg-kit-flutter"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "cat "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;->inputPath:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " > "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;->namedPipePath:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "Starting copy %s to pipe %s operation."

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    new-array v4, v3, [Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v5, p0, Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;->inputPath:Ljava/lang/String;

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    aput-object v5, v4, v6

    .line 41
    .line 42
    iget-object v5, p0, Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;->namedPipePath:Ljava/lang/String;

    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    aput-object v5, v4, v7

    .line 46
    .line 47
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const/4 v8, 0x3

    .line 63
    new-array v9, v8, [Ljava/lang/String;

    .line 64
    .line 65
    const-string v10, "sh"

    .line 66
    .line 67
    aput-object v10, v9, v6

    .line 68
    .line 69
    const-string v10, "-c"

    .line 70
    .line 71
    aput-object v10, v9, v7

    .line 72
    .line 73
    aput-object v1, v9, v3

    .line 74
    .line 75
    invoke-virtual {v2, v9}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v9

    .line 87
    const-string v2, "Copying %s to pipe %s operation completed with rc %d in %d seconds."

    .line 88
    .line 89
    const/4 v11, 0x4

    .line 90
    new-array v11, v11, [Ljava/lang/Object;

    .line 91
    .line 92
    iget-object v12, p0, Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;->inputPath:Ljava/lang/String;

    .line 93
    .line 94
    aput-object v12, v11, v6

    .line 95
    .line 96
    iget-object v6, p0, Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;->namedPipePath:Ljava/lang/String;

    .line 97
    .line 98
    aput-object v6, v11, v7

    .line 99
    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    aput-object v6, v11, v3

    .line 105
    .line 106
    sub-long/2addr v9, v4

    .line 107
    const-wide/16 v3, 0x3e8

    .line 108
    .line 109
    div-long/2addr v9, v3

    .line 110
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    aput-object v3, v11, v8

    .line 115
    .line 116
    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iget-object v2, p0, Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 124
    .line 125
    iget-object v3, p0, Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 126
    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v2, v3, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :catch_0
    move-exception v1

    .line 136
    goto :goto_0

    .line 137
    :catch_1
    move-exception v1

    .line 138
    :goto_0
    iget-object v2, p0, Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;->inputPath:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v3, p0, Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;->namedPipePath:Ljava/lang/String;

    .line 141
    .line 142
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const-string v3, "Copy %s to pipe %s failed with error."

    .line 147
    .line 148
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 156
    .line 157
    iget-object v2, p0, Lcom/arthenica/ffmpegkit/flutter/WriteToPipeTask;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 158
    .line 159
    const-string v3, "WRITE_TO_PIPE_FAILED"

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0, v2, v3, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :goto_1
    return-void
.end method
