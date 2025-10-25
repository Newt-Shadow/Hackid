.class public final Lio/sentry/flutter/SentryFlutterReplayRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/android/replay/f;


# instance fields
.field private final channel:Lio/flutter/plugin/common/MethodChannel;

.field private final integration:Lio/sentry/android/replay/ReplayIntegration;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/MethodChannel;Lio/sentry/android/replay/ReplayIntegration;)V
    .locals 1

    .line 1
    const-string v0, "channel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "integration"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 15
    .line 16
    iput-object p2, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder;->integration:Lio/sentry/android/replay/ReplayIntegration;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/flutter/SentryFlutterReplayRecorder;->stop$lambda$3(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/flutter/SentryFlutterReplayRecorder;->resume$lambda$1(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V

    return-void
.end method

.method public static synthetic c(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/flutter/SentryFlutterReplayRecorder;->pause$lambda$2(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V

    return-void
.end method

.method public static synthetic e(Lio/sentry/flutter/SentryFlutterReplayRecorder;Ljava/lang/String;Lio/sentry/android/replay/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterReplayRecorder;->start$lambda$0(Lio/sentry/flutter/SentryFlutterReplayRecorder;Ljava/lang/String;Lio/sentry/android/replay/u;)V

    return-void
.end method

.method private static final pause$lambda$2(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    const-string v0, "ReplayRecorder.pause"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v0, "Sentry"

    .line 12
    .line 13
    const-string v1, "Failed to pause replay recorder"

    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private static final resume$lambda$1(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    const-string v0, "ReplayRecorder.resume"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v0, "Sentry"

    .line 12
    .line 13
    const-string v1, "Failed to resume replay recorder"

    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private static final start$lambda$0(Lio/sentry/flutter/SentryFlutterReplayRecorder;Ljava/lang/String;Lio/sentry/android/replay/u;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    const-string v1, "ReplayRecorder.start"

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    new-array v2, v2, [Lxc/k;

    .line 7
    .line 8
    const-string v3, "directory"

    .line 9
    .line 10
    invoke-static {v3, p1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object p1, v2, v3

    .line 16
    .line 17
    const-string p1, "width"

    .line 18
    .line 19
    invoke-virtual {p2}, Lio/sentry/android/replay/u;->d()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {p1, v3}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v3, 0x1

    .line 32
    aput-object p1, v2, v3

    .line 33
    .line 34
    const-string p1, "height"

    .line 35
    .line 36
    invoke-virtual {p2}, Lio/sentry/android/replay/u;->c()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {p1, v3}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v3, 0x2

    .line 49
    aput-object p1, v2, v3

    .line 50
    .line 51
    const-string p1, "frameRate"

    .line 52
    .line 53
    invoke-virtual {p2}, Lio/sentry/android/replay/u;->b()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-static {p1, p2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/4 p2, 0x3

    .line 66
    aput-object p1, v2, p2

    .line 67
    .line 68
    const-string p1, "replayId"

    .line 69
    .line 70
    iget-object p0, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder;->integration:Lio/sentry/android/replay/ReplayIntegration;

    .line 71
    .line 72
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration;->W()Lio/sentry/protocol/r;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lio/sentry/protocol/r;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p1, p0}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const/4 p1, 0x4

    .line 85
    aput-object p0, v2, p1

    .line 86
    .line 87
    invoke-static {v2}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {v0, v1, p0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception p0

    .line 96
    const-string p1, "Sentry"

    .line 97
    .line 98
    const-string p2, "Failed to start replay recorder"

    .line 99
    .line 100
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .line 102
    .line 103
    :goto_0
    return-void
.end method

.method private static final stop$lambda$3(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    const-string v0, "ReplayRecorder.stop"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v0, "Sentry"

    .line 12
    .line 13
    const-string v1, "Failed to stop replay recorder"

    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/flutter/SentryFlutterReplayRecorder;->stop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lio/sentry/flutter/g;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lio/sentry/flutter/g;-><init>(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lio/sentry/flutter/h;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lio/sentry/flutter/h;-><init>(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public start(Lio/sentry/android/replay/u;)V
    .locals 3

    .line 1
    const-string v0, "recorderConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/sentry/android/replay/u;->c()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x10

    .line 11
    .line 12
    if-gt v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lio/sentry/android/replay/u;->d()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-gt v0, v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterReplayRecorder;->integration:Lio/sentry/android/replay/ReplayIntegration;

    .line 22
    .line 23
    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration;->H()Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-nez v0, :cond_2

    .line 36
    .line 37
    const-string p1, "Sentry"

    .line 38
    .line 39
    const-string v0, "Replay cache directory is null, can\'t start replay recorder."

    .line 40
    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    new-instance v1, Landroid/os/Handler;

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Lio/sentry/flutter/i;

    .line 55
    .line 56
    invoke-direct {v2, p0, v0, p1}, Lio/sentry/flutter/i;-><init>(Lio/sentry/flutter/SentryFlutterReplayRecorder;Ljava/lang/String;Lio/sentry/android/replay/u;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lio/sentry/flutter/f;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lio/sentry/flutter/f;-><init>(Lio/sentry/flutter/SentryFlutterReplayRecorder;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
