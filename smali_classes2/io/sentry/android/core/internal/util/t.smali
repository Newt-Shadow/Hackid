.class public final Lio/sentry/android/core/internal/util/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/internal/util/t$c;,
        Lio/sentry/android/core/internal/util/t$b;
    }
.end annotation


# static fields
.field private static final n:J

.field private static final o:J


# instance fields
.field private final a:Lio/sentry/android/core/p0;

.field private final b:Ljava/util/Set;

.field private final c:Lio/sentry/ILogger;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/ref/WeakReference;

.field private final f:Ljava/util/Map;

.field private g:Z

.field private final h:Lio/sentry/android/core/internal/util/t$c;

.field private i:Landroid/view/Window$OnFrameMetricsAvailableListener;

.field private j:Landroid/view/Choreographer;

.field private k:Ljava/lang/reflect/Field;

.field private l:J

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lio/sentry/android/core/internal/util/t;->n:J

    .line 10
    .line 11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    const-wide/16 v1, 0x2bc

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    sput-wide v0, Lio/sentry/android/core/internal/util/t;->o:J

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/android/core/internal/util/t$a;

    invoke-direct {v0}, Lio/sentry/android/core/internal/util/t$a;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/android/core/internal/util/t;-><init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;Lio/sentry/android/core/internal/util/t$c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;Lio/sentry/android/core/internal/util/t$c;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/t;->b:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/t;->f:Ljava/util/Map;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/sentry/android/core/internal/util/t;->g:Z

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lio/sentry/android/core/internal/util/t;->l:J

    .line 7
    iput-wide v0, p0, Lio/sentry/android/core/internal/util/t;->m:J

    .line 8
    invoke-static {p1}, Lio/sentry/android/core/x0;->h(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "The context is required"

    .line 9
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string v0, "Logger is required"

    .line 10
    invoke-static {p2, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ILogger;

    iput-object v0, p0, Lio/sentry/android/core/internal/util/t;->c:Lio/sentry/ILogger;

    const-string v0, "BuildInfoProvider is required"

    .line 11
    invoke-static {p3, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/p0;

    iput-object v0, p0, Lio/sentry/android/core/internal/util/t;->a:Lio/sentry/android/core/p0;

    const-string v0, "WindowFrameMetricsManager is required"

    .line 12
    invoke-static {p4, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/sentry/android/core/internal/util/t$c;

    iput-object p4, p0, Lio/sentry/android/core/internal/util/t;->h:Lio/sentry/android/core/internal/util/t$c;

    .line 13
    instance-of p4, p1, Landroid/app/Application;

    if-nez p4, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-virtual {p3}, Lio/sentry/android/core/p0;->d()I

    move-result p4

    const/16 v0, 0x18

    if-ge p4, v0, :cond_1

    return-void

    :cond_1
    const/4 p4, 0x1

    .line 15
    iput-boolean p4, p0, Lio/sentry/android/core/internal/util/t;->g:Z

    .line 16
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "io.sentry.android.core.internal.util.SentryFrameMetricsCollector"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v1, Lio/sentry/android/core/internal/util/q;

    invoke-direct {v1, p2}, Lio/sentry/android/core/internal/util/q;-><init>(Lio/sentry/ILogger;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 19
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lio/sentry/android/core/internal/util/t;->d:Landroid/os/Handler;

    .line 20
    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 21
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lio/sentry/android/core/internal/util/r;

    invoke-direct {v0, p0, p2}, Lio/sentry/android/core/internal/util/r;-><init>(Lio/sentry/android/core/internal/util/t;Lio/sentry/ILogger;)V

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    :try_start_0
    const-class p1, Landroid/view/Choreographer;

    const-string v0, "mLastFrameTimeNanos"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/internal/util/t;->k:Ljava/lang/reflect/Field;

    .line 24
    invoke-virtual {p1, p4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    sget-object p4, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    const-string v0, "Unable to get the frame timestamp from the choreographer: "

    invoke-interface {p2, p4, v0, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :goto_0
    new-instance p1, Lio/sentry/android/core/internal/util/s;

    invoke-direct {p1, p0, p3}, Lio/sentry/android/core/internal/util/s;-><init>(Lio/sentry/android/core/internal/util/t;Lio/sentry/android/core/p0;)V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/t;->i:Landroid/view/Window$OnFrameMetricsAvailableListener;

    return-void
.end method

.method public static synthetic a(Lio/sentry/android/core/internal/util/t;Lio/sentry/ILogger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/util/t;->j(Lio/sentry/ILogger;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/android/core/internal/util/t;Lio/sentry/android/core/p0;Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/android/core/internal/util/t;->k(Lio/sentry/android/core/p0;Landroid/view/Window;Landroid/view/FrameMetrics;I)V

    return-void
.end method

.method public static synthetic c(Lio/sentry/ILogger;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/android/core/internal/util/t;->i(Lio/sentry/ILogger;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private d(Landroid/view/FrameMetrics;)J
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    add-long/2addr v0, v2

    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-virtual {p1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    add-long/2addr v0, v2

    .line 18
    const/4 v2, 0x3

    .line 19
    invoke-virtual {p1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    add-long/2addr v0, v2

    .line 24
    const/4 v2, 0x4

    .line 25
    invoke-virtual {p1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    add-long/2addr v0, v2

    .line 30
    const/4 v2, 0x5

    .line 31
    invoke-virtual {p1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    add-long/2addr v0, v2

    .line 36
    return-wide v0
.end method

.method private e(Landroid/view/FrameMetrics;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/t;->a:Lio/sentry/android/core/p0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/android/core/p0;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1a

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    const/16 v0, 0xa

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/FrameMetrics;->getMetric(I)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lio/sentry/android/core/internal/util/t;->f()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0
.end method

.method public static g(J)Z
    .locals 2

    .line 1
    sget-wide v0, Lio/sentry/android/core/internal/util/t;->o:J

    .line 2
    .line 3
    cmp-long p0, p0, v0

    .line 4
    .line 5
    if-lez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static h(JJ)Z
    .locals 0

    .line 1
    cmp-long p0, p0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic i(Lio/sentry/ILogger;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object p1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 2
    .line 3
    const-string v0, "Error during frames measurements."

    .line 4
    .line 5
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic j(Lio/sentry/ILogger;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/sentry/android/core/internal/util/t;->j:Landroid/view/Choreographer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 10
    .line 11
    const-string v2, "Error retrieving Choreographer instance. Slow and frozen frames will not be reported."

    .line 12
    .line 13
    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private synthetic k(Lio/sentry/android/core/p0;Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lio/sentry/android/core/p0;->d()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/16 v5, 0x1e

    .line 14
    .line 15
    if-lt v4, v5, :cond_0

    .line 16
    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/uo;->a(Landroid/content/Context;)Landroid/view/Display;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/view/Display;->getRefreshRate()F

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Landroid/view/Display;->getRefreshRate()F

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    :goto_0
    sget-wide v5, Lio/sentry/android/core/internal/util/t;->n:J

    .line 43
    .line 44
    long-to-float v7, v5

    .line 45
    div-float/2addr v7, v4

    .line 46
    float-to-long v7, v7

    .line 47
    invoke-direct {v0, v1}, Lio/sentry/android/core/internal/util/t;->d(Landroid/view/FrameMetrics;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v14

    .line 51
    sub-long v7, v14, v7

    .line 52
    .line 53
    const-wide/16 v9, 0x0

    .line 54
    .line 55
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v17

    .line 59
    invoke-direct {v0, v1}, Lio/sentry/android/core/internal/util/t;->e(Landroid/view/FrameMetrics;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v7

    .line 63
    cmp-long v1, v7, v9

    .line 64
    .line 65
    if-gez v1, :cond_1

    .line 66
    .line 67
    sub-long v7, v2, v14

    .line 68
    .line 69
    :cond_1
    iget-wide v1, v0, Lio/sentry/android/core/internal/util/t;->m:J

    .line 70
    .line 71
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    iget-wide v7, v0, Lio/sentry/android/core/internal/util/t;->l:J

    .line 76
    .line 77
    cmp-long v3, v1, v7

    .line 78
    .line 79
    if-nez v3, :cond_2

    .line 80
    .line 81
    return-void

    .line 82
    :cond_2
    iput-wide v1, v0, Lio/sentry/android/core/internal/util/t;->l:J

    .line 83
    .line 84
    add-long v7, v1, v14

    .line 85
    .line 86
    iput-wide v7, v0, Lio/sentry/android/core/internal/util/t;->m:J

    .line 87
    .line 88
    long-to-float v3, v5

    .line 89
    const/high16 v5, 0x3f800000    # 1.0f

    .line 90
    .line 91
    sub-float v5, v4, v5

    .line 92
    .line 93
    div-float/2addr v3, v5

    .line 94
    float-to-long v5, v3

    .line 95
    invoke-static {v14, v15, v5, v6}, Lio/sentry/android/core/internal/util/t;->h(JJ)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_3

    .line 100
    .line 101
    invoke-static {v14, v15}, Lio/sentry/android/core/internal/util/t;->g(J)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_3

    .line 106
    .line 107
    const/4 v5, 0x1

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const/4 v5, 0x0

    .line 110
    :goto_1
    move/from16 v19, v5

    .line 111
    .line 112
    iget-object v5, v0, Lio/sentry/android/core/internal/util/t;->f:Ljava/util/Map;

    .line 113
    .line 114
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v20

    .line 122
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_4

    .line 127
    .line 128
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    check-cast v5, Lio/sentry/android/core/internal/util/t$b;

    .line 133
    .line 134
    iget-wide v8, v0, Lio/sentry/android/core/internal/util/t;->m:J

    .line 135
    .line 136
    move-wide v6, v1

    .line 137
    move-wide v10, v14

    .line 138
    move-wide/from16 v12, v17

    .line 139
    .line 140
    move-wide/from16 v21, v14

    .line 141
    .line 142
    move v14, v3

    .line 143
    move/from16 v15, v19

    .line 144
    .line 145
    move/from16 v16, v4

    .line 146
    .line 147
    invoke-interface/range {v5 .. v16}, Lio/sentry/android/core/internal/util/t$b;->d(JJJJZZF)V

    .line 148
    .line 149
    .line 150
    move-wide/from16 v14, v21

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    return-void
.end method

.method private l(Landroid/view/Window;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/t;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-ne v0, p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lio/sentry/android/core/internal/util/t;->e:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/t;->p()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private o(Landroid/view/Window;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/t;->b:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lio/sentry/android/core/internal/util/t;->a:Lio/sentry/android/core/p0;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/sentry/android/core/p0;->d()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x18

    .line 16
    .line 17
    if-lt v0, v1, :cond_0

    .line 18
    .line 19
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/t;->h:Lio/sentry/android/core/internal/util/t$c;

    .line 20
    .line 21
    iget-object v1, p0, Lio/sentry/android/core/internal/util/t;->i:Landroid/view/Window$OnFrameMetricsAvailableListener;

    .line 22
    .line 23
    invoke-interface {v0, p1, v1}, Lio/sentry/android/core/internal/util/t$c;->b(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    iget-object v1, p0, Lio/sentry/android/core/internal/util/t;->c:Lio/sentry/ILogger;

    .line 29
    .line 30
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 31
    .line 32
    const-string v3, "Failed to remove frameMetricsAvailableListener"

    .line 33
    .line 34
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/t;->b:Ljava/util/Set;

    .line 38
    .line 39
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method private p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/t;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/Window;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-boolean v1, p0, Lio/sentry/android/core/internal/util/t;->g:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/internal/util/t;->b:Ljava/util/Set;

    .line 21
    .line 22
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lio/sentry/android/core/internal/util/t;->f:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lio/sentry/android/core/internal/util/t;->a:Lio/sentry/android/core/p0;

    .line 37
    .line 38
    invoke-virtual {v1}, Lio/sentry/android/core/p0;->d()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/16 v2, 0x18

    .line 43
    .line 44
    if-lt v1, v2, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, Lio/sentry/android/core/internal/util/t;->d:Landroid/os/Handler;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget-object v1, p0, Lio/sentry/android/core/internal/util/t;->b:Ljava/util/Set;

    .line 51
    .line 52
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lio/sentry/android/core/internal/util/t;->h:Lio/sentry/android/core/internal/util/t$c;

    .line 56
    .line 57
    iget-object v2, p0, Lio/sentry/android/core/internal/util/t;->i:Landroid/view/Window$OnFrameMetricsAvailableListener;

    .line 58
    .line 59
    iget-object v3, p0, Lio/sentry/android/core/internal/util/t;->d:Landroid/os/Handler;

    .line 60
    .line 61
    invoke-interface {v1, v0, v2, v3}, Lio/sentry/android/core/internal/util/t$c;->a(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public f()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/t;->j:Landroid/view/Choreographer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/sentry/android/core/internal/util/t;->k:Ljava/lang/reflect/Field;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Long;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-wide v0

    .line 22
    :catch_0
    :cond_0
    const-wide/16 v0, -0x1

    .line 23
    .line 24
    return-wide v0
.end method

.method public m(Lio/sentry/android/core/internal/util/t$b;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/internal/util/t;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lio/sentry/android/core/internal/util/t;->f:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/t;->p()V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/internal/util/t;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lio/sentry/android/core/internal/util/t;->f:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-object p1, p0, Lio/sentry/android/core/internal/util/t;->e:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/view/Window;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 p1, 0x0

    .line 25
    :goto_0
    if-eqz p1, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, Lio/sentry/android/core/internal/util/t;->f:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/util/t;->o(Landroid/view/Window;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/util/t;->l(Landroid/view/Window;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/t;->o(Landroid/view/Window;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/sentry/android/core/internal/util/t;->e:Ljava/lang/ref/WeakReference;

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
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-ne v0, p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lio/sentry/android/core/internal/util/t;->e:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    :cond_0
    return-void
.end method
