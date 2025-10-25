.class final Lio/sentry/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/f0$b;
    }
.end annotation


# static fields
.field private static final g:J

.field private static final h:J

.field private static i:Lio/sentry/f0;


# instance fields
.field private final a:J

.field private volatile b:Ljava/lang/String;

.field private volatile c:J

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/Callable;

.field private final f:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x5

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lio/sentry/f0;->g:J

    .line 10
    .line 11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    const-wide/16 v1, 0x1

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    sput-wide v0, Lio/sentry/f0;->h:J

    .line 20
    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    sget-wide v0, Lio/sentry/f0;->g:J

    invoke-direct {p0, v0, v1}, Lio/sentry/f0;-><init>(J)V

    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    .line 2
    new-instance v0, Lio/sentry/d0;

    invoke-direct {v0}, Lio/sentry/d0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/f0;-><init>(JLjava/util/concurrent/Callable;)V

    return-void
.end method

.method constructor <init>(JLjava/util/concurrent/Callable;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/f0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Lio/sentry/f0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/f0$b;-><init>(Lio/sentry/f0$a;)V

    .line 6
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/f0;->f:Ljava/util/concurrent/ExecutorService;

    .line 7
    iput-wide p1, p0, Lio/sentry/f0;->a:J

    const-string p1, "getLocalhost is required"

    .line 8
    invoke-static {p3, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lio/sentry/f0;->e:Ljava/util/concurrent/Callable;

    .line 9
    invoke-direct {p0}, Lio/sentry/f0;->i()V

    return-void
.end method

.method public static synthetic a(Lio/sentry/f0;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/f0;->h()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Ljava/net/InetAddress;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/f0;->g()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static e()Lio/sentry/f0;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/f0;->i:Lio/sentry/f0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/sentry/f0;

    .line 6
    .line 7
    invoke-direct {v0}, Lio/sentry/f0;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lio/sentry/f0;->i:Lio/sentry/f0;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lio/sentry/f0;->i:Lio/sentry/f0;

    .line 13
    .line 14
    return-object v0
.end method

.method private f()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    const-wide/16 v3, 0x1

    .line 8
    .line 9
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    add-long/2addr v0, v2

    .line 14
    iput-wide v0, p0, Lio/sentry/f0;->c:J

    .line 15
    .line 16
    return-void
.end method

.method private static synthetic g()Ljava/net/InetAddress;
    .locals 1

    .line 1
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private synthetic h()Ljava/lang/Void;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/sentry/f0;->e:Ljava/util/concurrent/Callable;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/net/InetAddress;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lio/sentry/f0;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iget-wide v3, p0, Lio/sentry/f0;->a:J

    .line 21
    .line 22
    add-long/2addr v1, v3

    .line 23
    iput-wide v1, p0, Lio/sentry/f0;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    iget-object v1, p0, Lio/sentry/f0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    iget-object v2, p0, Lio/sentry/f0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    .line 37
    .line 38
    throw v1
.end method

.method private i()V
    .locals 4

    .line 1
    new-instance v0, Lio/sentry/e0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/sentry/e0;-><init>(Lio/sentry/f0;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lio/sentry/f0;->f:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-wide v1, Lio/sentry/f0;->h:J

    .line 13
    .line 14
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    invoke-direct {p0}, Lio/sentry/f0;->f()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lio/sentry/f0;->f()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method


# virtual methods
.method c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/f0;->f:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method d()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/sentry/f0;->c:J

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/sentry/f0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lio/sentry/f0;->i()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lio/sentry/f0;->b:Ljava/lang/String;

    .line 25
    .line 26
    return-object v0
.end method
