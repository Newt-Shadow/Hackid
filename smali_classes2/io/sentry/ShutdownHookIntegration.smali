.class public final Lio/sentry/ShutdownHookIntegration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/e1;
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/lang/Runtime;

.field private b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/ShutdownHookIntegration;-><init>(Ljava/lang/Runtime;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runtime;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Runtime is required"

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runtime;

    iput-object p1, p0, Lio/sentry/ShutdownHookIntegration;->a:Ljava/lang/Runtime;

    return-void
.end method

.method public static synthetic a(Lio/sentry/o0;Lio/sentry/s5;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/sentry/ShutdownHookIntegration;->h(Lio/sentry/o0;Lio/sentry/s5;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/ShutdownHookIntegration;Lio/sentry/s5;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/ShutdownHookIntegration;->j(Lio/sentry/s5;)V

    return-void
.end method

.method public static synthetic c(Lio/sentry/ShutdownHookIntegration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/ShutdownHookIntegration;->g()V

    return-void
.end method

.method private e(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string v1, "Shutdown in progress"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string v1, "VM already shutting down"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    throw p1
.end method

.method private synthetic g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/ShutdownHookIntegration;->a:Ljava/lang/Runtime;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/ShutdownHookIntegration;->b:Ljava/lang/Thread;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic h(Lio/sentry/o0;Lio/sentry/s5;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/sentry/s5;->getFlushTimeoutMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p0, v0, v1}, Lio/sentry/o0;->o(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic j(Lio/sentry/s5;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/ShutdownHookIntegration;->a:Ljava/lang/Runtime;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/ShutdownHookIntegration;->b:Ljava/lang/Thread;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string v2, "ShutdownHookIntegration installed."

    .line 18
    .line 19
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "ShutdownHook"

    .line 23
    .line 24
    invoke-static {p1}, Lio/sentry/util/k;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/ShutdownHookIntegration;->b:Ljava/lang/Thread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/sentry/g6;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lio/sentry/g6;-><init>(Lio/sentry/ShutdownHookIntegration;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lio/sentry/ShutdownHookIntegration;->e(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public f(Lio/sentry/o0;Lio/sentry/s5;)V
    .locals 2

    .line 1
    const-string v0, "Hub is required"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "SentryOptions is required"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lio/sentry/s5;->isEnableShutdownHook()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/Thread;

    .line 18
    .line 19
    new-instance v1, Lio/sentry/h6;

    .line 20
    .line 21
    invoke-direct {v1, p1, p2}, Lio/sentry/h6;-><init>(Lio/sentry/o0;Lio/sentry/s5;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lio/sentry/ShutdownHookIntegration;->b:Ljava/lang/Thread;

    .line 28
    .line 29
    new-instance p1, Lio/sentry/i6;

    .line 30
    .line 31
    invoke-direct {p1, p0, p2}, Lio/sentry/i6;-><init>(Lio/sentry/ShutdownHookIntegration;Lio/sentry/s5;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Lio/sentry/ShutdownHookIntegration;->e(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object p2, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    .line 47
    const-string v1, "enableShutdownHook is disabled."

    .line 48
    .line 49
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method
