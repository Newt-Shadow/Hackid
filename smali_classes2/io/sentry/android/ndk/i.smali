.class public final Lio/sentry/android/ndk/i;
.super Lio/sentry/f3;
.source "SourceFile"


# instance fields
.field private final a:Lio/sentry/s5;

.field private final b:Lio/sentry/android/ndk/b;


# direct methods
.method public constructor <init>(Lio/sentry/s5;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/android/ndk/NativeScope;

    invoke-direct {v0}, Lio/sentry/android/ndk/NativeScope;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/sentry/android/ndk/i;-><init>(Lio/sentry/s5;Lio/sentry/android/ndk/b;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/s5;Lio/sentry/android/ndk/b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/sentry/f3;-><init>()V

    const-string v0, "The SentryOptions object is required."

    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/s5;

    iput-object p1, p0, Lio/sentry/android/ndk/i;->a:Lio/sentry/s5;

    const-string p1, "The NativeScope object is required."

    .line 4
    invoke-static {p2, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/ndk/b;

    iput-object p1, p0, Lio/sentry/android/ndk/i;->b:Lio/sentry/android/ndk/b;

    return-void
.end method

.method public static synthetic k(Lio/sentry/android/ndk/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/android/ndk/i;->s(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Lio/sentry/android/ndk/i;Lio/sentry/protocol/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/android/ndk/i;->x(Lio/sentry/protocol/b0;)V

    return-void
.end method

.method public static synthetic m(Lio/sentry/android/ndk/i;Lio/sentry/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/android/ndk/i;->r(Lio/sentry/e;)V

    return-void
.end method

.method public static synthetic o(Lio/sentry/android/ndk/i;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/ndk/i;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p(Lio/sentry/android/ndk/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/android/ndk/i;->u(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic q(Lio/sentry/android/ndk/i;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/ndk/i;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic r(Lio/sentry/e;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lio/sentry/e;->j()Lio/sentry/j5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lio/sentry/e;->j()Lio/sentry/j5;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v3, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v3, v1

    .line 25
    :goto_0
    invoke-virtual {p1}, Lio/sentry/e;->l()Ljava/util/Date;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lio/sentry/j;->g(Ljava/util/Date;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/e;->i()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    iget-object v2, p0, Lio/sentry/android/ndk/i;->a:Lio/sentry/s5;

    .line 44
    .line 45
    invoke-virtual {v2}, Lio/sentry/s5;->getSerializer()Lio/sentry/y0;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v2, v0}, Lio/sentry/y0;->f(Ljava/util/Map;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    move-object v1, v0

    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    iget-object v2, p0, Lio/sentry/android/ndk/i;->a:Lio/sentry/s5;

    .line 57
    .line 58
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    sget-object v4, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    new-array v5, v5, [Ljava/lang/Object;

    .line 66
    .line 67
    const-string v6, "Breadcrumb data is not serializable."

    .line 68
    .line 69
    invoke-interface {v2, v4, v0, v6, v5}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_1
    move-object v8, v1

    .line 73
    iget-object v2, p0, Lio/sentry/android/ndk/i;->b:Lio/sentry/android/ndk/b;

    .line 74
    .line 75
    invoke-virtual {p1}, Lio/sentry/e;->k()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {p1}, Lio/sentry/e;->h()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {p1}, Lio/sentry/e;->m()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-interface/range {v2 .. v8}, Lio/sentry/android/ndk/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private synthetic s(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/ndk/i;->b:Lio/sentry/android/ndk/b;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/sentry/android/ndk/b;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic u(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/ndk/i;->b:Lio/sentry/android/ndk/b;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/sentry/android/ndk/b;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/ndk/i;->b:Lio/sentry/android/ndk/b;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lio/sentry/android/ndk/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/ndk/i;->b:Lio/sentry/android/ndk/b;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lio/sentry/android/ndk/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic x(Lio/sentry/protocol/b0;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lio/sentry/android/ndk/i;->b:Lio/sentry/android/ndk/b;

    .line 4
    .line 5
    invoke-interface {p1}, Lio/sentry/android/ndk/b;->g()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lio/sentry/android/ndk/i;->b:Lio/sentry/android/ndk/b;

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/sentry/protocol/b0;->m()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/sentry/protocol/b0;->l()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p1}, Lio/sentry/protocol/b0;->n()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p1}, Lio/sentry/protocol/b0;->p()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v0, v1, v2, v3, p1}, Lio/sentry/android/ndk/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/i;->a:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lio/sentry/android/ndk/c;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lio/sentry/android/ndk/c;-><init>(Lio/sentry/android/ndk/i;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    iget-object v1, p0, Lio/sentry/android/ndk/i;->a:Lio/sentry/s5;

    .line 18
    .line 19
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 24
    .line 25
    const-string v3, "Scope sync removeExtra(%s) has an error."

    .line 26
    .line 27
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {v1, v2, v0, v3, p1}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/i;->a:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lio/sentry/android/ndk/f;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/ndk/f;-><init>(Lio/sentry/android/ndk/i;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p2

    .line 17
    iget-object v0, p0, Lio/sentry/android/ndk/i;->a:Lio/sentry/s5;

    .line 18
    .line 19
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 24
    .line 25
    const-string v2, "Scope sync setExtra(%s) has an error."

    .line 26
    .line 27
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {v0, v1, p2, v2, p1}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/i;->a:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lio/sentry/android/ndk/d;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lio/sentry/android/ndk/d;-><init>(Lio/sentry/android/ndk/i;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    iget-object v1, p0, Lio/sentry/android/ndk/i;->a:Lio/sentry/s5;

    .line 18
    .line 19
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 24
    .line 25
    const-string v3, "Scope sync removeTag(%s) has an error."

    .line 26
    .line 27
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {v1, v2, v0, v3, p1}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/i;->a:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lio/sentry/android/ndk/g;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/ndk/g;-><init>(Lio/sentry/android/ndk/i;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p2

    .line 17
    iget-object v0, p0, Lio/sentry/android/ndk/i;->a:Lio/sentry/s5;

    .line 18
    .line 19
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 24
    .line 25
    const-string v2, "Scope sync setTag(%s) has an error."

    .line 26
    .line 27
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {v0, v1, p2, v2, p1}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public n(Lio/sentry/protocol/b0;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/i;->a:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lio/sentry/android/ndk/e;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lio/sentry/android/ndk/e;-><init>(Lio/sentry/android/ndk/i;Lio/sentry/protocol/b0;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    iget-object v0, p0, Lio/sentry/android/ndk/i;->a:Lio/sentry/s5;

    .line 18
    .line 19
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    const-string v3, "Scope sync setUser has an error."

    .line 29
    .line 30
    invoke-interface {v0, v1, p1, v3, v2}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public t(Lio/sentry/e;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/ndk/i;->a:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lio/sentry/android/ndk/h;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lio/sentry/android/ndk/h;-><init>(Lio/sentry/android/ndk/i;Lio/sentry/e;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    iget-object v0, p0, Lio/sentry/android/ndk/i;->a:Lio/sentry/s5;

    .line 18
    .line 19
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    const-string v3, "Scope sync addBreadcrumb has an error."

    .line 29
    .line 30
    invoke-interface {v0, v1, p1, v3, v2}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method
