.class public Lcom/arthenica/ffmpegkit/flutter/FFmpegSessionExecuteTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ffmpegSession:Lcom/arthenica/ffmpegkit/FFmpegSession;

.field private final result:Lio/flutter/plugin/common/MethodChannel$Result;

.field private final resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;


# direct methods
.method public constructor <init>(Lcom/arthenica/ffmpegkit/FFmpegSession;Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegSessionExecuteTask;->ffmpegSession:Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegSessionExecuteTask;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegSessionExecuteTask;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegSessionExecuteTask;->ffmpegSession:Lcom/arthenica/ffmpegkit/FFmpegSession;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->ffmpegExecute(Lcom/arthenica/ffmpegkit/FFmpegSession;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegSessionExecuteTask;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegSessionExecuteTask;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
