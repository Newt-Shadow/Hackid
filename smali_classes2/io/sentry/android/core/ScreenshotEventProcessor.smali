.class public final Lio/sentry/android/core/ScreenshotEventProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/y;


# instance fields
.field private final a:Lio/sentry/android/core/SentryAndroidOptions;

.field private final b:Lio/sentry/android/core/p0;

.field private final c:Lio/sentry/android/core/internal/util/g;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/p0;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SentryAndroidOptions is required"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 11
    .line 12
    iput-object v0, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->a:Lio/sentry/android/core/SentryAndroidOptions;

    .line 13
    .line 14
    const-string v0, "BuildInfoProvider is required"

    .line 15
    .line 16
    invoke-static {p2, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lio/sentry/android/core/p0;

    .line 21
    .line 22
    iput-object p2, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->b:Lio/sentry/android/core/p0;

    .line 23
    .line 24
    new-instance p2, Lio/sentry/android/core/internal/util/g;

    .line 25
    .line 26
    invoke-static {}, Lio/sentry/android/core/internal/util/b;->b()Lio/sentry/transport/p;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-wide/16 v1, 0x7d0

    .line 31
    .line 32
    const/4 v3, 0x3

    .line 33
    invoke-direct {p2, v0, v1, v2, v3}, Lio/sentry/android/core/internal/util/g;-><init>(Lio/sentry/transport/p;JI)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->c:Lio/sentry/android/core/internal/util/g;

    .line 37
    .line 38
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachScreenshot()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    const-string p1, "Screenshot"

    .line 45
    .line 46
    invoke-static {p1}, Lio/sentry/util/k;->a(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public b(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/z4;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lio/sentry/z4;->y0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->a:Lio/sentry/android/core/SentryAndroidOptions;

    .line 9
    .line 10
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachScreenshot()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object p2, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->a:Lio/sentry/android/core/SentryAndroidOptions;

    .line 17
    .line 18
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    .line 27
    const-string v2, "attachScreenshot is disabled."

    .line 28
    .line 29
    invoke-interface {p2, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    invoke-static {}, Lio/sentry/android/core/y0;->c()Lio/sentry/android/core/y0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lio/sentry/android/core/y0;->b()Landroid/app/Activity;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    invoke-static {p2}, Lio/sentry/util/j;->i(Lio/sentry/c0;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v1, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->c:Lio/sentry/android/core/internal/util/g;

    .line 51
    .line 52
    invoke-virtual {v1}, Lio/sentry/android/core/internal/util/g;->a()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iget-object v2, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->a:Lio/sentry/android/core/SentryAndroidOptions;

    .line 57
    .line 58
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getBeforeScreenshotCaptureCallback()Lio/sentry/android/core/SentryAndroidOptions$a;

    .line 59
    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_3
    iget-object v1, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->a:Lio/sentry/android/core/SentryAndroidOptions;

    .line 65
    .line 66
    invoke-virtual {v1}, Lio/sentry/s5;->getMainThreadChecker()Lio/sentry/util/thread/a;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v2, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->a:Lio/sentry/android/core/SentryAndroidOptions;

    .line 71
    .line 72
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iget-object v3, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->b:Lio/sentry/android/core/p0;

    .line 77
    .line 78
    invoke-static {v0, v1, v2, v3}, Lio/sentry/android/core/internal/util/p;->f(Landroid/app/Activity;Lio/sentry/util/thread/a;Lio/sentry/ILogger;Lio/sentry/android/core/p0;)[B

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-nez v1, :cond_4

    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_4
    invoke-static {v1}, Lio/sentry/b;->a([B)Lio/sentry/b;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p2, v1}, Lio/sentry/c0;->m(Lio/sentry/b;)V

    .line 90
    .line 91
    .line 92
    const-string v1, "android:activity"

    .line 93
    .line 94
    invoke-virtual {p2, v1, v0}, Lio/sentry/c0;->k(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_0
    return-object p1
.end method

.method public c(Lio/sentry/protocol/y;Lio/sentry/c0;)Lio/sentry/protocol/y;
    .locals 0

    .line 1
    return-object p1
.end method
