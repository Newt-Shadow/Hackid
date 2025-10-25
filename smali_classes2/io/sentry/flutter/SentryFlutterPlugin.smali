.class public final Lio/sentry/flutter/SentryFlutterPlugin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/flutter/SentryFlutterPlugin$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

.field private static final NATIVE_CRASH_WAIT_TIME:J = 0x1f4L


# instance fields
.field private activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private context:Landroid/content/Context;

.field private framesTracker:Lio/sentry/android/core/h;

.field private pluginRegistrationTime:Ljava/lang/Long;

.field private replay:Lio/sentry/android/replay/ReplayIntegration;

.field private replayConfig:Lio/sentry/android/replay/u;

.field private sentryFlutter:Lio/sentry/flutter/SentryFlutter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v7, Lio/sentry/android/replay/u;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    const/16 v2, 0x10

    .line 9
    .line 10
    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const/high16 v4, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    const v6, 0x124f8

    .line 16
    .line 17
    .line 18
    move-object v0, v7

    .line 19
    invoke-direct/range {v0 .. v6}, Lio/sentry/android/replay/u;-><init>(IIFFII)V

    .line 20
    .line 21
    .line 22
    iput-object v7, p0, Lio/sentry/flutter/SentryFlutterPlugin;->replayConfig:Lio/sentry/android/replay/u;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/sentry/flutter/SentryFlutterPlugin;->setContexts$lambda$6(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;Lio/sentry/u0;)V

    return-void
.end method

.method public static final synthetic access$getChannel$p(Lio/sentry/flutter/SentryFlutterPlugin;)Lio/flutter/plugin/common/MethodChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getReplay$p(Lio/sentry/flutter/SentryFlutterPlugin;)Lio/sentry/android/replay/ReplayIntegration;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->replay:Lio/sentry/android/replay/ReplayIntegration;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getReplayConfig$p(Lio/sentry/flutter/SentryFlutterPlugin;)Lio/sentry/android/replay/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->replayConfig:Lio/sentry/android/replay/u;

    .line 2
    .line 3
    return-object p0
.end method

.method private final addBreadcrumb(Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lio/sentry/k0;->h()Lio/sentry/k0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/sentry/k0;->B()Lio/sentry/s5;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "getInstance().options"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lio/sentry/e;->g(Ljava/util/Map;Lio/sentry/s5;)Lio/sentry/e;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lio/sentry/q3;->e(Lio/sentry/e;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const-string p1, ""

    .line 24
    .line 25
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private final addReplayScreenshot(Ljava/lang/String;Ljava/lang/Long;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, p0, Lio/sentry/flutter/SentryFlutterPlugin;->replay:Lio/sentry/android/replay/ReplayIntegration;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const-string v1, "replay"

    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move-object v0, v1

    .line 18
    :goto_0
    new-instance v1, Ljava/io/File;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    invoke-virtual {v0, v1, p1, p2}, Lio/sentry/android/replay/ReplayIntegration;->k0(Ljava/io/File;J)V

    .line 28
    .line 29
    .line 30
    const-string p1, ""

    .line 31
    .line 32
    invoke-interface {p3, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    :goto_1
    const-string p1, "5"

    .line 37
    .line 38
    const-string p2, "Arguments are null"

    .line 39
    .line 40
    invoke-interface {p3, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private final addToMap(Lio/sentry/android/core/performance/h;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/core/performance/h;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/android/core/performance/h;->m()Lio/sentry/y3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lio/sentry/android/core/performance/h;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lio/sentry/android/core/performance/h;->n()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "startTimestampMsSinceEpoch"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1}, Lio/sentry/android/core/performance/h;->j()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v2, "stopTimestampMsSinceEpoch"

    .line 37
    .line 38
    invoke-static {v2, p1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    filled-new-array {v1, p1}, [Lxc/k;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->removeContexts$lambda$7(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Lio/sentry/u0;)V

    return-void
.end method

.method private final beginNativeFrames(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->sentryFlutter:Lio/sentry/flutter/SentryFlutter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "sentryFlutter"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lio/sentry/flutter/SentryFlutter;->getAutoPerformanceTracingEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->activity:Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/app/Activity;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Lio/sentry/flutter/SentryFlutterPlugin;->framesTracker:Lio/sentry/android/core/h;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Lio/sentry/android/core/h;->e(Landroid/app/Activity;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static synthetic c(Lio/sentry/flutter/SentryFlutterPlugin;Ljava/util/Map;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->initNativeSdk$lambda$0(Lio/sentry/flutter/SentryFlutterPlugin;Ljava/util/Map;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method private final captureEnvelope(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    invoke-static {}, Lio/sentry/q3;->t()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p1, "1"

    .line 9
    .line 10
    const-string v0, "The Sentry Android SDK is disabled"

    .line 11
    .line 12
    invoke-interface {p2, p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/util/List;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :cond_1
    move-object v0, p1

    .line 29
    check-cast v0, Ljava/util/Collection;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x1

    .line 36
    xor-int/2addr v0, v2

    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    invoke-static {p1}, Lyc/m;->O(Ljava/util/List;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, [B

    .line 44
    .line 45
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v3, "null cannot be cast to non-null type kotlin.Boolean"

    .line 50
    .line 51
    invoke-static {p1, v3}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    check-cast p1, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    array-length v3, v0

    .line 63
    if-nez v3, :cond_2

    .line 64
    .line 65
    move v3, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/4 v3, 0x0

    .line 68
    :goto_0
    xor-int/2addr v2, v3

    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    invoke-static {v0, p1}, Lio/sentry/android/core/k1;->d([BZ)Lio/sentry/protocol/r;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    const-string p1, ""

    .line 78
    .line 79
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const-string p1, "2"

    .line 84
    .line 85
    const-string v0, "Failed to capture envelope"

    .line 86
    .line 87
    invoke-interface {p2, p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    return-void

    .line 91
    :cond_4
    const-string p1, "3"

    .line 92
    .line 93
    const-string v0, "Envelope is null or empty"

    .line 94
    .line 95
    invoke-interface {p2, p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private final captureReplay(Ljava/lang/Boolean;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const-string p1, "5"

    .line 5
    .line 6
    const-string v1, "Arguments are null"

    .line 7
    .line 8
    invoke-interface {p2, p1, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lio/sentry/flutter/SentryFlutterPlugin;->replay:Lio/sentry/android/replay/ReplayIntegration;

    .line 13
    .line 14
    const-string v2, "replay"

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    move-object v1, v0

    .line 22
    :cond_1
    invoke-virtual {v1, p1}, Lio/sentry/android/replay/ReplayIntegration;->b(Ljava/lang/Boolean;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin;->replay:Lio/sentry/android/replay/ReplayIntegration;

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    move-object v0, p1

    .line 34
    :goto_0
    invoke-virtual {v0}, Lio/sentry/android/replay/ReplayIntegration;->W()Lio/sentry/protocol/r;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lio/sentry/protocol/r;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private final clearBreadcrumbs(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->i()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final closeNativeSdk(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/k0;->h()Lio/sentry/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/sentry/k0;->g()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->framesTracker:Lio/sentry/android/core/h;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/sentry/android/core/h;->p()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->framesTracker:Lio/sentry/android/core/h;

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final displayRefreshRate(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->activity:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/app/Activity;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, Lio/sentry/flutter/b;->a(Landroid/app/Activity;)Landroid/view/Display;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, v2

    .line 26
    :goto_0
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    float-to-int v0, v0

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->activity:Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/app/Activity;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move-object v0, v2

    .line 68
    :goto_1
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    float-to-int v0, v0

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :cond_3
    :goto_2
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private final endNativeFrames(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->activity:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/app/Activity;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    iget-object v2, p0, Lio/sentry/flutter/SentryFlutterPlugin;->sentryFlutter:Lio/sentry/flutter/SentryFlutter;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const-string v2, "sentryFlutter"

    .line 19
    .line 20
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object v2, v1

    .line 24
    :cond_1
    invoke-virtual {v2}, Lio/sentry/flutter/SentryFlutter;->getAutoPerformanceTracingEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_9

    .line 29
    .line 30
    if-eqz v0, :cond_9

    .line 31
    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    goto/16 :goto_5

    .line 35
    .line 36
    :cond_2
    new-instance v2, Lio/sentry/protocol/r;

    .line 37
    .line 38
    invoke-direct {v2, p1}, Lio/sentry/protocol/r;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin;->framesTracker:Lio/sentry/android/core/h;

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p1, v0, v2}, Lio/sentry/android/core/h;->n(Landroid/app/Activity;Lio/sentry/protocol/r;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    iget-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin;->framesTracker:Lio/sentry/android/core/h;

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Lio/sentry/android/core/h;->q(Lio/sentry/protocol/r;)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    move-object p1, v1

    .line 58
    :goto_1
    const/4 v0, 0x0

    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    const-string v2, "frames_total"

    .line 62
    .line 63
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lio/sentry/protocol/h;

    .line 68
    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    invoke-virtual {v2}, Lio/sentry/protocol/h;->a()Ljava/lang/Number;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    goto :goto_2

    .line 82
    :cond_5
    move v2, v0

    .line 83
    :goto_2
    if-eqz p1, :cond_6

    .line 84
    .line 85
    const-string v3, "frames_slow"

    .line 86
    .line 87
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Lio/sentry/protocol/h;

    .line 92
    .line 93
    if-eqz v3, :cond_6

    .line 94
    .line 95
    invoke-virtual {v3}, Lio/sentry/protocol/h;->a()Ljava/lang/Number;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-eqz v3, :cond_6

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    goto :goto_3

    .line 106
    :cond_6
    move v3, v0

    .line 107
    :goto_3
    if-eqz p1, :cond_7

    .line 108
    .line 109
    const-string v4, "frames_frozen"

    .line 110
    .line 111
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Lio/sentry/protocol/h;

    .line 116
    .line 117
    if-eqz p1, :cond_7

    .line 118
    .line 119
    invoke-virtual {p1}, Lio/sentry/protocol/h;->a()Ljava/lang/Number;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-eqz p1, :cond_7

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    :cond_7
    if-nez v2, :cond_8

    .line 130
    .line 131
    if-nez v3, :cond_8

    .line 132
    .line 133
    if-nez v0, :cond_8

    .line 134
    .line 135
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_8
    const-string p1, "totalFrames"

    .line 140
    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {p1, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const-string v1, "slowFrames"

    .line 150
    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-static {v1, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const-string v2, "frozenFrames"

    .line 160
    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v2, v0}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    filled-new-array {p1, v1, v0}, [Lxc/k;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {p1}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :goto_4
    return-void

    .line 181
    :cond_9
    :goto_5
    if-nez p1, :cond_a

    .line 182
    .line 183
    const-string p1, "Sentry"

    .line 184
    .line 185
    const-string v0, "Parameter id cannot be null when calling endNativeFrames."

    .line 186
    .line 187
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    :cond_a
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    return-void
.end method

.method private final fetchNativeAppStart(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->sentryFlutter:Lio/sentry/flutter/SentryFlutter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "sentryFlutter"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lio/sentry/flutter/SentryFlutter;->getAutoPerformanceTracingEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "getInstance()"

    .line 27
    .line 28
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lio/sentry/android/core/performance/g;->r()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const-string v3, "Sentry"

    .line 36
    .line 37
    if-eqz v2, :cond_7

    .line 38
    .line 39
    invoke-virtual {v0}, Lio/sentry/android/core/performance/g;->j()Lio/sentry/android/core/performance/h;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lio/sentry/android/core/performance/h;->f()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    const-wide/32 v6, 0xea60

    .line 48
    .line 49
    .line 50
    cmp-long v2, v4, v6

    .line 51
    .line 52
    if-lez v2, :cond_2

    .line 53
    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :cond_2
    invoke-virtual {v0}, Lio/sentry/android/core/performance/g;->j()Lio/sentry/android/core/performance/h;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v4, "appStartMetrics.appStartTimeSpan"

    .line 61
    .line 62
    invoke-static {v2, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lio/sentry/android/core/performance/h;->m()Lio/sentry/y3;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v0}, Lio/sentry/android/core/performance/g;->l()Lio/sentry/android/core/performance/g$a;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    sget-object v6, Lio/sentry/android/core/performance/g$a;->COLD:Lio/sentry/android/core/performance/g$a;

    .line 74
    .line 75
    if-ne v5, v6, :cond_3

    .line 76
    .line 77
    const/4 v5, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    const/4 v5, 0x0

    .line 80
    :goto_0
    if-nez v4, :cond_4

    .line 81
    .line 82
    const-string v0, "App start won\'t be sent due to missing appStartTime"

    .line 83
    .line 84
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_4
    invoke-virtual {v4}, Lio/sentry/y3;->l()J

    .line 93
    .line 94
    .line 95
    move-result-wide v3

    .line 96
    long-to-double v3, v3

    .line 97
    invoke-static {v3, v4}, Lio/sentry/j;->k(D)D

    .line 98
    .line 99
    .line 100
    move-result-wide v3

    .line 101
    const-string v1, "pluginRegistrationTime"

    .line 102
    .line 103
    iget-object v6, p0, Lio/sentry/flutter/SentryFlutterPlugin;->pluginRegistrationTime:Ljava/lang/Long;

    .line 104
    .line 105
    invoke-static {v1, v6}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v6, "appStartTime"

    .line 110
    .line 111
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v6, v3}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    const-string v4, "isColdStart"

    .line 120
    .line 121
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-static {v4, v5}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    filled-new-array {v1, v3, v4}, [Lxc/k;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {v1}, Lyc/e0;->i([Lxc/k;)Ljava/util/Map;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 138
    .line 139
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 140
    .line 141
    .line 142
    new-instance v4, Lio/sentry/android/core/performance/h;

    .line 143
    .line 144
    invoke-direct {v4}, Lio/sentry/android/core/performance/h;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v5, "Process Initialization"

    .line 148
    .line 149
    invoke-virtual {v4, v5}, Lio/sentry/android/core/performance/h;->v(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Lio/sentry/android/core/performance/h;->n()J

    .line 153
    .line 154
    .line 155
    move-result-wide v5

    .line 156
    invoke-virtual {v4, v5, v6}, Lio/sentry/android/core/performance/h;->w(J)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Lio/sentry/android/core/performance/h;->p()J

    .line 160
    .line 161
    .line 162
    move-result-wide v5

    .line 163
    invoke-virtual {v4, v5, v6}, Lio/sentry/android/core/performance/h;->x(J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Lio/sentry/android/core/performance/g;->n()J

    .line 167
    .line 168
    .line 169
    move-result-wide v5

    .line 170
    invoke-virtual {v4, v5, v6}, Lio/sentry/android/core/performance/h;->y(J)V

    .line 171
    .line 172
    .line 173
    invoke-direct {p0, v4, v3}, Lio/sentry/flutter/SentryFlutterPlugin;->addToMap(Lio/sentry/android/core/performance/h;Ljava/util/Map;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Lio/sentry/android/core/performance/g;->m()Lio/sentry/android/core/performance/h;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    const-string v4, "appStartMetrics.applicationOnCreateTimeSpan"

    .line 181
    .line 182
    invoke-static {v2, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-direct {p0, v2, v3}, Lio/sentry/flutter/SentryFlutterPlugin;->addToMap(Lio/sentry/android/core/performance/h;Ljava/util/Map;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lio/sentry/android/core/performance/g;->o()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    const-string v4, "appStartMetrics.contentProviderOnCreateTimeSpans"

    .line 193
    .line 194
    invoke-static {v2, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    check-cast v2, Ljava/lang/Iterable;

    .line 198
    .line 199
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-eqz v4, :cond_5

    .line 208
    .line 209
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    check-cast v4, Lio/sentry/android/core/performance/h;

    .line 214
    .line 215
    const-string v5, "span"

    .line 216
    .line 217
    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-direct {p0, v4, v3}, Lio/sentry/flutter/SentryFlutterPlugin;->addToMap(Lio/sentry/android/core/performance/h;Ljava/util/Map;)V

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_5
    invoke-virtual {v0}, Lio/sentry/android/core/performance/g;->g()Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    const-string v2, "appStartMetrics.activityLifecycleTimeSpans"

    .line 229
    .line 230
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    check-cast v0, Ljava/lang/Iterable;

    .line 234
    .line 235
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_6

    .line 244
    .line 245
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    check-cast v2, Lio/sentry/android/core/performance/b;

    .line 250
    .line 251
    invoke-virtual {v2}, Lio/sentry/android/core/performance/b;->b()Lio/sentry/android/core/performance/h;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    const-string v5, "span.onCreate"

    .line 256
    .line 257
    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-direct {p0, v4, v3}, Lio/sentry/flutter/SentryFlutterPlugin;->addToMap(Lio/sentry/android/core/performance/h;Ljava/util/Map;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2}, Lio/sentry/android/core/performance/b;->f()Lio/sentry/android/core/performance/h;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    const-string v4, "span.onStart"

    .line 268
    .line 269
    invoke-static {v2, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-direct {p0, v2, v3}, Lio/sentry/flutter/SentryFlutterPlugin;->addToMap(Lio/sentry/android/core/performance/h;Ljava/util/Map;)V

    .line 273
    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_6
    const-string v0, "nativeSpanTimes"

    .line 277
    .line 278
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    :goto_3
    return-void

    .line 285
    :cond_7
    :goto_4
    const-string v0, "Invalid app start data: app not launched in foreground or app start took too long (>60s)"

    .line 286
    .line 287
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    return-void
.end method

.method private final initNativeSdk(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string p1, "1"

    .line 7
    .line 8
    const-string v0, "Context is null"

    .line 9
    .line 10
    invoke-interface {p2, p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/util/Map;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const-string p1, "4"

    .line 33
    .line 34
    const-string v0, "Arguments is null or empty"

    .line 35
    .line 36
    invoke-interface {p2, p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->context:Landroid/content/Context;

    .line 41
    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    const-string v0, "context"

    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    move-object v1, v0

    .line 51
    :goto_0
    new-instance v0, Lio/sentry/flutter/c;

    .line 52
    .line 53
    invoke-direct {v0, p0, p1}, Lio/sentry/flutter/c;-><init>(Lio/sentry/flutter/SentryFlutterPlugin;Ljava/util/Map;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v0}, Lio/sentry/android/core/y1;->e(Landroid/content/Context;Lio/sentry/q3$a;)V

    .line 57
    .line 58
    .line 59
    const-string p1, ""

    .line 60
    .line 61
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private static final initNativeSdk$lambda$0(Lio/sentry/flutter/SentryFlutterPlugin;Ljava/util/Map;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 3

    .line 1
    const-string v0, "options"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->sentryFlutter:Lio/sentry/flutter/SentryFlutter;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "sentryFlutter"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object v0, v1

    .line 17
    :cond_0
    invoke-virtual {v0, p2, p1}, Lio/sentry/flutter/SentryFlutter;->updateOptions(Lio/sentry/android/core/SentryAndroidOptions;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin;->sentryFlutter:Lio/sentry/flutter/SentryFlutter;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v1, p1

    .line 29
    :goto_0
    invoke-virtual {v1}, Lio/sentry/flutter/SentryFlutter;->getAutoPerformanceTracingEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    new-instance p1, Lio/sentry/android/core/h;

    .line 36
    .line 37
    new-instance v0, Lio/sentry/android/core/n1;

    .line 38
    .line 39
    invoke-direct {v0}, Lio/sentry/android/core/n1;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0, p2}, Lio/sentry/android/core/h;-><init>(Lio/sentry/android/core/n1;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin;->framesTracker:Lio/sentry/android/core/h;

    .line 46
    .line 47
    :cond_2
    invoke-direct {p0, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->setupReplay(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private final loadContexts(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    invoke-static {}, Lio/sentry/k0;->h()Lio/sentry/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/sentry/k0;->B()Lio/sentry/s5;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getInstance().options"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    instance-of v1, v0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {}, Lio/sentry/android/core/k1;->g()Lio/sentry/u0;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v3, p0, Lio/sentry/flutter/SentryFlutterPlugin;->context:Landroid/content/Context;

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    const-string v3, "context"

    .line 32
    .line 33
    invoke-static {v3}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v2, v3

    .line 38
    :goto_0
    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 39
    .line 40
    invoke-static {v2, v0, v1}, Lio/sentry/android/core/k1;->k(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/u0;)Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "serializeScope(\n        \u2026    currentScope,\n      )"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private final loadImageList(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/sentry/k0;->h()Lio/sentry/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/sentry/k0;->B()Lio/sentry/s5;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "null cannot be cast to non-null type io.sentry.android.core.SentryAndroidOptions"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 15
    .line 16
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/util/List;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getDebugImagesLoader()Lio/sentry/android/core/f1;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Lio/sentry/android/core/f1;->b()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    check-cast p1, Ljava/lang/Iterable;

    .line 46
    .line 47
    invoke-static {p1}, Lyc/m;->k0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :cond_1
    invoke-direct {p0, v2}, Lio/sentry/flutter/SentryFlutterPlugin;->serialize(Ljava/util/List;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getDebugImagesLoader()Lio/sentry/android/core/f1;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast p1, Ljava/lang/Iterable;

    .line 61
    .line 62
    invoke-static {p1}, Lyc/m;->o0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {v1, p1}, Lio/sentry/android/core/f1;->a(Ljava/util/Set;)Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getDebugImagesLoader()Lio/sentry/android/core/f1;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p1}, Lio/sentry/android/core/f1;->b()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Ljava/util/Collection;

    .line 87
    .line 88
    :cond_3
    if-eqz p1, :cond_4

    .line 89
    .line 90
    check-cast p1, Ljava/lang/Iterable;

    .line 91
    .line 92
    invoke-static {p1}, Lyc/m;->k0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    :cond_4
    invoke-direct {p0, v2}, Lio/sentry/flutter/SentryFlutterPlugin;->serialize(Ljava/util/List;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :goto_0
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method private final removeContexts(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Lio/sentry/flutter/d;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Lio/sentry/flutter/d;-><init>(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lio/sentry/q3;->k(Lio/sentry/e3;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static final removeContexts$lambda$7(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Lio/sentry/u0;)V
    .locals 1

    .line 1
    const-string v0, "scope"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p0}, Lio/sentry/u0;->j(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string p0, ""

    .line 10
    .line 11
    invoke-interface {p1, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final removeExtra(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p1}, Lio/sentry/q3;->A(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final removeTag(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p1}, Lio/sentry/q3;->B(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final serialize(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lyc/m;->r(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lio/sentry/protocol/DebugImage;

    .line 5
    invoke-direct {p0, v1}, Lio/sentry/flutter/SentryFlutterPlugin;->serialize(Lio/sentry/protocol/DebugImage;)Ljava/util/Map;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private final serialize(Lio/sentry/protocol/DebugImage;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/protocol/DebugImage;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Lio/sentry/protocol/DebugImage;->getImageAddr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image_addr"

    invoke-static {v1, v0}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object v2

    const-string v0, "image_size"

    .line 8
    invoke-virtual {p1}, Lio/sentry/protocol/DebugImage;->getImageSize()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object v3

    const-string v0, "code_file"

    .line 9
    invoke-virtual {p1}, Lio/sentry/protocol/DebugImage;->getCodeFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object v4

    const-string v0, "type"

    .line 10
    invoke-virtual {p1}, Lio/sentry/protocol/DebugImage;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object v5

    const-string v0, "debug_id"

    .line 11
    invoke-virtual {p1}, Lio/sentry/protocol/DebugImage;->getDebugId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object v6

    const-string v0, "code_id"

    .line 12
    invoke-virtual {p1}, Lio/sentry/protocol/DebugImage;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object v7

    const-string v0, "debug_file"

    .line 13
    invoke-virtual {p1}, Lio/sentry/protocol/DebugImage;->getDebugFile()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Lxc/k;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final setContexts(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lio/sentry/flutter/e;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3}, Lio/sentry/flutter/e;-><init>(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lio/sentry/q3;->k(Lio/sentry/e3;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    :goto_0
    const-string p1, ""

    .line 16
    .line 17
    invoke-interface {p3, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static final setContexts$lambda$6(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;Lio/sentry/u0;)V
    .locals 1

    .line 1
    const-string v0, "scope"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, p0, p1}, Lio/sentry/u0;->z(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const-string p0, ""

    .line 10
    .line 11
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final setExtra(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1, p2}, Lio/sentry/q3;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p3, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    :goto_0
    invoke-interface {p3, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final setReplayConfig(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "width"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    instance-of v3, v2, Ljava/lang/Double;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    check-cast v2, Ljava/lang/Double;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v2, v4

    .line 20
    :goto_0
    const-wide/16 v5, 0x0

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-wide v2, v5

    .line 30
    :goto_1
    const-string v7, "height"

    .line 31
    .line 32
    invoke-virtual {v1, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    instance-of v8, v7, Ljava/lang/Double;

    .line 37
    .line 38
    if-eqz v8, :cond_2

    .line 39
    .line 40
    check-cast v7, Ljava/lang/Double;

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move-object v7, v4

    .line 44
    :goto_2
    if-eqz v7, :cond_3

    .line 45
    .line 46
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    :cond_3
    cmpg-double v7, v2, v5

    .line 51
    .line 52
    if-gez v7, :cond_4

    .line 53
    .line 54
    sget-object v7, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    .line 55
    .line 56
    invoke-static {v7, v2, v3}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->access$adjustReplaySizeToBlockSize(Lio/sentry/flutter/SentryFlutterPlugin$Companion;D)D

    .line 57
    .line 58
    .line 59
    move-result-wide v8

    .line 60
    div-double v2, v8, v2

    .line 61
    .line 62
    mul-double/2addr v5, v2

    .line 63
    invoke-static {v7, v5, v6}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->access$adjustReplaySizeToBlockSize(Lio/sentry/flutter/SentryFlutterPlugin$Companion;D)D

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    goto :goto_3

    .line 68
    :cond_4
    sget-object v7, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    .line 69
    .line 70
    invoke-static {v7, v5, v6}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->access$adjustReplaySizeToBlockSize(Lio/sentry/flutter/SentryFlutterPlugin$Companion;D)D

    .line 71
    .line 72
    .line 73
    move-result-wide v8

    .line 74
    div-double v5, v8, v5

    .line 75
    .line 76
    mul-double/2addr v2, v5

    .line 77
    invoke-static {v7, v2, v3}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->access$adjustReplaySizeToBlockSize(Lio/sentry/flutter/SentryFlutterPlugin$Companion;D)D

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    move-wide/from16 v18, v2

    .line 82
    .line 83
    move-wide v2, v8

    .line 84
    move-wide/from16 v8, v18

    .line 85
    .line 86
    :goto_3
    iget-object v5, v0, Lio/sentry/flutter/SentryFlutterPlugin;->context:Landroid/content/Context;

    .line 87
    .line 88
    if-nez v5, :cond_5

    .line 89
    .line 90
    const-string v5, "context"

    .line 91
    .line 92
    invoke-static {v5}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    move-object v5, v4

    .line 96
    :cond_5
    const-string v6, "window"

    .line 97
    .line 98
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    const-string v6, "null cannot be cast to non-null type android.view.WindowManager"

    .line 103
    .line 104
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    check-cast v5, Landroid/view/WindowManager;

    .line 108
    .line 109
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 110
    .line 111
    const/16 v7, 0x1e

    .line 112
    .line 113
    const/4 v10, 0x0

    .line 114
    if-lt v6, v7, :cond_6

    .line 115
    .line 116
    invoke-static {v5}, Lx1/c;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-static {v5}, Lx1/f;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    goto :goto_4

    .line 125
    :cond_6
    new-instance v6, Landroid/graphics/Point;

    .line 126
    .line 127
    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 135
    .line 136
    .line 137
    new-instance v5, Landroid/graphics/Rect;

    .line 138
    .line 139
    iget v7, v6, Landroid/graphics/Point;->x:I

    .line 140
    .line 141
    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 142
    .line 143
    invoke-direct {v5, v10, v10, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 144
    .line 145
    .line 146
    :goto_4
    const-string v6, "if (VERSION.SDK_INT >= V\u2026, screenBounds.y)\n      }"

    .line 147
    .line 148
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    new-instance v6, Lio/sentry/android/replay/u;

    .line 152
    .line 153
    invoke-static {v8, v9}, Lkd/a;->b(D)I

    .line 154
    .line 155
    .line 156
    move-result v12

    .line 157
    invoke-static {v2, v3}, Lkd/a;->b(D)I

    .line 158
    .line 159
    .line 160
    move-result v13

    .line 161
    double-to-float v7, v8

    .line 162
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    int-to-float v8, v8

    .line 167
    div-float v14, v7, v8

    .line 168
    .line 169
    double-to-float v2, v2

    .line 170
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    int-to-float v3, v3

    .line 175
    div-float v15, v2, v3

    .line 176
    .line 177
    const-string v2, "frameRate"

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    instance-of v3, v2, Ljava/lang/Integer;

    .line 184
    .line 185
    if-eqz v3, :cond_7

    .line 186
    .line 187
    check-cast v2, Ljava/lang/Integer;

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_7
    move-object v2, v4

    .line 191
    :goto_5
    if-eqz v2, :cond_8

    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    move/from16 v16, v2

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_8
    move/from16 v16, v10

    .line 201
    .line 202
    :goto_6
    const-string v2, "bitRate"

    .line 203
    .line 204
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    instance-of v2, v1, Ljava/lang/Integer;

    .line 209
    .line 210
    if-eqz v2, :cond_9

    .line 211
    .line 212
    check-cast v1, Ljava/lang/Integer;

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_9
    move-object v1, v4

    .line 216
    :goto_7
    if-eqz v1, :cond_a

    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 219
    .line 220
    .line 221
    move-result v10

    .line 222
    :cond_a
    move/from16 v17, v10

    .line 223
    .line 224
    move-object v11, v6

    .line 225
    invoke-direct/range {v11 .. v17}, Lio/sentry/android/replay/u;-><init>(IIFFII)V

    .line 226
    .line 227
    .line 228
    iput-object v6, v0, Lio/sentry/flutter/SentryFlutterPlugin;->replayConfig:Lio/sentry/android/replay/u;

    .line 229
    .line 230
    invoke-virtual {v6}, Lio/sentry/android/replay/u;->d()I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    iget-object v2, v0, Lio/sentry/flutter/SentryFlutterPlugin;->replayConfig:Lio/sentry/android/replay/u;

    .line 239
    .line 240
    invoke-virtual {v2}, Lio/sentry/android/replay/u;->c()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    iget-object v3, v0, Lio/sentry/flutter/SentryFlutterPlugin;->replayConfig:Lio/sentry/android/replay/u;

    .line 249
    .line 250
    invoke-virtual {v3}, Lio/sentry/android/replay/u;->b()I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    iget-object v5, v0, Lio/sentry/flutter/SentryFlutterPlugin;->replayConfig:Lio/sentry/android/replay/u;

    .line 259
    .line 260
    invoke-virtual {v5}, Lio/sentry/android/replay/u;->a()I

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    filled-new-array {v1, v2, v3, v5}, [Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    const/4 v2, 0x4

    .line 273
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    const-string v2, "Configuring replay: %dx%d at %d FPS, %d BPS"

    .line 278
    .line 279
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    const-string v2, "format(this, *args)"

    .line 284
    .line 285
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    const-string v2, "Sentry"

    .line 289
    .line 290
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    iget-object v1, v0, Lio/sentry/flutter/SentryFlutterPlugin;->replay:Lio/sentry/android/replay/ReplayIntegration;

    .line 294
    .line 295
    if-nez v1, :cond_b

    .line 296
    .line 297
    const-string v1, "replay"

    .line 298
    .line 299
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_b
    move-object v4, v1

    .line 304
    :goto_8
    new-instance v1, Landroid/content/res/Configuration;

    .line 305
    .line 306
    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4, v1}, Lio/sentry/android/replay/ReplayIntegration;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 310
    .line 311
    .line 312
    const-string v1, ""

    .line 313
    .line 314
    move-object/from16 v2, p2

    .line 315
    .line 316
    invoke-interface {v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    return-void
.end method

.method private final setTag(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1, p2}, Lio/sentry/q3;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p3, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    :goto_0
    invoke-interface {p3, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final setUser(Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lio/sentry/k0;->h()Lio/sentry/k0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/sentry/k0;->B()Lio/sentry/s5;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "getInstance().options"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lio/sentry/protocol/b0;->j(Ljava/util/Map;Lio/sentry/s5;)Lio/sentry/protocol/b0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lio/sentry/q3;->F(Lio/sentry/protocol/b0;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    invoke-static {p1}, Lio/sentry/q3;->F(Lio/sentry/protocol/b0;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    const-string p1, ""

    .line 29
    .line 30
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private final setupReplay(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lio/sentry/s5;->getIntegrations()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "options.integrations"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$1;->INSTANCE:Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$1;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lyc/m;->A(Ljava/util/List;Lid/l;)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "options.sessionReplay"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lio/sentry/u5;->o()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Lio/sentry/u5;->p()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 44
    :goto_1
    const/4 v2, 0x0

    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    if-eqz v1, :cond_5

    .line 48
    .line 49
    new-instance v0, Lio/sentry/android/replay/ReplayIntegration;

    .line 50
    .line 51
    iget-object v1, p0, Lio/sentry/flutter/SentryFlutterPlugin;->context:Landroid/content/Context;

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    const-string v1, "context"

    .line 56
    .line 57
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    move-object v4, v2

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    move-object v4, v1

    .line 63
    :goto_2
    invoke-static {}, Lio/sentry/transport/n;->b()Lio/sentry/transport/p;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const-string v1, "getInstance()"

    .line 68
    .line 69
    invoke-static {v5, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v6, Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$2;

    .line 73
    .line 74
    invoke-direct {v6, p0}, Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$2;-><init>(Lio/sentry/flutter/SentryFlutterPlugin;)V

    .line 75
    .line 76
    .line 77
    new-instance v7, Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$3;

    .line 78
    .line 79
    invoke-direct {v7, p0}, Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$3;-><init>(Lio/sentry/flutter/SentryFlutterPlugin;)V

    .line 80
    .line 81
    .line 82
    const/4 v8, 0x0

    .line 83
    move-object v3, v0

    .line 84
    invoke-direct/range {v3 .. v8}, Lio/sentry/android/replay/ReplayIntegration;-><init>(Landroid/content/Context;Lio/sentry/transport/p;Lid/a;Lid/l;Lid/l;)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->replay:Lio/sentry/android/replay/ReplayIntegration;

    .line 88
    .line 89
    new-instance v1, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;

    .line 90
    .line 91
    invoke-direct {v1}, Lio/sentry/flutter/SentryFlutterReplayBreadcrumbConverter;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lio/sentry/android/replay/ReplayIntegration;->D0(Lio/sentry/x2;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->replay:Lio/sentry/android/replay/ReplayIntegration;

    .line 98
    .line 99
    const-string v1, "replay"

    .line 100
    .line 101
    if-nez v0, :cond_3

    .line 102
    .line 103
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    move-object v0, v2

    .line 107
    :cond_3
    invoke-virtual {p1, v0}, Lio/sentry/s5;->addIntegration(Lio/sentry/e1;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->replay:Lio/sentry/android/replay/ReplayIntegration;

    .line 111
    .line 112
    if-nez v0, :cond_4

    .line 113
    .line 114
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_4
    move-object v2, v0

    .line 119
    :goto_3
    invoke-virtual {p1, v2}, Lio/sentry/s5;->setReplayController(Lio/sentry/y2;)V

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_5
    invoke-virtual {p1, v2}, Lio/sentry/s5;->setReplayController(Lio/sentry/y2;)V

    .line 124
    .line 125
    .line 126
    :goto_4
    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->activity:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 1
    const-string v0, "flutterPluginBinding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->pluginRegistrationTime:Ljava/lang/Long;

    .line 15
    .line 16
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "flutterPluginBinding.applicationContext"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->context:Landroid/content/Context;

    .line 26
    .line 27
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 28
    .line 29
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v1, "sentry_flutter"

    .line 34
    .line 35
    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lio/sentry/flutter/SentryFlutter;

    .line 44
    .line 45
    invoke-direct {p1}, Lio/sentry/flutter/SentryFlutter;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin;->sentryFlutter:Lio/sentry/flutter/SentryFlutter;

    .line 49
    .line 50
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->activity:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    iput-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->framesTracker:Lio/sentry/android/core/h;

    .line 5
    .line 6
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    const-string p1, "channel"

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object p1, v0

    .line 20
    :cond_1
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "result"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_16

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "value"

    .line 20
    .line 21
    const-string v3, "key"

    .line 22
    .line 23
    sparse-switch v1, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :sswitch_0
    const-string v1, "removeContexts"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_0
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Ljava/lang/String;

    .line 43
    .line 44
    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->removeContexts(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :sswitch_1
    const-string v1, "setUser"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_1
    const-string v0, "user"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ljava/util/Map;

    .line 66
    .line 67
    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->setUser(Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :sswitch_2
    const-string v1, "captureReplay"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_2
    const-string v0, "isCrash"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->captureReplay(Ljava/lang/Boolean;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_1

    .line 94
    .line 95
    :sswitch_3
    const-string p1, "clearBreadcrumbs"

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_3

    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :cond_3
    invoke-direct {p0, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->clearBreadcrumbs(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :sswitch_4
    const-string p1, "nativeCrash"

    .line 111
    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_4

    .line 117
    .line 118
    goto/16 :goto_0

    .line 119
    .line 120
    :cond_4
    sget-object p1, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    .line 121
    .line 122
    invoke-static {p1}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->access$crash(Lio/sentry/flutter/SentryFlutterPlugin$Companion;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :sswitch_5
    const-string v1, "setContexts"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_5

    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :cond_5
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-direct {p0, v0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->setContexts(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    :sswitch_6
    const-string v1, "setExtra"

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_6

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_6
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Ljava/lang/String;

    .line 173
    .line 174
    invoke-direct {p0, v0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->setExtra(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :sswitch_7
    const-string v1, "removeTag"

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_7

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_7
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Ljava/lang/String;

    .line 194
    .line 195
    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->removeTag(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_1

    .line 199
    .line 200
    :sswitch_8
    const-string v1, "addBreadcrumb"

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_8

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_8
    const-string v0, "breadcrumb"

    .line 211
    .line 212
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    check-cast p1, Ljava/util/Map;

    .line 217
    .line 218
    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->addBreadcrumb(Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_1

    .line 222
    .line 223
    :sswitch_9
    const-string v1, "endNativeFrames"

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-nez v0, :cond_9

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_9
    const-string v0, "id"

    .line 234
    .line 235
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    check-cast p1, Ljava/lang/String;

    .line 240
    .line 241
    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->endNativeFrames(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_1

    .line 245
    .line 246
    :sswitch_a
    const-string p1, "loadContexts"

    .line 247
    .line 248
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    if-nez p1, :cond_a

    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :cond_a
    invoke-direct {p0, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->loadContexts(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_1

    .line 260
    .line 261
    :sswitch_b
    const-string v1, "initNativeSdk"

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-nez v0, :cond_b

    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :cond_b
    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->initNativeSdk(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :sswitch_c
    const-string v1, "loadImageList"

    .line 277
    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-nez v0, :cond_c

    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_c
    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->loadImageList(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_1

    .line 290
    .line 291
    :sswitch_d
    const-string v1, "captureEnvelope"

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-nez v0, :cond_d

    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :cond_d
    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->captureEnvelope(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :sswitch_e
    const-string v1, "addReplayScreenshot"

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-nez v0, :cond_e

    .line 313
    .line 314
    goto/16 :goto_0

    .line 315
    .line 316
    :cond_e
    const-string v0, "path"

    .line 317
    .line 318
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    check-cast v0, Ljava/lang/String;

    .line 323
    .line 324
    const-string v1, "timestamp"

    .line 325
    .line 326
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    check-cast p1, Ljava/lang/Long;

    .line 331
    .line 332
    invoke-direct {p0, v0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->addReplayScreenshot(Ljava/lang/String;Ljava/lang/Long;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    :sswitch_f
    const-string v1, "setReplayConfig"

    .line 338
    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-nez v0, :cond_f

    .line 344
    .line 345
    goto/16 :goto_0

    .line 346
    .line 347
    :cond_f
    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->setReplayConfig(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 348
    .line 349
    .line 350
    goto/16 :goto_1

    .line 351
    .line 352
    :sswitch_10
    const-string v1, "removeExtra"

    .line 353
    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-nez v0, :cond_10

    .line 359
    .line 360
    goto :goto_0

    .line 361
    :cond_10
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    check-cast p1, Ljava/lang/String;

    .line 366
    .line 367
    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->removeExtra(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 368
    .line 369
    .line 370
    goto :goto_1

    .line 371
    :sswitch_11
    const-string p1, "fetchNativeAppStart"

    .line 372
    .line 373
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    if-nez p1, :cond_11

    .line 378
    .line 379
    goto :goto_0

    .line 380
    :cond_11
    invoke-direct {p0, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->fetchNativeAppStart(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 381
    .line 382
    .line 383
    goto :goto_1

    .line 384
    :sswitch_12
    const-string p1, "displayRefreshRate"

    .line 385
    .line 386
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result p1

    .line 390
    if-nez p1, :cond_12

    .line 391
    .line 392
    goto :goto_0

    .line 393
    :cond_12
    invoke-direct {p0, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->displayRefreshRate(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 394
    .line 395
    .line 396
    goto :goto_1

    .line 397
    :sswitch_13
    const-string p1, "closeNativeSdk"

    .line 398
    .line 399
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result p1

    .line 403
    if-nez p1, :cond_13

    .line 404
    .line 405
    goto :goto_0

    .line 406
    :cond_13
    invoke-direct {p0, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->closeNativeSdk(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 407
    .line 408
    .line 409
    goto :goto_1

    .line 410
    :sswitch_14
    const-string v1, "setTag"

    .line 411
    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    if-nez v0, :cond_14

    .line 417
    .line 418
    goto :goto_0

    .line 419
    :cond_14
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    check-cast v0, Ljava/lang/String;

    .line 424
    .line 425
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    check-cast p1, Ljava/lang/String;

    .line 430
    .line 431
    invoke-direct {p0, v0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->setTag(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 432
    .line 433
    .line 434
    goto :goto_1

    .line 435
    :sswitch_15
    const-string p1, "beginNativeFrames"

    .line 436
    .line 437
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result p1

    .line 441
    if-nez p1, :cond_15

    .line 442
    .line 443
    goto :goto_0

    .line 444
    :cond_15
    invoke-direct {p0, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->beginNativeFrames(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 445
    .line 446
    .line 447
    goto :goto_1

    .line 448
    :cond_16
    :goto_0
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 449
    .line 450
    .line 451
    :goto_1
    return-void

    .line 452
    nop

    .line 453
    :sswitch_data_0
    .sparse-switch
        -0x5637d51a -> :sswitch_15
        -0x35fd6828 -> :sswitch_14
        -0x32de1e75 -> :sswitch_13
        -0x1fecafc7 -> :sswitch_12
        -0x15de46ae -> :sswitch_11
        -0x12eba214 -> :sswitch_10
        0x55a7b8b -> :sswitch_f
        0x5e68f6e -> :sswitch_e
        0x8ab9536 -> :sswitch_d
        0xfbc2653 -> :sswitch_c
        0x2080d573 -> :sswitch_b
        0x2ab463aa -> :sswitch_a
        0x2eb48018 -> :sswitch_9
        0x4328ef84 -> :sswitch_8
        0x4c6f5076 -> :sswitch_7
        0x52f354ce -> :sswitch_6
        0x54c21f26 -> :sswitch_5
        0x66d499d0 -> :sswitch_4
        0x6d93c043 -> :sswitch_3
        0x7263eecd -> :sswitch_2
        0x76511b4d -> :sswitch_1
        0x7f261948 -> :sswitch_0
    .end sparse-switch
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
