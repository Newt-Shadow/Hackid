.class final Lio/sentry/android/core/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicLong;

.field private final b:J

.field private c:Ljava/util/TimerTask;

.field private final d:Ljava/util/Timer;

.field private final e:Ljava/lang/Object;

.field private final f:Lio/sentry/o0;

.field private final g:Z

.field private final h:Z

.field private final i:Lio/sentry/transport/p;


# direct methods
.method constructor <init>(Lio/sentry/o0;JZZ)V
    .locals 7

    .line 1
    invoke-static {}, Lio/sentry/transport/n;->b()Lio/sentry/transport/p;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lio/sentry/android/core/m1;-><init>(Lio/sentry/o0;JZZLio/sentry/transport/p;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/o0;JZZLio/sentry/transport/p;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/sentry/android/core/m1;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/core/m1;->d:Ljava/util/Timer;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/m1;->e:Ljava/lang/Object;

    .line 7
    iput-wide p2, p0, Lio/sentry/android/core/m1;->b:J

    .line 8
    iput-boolean p4, p0, Lio/sentry/android/core/m1;->g:Z

    .line 9
    iput-boolean p5, p0, Lio/sentry/android/core/m1;->h:Z

    .line 10
    iput-object p1, p0, Lio/sentry/android/core/m1;->f:Lio/sentry/o0;

    .line 11
    iput-object p6, p0, Lio/sentry/android/core/m1;->i:Lio/sentry/transport/p;

    return-void
.end method

.method public static synthetic b(Lio/sentry/android/core/m1;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/android/core/m1;->g(Lio/sentry/u0;)V

    return-void
.end method

.method static synthetic c(Lio/sentry/android/core/m1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/android/core/m1;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lio/sentry/android/core/m1;)Lio/sentry/o0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/m1;->f:Lio/sentry/o0;

    .line 2
    .line 3
    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/sentry/android/core/m1;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/sentry/e;

    .line 6
    .line 7
    invoke-direct {v0}, Lio/sentry/e;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "navigation"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lio/sentry/e;->r(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "state"

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "app.lifecycle"

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lio/sentry/e;->n(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lio/sentry/e;->p(Lio/sentry/j5;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lio/sentry/android/core/m1;->f:Lio/sentry/o0;

    .line 31
    .line 32
    invoke-interface {p1, v0}, Lio/sentry/o0;->t(Lio/sentry/e;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/m1;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/m1;->c:Ljava/util/TimerTask;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lio/sentry/android/core/m1;->c:Ljava/util/TimerTask;

    .line 13
    .line 14
    :cond_0
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v1
.end method

.method private synthetic g(Lio/sentry/u0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/m1;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lio/sentry/u0;->k()Lio/sentry/f6;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lio/sentry/f6;->k()Ljava/util/Date;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lio/sentry/android/core/m1;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 26
    .line 27
    invoke-virtual {p1}, Lio/sentry/f6;->k()Ljava/util/Date;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method private h()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/m1;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lio/sentry/android/core/m1;->f()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lio/sentry/android/core/m1;->d:Ljava/util/Timer;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lio/sentry/android/core/m1$a;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lio/sentry/android/core/m1$a;-><init>(Lio/sentry/android/core/m1;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lio/sentry/android/core/m1;->c:Ljava/util/TimerTask;

    .line 17
    .line 18
    iget-object v2, p0, Lio/sentry/android/core/m1;->d:Ljava/util/Timer;

    .line 19
    .line 20
    iget-wide v3, p0, Lio/sentry/android/core/m1;->b:J

    .line 21
    .line 22
    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 23
    .line 24
    .line 25
    :cond_0
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v1
.end method

.method private i()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/m1;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/sentry/android/core/m1;->i:Lio/sentry/transport/p;

    .line 5
    .line 6
    invoke-interface {v0}, Lio/sentry/transport/p;->a()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lio/sentry/android/core/m1;->f:Lio/sentry/o0;

    .line 11
    .line 12
    new-instance v3, Lio/sentry/android/core/l1;

    .line 13
    .line 14
    invoke-direct {v3, p0}, Lio/sentry/android/core/l1;-><init>(Lio/sentry/android/core/m1;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v2, v3}, Lio/sentry/o0;->y(Lio/sentry/e3;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lio/sentry/android/core/m1;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    const-wide/16 v4, 0x0

    .line 27
    .line 28
    cmp-long v4, v2, v4

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    iget-wide v4, p0, Lio/sentry/android/core/m1;->b:J

    .line 33
    .line 34
    add-long/2addr v2, v4

    .line 35
    cmp-long v2, v2, v0

    .line 36
    .line 37
    if-gtz v2, :cond_2

    .line 38
    .line 39
    :cond_0
    iget-boolean v2, p0, Lio/sentry/android/core/m1;->g:Z

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    iget-object v2, p0, Lio/sentry/android/core/m1;->f:Lio/sentry/o0;

    .line 44
    .line 45
    invoke-interface {v2}, Lio/sentry/o0;->f()V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v2, p0, Lio/sentry/android/core/m1;->f:Lio/sentry/o0;

    .line 49
    .line 50
    invoke-interface {v2}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lio/sentry/s5;->getReplayController()Lio/sentry/y2;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v2}, Lio/sentry/y2;->start()V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v2, p0, Lio/sentry/android/core/m1;->f:Lio/sentry/o0;

    .line 62
    .line 63
    invoke-interface {v2}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lio/sentry/s5;->getReplayController()Lio/sentry/y2;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-interface {v2}, Lio/sentry/y2;->resume()V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lio/sentry/android/core/m1;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 75
    .line 76
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 77
    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public onStart(Landroidx/lifecycle/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/m1;->i()V

    .line 2
    .line 3
    .line 4
    const-string p1, "foreground"

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lio/sentry/android/core/m1;->e(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lio/sentry/android/core/o0;->a()Lio/sentry/android/core/o0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Lio/sentry/android/core/o0;->c(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onStop(Landroidx/lifecycle/m;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lio/sentry/android/core/m1;->i:Lio/sentry/transport/p;

    .line 2
    .line 3
    invoke-interface {p1}, Lio/sentry/transport/p;->a()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p1, p0, Lio/sentry/android/core/m1;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lio/sentry/android/core/m1;->f:Lio/sentry/o0;

    .line 13
    .line 14
    invoke-interface {p1}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lio/sentry/s5;->getReplayController()Lio/sentry/y2;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Lio/sentry/y2;->pause()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lio/sentry/android/core/m1;->h()V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lio/sentry/android/core/o0;->a()Lio/sentry/android/core/o0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Lio/sentry/android/core/o0;->c(Z)V

    .line 34
    .line 35
    .line 36
    const-string p1, "background"

    .line 37
    .line 38
    invoke-direct {p0, p1}, Lio/sentry/android/core/m1;->e(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
