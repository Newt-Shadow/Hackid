.class final Lio/sentry/android/core/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/y;


# instance fields
.field final a:Landroid/content/Context;

.field private final b:Lio/sentry/android/core/p0;

.field private final c:Lio/sentry/android/core/SentryAndroidOptions;

.field private final d:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/p0;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/sentry/android/core/x0;->h(Landroid/content/Context;)Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "The application context is required."

    .line 9
    .line 10
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/content/Context;

    .line 15
    .line 16
    iput-object p1, p0, Lio/sentry/android/core/a1;->a:Landroid/content/Context;

    .line 17
    .line 18
    const-string p1, "The BuildInfoProvider is required."

    .line 19
    .line 20
    invoke-static {p2, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lio/sentry/android/core/p0;

    .line 25
    .line 26
    iput-object p1, p0, Lio/sentry/android/core/a1;->b:Lio/sentry/android/core/p0;

    .line 27
    .line 28
    const-string p1, "The options object is required."

    .line 29
    .line 30
    invoke-static {p3, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 35
    .line 36
    iput-object p1, p0, Lio/sentry/android/core/a1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 37
    .line 38
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance p2, Lio/sentry/android/core/z0;

    .line 43
    .line 44
    invoke-direct {p2, p0, p3}, Lio/sentry/android/core/z0;-><init>(Lio/sentry/android/core/a1;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iput-object p2, p0, Lio/sentry/android/core/a1;->d:Ljava/util/concurrent/Future;

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static synthetic d(Lio/sentry/android/core/a1;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/b1;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/android/core/a1;->f(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/b1;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lio/sentry/z4;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/sentry/z4;->p0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-le v0, v1, :cond_1

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sub-int/2addr v0, v1

    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lio/sentry/protocol/q;

    .line 24
    .line 25
    invoke-virtual {v0}, Lio/sentry/protocol/q;->h()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "java.lang"

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Lio/sentry/protocol/q;->i()Lio/sentry/protocol/w;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lio/sentry/protocol/w;->d()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lio/sentry/protocol/v;

    .line 64
    .line 65
    const-string v3, "com.android.internal.os.RuntimeInit$MethodAndArgsCaller"

    .line 66
    .line 67
    invoke-virtual {v2}, Lio/sentry/protocol/v;->r()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const/4 v1, 0x0

    .line 79
    :goto_0
    if-eqz v1, :cond_2

    .line 80
    .line 81
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    return-void
.end method

.method private synthetic f(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/b1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/a1;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/sentry/android/core/b1;->i(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/b1;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private g(Lio/sentry/t3;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/sentry/protocol/c;->c()Lio/sentry/protocol/l;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/a1;->d:Ljava/util/concurrent/Future;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lio/sentry/android/core/b1;

    .line 16
    .line 17
    invoke-virtual {v1}, Lio/sentry/android/core/b1;->j()Lio/sentry/protocol/l;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, v1}, Lio/sentry/protocol/c;->k(Lio/sentry/protocol/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    iget-object v2, p0, Lio/sentry/android/core/a1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 31
    .line 32
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sget-object v3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 37
    .line 38
    const-string v4, "Failed to retrieve os system"

    .line 39
    .line 40
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Lio/sentry/protocol/l;->g()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_0

    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v3, "os_"

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    const-string v1, "os_1"

    .line 86
    .line 87
    :goto_1
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :cond_1
    return-void
.end method

.method private h(Lio/sentry/t3;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/sentry/t3;->Q()Lio/sentry/protocol/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lio/sentry/protocol/b0;

    .line 8
    .line 9
    invoke-direct {v0}, Lio/sentry/protocol/b0;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lio/sentry/t3;->f0(Lio/sentry/protocol/b0;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Lio/sentry/protocol/b0;->m()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lio/sentry/android/core/a1;->a:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p1}, Lio/sentry/android/core/g1;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Lio/sentry/protocol/b0;->q(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {v0}, Lio/sentry/protocol/b0;->n()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lio/sentry/android/core/a1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 37
    .line 38
    invoke-virtual {p1}, Lio/sentry/s5;->isSendDefaultPii()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    const-string p1, "{{auto}}"

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lio/sentry/protocol/b0;->r(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method private i(Lio/sentry/t3;Lio/sentry/c0;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/sentry/protocol/c;->a()Lio/sentry/protocol/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lio/sentry/protocol/a;

    .line 12
    .line 13
    invoke-direct {v0}, Lio/sentry/protocol/a;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, v0, p2}, Lio/sentry/android/core/a1;->j(Lio/sentry/protocol/a;Lio/sentry/c0;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/a1;->n(Lio/sentry/t3;Lio/sentry/protocol/a;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v0}, Lio/sentry/protocol/c;->g(Lio/sentry/protocol/a;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private j(Lio/sentry/protocol/a;Lio/sentry/c0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/a1;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lio/sentry/android/core/x0;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lio/sentry/protocol/a;->n(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lio/sentry/android/core/a1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/g;->k(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/h;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lio/sentry/android/core/performance/h;->s()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lio/sentry/android/core/performance/h;->m()Lio/sentry/y3;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lio/sentry/j;->n(Lio/sentry/y3;)Ljava/util/Date;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Lio/sentry/protocol/a;->o(Ljava/util/Date;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-static {p2}, Lio/sentry/util/j;->i(Lio/sentry/c0;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lio/sentry/protocol/a;->k()Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-nez p2, :cond_1

    .line 48
    .line 49
    invoke-static {}, Lio/sentry/android/core/o0;->a()Lio/sentry/android/core/o0;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2}, Lio/sentry/android/core/o0;->b()Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    xor-int/lit8 p2, p2, 0x1

    .line 64
    .line 65
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p1, p2}, Lio/sentry/protocol/a;->q(Ljava/lang/Boolean;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method private k(Lio/sentry/t3;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/android/core/a1;->h(Lio/sentry/t3;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/a1;->l(Lio/sentry/t3;ZZ)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lio/sentry/android/core/a1;->o(Lio/sentry/t3;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private l(Lio/sentry/t3;ZZ)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/sentry/protocol/c;->b()Lio/sentry/protocol/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lio/sentry/android/core/a1;->d:Ljava/util/concurrent/Future;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lio/sentry/android/core/b1;

    .line 22
    .line 23
    invoke-virtual {v1, p2, p3}, Lio/sentry/android/core/b1;->a(ZZ)Lio/sentry/protocol/e;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {v0, p2}, Lio/sentry/protocol/c;->i(Lio/sentry/protocol/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p2

    .line 32
    iget-object p3, p0, Lio/sentry/android/core/a1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 33
    .line 34
    invoke-virtual {p3}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 39
    .line 40
    const-string v1, "Failed to retrieve device info"

    .line 41
    .line 42
    invoke-interface {p3, v0, v1, p2}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/a1;->g(Lio/sentry/t3;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method private m(Lio/sentry/t3;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/sentry/t3;->E()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lio/sentry/t3;->T(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private n(Lio/sentry/t3;Lio/sentry/protocol/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/a1;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/core/a1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lio/sentry/android/core/a1;->b:Lio/sentry/android/core/p0;

    .line 10
    .line 11
    const/16 v3, 0x1000

    .line 12
    .line 13
    invoke-static {v0, v3, v1, v2}, Lio/sentry/android/core/x0;->q(Landroid/content/Context;ILio/sentry/ILogger;Lio/sentry/android/core/p0;)Landroid/content/pm/PackageInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lio/sentry/android/core/a1;->b:Lio/sentry/android/core/p0;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lio/sentry/android/core/x0;->s(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/p0;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {p0, p1, v1}, Lio/sentry/android/core/a1;->m(Lio/sentry/t3;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lio/sentry/android/core/a1;->b:Lio/sentry/android/core/p0;

    .line 29
    .line 30
    invoke-static {v0, p1, p2}, Lio/sentry/android/core/x0;->F(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/p0;Lio/sentry/protocol/a;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method private o(Lio/sentry/t3;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/a1;->d:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/sentry/android/core/b1;

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/sentry/android/core/b1;->l()Lio/sentry/android/core/x0$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lio/sentry/android/core/x0$a;->a()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/Map$Entry;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, v2, v1}, Lio/sentry/t3;->d0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    iget-object v0, p0, Lio/sentry/android/core/a1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 57
    .line 58
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 63
    .line 64
    const-string v2, "Error getting side loaded info."

    .line 65
    .line 66
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void
.end method

.method private p(Lio/sentry/z4;Lio/sentry/c0;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lio/sentry/z4;->t0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-static {p2}, Lio/sentry/util/j;->i(Lio/sentry/c0;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {p1}, Lio/sentry/z4;->t0()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lio/sentry/protocol/x;

    .line 30
    .line 31
    invoke-static {}, Lio/sentry/android/core/internal/util/c;->b()Lio/sentry/android/core/internal/util/c;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Lio/sentry/android/core/internal/util/c;->d(Lio/sentry/protocol/x;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0}, Lio/sentry/protocol/x;->o()Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Lio/sentry/protocol/x;->r(Ljava/lang/Boolean;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    if-nez p2, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0}, Lio/sentry/protocol/x;->p()Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-nez v2, :cond_0

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lio/sentry/protocol/x;->v(Ljava/lang/Boolean;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    return-void
.end method

.method private q(Lio/sentry/t3;Lio/sentry/c0;)Z
    .locals 2

    .line 1
    invoke-static {p2}, Lio/sentry/util/j;->u(Lio/sentry/c0;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object p2, p0, Lio/sentry/android/core/a1;->c:Lio/sentry/android/core/SentryAndroidOptions;

    .line 10
    .line 11
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "Event was cached so not applying data relevant to the current app execution/version: %s"

    .line 26
    .line 27
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    return p1
.end method


# virtual methods
.method public a(Lio/sentry/t5;Lio/sentry/c0;)Lio/sentry/t5;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/a1;->q(Lio/sentry/t3;Lio/sentry/c0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/a1;->i(Lio/sentry/t3;Lio/sentry/c0;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/a1;->k(Lio/sentry/t3;ZZ)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public b(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/z4;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/a1;->q(Lio/sentry/t3;Lio/sentry/c0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/a1;->i(Lio/sentry/t3;Lio/sentry/c0;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/a1;->p(Lio/sentry/z4;Lio/sentry/c0;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p2, 0x1

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/a1;->k(Lio/sentry/t3;ZZ)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lio/sentry/android/core/a1;->e(Lio/sentry/z4;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public c(Lio/sentry/protocol/y;Lio/sentry/c0;)Lio/sentry/protocol/y;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/a1;->q(Lio/sentry/t3;Lio/sentry/c0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/a1;->i(Lio/sentry/t3;Lio/sentry/c0;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/a1;->k(Lio/sentry/t3;ZZ)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method
