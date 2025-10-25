.class public final Lcom/google/android/gms/internal/measurement/a4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile j:Lcom/google/android/gms/internal/measurement/a4;


# instance fields
.field private final a:Ljava/lang/String;

.field protected final b:Lcom/google/android/gms/common/util/d;

.field protected final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Lh6/a;

.field private final e:Ljava/util/List;

.field private f:I

.field private g:Z

.field private final h:Ljava/lang/String;

.field private volatile i:Lcom/google/android/gms/internal/measurement/t1;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "FA"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/common/util/g;->b()Lcom/google/android/gms/common/util/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/a4;->b:Lcom/google/android/gms/common/util/d;

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/o1;->a()Lcom/google/android/gms/internal/measurement/m1;

    .line 15
    .line 16
    .line 17
    new-instance v8, Lcom/google/android/gms/internal/measurement/h3;

    .line 18
    .line 19
    invoke-direct {v8, p0}, Lcom/google/android/gms/internal/measurement/h3;-><init>(Lcom/google/android/gms/internal/measurement/a4;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v3, 0x1

    .line 26
    const-wide/16 v4, 0x3c

    .line 27
    .line 28
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 31
    .line 32
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 33
    .line 34
    .line 35
    move-object v1, v0

    .line 36
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/a4;->c:Ljava/util/concurrent/ExecutorService;

    .line 48
    .line 49
    new-instance v0, Lh6/a;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lh6/a;-><init>(Lcom/google/android/gms/internal/measurement/a4;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/a4;->d:Lh6/a;

    .line 55
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/a4;->e:Ljava/util/List;

    .line 62
    .line 63
    :try_start_0
    invoke-static {p1}, Li6/p;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v2, "google_app_id"

    .line 68
    .line 69
    invoke-static {p1, v2, v0}, Li6/e0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    if-nez v0, :cond_0

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    :try_start_1
    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 77
    .line 78
    const-class v2, Lcom/google/android/gms/internal/measurement/a4;

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const/4 v3, 0x0

    .line 85
    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/a4;->h:Ljava/lang/String;

    .line 91
    .line 92
    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/a4;->g:Z

    .line 93
    .line 94
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Ljava/lang/String;

    .line 95
    .line 96
    const-string p2, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Add Google Analytics for Firebase to resume data collection."

    .line 97
    .line 98
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :catch_1
    :goto_0
    const-string v0, "fa"

    .line 103
    .line 104
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/a4;->h:Ljava/lang/String;

    .line 105
    .line 106
    new-instance v0, Lcom/google/android/gms/internal/measurement/u2;

    .line 107
    .line 108
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/u2;-><init>(Lcom/google/android/gms/internal/measurement/a4;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroid/app/Application;

    .line 119
    .line 120
    if-nez p1, :cond_1

    .line 121
    .line 122
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Ljava/lang/String;

    .line 123
    .line 124
    const-string p2, "Unable to register lifecycle notifications. Application null."

    .line 125
    .line 126
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/measurement/z3;

    .line 131
    .line 132
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/z3;-><init>(Lcom/google/android/gms/internal/measurement/a4;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method private final p(Lcom/google/android/gms/internal/measurement/p3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a4;->c:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final q(Ljava/lang/Exception;ZZ)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/a4;->g:Z

    .line 2
    .line 3
    or-int/2addr v0, p2

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/a4;->g:Z

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Ljava/lang/String;

    .line 9
    .line 10
    const-string p3, "Data collection startup failed. No data will be collected."

    .line 11
    .line 12
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string p2, "Error with data collection. Data lost."

    .line 17
    .line 18
    if-eqz p3, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v0, p0

    .line 24
    move-object v2, p2

    .line 25
    move-object v3, p1

    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/a4;->d(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V
    .locals 9

    .line 1
    new-instance v8, Lcom/google/android/gms/internal/measurement/o3;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p6

    .line 6
    move-object v3, p1

    .line 7
    move-object v4, p2

    .line 8
    move-object v5, p3

    .line 9
    move v6, p4

    .line 10
    move v7, p5

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/o3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static s(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/a4;
    .locals 2

    .line 1
    invoke-static {p0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/a4;->j:Lcom/google/android/gms/internal/measurement/a4;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const-class v0, Lcom/google/android/gms/internal/measurement/a4;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/a4;->j:Lcom/google/android/gms/internal/measurement/a4;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/measurement/a4;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/a4;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/google/android/gms/internal/measurement/a4;->j:Lcom/google/android/gms/internal/measurement/a4;

    .line 21
    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/a4;->j:Lcom/google/android/gms/internal/measurement/a4;

    .line 28
    .line 29
    return-object p0
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/m2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/m2;-><init>(Lcom/google/android/gms/internal/measurement/a4;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final B(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/q1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/q1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/n2;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/n2;-><init>(Lcom/google/android/gms/internal/measurement/a4;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/q1;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 p1, 0x1388

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/q1;->e1(J)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-class p2, Ljava/util/List;

    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/q1;->f1(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/util/List;

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_0
    return-object p1
.end method

.method public final C(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/o2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/o2;-><init>(Lcom/google/android/gms/internal/measurement/a4;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final D(Lcom/google/android/gms/internal/measurement/i2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/p2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/p2;-><init>(Lcom/google/android/gms/internal/measurement/a4;Lcom/google/android/gms/internal/measurement/i2;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final E(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/q2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/q2;-><init>(Lcom/google/android/gms/internal/measurement/a4;Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final F(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/r2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/r2;-><init>(Lcom/google/android/gms/internal/measurement/a4;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final G()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/s2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/s2;-><init>(Lcom/google/android/gms/internal/measurement/a4;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final H(J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/t2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/t2;-><init>(Lcom/google/android/gms/internal/measurement/a4;J)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final I(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/v2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/v2;-><init>(Lcom/google/android/gms/internal/measurement/a4;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final J(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/w2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/w2;-><init>(Lcom/google/android/gms/internal/measurement/a4;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final K(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/y2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/y2;-><init>(Lcom/google/android/gms/internal/measurement/a4;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final L()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/q1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/q1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/z2;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/z2;-><init>(Lcom/google/android/gms/internal/measurement/a4;Lcom/google/android/gms/internal/measurement/q1;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v1, 0x1f4

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q1;->d(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/q1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/q1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/a3;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/a3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Lcom/google/android/gms/internal/measurement/q1;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v1, 0x32

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q1;->d(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final N()J
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/q1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/q1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/b3;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/b3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Lcom/google/android/gms/internal/measurement/q1;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v1, 0x1f4

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q1;->k(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a4;->b:Lcom/google/android/gms/common/util/d;

    .line 23
    .line 24
    new-instance v1, Ljava/util/Random;

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    xor-long/2addr v2, v4

    .line 35
    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iget v2, p0, Lcom/google/android/gms/internal/measurement/a4;->f:I

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    iput v2, p0, Lcom/google/android/gms/internal/measurement/a4;->f:I

    .line 47
    .line 48
    int-to-long v2, v2

    .line 49
    add-long/2addr v0, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    :goto_0
    return-wide v0
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/q1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/q1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/c3;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/c3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Lcom/google/android/gms/internal/measurement/q1;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v1, 0x1f4

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q1;->d(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/q1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/q1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/e3;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/e3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Lcom/google/android/gms/internal/measurement/q1;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v1, 0x1f4

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q1;->d(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 8

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/measurement/q1;

    .line 2
    .line 3
    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/q1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v7, Lcom/google/android/gms/internal/measurement/f3;

    .line 7
    .line 8
    move-object v0, v7

    .line 9
    move-object v1, p0

    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    move v4, p3

    .line 13
    move-object v5, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/f3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/q1;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 18
    .line 19
    .line 20
    const-wide/16 p1, 0x1388

    .line 21
    .line 22
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/measurement/q1;->e1(J)Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_4

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    instance-of v2, v1, Ljava/lang/Double;

    .line 69
    .line 70
    if-nez v2, :cond_2

    .line 71
    .line 72
    instance-of v2, v1, Ljava/lang/Long;

    .line 73
    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    instance-of v2, v1, Ljava/lang/String;

    .line 77
    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    :cond_2
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    return-object p2

    .line 85
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1
.end method

.method public final d(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/measurement/g3;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x5

    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v7, 0x0

    .line 7
    move-object v0, p1

    .line 8
    move-object v1, p0

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/g3;-><init>(Lcom/google/android/gms/internal/measurement/a4;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final e(Ljava/lang/String;)I
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/q1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/q1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/i3;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/i3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/q1;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v1, 0x2710

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q1;->e1(J)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-class v0, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/q1;->f1(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Integer;

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    const/16 p1, 0x19

    .line 31
    .line 32
    return p1

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/q1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/q1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/j3;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/j3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Lcom/google/android/gms/internal/measurement/q1;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 12
    .line 13
    .line 14
    const-wide/32 v1, 0x1d4c0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q1;->d(J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public final g()Ljava/lang/Long;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/q1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/q1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/k3;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/k3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Lcom/google/android/gms/internal/measurement/q1;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 12
    .line 13
    .line 14
    const-wide/32 v1, 0x1d4c0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/q1;->k(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public final h(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/l3;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/l3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Z)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final i(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/m3;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/m3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method final synthetic j(Lcom/google/android/gms/internal/measurement/p3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    return-void
.end method

.method final synthetic k(Ljava/lang/Exception;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/a4;->q(Ljava/lang/Exception;ZZ)V

    return-void
.end method

.method final synthetic l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/a4;->g:Z

    return v0
.end method

.method final synthetic n()Lcom/google/android/gms/internal/measurement/t1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a4;->i:Lcom/google/android/gms/internal/measurement/t1;

    return-object v0
.end method

.method final synthetic o(Lcom/google/android/gms/internal/measurement/t1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/a4;->i:Lcom/google/android/gms/internal/measurement/t1;

    return-void
.end method

.method public final t()Lh6/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a4;->d:Lh6/a;

    return-object v0
.end method

.method protected final u(Landroid/content/Context;Z)Lcom/google/android/gms/internal/measurement/t1;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->e:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->c:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    .line 7
    .line 8
    :goto_0
    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 9
    .line 10
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->d(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Ljava/lang/String;)Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/s1;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/t1;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p1

    .line 25
    :catch_0
    move-exception p1

    .line 26
    const/4 p2, 0x1

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/a4;->q(Ljava/lang/Exception;ZZ)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    return-object p1
.end method

.method public final v(Li6/x;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a4;->e:Ljava/util/List;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/util/Pair;

    .line 19
    .line 20
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "OnEventListener already registered."

    .line 31
    .line 32
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/measurement/q3;

    .line 41
    .line 42
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/measurement/q3;-><init>(Li6/x;)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Landroid/util/Pair;

    .line 46
    .line 47
    invoke-direct {v2, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/a4;->i:Lcom/google/android/gms/internal/measurement/t1;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/a4;->i:Lcom/google/android/gms/internal/measurement/t1;

    .line 59
    .line 60
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/t1;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/d2;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Ljava/lang/String;

    .line 65
    .line 66
    const-string v0, "Failed to register event listener on calling thread. Trying again on the dynamite thread."

    .line 67
    .line 68
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/n3;

    .line 72
    .line 73
    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/measurement/n3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Lcom/google/android/gms/internal/measurement/q3;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    throw p1
.end method

.method public final w(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v5, 0x1

    .line 4
    const/4 v6, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/a4;->r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const/4 v4, 0x1

    .line 2
    const/4 v5, 0x1

    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/a4;->r(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/measurement/k2;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/k2;-><init>(Lcom/google/android/gms/internal/measurement/a4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final z(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/l2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/l2;-><init>(Lcom/google/android/gms/internal/measurement/a4;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/a4;->p(Lcom/google/android/gms/internal/measurement/p3;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
