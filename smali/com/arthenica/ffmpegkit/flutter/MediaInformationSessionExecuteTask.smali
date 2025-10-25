.class public Lcom/arthenica/ffmpegkit/flutter/MediaInformationSessionExecuteTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mediaInformationSession:Lcom/arthenica/ffmpegkit/MediaInformationSession;

.field private final result:Lio/flutter/plugin/common/MethodChannel$Result;

.field private final resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lcom/arthenica/ffmpegkit/MediaInformationSession;ILcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/MediaInformationSessionExecuteTask;->mediaInformationSession:Lcom/arthenica/ffmpegkit/MediaInformationSession;

    .line 5
    .line 6
    iput p2, p0, Lcom/arthenica/ffmpegkit/flutter/MediaInformationSessionExecuteTask;->timeout:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/arthenica/ffmpegkit/flutter/MediaInformationSessionExecuteTask;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/arthenica/ffmpegkit/flutter/MediaInformationSessionExecuteTask;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/MediaInformationSessionExecuteTask;->mediaInformationSession:Lcom/arthenica/ffmpegkit/MediaInformationSession;

    .line 2
    .line 3
    iget v1, p0, Lcom/arthenica/ffmpegkit/flutter/MediaInformationSessionExecuteTask;->timeout:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getMediaInformationExecute(Lcom/arthenica/ffmpegkit/MediaInformationSession;I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/MediaInformationSessionExecuteTask;->resultHandler:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/arthenica/ffmpegkit/flutter/MediaInformationSessionExecuteTask;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
