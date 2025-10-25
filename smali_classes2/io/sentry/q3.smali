.class public abstract Lio/sentry/q3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/q3$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/ThreadLocal;

.field private static volatile b:Lio/sentry/o0;

.field private static volatile c:Z

.field private static final d:Ljava/nio/charset/Charset;

.field private static final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/q3;->a:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    invoke-static {}, Lio/sentry/y1;->g()Lio/sentry/y1;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lio/sentry/q3;->b:Lio/sentry/o0;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Lio/sentry/q3;->c:Z

    .line 16
    .line 17
    const-string v0, "UTF-8"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lio/sentry/q3;->d:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    sput-wide v0, Lio/sentry/q3;->e:J

    .line 30
    .line 31
    return-void
.end method

.method public static A(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lio/sentry/o0;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static B(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lio/sentry/o0;->c(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static C(Lio/sentry/s5;)Lio/sentry/x6;
    .locals 3

    .line 1
    new-instance v0, Lio/sentry/y6;

    .line 2
    .line 3
    const-string v1, "app.launch"

    .line 4
    .line 5
    const-string v2, "profile"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lio/sentry/y6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lio/sentry/y6;->w(Z)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lio/sentry/c3;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, v0, v2}, Lio/sentry/c3;-><init>(Lio/sentry/y6;Lio/sentry/h;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lio/sentry/w6;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lio/sentry/w6;-><init>(Lio/sentry/s5;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lio/sentry/w6;->b(Lio/sentry/c3;)Lio/sentry/x6;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0, p1}, Lio/sentry/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static E(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0, p1}, Lio/sentry/o0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static F(Lio/sentry/protocol/b0;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lio/sentry/o0;->n(Lio/sentry/protocol/b0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static G()V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/sentry/o0;->f()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static H(Lio/sentry/y6;Lio/sentry/a7;)Lio/sentry/a1;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0, p1}, Lio/sentry/o0;->w(Lio/sentry/y6;Lio/sentry/a7;)Lio/sentry/a1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static synthetic a(Lio/sentry/s5;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/q3;->v(Lio/sentry/s5;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/s5;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/q3;->y(Lio/sentry/s5;)V

    return-void
.end method

.method public static synthetic c(Lio/sentry/s5;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/q3;->w(Lio/sentry/s5;)V

    return-void
.end method

.method public static synthetic d(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/q3;->x(Ljava/io/File;)V

    return-void
.end method

.method public static e(Lio/sentry/e;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lio/sentry/o0;->t(Lio/sentry/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static f(Lio/sentry/e;Lio/sentry/c0;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0, p1}, Lio/sentry/o0;->p(Lio/sentry/e;Lio/sentry/c0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static g(Lio/sentry/q3$a;Lio/sentry/s5;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lio/sentry/q3$a;->a(Lio/sentry/s5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception p0

    .line 6
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 11
    .line 12
    const-string v1, "Error in the \'OptionsConfiguration.configure\' callback."

    .line 13
    .line 14
    invoke-interface {p1, v0, v1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public static h(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/protocol/r;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0, p1}, Lio/sentry/o0;->D(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static i()V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/sentry/o0;->q()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static declared-synchronized j()V
    .locals 3

    .line 1
    const-class v0, Lio/sentry/q3;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {}, Lio/sentry/y1;->g()Lio/sentry/y1;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sput-object v2, Lio/sentry/q3;->b:Lio/sentry/o0;

    .line 13
    .line 14
    sget-object v2, Lio/sentry/q3;->a:Ljava/lang/ThreadLocal;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-interface {v1, v2}, Lio/sentry/o0;->i(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0

    .line 27
    throw v1
.end method

.method public static k(Lio/sentry/e3;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lio/sentry/o0;->y(Lio/sentry/e3;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static l()V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/sentry/o0;->e()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static m(Lio/sentry/s5;Lio/sentry/o0;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lio/sentry/s2;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lio/sentry/s2;-><init>(Lio/sentry/s5;Lio/sentry/o0;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 20
    .line 21
    const-string v1, "Failed to finalize previous session."

    .line 22
    .line 23
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public static n(J)V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p0, p1}, Lio/sentry/o0;->o(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static o()Lio/sentry/o0;
    .locals 3

    .line 1
    sget-boolean v0, Lio/sentry/q3;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lio/sentry/q3;->b:Lio/sentry/o0;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    sget-object v0, Lio/sentry/q3;->a:Ljava/lang/ThreadLocal;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lio/sentry/o0;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    instance-of v2, v1, Lio/sentry/y1;

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    :cond_1
    sget-object v1, Lio/sentry/q3;->b:Lio/sentry/o0;

    .line 23
    .line 24
    invoke-interface {v1}, Lio/sentry/o0;->r()Lio/sentry/o0;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-object v1
.end method

.method private static p(Lio/sentry/s5;Lio/sentry/x0;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lio/sentry/n3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/sentry/n3;-><init>(Lio/sentry/s5;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 16
    .line 17
    const-string v1, "Failed to call the executor. App start profiling config will not be changed. Did you call Sentry.close()?"

    .line 18
    .line 19
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public static q(Lio/sentry/n2;Lio/sentry/q3$a;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/n2;->b()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lio/sentry/s5;

    .line 6
    .line 7
    invoke-static {p1, p0}, Lio/sentry/q3;->g(Lio/sentry/q3$a;Lio/sentry/s5;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p2}, Lio/sentry/q3;->r(Lio/sentry/s5;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static declared-synchronized r(Lio/sentry/s5;Z)V
    .locals 8

    .line 1
    const-class v0, Lio/sentry/q3;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lio/sentry/q3;->t()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v3, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 16
    .line 17
    const-string v4, "Sentry has been already initialized. Previous configuration will be overwritten."

    .line 18
    .line 19
    new-array v5, v2, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-interface {v1, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {p0}, Lio/sentry/q3;->s(Lio/sentry/s5;)Z

    .line 25
    .line 26
    .line 27
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v3, Lio/sentry/m3;

    .line 37
    .line 38
    invoke-direct {v3, p0}, Lio/sentry/m3;-><init>(Lio/sentry/s5;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v3}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    :try_start_2
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    sget-object v4, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 51
    .line 52
    const-string v5, "Failed to call the executor. Lazy fields will not be loaded. Did you call Sentry.close()?"

    .line 53
    .line 54
    invoke-interface {v3, v4, v5, v1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sget-object v3, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 62
    .line 63
    const-string v4, "GlobalHubMode: \'%s\'"

    .line 64
    .line 65
    const/4 v5, 0x1

    .line 66
    new-array v6, v5, [Ljava/lang/Object;

    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    aput-object v7, v6, v2

    .line 73
    .line 74
    invoke-interface {v1, v3, v4, v6}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sput-boolean p1, Lio/sentry/q3;->c:Z

    .line 78
    .line 79
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance v1, Lio/sentry/j0;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Lio/sentry/j0;-><init>(Lio/sentry/s5;)V

    .line 86
    .line 87
    .line 88
    sput-object v1, Lio/sentry/q3;->b:Lio/sentry/o0;

    .line 89
    .line 90
    sget-object v1, Lio/sentry/q3;->a:Ljava/lang/ThreadLocal;

    .line 91
    .line 92
    sget-object v2, Lio/sentry/q3;->b:Lio/sentry/o0;

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p1, v5}, Lio/sentry/o0;->i(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-interface {p1}, Lio/sentry/x0;->b()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_2

    .line 109
    .line 110
    new-instance p1, Lio/sentry/b5;

    .line 111
    .line 112
    invoke-direct {p1}, Lio/sentry/b5;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lio/sentry/s5;->setExecutorService(Lio/sentry/x0;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    invoke-virtual {p0}, Lio/sentry/s5;->getIntegrations()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lio/sentry/e1;

    .line 137
    .line 138
    invoke-static {}, Lio/sentry/k0;->h()Lio/sentry/k0;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-interface {v1, v2, p0}, Lio/sentry/e1;->f(Lio/sentry/o0;Lio/sentry/s5;)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    invoke-static {p0}, Lio/sentry/q3;->z(Lio/sentry/s5;)V

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lio/sentry/k0;->h()Lio/sentry/k0;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {p0, p1}, Lio/sentry/q3;->m(Lio/sentry/s5;Lio/sentry/o0;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p0, p1}, Lio/sentry/q3;->p(Lio/sentry/s5;Lio/sentry/x0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .line 162
    .line 163
    monitor-exit v0

    .line 164
    return-void

    .line 165
    :catchall_0
    move-exception p0

    .line 166
    monitor-exit v0

    .line 167
    throw p0
.end method

.method private static s(Lio/sentry/s5;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->isEnableExternalConfiguration()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lio/sentry/config/g;->a()Lio/sentry/config/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lio/sentry/a0;->g(Lio/sentry/config/f;Lio/sentry/ILogger;)Lio/sentry/a0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lio/sentry/s5;->merge(Lio/sentry/a0;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lio/sentry/s5;->getDsn()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lio/sentry/s5;->isEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_d

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_1
    if-eqz v0, :cond_c

    .line 44
    .line 45
    invoke-virtual {p0}, Lio/sentry/s5;->retrieveParsedDsn()Lio/sentry/r;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lio/sentry/s5;->isDebug()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    instance-of v1, v0, Lio/sentry/z1;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    new-instance v0, Lio/sentry/u6;

    .line 63
    .line 64
    invoke-direct {v0}, Lio/sentry/u6;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setLogger(Lio/sentry/ILogger;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :cond_2
    sget-object v1, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 75
    .line 76
    invoke-virtual {p0}, Lio/sentry/s5;->getDsn()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const-string v4, "Initializing SDK with DSN: \'%s\'"

    .line 85
    .line 86
    invoke-interface {v0, v1, v4, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lio/sentry/s5;->getOutboxPath()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-eqz v3, :cond_3

    .line 94
    .line 95
    new-instance v0, Ljava/io/File;

    .line 96
    .line 97
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    const-string v3, "No outbox dir path is defined in options."

    .line 105
    .line 106
    new-array v4, v2, [Ljava/lang/Object;

    .line 107
    .line 108
    invoke-interface {v0, v1, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :goto_0
    invoke-virtual {p0}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    new-instance v1, Ljava/io/File;

    .line 118
    .line 119
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lio/sentry/s5;->getEnvelopeDiskCache()Lio/sentry/cache/g;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    instance-of v0, v0, Lio/sentry/transport/s;

    .line 130
    .line 131
    if-eqz v0, :cond_4

    .line 132
    .line 133
    invoke-static {p0}, Lio/sentry/cache/f;->I(Lio/sentry/s5;)Lio/sentry/cache/g;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setEnvelopeDiskCache(Lio/sentry/cache/g;)V

    .line 138
    .line 139
    .line 140
    :cond_4
    invoke-virtual {p0}, Lio/sentry/s5;->getProfilingTracesDirPath()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lio/sentry/s5;->isProfilingEnabled()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_5

    .line 149
    .line 150
    if-eqz v0, :cond_5

    .line 151
    .line 152
    new-instance v1, Ljava/io/File;

    .line 153
    .line 154
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 158
    .line 159
    .line 160
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-instance v3, Lio/sentry/o3;

    .line 165
    .line 166
    invoke-direct {v3, v1}, Lio/sentry/o3;-><init>(Ljava/io/File;)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v0, v3}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    sget-object v3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 179
    .line 180
    const-string v4, "Failed to call the executor. Old profiles will not be deleted. Did you call Sentry.close()?"

    .line 181
    .line 182
    invoke-interface {v1, v3, v4, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lio/sentry/s5;->getModulesLoader()Lio/sentry/internal/modules/b;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lio/sentry/s5;->isSendModules()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    const/4 v3, 0x1

    .line 194
    if-nez v1, :cond_6

    .line 195
    .line 196
    invoke-static {}, Lio/sentry/internal/modules/e;->b()Lio/sentry/internal/modules/e;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setModulesLoader(Lio/sentry/internal/modules/b;)V

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_6
    instance-of v0, v0, Lio/sentry/internal/modules/e;

    .line 205
    .line 206
    if-eqz v0, :cond_7

    .line 207
    .line 208
    new-instance v0, Lio/sentry/internal/modules/a;

    .line 209
    .line 210
    const/4 v1, 0x2

    .line 211
    new-array v1, v1, [Lio/sentry/internal/modules/b;

    .line 212
    .line 213
    new-instance v4, Lio/sentry/internal/modules/c;

    .line 214
    .line 215
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-direct {v4, v5}, Lio/sentry/internal/modules/c;-><init>(Lio/sentry/ILogger;)V

    .line 220
    .line 221
    .line 222
    aput-object v4, v1, v2

    .line 223
    .line 224
    new-instance v2, Lio/sentry/internal/modules/f;

    .line 225
    .line 226
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-direct {v2, v4}, Lio/sentry/internal/modules/f;-><init>(Lio/sentry/ILogger;)V

    .line 231
    .line 232
    .line 233
    aput-object v2, v1, v3

    .line 234
    .line 235
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-direct {v0, v1, v2}, Lio/sentry/internal/modules/a;-><init>(Ljava/util/List;Lio/sentry/ILogger;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setModulesLoader(Lio/sentry/internal/modules/b;)V

    .line 247
    .line 248
    .line 249
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lio/sentry/s5;->getDebugMetaLoader()Lio/sentry/internal/debugmeta/a;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    instance-of v0, v0, Lio/sentry/internal/debugmeta/b;

    .line 254
    .line 255
    if-eqz v0, :cond_8

    .line 256
    .line 257
    new-instance v0, Lio/sentry/internal/debugmeta/c;

    .line 258
    .line 259
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-direct {v0, v1}, Lio/sentry/internal/debugmeta/c;-><init>(Lio/sentry/ILogger;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setDebugMetaLoader(Lio/sentry/internal/debugmeta/a;)V

    .line 267
    .line 268
    .line 269
    :cond_8
    invoke-virtual {p0}, Lio/sentry/s5;->getDebugMetaLoader()Lio/sentry/internal/debugmeta/a;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-interface {v0}, Lio/sentry/internal/debugmeta/a;->a()Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-static {p0, v0}, Lio/sentry/util/c;->c(Lio/sentry/s5;Ljava/util/List;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Lio/sentry/s5;->getMainThreadChecker()Lio/sentry/util/thread/a;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    instance-of v0, v0, Lio/sentry/util/thread/c;

    .line 285
    .line 286
    if-eqz v0, :cond_9

    .line 287
    .line 288
    invoke-static {}, Lio/sentry/util/thread/b;->b()Lio/sentry/util/thread/b;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setMainThreadChecker(Lio/sentry/util/thread/a;)V

    .line 293
    .line 294
    .line 295
    :cond_9
    invoke-virtual {p0}, Lio/sentry/s5;->getPerformanceCollectors()Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-eqz v0, :cond_a

    .line 304
    .line 305
    new-instance v0, Lio/sentry/f1;

    .line 306
    .line 307
    invoke-direct {v0}, Lio/sentry/f1;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0, v0}, Lio/sentry/s5;->addPerformanceCollector(Lio/sentry/r0;)V

    .line 311
    .line 312
    .line 313
    :cond_a
    invoke-virtual {p0}, Lio/sentry/s5;->isEnableBackpressureHandling()Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-eqz v0, :cond_b

    .line 318
    .line 319
    invoke-static {}, Lio/sentry/util/s;->c()Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-eqz v0, :cond_b

    .line 324
    .line 325
    new-instance v0, Lio/sentry/backpressure/a;

    .line 326
    .line 327
    invoke-static {}, Lio/sentry/k0;->h()Lio/sentry/k0;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-direct {v0, p0, v1}, Lio/sentry/backpressure/a;-><init>(Lio/sentry/s5;Lio/sentry/o0;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setBackpressureMonitor(Lio/sentry/backpressure/b;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0}, Lio/sentry/s5;->getBackpressureMonitor()Lio/sentry/backpressure/b;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    invoke-interface {p0}, Lio/sentry/backpressure/b;->start()V

    .line 342
    .line 343
    .line 344
    :cond_b
    return v3

    .line 345
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 346
    .line 347
    const-string v0, "DSN is required. Use empty string or set enabled to false in SentryOptions to disable SDK."

    .line 348
    .line 349
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    throw p0

    .line 353
    :cond_d
    :goto_3
    invoke-static {}, Lio/sentry/q3;->j()V

    .line 354
    .line 355
    .line 356
    return v2
.end method

.method public static t()Z
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/sentry/o0;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static u()Z
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/sentry/o0;->m()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private static synthetic v(Lio/sentry/s5;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->getCacheDirPathWithoutDsn()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    new-instance v1, Ljava/io/File;

    .line 8
    .line 9
    const-string v2, "app_start_profiling_config"

    .line 10
    .line 11
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {v1}, Lio/sentry/util/e;->a(Ljava/io/File;)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lio/sentry/s5;->isEnableAppStartProfiling()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0}, Lio/sentry/s5;->isTracingEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 35
    .line 36
    const-string v2, "Tracing is disabled and app start profiling will not start."

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    new-array v3, v3, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-static {p0}, Lio/sentry/q3;->C(Lio/sentry/s5;)Lio/sentry/x6;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v2, Lio/sentry/r3;

    .line 56
    .line 57
    invoke-direct {v2, p0, v0}, Lio/sentry/r3;-><init>(Lio/sentry/s5;Lio/sentry/x6;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/io/FileOutputStream;

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 63
    .line 64
    .line 65
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    .line 66
    .line 67
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 68
    .line 69
    sget-object v4, Lio/sentry/q3;->d:Ljava/nio/charset/Charset;

    .line 70
    .line 71
    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 75
    .line 76
    .line 77
    :try_start_2
    invoke-virtual {p0}, Lio/sentry/s5;->getSerializer()Lio/sentry/y0;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v3, v2, v1}, Lio/sentry/y0;->a(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .line 83
    .line 84
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 85
    .line 86
    .line 87
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catchall_0
    move-exception v2

    .line 92
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_1
    move-exception v1

    .line 97
    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 101
    :catchall_2
    move-exception v1

    .line 102
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catchall_3
    move-exception v0

    .line 107
    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    :goto_1
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 111
    :catchall_4
    move-exception v0

    .line 112
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 117
    .line 118
    const-string v2, "Unable to create app start profiling config file. "

    .line 119
    .line 120
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    :goto_2
    return-void
.end method

.method private static synthetic w(Lio/sentry/s5;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->loadLazyFields()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic x(Ljava/io/File;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    array-length v0, p0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_2

    .line 11
    .line 12
    aget-object v2, p0, v1

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    sget-wide v5, Lio/sentry/q3;->e:J

    .line 19
    .line 20
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    const-wide/16 v8, 0x5

    .line 23
    .line 24
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v7

    .line 28
    sub-long/2addr v5, v7

    .line 29
    cmp-long v3, v3, v5

    .line 30
    .line 31
    if-gez v3, :cond_1

    .line 32
    .line 33
    invoke-static {v2}, Lio/sentry/util/e;->a(Ljava/io/File;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-void
.end method

.method private static synthetic y(Lio/sentry/s5;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->getOptionsObservers()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lio/sentry/q0;

    .line 20
    .line 21
    invoke-virtual {p0}, Lio/sentry/s5;->getRelease()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v1, v2}, Lio/sentry/q0;->k(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lio/sentry/s5;->getProguardUuid()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v1, v2}, Lio/sentry/q0;->j(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lio/sentry/s5;->getSdkVersion()Lio/sentry/protocol/p;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v1, v2}, Lio/sentry/q0;->f(Lio/sentry/protocol/p;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lio/sentry/s5;->getDist()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v1, v2}, Lio/sentry/q0;->g(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lio/sentry/s5;->getEnvironment()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v1, v2}, Lio/sentry/q0;->i(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lio/sentry/s5;->getTags()Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v1, v2}, Lio/sentry/q0;->e(Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lio/sentry/u5;->g()Ljava/lang/Double;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-interface {v1, v2}, Lio/sentry/q0;->h(Ljava/lang/Double;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lio/sentry/s5;->findPersistingScopeObserver()Lio/sentry/cache/t;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-eqz p0, :cond_1

    .line 80
    .line 81
    invoke-virtual {p0}, Lio/sentry/cache/t;->M()V

    .line 82
    .line 83
    .line 84
    :cond_1
    return-void
.end method

.method private static z(Lio/sentry/s5;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lio/sentry/p3;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lio/sentry/p3;-><init>(Lio/sentry/s5;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 20
    .line 21
    const-string v2, "Failed to notify options observers."

    .line 22
    .line 23
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method
