.class public final Lio/sentry/android/core/AppLifecycleIntegration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/e1;
.implements Ljava/io/Closeable;


# instance fields
.field volatile a:Lio/sentry/android/core/m1;

.field private b:Lio/sentry/android/core/SentryAndroidOptions;

.field private final c:Lio/sentry/android/core/o1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/android/core/o1;

    invoke-direct {v0}, Lio/sentry/android/core/o1;-><init>()V

    invoke-direct {p0, v0}, Lio/sentry/android/core/AppLifecycleIntegration;-><init>(Lio/sentry/android/core/o1;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/android/core/o1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/sentry/android/core/AppLifecycleIntegration;->c:Lio/sentry/android/core/o1;

    return-void
.end method

.method public static synthetic a(Lio/sentry/android/core/AppLifecycleIntegration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/AppLifecycleIntegration;->e()V

    return-void
.end method

.method public static synthetic b(Lio/sentry/android/core/AppLifecycleIntegration;Lio/sentry/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/android/core/AppLifecycleIntegration;->g(Lio/sentry/o0;)V

    return-void
.end method

.method private c(Lio/sentry/o0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v7, Lio/sentry/android/core/m1;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/sentry/s5;->getSessionTrackingIntervalMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/sentry/s5;->isEnableAutoSessionTracking()Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 19
    .line 20
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppLifecycleBreadcrumbs()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    move-object v1, v7

    .line 25
    move-object v2, p1

    .line 26
    invoke-direct/range {v1 .. v6}, Lio/sentry/android/core/m1;-><init>(Lio/sentry/o0;JZZ)V

    .line 27
    .line 28
    .line 29
    iput-object v7, p0, Lio/sentry/android/core/AppLifecycleIntegration;->a:Lio/sentry/android/core/m1;

    .line 30
    .line 31
    :try_start_0
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->l()Landroidx/lifecycle/m;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/i;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->a:Lio/sentry/android/core/m1;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/l;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lio/sentry/android/core/AppLifecycleIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 45
    .line 46
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 51
    .line 52
    const-string v1, "AppLifecycleIntegration installed."

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    new-array v2, v2, [Ljava/lang/Object;

    .line 56
    .line 57
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    const-string p1, "AppLifecycle"

    .line 61
    .line 62
    invoke-static {p1}, Lio/sentry/util/k;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->a:Lio/sentry/android/core/m1;

    .line 69
    .line 70
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 71
    .line 72
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 77
    .line 78
    const-string v2, "AppLifecycleIntegration failed to get Lifecycle and could not be installed."

    .line 79
    .line 80
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method

.method private synthetic e()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/AppLifecycleIntegration;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic g(Lio/sentry/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/android/core/AppLifecycleIntegration;->c(Lio/sentry/o0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->a:Lio/sentry/android/core/m1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->l()Landroidx/lifecycle/m;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/i;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Landroidx/lifecycle/i;->c(Landroidx/lifecycle/l;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    .line 29
    const-string v3, "AppLifecycleIntegration removed."

    .line 30
    .line 31
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->a:Lio/sentry/android/core/m1;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->a:Lio/sentry/android/core/m1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lio/sentry/android/core/internal/util/c;->b()Lio/sentry/android/core/internal/util/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/c;->a()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-direct {p0}, Lio/sentry/android/core/AppLifecycleIntegration;->h()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->c:Lio/sentry/android/core/o1;

    .line 21
    .line 22
    new-instance v1, Lio/sentry/android/core/m0;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lio/sentry/android/core/m0;-><init>(Lio/sentry/android/core/AppLifecycleIntegration;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lio/sentry/android/core/o1;->b(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public f(Lio/sentry/o0;Lio/sentry/s5;)V
    .locals 4

    .line 1
    const-string v0, "Hub is required"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    move-object v0, p2

    .line 11
    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 22
    .line 23
    iput-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 24
    .line 25
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 30
    .line 31
    iget-object v2, p0, Lio/sentry/android/core/AppLifecycleIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 32
    .line 33
    invoke-virtual {v2}, Lio/sentry/s5;->isEnableAutoSessionTracking()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "enableSessionTracking enabled: %s"

    .line 46
    .line 47
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 51
    .line 52
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v2, p0, Lio/sentry/android/core/AppLifecycleIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 57
    .line 58
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppLifecycleBreadcrumbs()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v3, "enableAppLifecycleBreadcrumbs enabled: %s"

    .line 71
    .line 72
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 76
    .line 77
    invoke-virtual {v0}, Lio/sentry/s5;->isEnableAutoSessionTracking()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_1

    .line 82
    .line 83
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 84
    .line 85
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppLifecycleBreadcrumbs()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    :cond_1
    :try_start_0
    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->i:Landroidx/lifecycle/ProcessLifecycleOwner$b;

    .line 92
    .line 93
    invoke-static {}, Lio/sentry/android/core/internal/util/c;->b()Lio/sentry/android/core/internal/util/c;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/c;->a()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    invoke-direct {p0, p1}, Lio/sentry/android/core/AppLifecycleIntegration;->c(Lio/sentry/o0;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration;->c:Lio/sentry/android/core/o1;

    .line 108
    .line 109
    new-instance v1, Lio/sentry/android/core/n0;

    .line 110
    .line 111
    invoke-direct {v1, p0, p1}, Lio/sentry/android/core/n0;-><init>(Lio/sentry/android/core/AppLifecycleIntegration;Lio/sentry/o0;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lio/sentry/android/core/o1;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 124
    .line 125
    const-string v1, "AppLifecycleIntegration could not be installed"

    .line 126
    .line 127
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catch_1
    move-exception p1

    .line 132
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    sget-object v0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 137
    .line 138
    const-string v1, "androidx.lifecycle is not available, AppLifecycleIntegration won\'t be installed"

    .line 139
    .line 140
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    :cond_3
    :goto_1
    return-void
.end method
