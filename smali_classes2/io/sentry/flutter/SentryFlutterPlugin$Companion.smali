.class public final Lio/sentry/flutter/SentryFlutterPlugin$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/flutter/SentryFlutterPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$adjustReplaySizeToBlockSize(Lio/sentry/flutter/SentryFlutterPlugin$Companion;D)D
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->adjustReplaySizeToBlockSize(D)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$crash(Lio/sentry/flutter/SentryFlutterPlugin$Companion;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->crash()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final adjustReplaySizeToBlockSize(D)D
    .locals 6

    const/16 v0, 0x10

    int-to-double v0, v0

    rem-double v2, p1, v0

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_0

    sub-double/2addr p1, v2

    goto :goto_0

    :cond_0
    sub-double/2addr v0, v2

    add-double/2addr p1, v0

    :goto_0
    return-wide p1
.end method

.method private final crash()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string v1, "FlutterSentry Native Integration: Sample RuntimeException"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "getMainLooper().thread"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    const-wide/16 v2, 0x1f4

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
