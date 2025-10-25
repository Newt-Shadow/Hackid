.class public final Lio/sentry/android/core/ActivityLifecycleIntegration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/e1;
.implements Ljava/io/Closeable;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Lio/sentry/android/core/p0;

.field private c:Lio/sentry/o0;

.field private d:Lio/sentry/android/core/SentryAndroidOptions;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lio/sentry/b0;

.field private j:Lio/sentry/z0;

.field private final k:Ljava/util/WeakHashMap;

.field private final l:Ljava/util/WeakHashMap;

.field private final m:Ljava/util/WeakHashMap;

.field private n:Lio/sentry/y3;

.field private o:J

.field private p:Ljava/util/concurrent/Future;

.field private final q:Ljava/util/WeakHashMap;

.field private final r:Lio/sentry/android/core/h;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lio/sentry/android/core/p0;Lio/sentry/android/core/h;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->e:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->f:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->h:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->i:Lio/sentry/b0;

    .line 13
    .line 14
    new-instance v1, Ljava/util/WeakHashMap;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->k:Ljava/util/WeakHashMap;

    .line 20
    .line 21
    new-instance v1, Ljava/util/WeakHashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->l:Ljava/util/WeakHashMap;

    .line 27
    .line 28
    new-instance v1, Ljava/util/WeakHashMap;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Ljava/util/WeakHashMap;

    .line 34
    .line 35
    new-instance v1, Lio/sentry/m5;

    .line 36
    .line 37
    new-instance v2, Ljava/util/Date;

    .line 38
    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v2, v3, v4}, Lio/sentry/m5;-><init>(Ljava/util/Date;J)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->n:Lio/sentry/y3;

    .line 48
    .line 49
    iput-wide v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->o:J

    .line 50
    .line 51
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->p:Ljava/util/concurrent/Future;

    .line 52
    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->q:Ljava/util/WeakHashMap;

    .line 59
    .line 60
    const-string v0, "Application is required"

    .line 61
    .line 62
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/app/Application;

    .line 67
    .line 68
    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->a:Landroid/app/Application;

    .line 69
    .line 70
    const-string p1, "BuildInfoProvider is required"

    .line 71
    .line 72
    invoke-static {p2, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lio/sentry/android/core/p0;

    .line 77
    .line 78
    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->b:Lio/sentry/android/core/p0;

    .line 79
    .line 80
    const-string p1, "ActivityFramesTracker is required"

    .line 81
    .line 82
    invoke-static {p3, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lio/sentry/android/core/h;

    .line 87
    .line 88
    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->r:Lio/sentry/android/core/h;

    .line 89
    .line 90
    invoke-virtual {p2}, Lio/sentry/android/core/p0;->d()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    const/16 p2, 0x1d

    .line 95
    .line 96
    if-lt p1, p2, :cond_0

    .line 97
    .line 98
    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->g:Z

    .line 100
    .line 101
    :cond_0
    return-void
.end method

.method private A0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, " initial display"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method private D0(Lio/sentry/android/core/SentryAndroidOptions;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/sentry/s5;->isTracingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoActivityLifecycleTracing()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method private E(Lio/sentry/z0;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lio/sentry/z0;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lio/sentry/z0;->i()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private H(Lio/sentry/z0;Lio/sentry/y3;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->P(Lio/sentry/z0;Lio/sentry/y3;Lio/sentry/p6;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private J0(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->q:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method private P(Lio/sentry/z0;Lio/sentry/y3;Lio/sentry/p6;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Lio/sentry/z0;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1}, Lio/sentry/z0;->d()Lio/sentry/p6;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Lio/sentry/z0;->d()Lio/sentry/p6;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-object p3, Lio/sentry/p6;->OK:Lio/sentry/p6;

    .line 24
    .line 25
    :goto_0
    invoke-interface {p1, p3, p2}, Lio/sentry/z0;->r(Lio/sentry/p6;Lio/sentry/y3;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method private synthetic T0(Lio/sentry/u0;Lio/sentry/a1;Lio/sentry/a1;)V
    .locals 1

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    invoke-interface {p1, p2}, Lio/sentry/u0;->E(Lio/sentry/a1;)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object p3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 16
    .line 17
    invoke-interface {p2}, Lio/sentry/a1;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-string v0, "Transaction \'%s\' won\'t be bound to the Scope since there\'s one already in there."

    .line 26
    .line 27
    invoke-interface {p1, p3, v0, p2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic U0(Lio/sentry/a1;Lio/sentry/u0;Lio/sentry/a1;)V
    .locals 0

    .line 1
    if-ne p2, p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lio/sentry/u0;->h()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private synthetic V0(Lio/sentry/a1;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->w(Lio/sentry/u0;Lio/sentry/a1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private W(Lio/sentry/z0;Lio/sentry/p6;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lio/sentry/z0;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, p2}, Lio/sentry/z0;->g(Lio/sentry/p6;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static synthetic W0(Ljava/lang/String;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lio/sentry/u0;->v(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private X(Lio/sentry/a1;Lio/sentry/z0;Lio/sentry/z0;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Lio/sentry/z0;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lio/sentry/p6;->DEADLINE_EXCEEDED:Lio/sentry/p6;

    .line 11
    .line 12
    invoke-direct {p0, p2, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->W(Lio/sentry/z0;Lio/sentry/p6;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p3, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->z(Lio/sentry/z0;Lio/sentry/z0;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->u()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lio/sentry/z0;->d()Lio/sentry/p6;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    sget-object p2, Lio/sentry/p6;->OK:Lio/sentry/p6;

    .line 28
    .line 29
    :cond_1
    invoke-interface {p1, p2}, Lio/sentry/z0;->g(Lio/sentry/p6;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->c:Lio/sentry/o0;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    new-instance p3, Lio/sentry/android/core/k;

    .line 37
    .line 38
    invoke-direct {p3, p0, p1}, Lio/sentry/android/core/k;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/a1;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p2, p3}, Lio/sentry/o0;->y(Lio/sentry/e3;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method private synthetic X0(Lio/sentry/z0;Lio/sentry/z0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->c1(Lio/sentry/z0;Lio/sentry/z0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic Y0(Lio/sentry/z0;Lio/sentry/z0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->c1(Lio/sentry/z0;Lio/sentry/z0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic Z0(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lio/sentry/a1;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/app/Activity;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->r:Lio/sentry/android/core/h;

    .line 10
    .line 11
    invoke-interface {p3}, Lio/sentry/a1;->m()Lio/sentry/protocol/r;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {p2, p1, p3}, Lio/sentry/android/core/h;->n(Landroid/app/Activity;Lio/sentry/protocol/r;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object p3, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 28
    .line 29
    const-string v0, "Unable to track activity frames as the Activity %s has been destroyed."

    .line 30
    .line 31
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p1, p3, v0, p2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/a1;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->b1(Lio/sentry/a1;Lio/sentry/u0;)V

    return-void
.end method

.method private synthetic a1(Lio/sentry/z0;Lio/sentry/z0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->z(Lio/sentry/z0;Lio/sentry/z0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/z0;Lio/sentry/z0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->X0(Lio/sentry/z0;Lio/sentry/z0;)V

    return-void
.end method

.method private synthetic b1(Lio/sentry/a1;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->s(Lio/sentry/u0;Lio/sentry/a1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lio/sentry/a1;Lio/sentry/u0;Lio/sentry/a1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->U0(Lio/sentry/a1;Lio/sentry/u0;Lio/sentry/a1;)V

    return-void
.end method

.method private c1(Lio/sentry/z0;Lio/sentry/z0;)V
    .locals 6

    .line 1
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/sentry/android/core/performance/g;->j()Lio/sentry/android/core/performance/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lio/sentry/android/core/performance/g;->q()Lio/sentry/android/core/performance/h;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v1}, Lio/sentry/android/core/performance/h;->s()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lio/sentry/android/core/performance/h;->r()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lio/sentry/android/core/performance/h;->A()V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0}, Lio/sentry/android/core/performance/h;->s()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lio/sentry/android/core/performance/h;->r()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lio/sentry/android/core/performance/h;->A()V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->x()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0}, Lio/sentry/s5;->getDateProvider()Lio/sentry/z3;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Lio/sentry/z3;->a()Lio/sentry/y3;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {p2}, Lio/sentry/z0;->t()Lio/sentry/y3;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lio/sentry/y3;->b(Lio/sentry/y3;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 69
    .line 70
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v1

    .line 74
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    sget-object v4, Lio/sentry/t1$a;->MILLISECOND:Lio/sentry/t1$a;

    .line 79
    .line 80
    const-string v5, "time_to_initial_display"

    .line 81
    .line 82
    invoke-interface {p2, v5, v3, v4}, Lio/sentry/z0;->j(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/t1;)V

    .line 83
    .line 84
    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    invoke-interface {p1}, Lio/sentry/z0;->c()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_2

    .line 92
    .line 93
    invoke-interface {p1, v0}, Lio/sentry/z0;->f(Lio/sentry/y3;)Z

    .line 94
    .line 95
    .line 96
    const-string p1, "time_to_full_display"

    .line 97
    .line 98
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-interface {p2, p1, v1, v4}, Lio/sentry/z0;->j(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/t1;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    invoke-direct {p0, p2, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->H(Lio/sentry/z0;Lio/sentry/y3;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    invoke-direct {p0, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->E(Lio/sentry/z0;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    return-void
.end method

.method private d0(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private d1(Lio/sentry/z0;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lio/sentry/z0;->o()Lio/sentry/l6;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "auto.ui.activity"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lio/sentry/l6;->m(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static synthetic e(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/u0;Lio/sentry/a1;Lio/sentry/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/ActivityLifecycleIntegration;->T0(Lio/sentry/u0;Lio/sentry/a1;Lio/sentry/a1;)V

    return-void
.end method

.method private e1(Landroid/app/Activity;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->c:Lio/sentry/o0;

    .line 7
    .line 8
    if-eqz v1, :cond_8

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->J0(Landroid/app/Activity;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_8

    .line 15
    .line 16
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->e:Z

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->q:Ljava/util/WeakHashMap;

    .line 21
    .line 22
    invoke-static {}, Lio/sentry/h2;->u()Lio/sentry/h2;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->c:Lio/sentry/o0;

    .line 30
    .line 31
    invoke-static {p1}, Lio/sentry/util/a0;->h(Lio/sentry/o0;)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->f1()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->d0(Landroid/app/Activity;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Lio/sentry/android/core/performance/g;->k(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/h;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {}, Lio/sentry/android/core/x0;->u()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/4 v4, 0x0

    .line 58
    const/4 v5, 0x1

    .line 59
    const/4 v6, 0x0

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    invoke-virtual {v2}, Lio/sentry/android/core/performance/h;->s()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    invoke-virtual {v2}, Lio/sentry/android/core/performance/h;->m()Lio/sentry/y3;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Lio/sentry/android/core/performance/g;->l()Lio/sentry/android/core/performance/g$a;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    sget-object v7, Lio/sentry/android/core/performance/g$a;->COLD:Lio/sentry/android/core/performance/g$a;

    .line 81
    .line 82
    if-ne v3, v7, :cond_1

    .line 83
    .line 84
    move v3, v5

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    move v3, v4

    .line 87
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move-object v2, v6

    .line 93
    move-object v3, v2

    .line 94
    :goto_1
    new-instance v7, Lio/sentry/a7;

    .line 95
    .line 96
    invoke-direct {v7}, Lio/sentry/a7;-><init>()V

    .line 97
    .line 98
    .line 99
    const-wide/16 v8, 0x7530

    .line 100
    .line 101
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-virtual {v7, v8}, Lio/sentry/a7;->n(Ljava/lang/Long;)V

    .line 106
    .line 107
    .line 108
    iget-object v8, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 109
    .line 110
    invoke-virtual {v8}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleTracingAutoFinish()Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-eqz v8, :cond_3

    .line 115
    .line 116
    iget-object v8, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 117
    .line 118
    invoke-virtual {v8}, Lio/sentry/s5;->getIdleTimeout()Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {v7, v8}, Lio/sentry/a7;->o(Ljava/lang/Long;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v5}, Lio/sentry/o6;->d(Z)V

    .line 126
    .line 127
    .line 128
    :cond_3
    invoke-virtual {v7, v5}, Lio/sentry/a7;->r(Z)V

    .line 129
    .line 130
    .line 131
    new-instance v8, Lio/sentry/android/core/o;

    .line 132
    .line 133
    invoke-direct {v8, p0, v0, v1}, Lio/sentry/android/core/o;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7, v8}, Lio/sentry/a7;->q(Lio/sentry/z6;)V

    .line 137
    .line 138
    .line 139
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->h:Z

    .line 140
    .line 141
    if-nez v0, :cond_4

    .line 142
    .line 143
    if-eqz v2, :cond_4

    .line 144
    .line 145
    if-eqz v3, :cond_4

    .line 146
    .line 147
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lio/sentry/android/core/performance/g;->i()Lio/sentry/x6;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    invoke-virtual {v8, v6}, Lio/sentry/android/core/performance/g;->A(Lio/sentry/x6;)V

    .line 160
    .line 161
    .line 162
    move-object v6, v0

    .line 163
    move-object v0, v2

    .line 164
    goto :goto_2

    .line 165
    :cond_4
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->n:Lio/sentry/y3;

    .line 166
    .line 167
    :goto_2
    invoke-virtual {v7, v0}, Lio/sentry/a7;->p(Lio/sentry/y3;)V

    .line 168
    .line 169
    .line 170
    if-eqz v6, :cond_5

    .line 171
    .line 172
    move v4, v5

    .line 173
    :cond_5
    invoke-virtual {v7, v4}, Lio/sentry/a7;->m(Z)V

    .line 174
    .line 175
    .line 176
    iget-object v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->c:Lio/sentry/o0;

    .line 177
    .line 178
    new-instance v5, Lio/sentry/y6;

    .line 179
    .line 180
    sget-object v8, Lio/sentry/protocol/a0;->COMPONENT:Lio/sentry/protocol/a0;

    .line 181
    .line 182
    const-string v9, "ui.load"

    .line 183
    .line 184
    invoke-direct {v5, v1, v8, v9, v6}, Lio/sentry/y6;-><init>(Ljava/lang/String;Lio/sentry/protocol/a0;Ljava/lang/String;Lio/sentry/x6;)V

    .line 185
    .line 186
    .line 187
    invoke-interface {v4, v5, v7}, Lio/sentry/o0;->w(Lio/sentry/y6;Lio/sentry/a7;)Lio/sentry/a1;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-direct {p0, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration;->d1(Lio/sentry/z0;)V

    .line 192
    .line 193
    .line 194
    iget-boolean v5, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->h:Z

    .line 195
    .line 196
    if-nez v5, :cond_6

    .line 197
    .line 198
    if-eqz v2, :cond_6

    .line 199
    .line 200
    if-eqz v3, :cond_6

    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    invoke-direct {p0, v5}, Lio/sentry/android/core/ActivityLifecycleIntegration;->o0(Z)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    invoke-direct {p0, v3}, Lio/sentry/android/core/ActivityLifecycleIntegration;->k0(Z)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    sget-object v6, Lio/sentry/d1;->SENTRY:Lio/sentry/d1;

    .line 219
    .line 220
    invoke-interface {v4, v5, v3, v2, v6}, Lio/sentry/z0;->h(Ljava/lang/String;Ljava/lang/String;Lio/sentry/y3;Lio/sentry/d1;)Lio/sentry/z0;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    iput-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->j:Lio/sentry/z0;

    .line 225
    .line 226
    invoke-direct {p0, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->d1(Lio/sentry/z0;)V

    .line 227
    .line 228
    .line 229
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->x()V

    .line 230
    .line 231
    .line 232
    :cond_6
    invoke-direct {p0, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->A0(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    sget-object v3, Lio/sentry/d1;->SENTRY:Lio/sentry/d1;

    .line 237
    .line 238
    const-string v5, "ui.load.initial_display"

    .line 239
    .line 240
    invoke-interface {v4, v5, v2, v0, v3}, Lio/sentry/z0;->h(Ljava/lang/String;Ljava/lang/String;Lio/sentry/y3;Lio/sentry/d1;)Lio/sentry/z0;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    iget-object v5, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->k:Ljava/util/WeakHashMap;

    .line 245
    .line 246
    invoke-virtual {v5, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    invoke-direct {p0, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->d1(Lio/sentry/z0;)V

    .line 250
    .line 251
    .line 252
    iget-boolean v5, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->f:Z

    .line 253
    .line 254
    if-eqz v5, :cond_7

    .line 255
    .line 256
    iget-object v5, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->i:Lio/sentry/b0;

    .line 257
    .line 258
    if-eqz v5, :cond_7

    .line 259
    .line 260
    iget-object v5, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 261
    .line 262
    if-eqz v5, :cond_7

    .line 263
    .line 264
    const-string v5, "ui.load.full_display"

    .line 265
    .line 266
    invoke-direct {p0, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->t0(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-interface {v4, v5, v1, v0, v3}, Lio/sentry/z0;->h(Ljava/lang/String;Ljava/lang/String;Lio/sentry/y3;Lio/sentry/d1;)Lio/sentry/z0;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-direct {p0, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->d1(Lio/sentry/z0;)V

    .line 275
    .line 276
    .line 277
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->l:Ljava/util/WeakHashMap;

    .line 278
    .line 279
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 283
    .line 284
    invoke-virtual {v1}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    new-instance v3, Lio/sentry/android/core/p;

    .line 289
    .line 290
    invoke-direct {v3, p0, v0, v2}, Lio/sentry/android/core/p;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/z0;Lio/sentry/z0;)V

    .line 291
    .line 292
    .line 293
    const-wide/16 v5, 0x61a8

    .line 294
    .line 295
    invoke-interface {v1, v3, v5, v6}, Lio/sentry/x0;->c(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->p:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :catch_0
    move-exception v0

    .line 303
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 304
    .line 305
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 310
    .line 311
    const-string v3, "Failed to call the executor. Time to full display span will not be finished automatically. Did you call Sentry.close()?"

    .line 312
    .line 313
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    .line 315
    .line 316
    :cond_7
    :goto_3
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->c:Lio/sentry/o0;

    .line 317
    .line 318
    new-instance v1, Lio/sentry/android/core/q;

    .line 319
    .line 320
    invoke-direct {v1, p0, v4}, Lio/sentry/android/core/q;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/a1;)V

    .line 321
    .line 322
    .line 323
    invoke-interface {v0, v1}, Lio/sentry/o0;->y(Lio/sentry/e3;)V

    .line 324
    .line 325
    .line 326
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->q:Ljava/util/WeakHashMap;

    .line 327
    .line 328
    invoke-virtual {v0, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    :cond_8
    :goto_4
    return-void
.end method

.method private f1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->q:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lio/sentry/a1;

    .line 28
    .line 29
    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->k:Ljava/util/WeakHashMap;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lio/sentry/z0;

    .line 40
    .line 41
    iget-object v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->l:Ljava/util/WeakHashMap;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lio/sentry/z0;

    .line 52
    .line 53
    invoke-direct {p0, v2, v3, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->X(Lio/sentry/a1;Lio/sentry/z0;Lio/sentry/z0;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public static synthetic g(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/z0;Lio/sentry/z0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->Y0(Lio/sentry/z0;Lio/sentry/z0;)V

    return-void
.end method

.method private g1(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->q:Ljava/util/WeakHashMap;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lio/sentry/a1;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-direct {p0, p1, p2, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->X(Lio/sentry/a1;Lio/sentry/z0;Lio/sentry/z0;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public static synthetic h(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/a1;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->V0(Lio/sentry/a1;Lio/sentry/u0;)V

    return-void
.end method

.method public static synthetic j(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/z0;Lio/sentry/z0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->a1(Lio/sentry/z0;Lio/sentry/z0;)V

    return-void
.end method

.method public static synthetic k(Ljava/lang/String;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->W0(Ljava/lang/String;Lio/sentry/u0;)V

    return-void
.end method

.method private k0(Z)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    const-string p1, "Cold Start"

    return-object p1

    :cond_0
    const-string p1, "Warm Start"

    return-object p1
.end method

.method private o0(Z)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    const-string p1, "app.start.cold"

    return-object p1

    :cond_0
    const-string p1, "app.start.warm"

    return-object p1
.end method

.method public static synthetic q(Lio/sentry/android/core/ActivityLifecycleIntegration;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lio/sentry/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/ActivityLifecycleIntegration;->Z0(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lio/sentry/a1;)V

    return-void
.end method

.method private q0(Lio/sentry/z0;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/sentry/z0;->getDescription()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, " - Deadline Exceeded"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lio/sentry/z0;->getDescription()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method private t0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, " full display"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method private u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->p:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->p:Ljava/util/concurrent/Future;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private v()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->h:Z

    .line 3
    .line 4
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/g;->k(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/h;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lio/sentry/android/core/performance/h;->i()Lio/sentry/y3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->e:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->j:Lio/sentry/z0;

    .line 22
    .line 23
    invoke-direct {p0, v1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->H(Lio/sentry/z0;Lio/sentry/y3;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private z(Lio/sentry/z0;Lio/sentry/z0;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-interface {p1}, Lio/sentry/z0;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->q0(Lio/sentry/z0;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p1, v0}, Lio/sentry/z0;->l(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-interface {p2}, Lio/sentry/z0;->p()Lio/sentry/y3;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p2, 0x0

    .line 25
    :goto_0
    if-eqz p2, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    invoke-interface {p1}, Lio/sentry/z0;->t()Lio/sentry/y3;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    :goto_1
    sget-object v0, Lio/sentry/p6;->DEADLINE_EXCEEDED:Lio/sentry/p6;

    .line 33
    .line 34
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->P(Lio/sentry/z0;Lio/sentry/y3;Lio/sentry/p6;)V

    .line 35
    .line 36
    .line 37
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->a:Landroid/app/Application;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    const-string v3, "ActivityLifecycleIntegration removed."

    .line 20
    .line 21
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->r:Lio/sentry/android/core/h;

    .line 25
    .line 26
    invoke-virtual {v0}, Lio/sentry/android/core/h;->p()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public f(Lio/sentry/o0;Lio/sentry/s5;)V
    .locals 2

    .line 1
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    :goto_0
    const-string v0, "SentryAndroidOptions is required"

    .line 10
    .line 11
    invoke-static {p2, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    .line 16
    .line 17
    iput-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 18
    .line 19
    const-string p2, "Hub is required"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lio/sentry/o0;

    .line 26
    .line 27
    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->c:Lio/sentry/o0;

    .line 28
    .line 29
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->D0(Lio/sentry/android/core/SentryAndroidOptions;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->e:Z

    .line 36
    .line 37
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 38
    .line 39
    invoke-virtual {p1}, Lio/sentry/s5;->getFullyDisplayedReporter()Lio/sentry/b0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->i:Lio/sentry/b0;

    .line 44
    .line 45
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 46
    .line 47
    invoke-virtual {p1}, Lio/sentry/s5;->isEnableTimeToFullDisplayTracing()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->f:Z

    .line 52
    .line 53
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->a:Landroid/app/Application;

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 59
    .line 60
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget-object p2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    .line 69
    const-string v1, "ActivityLifecycleIntegration installed."

    .line 70
    .line 71
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const-string p1, "ActivityLifecycle"

    .line 75
    .line 76
    invoke-static {p1}, Lio/sentry/util/k;->a(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public declared-synchronized onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->g:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->c:Lio/sentry/o0;

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->d:Lio/sentry/android/core/SentryAndroidOptions;

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2}, Lio/sentry/s5;->isEnableScreenTracking()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-static {p1}, Lio/sentry/android/core/internal/util/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->c:Lio/sentry/o0;

    .line 28
    .line 29
    new-instance v1, Lio/sentry/android/core/l;

    .line 30
    .line 31
    invoke-direct {v1, p2}, Lio/sentry/android/core/l;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Lio/sentry/o0;->y(Lio/sentry/e3;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->e1(Landroid/app/Activity;)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->l:Ljava/util/WeakHashMap;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lio/sentry/z0;

    .line 47
    .line 48
    const/4 p2, 0x1

    .line 49
    iput-boolean p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->h:Z

    .line 50
    .line 51
    iget-boolean p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->e:Z

    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->i:Lio/sentry/b0;

    .line 58
    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    new-instance v0, Lio/sentry/android/core/m;

    .line 62
    .line 63
    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/m;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/z0;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v0}, Lio/sentry/b0;->b(Lio/sentry/b0$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    :cond_2
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    monitor-exit p0

    .line 73
    throw p1
.end method

.method public declared-synchronized onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Ljava/util/WeakHashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->e:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->j:Lio/sentry/z0;

    .line 12
    .line 13
    sget-object v1, Lio/sentry/p6;->CANCELLED:Lio/sentry/p6;

    .line 14
    .line 15
    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->W(Lio/sentry/z0;Lio/sentry/p6;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->k:Ljava/util/WeakHashMap;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lio/sentry/z0;

    .line 25
    .line 26
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->l:Ljava/util/WeakHashMap;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lio/sentry/z0;

    .line 33
    .line 34
    sget-object v2, Lio/sentry/p6;->DEADLINE_EXCEEDED:Lio/sentry/p6;

    .line 35
    .line 36
    invoke-direct {p0, v0, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->W(Lio/sentry/z0;Lio/sentry/p6;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->z(Lio/sentry/z0;Lio/sentry/z0;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->u()V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->g1(Landroid/app/Activity;Z)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->j:Lio/sentry/z0;

    .line 51
    .line 52
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->k:Ljava/util/WeakHashMap;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->l:Ljava/util/WeakHashMap;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->q:Ljava/util/WeakHashMap;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->q:Ljava/util/WeakHashMap;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_1

    .line 80
    .line 81
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    :cond_1
    monitor-exit p0

    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    monitor-exit p0

    .line 88
    throw p1
.end method

.method public declared-synchronized onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->g:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPrePaused(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :cond_0
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    .line 13
    throw p1
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->j:Lio/sentry/z0;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Ljava/util/WeakHashMap;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Ljava/util/WeakHashMap;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Lio/sentry/android/core/performance/b;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2}, Lio/sentry/android/core/performance/b;->b()Lio/sentry/android/core/performance/h;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lio/sentry/android/core/performance/h;->A()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lio/sentry/android/core/performance/b;->b()Lio/sentry/android/core/performance/h;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, ".onCreate"

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p2, p1}, Lio/sentry/android/core/performance/h;->v(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/sentry/android/core/performance/b;

    .line 8
    .line 9
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->j:Lio/sentry/z0;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lio/sentry/android/core/performance/b;->f()Lio/sentry/android/core/performance/h;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lio/sentry/android/core/performance/h;->A()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lio/sentry/android/core/performance/b;->f()Lio/sentry/android/core/performance/h;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, ".onStart"

    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v1, p1}, Lio/sentry/android/core/performance/h;->v(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, v0}, Lio/sentry/android/core/performance/g;->e(Lio/sentry/android/core/performance/b;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-boolean p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->h:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->c:Lio/sentry/o0;

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    invoke-interface {p2}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2}, Lio/sentry/s5;->getDateProvider()Lio/sentry/z3;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-interface {p2}, Lio/sentry/z3;->a()Lio/sentry/y3;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-static {}, Lio/sentry/android/core/t;->a()Lio/sentry/y3;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :goto_0
    iput-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->n:Lio/sentry/y3;

    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iput-wide v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->o:J

    .line 34
    .line 35
    new-instance p2, Lio/sentry/android/core/performance/b;

    .line 36
    .line 37
    invoke-direct {p2}, Lio/sentry/android/core/performance/b;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lio/sentry/android/core/performance/b;->b()Lio/sentry/android/core/performance/h;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-wide v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->o:J

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lio/sentry/android/core/performance/h;->x(J)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Ljava/util/WeakHashMap;

    .line 50
    .line 51
    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->h:Z

    .line 3
    .line 4
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->c:Lio/sentry/o0;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lio/sentry/s5;->getDateProvider()Lio/sentry/z3;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Lio/sentry/z3;->a()Lio/sentry/y3;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lio/sentry/android/core/t;->a()Lio/sentry/y3;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->n:Lio/sentry/y3;

    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    iput-wide v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->o:J

    .line 32
    .line 33
    return-void
.end method

.method public onActivityPreStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->j:Lio/sentry/z0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lio/sentry/android/core/performance/b;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lio/sentry/android/core/performance/b;->f()Lio/sentry/android/core/performance/h;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-virtual {p1, v0, v1}, Lio/sentry/android/core/performance/h;->x(J)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->g:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPostStarted(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->e:Z

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->k:Ljava/util/WeakHashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lio/sentry/z0;

    .line 20
    .line 21
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->l:Ljava/util/WeakHashMap;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lio/sentry/z0;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    new-instance v2, Lio/sentry/android/core/i;

    .line 36
    .line 37
    invoke-direct {v2, p0, v1, v0}, Lio/sentry/android/core/i;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/z0;Lio/sentry/z0;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->b:Lio/sentry/android/core/p0;

    .line 41
    .line 42
    invoke-static {p1, v2, v0}, Lio/sentry/android/core/internal/util/k;->f(Landroid/app/Activity;Ljava/lang/Runnable;Lio/sentry/android/core/p0;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p1, Landroid/os/Handler;

    .line 47
    .line 48
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lio/sentry/android/core/j;

    .line 56
    .line 57
    invoke-direct {v2, p0, v1, v0}, Lio/sentry/android/core/j;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/z0;Lio/sentry/z0;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    monitor-exit p0

    .line 67
    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->g:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onActivityPreStarted(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->e:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->r:Lio/sentry/android/core/h;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lio/sentry/android/core/h;->e(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :cond_1
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p0

    .line 26
    throw p1
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method s(Lio/sentry/u0;Lio/sentry/a1;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/android/core/r;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lio/sentry/android/core/r;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/u0;Lio/sentry/a1;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Lio/sentry/u0;->D(Lio/sentry/d3$c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method w(Lio/sentry/u0;Lio/sentry/a1;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/android/core/n;

    .line 2
    .line 3
    invoke-direct {v0, p2, p1}, Lio/sentry/android/core/n;-><init>(Lio/sentry/a1;Lio/sentry/u0;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Lio/sentry/u0;->D(Lio/sentry/d3$c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
