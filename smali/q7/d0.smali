.class public Lq7/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lh7/f;

.field private final c:Lq7/j0;

.field private final d:Lq7/t0;

.field private final e:J

.field private f:Lq7/e0;

.field private g:Lq7/e0;

.field private h:Z

.field private i:Lq7/r;

.field private final j:Lq7/o0;

.field private final k:Lw7/g;

.field public final l:Lp7/b;

.field private final m:Lo7/a;

.field private final n:Lq7/n;

.field private final o:Ln7/a;

.field private final p:Ln7/l;

.field private final q:Lr7/i;


# direct methods
.method public constructor <init>(Lh7/f;Lq7/o0;Ln7/a;Lq7/j0;Lp7/b;Lo7/a;Lw7/g;Lq7/n;Ln7/l;Lr7/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq7/d0;->b:Lh7/f;

    .line 5
    .line 6
    iput-object p4, p0, Lq7/d0;->c:Lq7/j0;

    .line 7
    .line 8
    invoke-virtual {p1}, Lh7/f;->m()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lq7/d0;->a:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p2, p0, Lq7/d0;->j:Lq7/o0;

    .line 15
    .line 16
    iput-object p3, p0, Lq7/d0;->o:Ln7/a;

    .line 17
    .line 18
    iput-object p5, p0, Lq7/d0;->l:Lp7/b;

    .line 19
    .line 20
    iput-object p6, p0, Lq7/d0;->m:Lo7/a;

    .line 21
    .line 22
    iput-object p7, p0, Lq7/d0;->k:Lw7/g;

    .line 23
    .line 24
    iput-object p8, p0, Lq7/d0;->n:Lq7/n;

    .line 25
    .line 26
    iput-object p9, p0, Lq7/d0;->p:Ln7/l;

    .line 27
    .line 28
    iput-object p10, p0, Lq7/d0;->q:Lr7/i;

    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    iput-wide p1, p0, Lq7/d0;->e:J

    .line 35
    .line 36
    new-instance p1, Lq7/t0;

    .line 37
    .line 38
    invoke-direct {p1}, Lq7/t0;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lq7/d0;->d:Lq7/t0;

    .line 42
    .line 43
    return-void
.end method

.method private synthetic A(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq7/d0;->i:Lq7/r;

    .line 2
    .line 3
    iget-object v1, p0, Lq7/d0;->d:Lq7/t0;

    .line 4
    .line 5
    invoke-virtual {v1}, Lq7/t0;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "com.crashlytics.on-demand.recorded-exceptions"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lq7/r;->Y(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lq7/d0;->i:Lq7/r;

    .line 19
    .line 20
    iget-object v1, p0, Lq7/d0;->d:Lq7/t0;

    .line 21
    .line 22
    invoke-virtual {v1}, Lq7/t0;->a()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "com.crashlytics.on-demand.dropped-exceptions"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lq7/r;->Y(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lq7/d0;->i:Lq7/r;

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1, p1}, Lq7/r;->Q(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private synthetic B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/d0;->i:Lq7/r;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lq7/r;->X(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/d0;->i:Lq7/r;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lq7/r;->Y(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic D(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/d0;->i:Lq7/r;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lq7/r;->Z(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lq7/d0;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lq7/d0;->x(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lq7/d0;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq7/d0;->A(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lq7/d0;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lq7/d0;->z(Ljava/lang/Throwable;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic d(Lq7/d0;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lq7/d0;->u()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lq7/d0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lq7/d0;->B(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lq7/d0;Ly7/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq7/d0;->w(Ly7/j;)V

    return-void
.end method

.method public static synthetic g(Lq7/d0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lq7/d0;->C(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Lq7/d0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq7/d0;->D(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lq7/d0;Ly7/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq7/d0;->v(Ly7/j;)V

    return-void
.end method

.method public static synthetic j(Lq7/d0;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lq7/d0;->y(JLjava/lang/String;)V

    return-void
.end method

.method private k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq7/d0;->q:Lr7/i;

    .line 2
    .line 3
    iget-object v0, v0, Lr7/i;->a:Lr7/e;

    .line 4
    .line 5
    invoke-virtual {v0}, Lr7/e;->c()Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lq7/z;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lq7/z;-><init>(Lq7/d0;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    const-wide/16 v2, 0x3

    .line 21
    .line 22
    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput-boolean v0, p0, Lq7/d0;->h:Z

    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lq7/d0;->h:Z

    .line 39
    .line 40
    return-void
.end method

.method private p(Ly7/j;)V
    .locals 3

    .line 1
    const-string v0, "Collection of crash reports disabled in Crashlytics settings."

    .line 2
    .line 3
    invoke-static {}, Lr7/i;->c()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lq7/d0;->I()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lq7/d0;->l:Lp7/b;

    .line 10
    .line 11
    new-instance v2, Lq7/t;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Lq7/t;-><init>(Lq7/d0;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v2}, Lp7/b;->a(Lp7/a;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lq7/d0;->i:Lq7/r;

    .line 20
    .line 21
    invoke-virtual {v1}, Lq7/r;->V()V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ly7/j;->b()Ly7/d;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v1, v1, Ly7/d;->b:Ly7/d$a;

    .line 29
    .line 30
    iget-boolean v1, v1, Ly7/d$a;->a:Z

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lq7/d0;->i:Lq7/r;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lq7/r;->A(Ly7/j;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "Previous sessions could not be finalized."

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ln7/g;->k(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lq7/d0;->i:Lq7/r;

    .line 52
    .line 53
    invoke-interface {p1}, Ly7/j;->a()Lm6/Task;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Lq7/r;->a0(Lm6/Task;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1, v0}, Ln7/g;->b(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Ljava/lang/RuntimeException;

    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto :goto_1

    .line 76
    :catch_0
    move-exception p1

    .line 77
    :try_start_1
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v1, "Crashlytics encountered a problem during asynchronous initialization."

    .line 82
    .line 83
    invoke-virtual {v0, v1, p1}, Ln7/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    :goto_0
    invoke-virtual {p0}, Lq7/d0;->H()V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :goto_1
    invoke-virtual {p0}, Lq7/d0;->H()V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method private r(Ly7/j;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq7/d0;->q:Lr7/i;

    .line 2
    .line 3
    iget-object v0, v0, Lr7/i;->a:Lr7/e;

    .line 4
    .line 5
    invoke-virtual {v0}, Lr7/e;->c()Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lq7/s;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lq7/s;-><init>(Lq7/d0;Ly7/j;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ln7/g;->b(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    const-wide/16 v1, 0x3

    .line 30
    .line 31
    invoke-interface {p1, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "Crashlytics timed out during initialization."

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1}, Ln7/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_1
    move-exception p1

    .line 47
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "Crashlytics encountered a problem during initialization."

    .line 52
    .line 53
    invoke-virtual {v0, v1, p1}, Ln7/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_2
    move-exception p1

    .line 58
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "Crashlytics was interrupted during initialization."

    .line 63
    .line 64
    invoke-virtual {v0, v1, p1}, Ln7/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method public static s()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "20.0.0"

    return-object v0
.end method

.method static t(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string p1, "Configured not to require a build ID."

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ln7/g;->i(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    const-string p0, "FirebaseCrashlytics"

    .line 22
    .line 23
    const-string p1, "."

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const-string v0, ".     |  | "

    .line 29
    .line 30
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const-string v0, ".     |  |"

    .line 34
    .line 35
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const-string v1, ".   \\ |  | /"

    .line 42
    .line 43
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    const-string v1, ".    \\    /"

    .line 47
    .line 48
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    const-string v1, ".     \\  /"

    .line 52
    .line 53
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const-string v1, ".      \\/"

    .line 57
    .line 58
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const-string v1, "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app\'s build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin"

    .line 65
    .line 66
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    const-string v1, ".      /\\"

    .line 73
    .line 74
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    const-string v1, ".     /  \\"

    .line 78
    .line 79
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    const-string v1, ".    /    \\"

    .line 83
    .line 84
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    const-string v1, ".   / |  | \\"

    .line 88
    .line 89
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    const/4 p0, 0x0

    .line 105
    return p0
.end method

.method private synthetic u()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/d0;->i:Lq7/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq7/r;->t()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private synthetic v(Ly7/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq7/d0;->p(Ly7/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic w(Ly7/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq7/d0;->p(Ly7/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic x(JLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/d0;->i:Lq7/r;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lq7/r;->e0(JLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic y(JLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq7/d0;->q:Lr7/i;

    .line 2
    .line 3
    iget-object v0, v0, Lr7/i;->b:Lr7/e;

    .line 4
    .line 5
    new-instance v1, Lq7/c0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2, p3}, Lq7/c0;-><init>(Lq7/d0;JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lr7/e;->g(Ljava/lang/Runnable;)Lm6/Task;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private synthetic z(Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq7/d0;->i:Lq7/r;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p1, p2}, Lq7/r;->d0(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public E(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lq7/d0;->e:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iget-object v2, p0, Lq7/d0;->q:Lr7/i;

    .line 9
    .line 10
    iget-object v2, v2, Lr7/i;->a:Lr7/e;

    .line 11
    .line 12
    new-instance v3, Lq7/v;

    .line 13
    .line 14
    invoke-direct {v3, p0, v0, v1, p1}, Lq7/v;-><init>(Lq7/d0;JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lr7/e;->g(Ljava/lang/Runnable;)Lm6/Task;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public F(Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq7/d0;->q:Lr7/i;

    .line 2
    .line 3
    iget-object v0, v0, Lr7/i;->a:Lr7/e;

    .line 4
    .line 5
    new-instance v1, Lq7/b0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lq7/b0;-><init>(Lq7/d0;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lr7/e;->g(Ljava/lang/Runnable;)Lm6/Task;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public G(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "Recorded on-demand fatal events: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lq7/d0;->d:Lq7/t0;

    .line 16
    .line 17
    invoke-virtual {v2}, Lq7/t0;->b()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ln7/g;->b(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "Dropped on-demand fatal events: "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lq7/d0;->d:Lq7/t0;

    .line 46
    .line 47
    invoke-virtual {v2}, Lq7/t0;->a()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ln7/g;->b(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lq7/d0;->q:Lr7/i;

    .line 62
    .line 63
    iget-object v0, v0, Lr7/i;->a:Lr7/e;

    .line 64
    .line 65
    new-instance v1, Lq7/y;

    .line 66
    .line 67
    invoke-direct {v1, p0, p1}, Lq7/y;-><init>(Lq7/d0;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lr7/e;->g(Ljava/lang/Runnable;)Lm6/Task;

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method H()V
    .locals 3

    .line 1
    invoke-static {}, Lr7/i;->c()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lq7/d0;->f:Lq7/e0;

    .line 5
    .line 6
    invoke-virtual {v0}, Lq7/e0;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "Initialization marker file was not properly removed."

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ln7/g;->k(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "Problem encountered deleting Crashlytics initialization marker."

    .line 28
    .line 29
    invoke-virtual {v1, v2, v0}, Ln7/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    return-void
.end method

.method I()V
    .locals 2

    .line 1
    invoke-static {}, Lr7/i;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lq7/d0;->f:Lq7/e0;

    .line 5
    .line 6
    invoke-virtual {v0}, Lq7/e0;->a()Z

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "Initialization marker file was created."

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ln7/g;->i(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public J(Lq7/b;Ly7/j;)Z
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget-object v2, v1, Lq7/d0;->a:Landroid/content/Context;

    .line 6
    .line 7
    const-string v3, "com.crashlytics.RequireBuildId"

    .line 8
    .line 9
    const/4 v13, 0x1

    .line 10
    invoke-static {v2, v3, v13}, Lq7/j;->i(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    move-object/from16 v15, p1

    .line 15
    .line 16
    iget-object v3, v15, Lq7/b;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v3, v2}, Lq7/d0;->t(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    new-instance v2, Lq7/i;

    .line 25
    .line 26
    invoke-direct {v2}, Lq7/i;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lq7/i;->c()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v14

    .line 33
    const/16 v28, 0x0

    .line 34
    .line 35
    :try_start_0
    new-instance v2, Lq7/e0;

    .line 36
    .line 37
    const-string v3, "crash_marker"

    .line 38
    .line 39
    iget-object v4, v1, Lq7/d0;->k:Lw7/g;

    .line 40
    .line 41
    invoke-direct {v2, v3, v4}, Lq7/e0;-><init>(Ljava/lang/String;Lw7/g;)V

    .line 42
    .line 43
    .line 44
    iput-object v2, v1, Lq7/d0;->g:Lq7/e0;

    .line 45
    .line 46
    new-instance v2, Lq7/e0;

    .line 47
    .line 48
    const-string v3, "initialization_marker"

    .line 49
    .line 50
    iget-object v4, v1, Lq7/d0;->k:Lw7/g;

    .line 51
    .line 52
    invoke-direct {v2, v3, v4}, Lq7/e0;-><init>(Ljava/lang/String;Lw7/g;)V

    .line 53
    .line 54
    .line 55
    iput-object v2, v1, Lq7/d0;->f:Lq7/e0;

    .line 56
    .line 57
    new-instance v12, Ls7/o;

    .line 58
    .line 59
    iget-object v2, v1, Lq7/d0;->k:Lw7/g;

    .line 60
    .line 61
    iget-object v3, v1, Lq7/d0;->q:Lr7/i;

    .line 62
    .line 63
    invoke-direct {v12, v14, v2, v3}, Ls7/o;-><init>(Ljava/lang/String;Lw7/g;Lr7/i;)V

    .line 64
    .line 65
    .line 66
    new-instance v11, Ls7/f;

    .line 67
    .line 68
    iget-object v2, v1, Lq7/d0;->k:Lw7/g;

    .line 69
    .line 70
    invoke-direct {v11, v2}, Ls7/f;-><init>(Lw7/g;)V

    .line 71
    .line 72
    .line 73
    new-instance v8, Lz7/a;

    .line 74
    .line 75
    new-array v2, v13, [Lz7/d;

    .line 76
    .line 77
    new-instance v3, Lz7/c;

    .line 78
    .line 79
    const/16 v4, 0xa

    .line 80
    .line 81
    invoke-direct {v3, v4}, Lz7/c;-><init>(I)V

    .line 82
    .line 83
    .line 84
    aput-object v3, v2, v28

    .line 85
    .line 86
    const/16 v3, 0x400

    .line 87
    .line 88
    invoke-direct {v8, v3, v2}, Lz7/a;-><init>(I[Lz7/d;)V

    .line 89
    .line 90
    .line 91
    iget-object v2, v1, Lq7/d0;->p:Ln7/l;

    .line 92
    .line 93
    invoke-virtual {v2, v12}, Ln7/l;->c(Ls7/o;)V

    .line 94
    .line 95
    .line 96
    iget-object v2, v1, Lq7/d0;->a:Landroid/content/Context;

    .line 97
    .line 98
    iget-object v3, v1, Lq7/d0;->j:Lq7/o0;

    .line 99
    .line 100
    iget-object v4, v1, Lq7/d0;->k:Lw7/g;

    .line 101
    .line 102
    iget-object v10, v1, Lq7/d0;->d:Lq7/t0;

    .line 103
    .line 104
    iget-object v9, v1, Lq7/d0;->n:Lq7/n;

    .line 105
    .line 106
    iget-object v7, v1, Lq7/d0;->q:Lr7/i;

    .line 107
    .line 108
    move-object/from16 v5, p1

    .line 109
    .line 110
    move-object v6, v11

    .line 111
    move-object/from16 v16, v7

    .line 112
    .line 113
    move-object v7, v12

    .line 114
    move-object/from16 v17, v9

    .line 115
    .line 116
    move-object/from16 v9, p2

    .line 117
    .line 118
    move-object/from16 v22, v11

    .line 119
    .line 120
    move-object/from16 v11, v17

    .line 121
    .line 122
    move-object/from16 v21, v12

    .line 123
    .line 124
    move-object/from16 v12, v16

    .line 125
    .line 126
    invoke-static/range {v2 .. v12}, Lq7/h1;->j(Landroid/content/Context;Lq7/o0;Lw7/g;Lq7/b;Ls7/f;Ls7/o;Lz7/d;Ly7/j;Lq7/t0;Lq7/n;Lr7/i;)Lq7/h1;

    .line 127
    .line 128
    .line 129
    move-result-object v23

    .line 130
    new-instance v2, Lq7/r;

    .line 131
    .line 132
    iget-object v3, v1, Lq7/d0;->a:Landroid/content/Context;

    .line 133
    .line 134
    iget-object v4, v1, Lq7/d0;->j:Lq7/o0;

    .line 135
    .line 136
    iget-object v5, v1, Lq7/d0;->c:Lq7/j0;

    .line 137
    .line 138
    iget-object v6, v1, Lq7/d0;->k:Lw7/g;

    .line 139
    .line 140
    iget-object v7, v1, Lq7/d0;->g:Lq7/e0;

    .line 141
    .line 142
    iget-object v8, v1, Lq7/d0;->o:Ln7/a;

    .line 143
    .line 144
    iget-object v9, v1, Lq7/d0;->m:Lo7/a;

    .line 145
    .line 146
    iget-object v10, v1, Lq7/d0;->n:Lq7/n;

    .line 147
    .line 148
    iget-object v11, v1, Lq7/d0;->q:Lr7/i;

    .line 149
    .line 150
    move-object v12, v14

    .line 151
    move-object v14, v2

    .line 152
    move-object v15, v3

    .line 153
    move-object/from16 v16, v4

    .line 154
    .line 155
    move-object/from16 v17, v5

    .line 156
    .line 157
    move-object/from16 v18, v6

    .line 158
    .line 159
    move-object/from16 v19, v7

    .line 160
    .line 161
    move-object/from16 v20, p1

    .line 162
    .line 163
    move-object/from16 v24, v8

    .line 164
    .line 165
    move-object/from16 v25, v9

    .line 166
    .line 167
    move-object/from16 v26, v10

    .line 168
    .line 169
    move-object/from16 v27, v11

    .line 170
    .line 171
    invoke-direct/range {v14 .. v27}, Lq7/r;-><init>(Landroid/content/Context;Lq7/o0;Lq7/j0;Lw7/g;Lq7/e0;Lq7/b;Ls7/o;Ls7/f;Lq7/h1;Ln7/a;Lo7/a;Lq7/n;Lr7/i;)V

    .line 172
    .line 173
    .line 174
    iput-object v2, v1, Lq7/d0;->i:Lq7/r;

    .line 175
    .line 176
    invoke-virtual/range {p0 .. p0}, Lq7/d0;->o()Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    invoke-direct/range {p0 .. p0}, Lq7/d0;->k()V

    .line 181
    .line 182
    .line 183
    iget-object v3, v1, Lq7/d0;->i:Lq7/r;

    .line 184
    .line 185
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v3, v12, v4, v0}, Lq7/r;->y(Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;Ly7/j;)V

    .line 190
    .line 191
    .line 192
    if-eqz v2, :cond_0

    .line 193
    .line 194
    iget-object v2, v1, Lq7/d0;->a:Landroid/content/Context;

    .line 195
    .line 196
    invoke-static {v2}, Lq7/j;->d(Landroid/content/Context;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_0

    .line 201
    .line 202
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    const-string v3, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    .line 207
    .line 208
    invoke-virtual {v2, v3}, Ln7/g;->b(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-direct {v1, v0}, Lq7/d0;->r(Ly7/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .line 213
    .line 214
    return v28

    .line 215
    :cond_0
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    const-string v2, "Successfully configured exception handler."

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Ln7/g;->b(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    return v13

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    const-string v3, "Crashlytics was not started due to an exception during initialization"

    .line 231
    .line 232
    invoke-virtual {v2, v3, v0}, Ln7/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    const/4 v0, 0x0

    .line 236
    iput-object v0, v1, Lq7/d0;->i:Lq7/r;

    .line 237
    .line 238
    return v28

    .line 239
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 240
    .line 241
    const-string v2, "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app\'s build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin"

    .line 242
    .line 243
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v0
.end method

.method public K()Lm6/Task;
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/d0;->i:Lq7/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq7/r;->W()Lm6/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public L(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/d0;->c:Lq7/j0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lq7/j0;->h(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public M(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq7/d0;->q:Lr7/i;

    .line 2
    .line 3
    iget-object v0, v0, Lr7/i;->a:Lr7/e;

    .line 4
    .line 5
    new-instance v1, Lq7/u;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lq7/u;-><init>(Lq7/d0;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lr7/e;->g(Ljava/lang/Runnable;)Lm6/Task;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public N(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq7/d0;->q:Lr7/i;

    .line 2
    .line 3
    iget-object v0, v0, Lr7/i;->a:Lr7/e;

    .line 4
    .line 5
    new-instance v1, Lq7/w;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lq7/w;-><init>(Lq7/d0;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lr7/e;->g(Ljava/lang/Runnable;)Lm6/Task;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public O(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq7/d0;->q:Lr7/i;

    .line 2
    .line 3
    iget-object v0, v0, Lr7/i;->a:Lr7/e;

    .line 4
    .line 5
    new-instance v1, Lq7/x;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lq7/x;-><init>(Lq7/d0;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lr7/e;->g(Ljava/lang/Runnable;)Lm6/Task;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public l()Lm6/Task;
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/d0;->i:Lq7/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq7/r;->n()Lm6/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public m()Lm6/Task;
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/d0;->i:Lq7/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq7/r;->s()Lm6/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq7/d0;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/d0;->f:Lq7/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq7/e0;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public q(Ly7/j;)Lm6/Task;
    .locals 2

    .line 1
    iget-object v0, p0, Lq7/d0;->q:Lr7/i;

    .line 2
    .line 3
    iget-object v0, v0, Lr7/i;->a:Lr7/e;

    .line 4
    .line 5
    new-instance v1, Lq7/a0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lq7/a0;-><init>(Lq7/d0;Ly7/j;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lr7/e;->g(Ljava/lang/Runnable;)Lm6/Task;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
