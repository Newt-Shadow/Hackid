.class public Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->handler:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a(Lio/flutter/plugin/common/EventChannel$EventSink;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->lambda$successAsync$1(Lio/flutter/plugin/common/EventChannel$EventSink;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->lambda$successAsync$0(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->lambda$errorAsync$2(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->lambda$notImplementedAsync$3(Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method private static synthetic lambda$errorAsync$2(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string p0, "ResultHandler can not send failure response %s:%s on a null method call result."

    .line 8
    .line 9
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "ffmpeg-kit-flutter"

    .line 18
    .line 19
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private static synthetic lambda$notImplementedAsync$3(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string p0, "ffmpeg-kit-flutter"

    .line 8
    .line 9
    const-string v0, "ResultHandler can not send not implemented response on a null method call result."

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method private static synthetic lambda$successAsync$0(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string p0, "ResultHandler can not send successful response %s on a null method call result."

    .line 8
    .line 9
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "ffmpeg-kit-flutter"

    .line 18
    .line 19
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private static synthetic lambda$successAsync$1(Lio/flutter/plugin/common/EventChannel$EventSink;Ljava/lang/Object;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string p0, "ResultHandler can not send event %s on a null event sink."

    .line 8
    .line 9
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "ffmpeg-kit-flutter"

    .line 18
    .line 19
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method


# virtual methods
.method errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method errorAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/arthenica/ffmpegkit/flutter/a;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/arthenica/ffmpegkit/flutter/a;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method notImplementedAsync(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/arthenica/ffmpegkit/flutter/b;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/arthenica/ffmpegkit/flutter/b;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method successAsync(Lio/flutter/plugin/common/EventChannel$EventSink;Ljava/lang/Object;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/arthenica/ffmpegkit/flutter/c;

    invoke-direct {v1, p1, p2}, Lcom/arthenica/ffmpegkit/flutter/c;-><init>(Lio/flutter/plugin/common/EventChannel$EventSink;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method successAsync(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/arthenica/ffmpegkit/flutter/d;

    invoke-direct {v1, p1, p2}, Lcom/arthenica/ffmpegkit/flutter/d;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
