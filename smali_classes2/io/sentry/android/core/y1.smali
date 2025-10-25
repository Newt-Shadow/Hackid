.class public abstract Lio/sentry/android/core/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sput-wide v0, Lio/sentry/android/core/y1;->a:J

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic a(Lio/sentry/ILogger;Landroid/content/Context;Lio/sentry/q3$a;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/sentry/android/core/y1;->f(Lio/sentry/ILogger;Landroid/content/Context;Lio/sentry/q3$a;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/concurrent/atomic/AtomicBoolean;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/sentry/android/core/y1;->g(Ljava/util/concurrent/atomic/AtomicBoolean;Lio/sentry/u0;)V

    return-void
.end method

.method private static c(Lio/sentry/s5;ZZ)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lio/sentry/s5;->getIntegrations()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lio/sentry/e1;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    instance-of v4, v3, Lio/sentry/android/fragment/FragmentLifecycleIntegration;

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    if-eqz p2, :cond_0

    .line 41
    .line 42
    instance-of v4, v3, Lio/sentry/android/timber/SentryTimberIntegration;

    .line 43
    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/4 p2, 0x0

    .line 55
    const/4 v2, 0x1

    .line 56
    if-le p1, v2, :cond_3

    .line 57
    .line 58
    move p1, p2

    .line 59
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    sub-int/2addr v3, v2

    .line 64
    if-ge p1, v3, :cond_3

    .line 65
    .line 66
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Lio/sentry/e1;

    .line 71
    .line 72
    invoke-virtual {p0}, Lio/sentry/s5;->getIntegrations()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    add-int/lit8 p1, p1, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-le p1, v2, :cond_4

    .line 87
    .line 88
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    sub-int/2addr p1, v2

    .line 93
    if-ge p2, p1, :cond_4

    .line 94
    .line 95
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lio/sentry/e1;

    .line 100
    .line 101
    invoke-virtual {p0}, Lio/sentry/s5;->getIntegrations()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    add-int/lit8 p2, p2, 0x1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    return-void
.end method

.method public static declared-synchronized d(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/q3$a;)V
    .locals 3

    .line 1
    const-class v0, Lio/sentry/android/core/y1;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-class v1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 5
    .line 6
    invoke-static {v1}, Lio/sentry/n2;->a(Ljava/lang/Class;)Lio/sentry/n2;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lio/sentry/android/core/w1;

    .line 11
    .line 12
    invoke-direct {v2, p1, p0, p2}, Lio/sentry/android/core/w1;-><init>(Lio/sentry/ILogger;Landroid/content/Context;Lio/sentry/q3$a;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    invoke-static {v1, v2, p0}, Lio/sentry/q3;->q(Lio/sentry/n2;Lio/sentry/q3$a;Z)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {}, Lio/sentry/android/core/x0;->u()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-interface {p0}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Lio/sentry/s5;->isEnableAutoSessionTracking()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-direct {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lio/sentry/android/core/x1;

    .line 46
    .line 47
    invoke-direct {v1, p2}, Lio/sentry/android/core/x1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p0, v1}, Lio/sentry/o0;->y(Lio/sentry/e3;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_0

    .line 58
    .line 59
    invoke-interface {p0}, Lio/sentry/o0;->f()V

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-interface {p0}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lio/sentry/s5;->getReplayController()Lio/sentry/y2;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-interface {p0}, Lio/sentry/y2;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    :cond_1
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    :try_start_1
    sget-object p2, Lio/sentry/j5;->FATAL:Lio/sentry/j5;

    .line 79
    .line 80
    const-string v1, "Fatal error during SentryAndroid.init(...)"

    .line 81
    .line 82
    invoke-interface {p1, p2, v1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    new-instance p1, Ljava/lang/RuntimeException;

    .line 86
    .line 87
    const-string p2, "Failed to initialize Sentry\'s SDK"

    .line 88
    .line 89
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :catch_1
    move-exception p0

    .line 94
    sget-object p2, Lio/sentry/j5;->FATAL:Lio/sentry/j5;

    .line 95
    .line 96
    const-string v1, "Fatal error during SentryAndroid.init(...)"

    .line 97
    .line 98
    invoke-interface {p1, p2, v1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    new-instance p1, Ljava/lang/RuntimeException;

    .line 102
    .line 103
    const-string p2, "Failed to initialize Sentry\'s SDK"

    .line 104
    .line 105
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    throw p1

    .line 109
    :catch_2
    move-exception p0

    .line 110
    sget-object p2, Lio/sentry/j5;->FATAL:Lio/sentry/j5;

    .line 111
    .line 112
    const-string v1, "Fatal error during SentryAndroid.init(...)"

    .line 113
    .line 114
    invoke-interface {p1, p2, v1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    new-instance p1, Ljava/lang/RuntimeException;

    .line 118
    .line 119
    const-string p2, "Failed to initialize Sentry\'s SDK"

    .line 120
    .line 121
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    throw p1

    .line 125
    :catch_3
    move-exception p0

    .line 126
    sget-object p2, Lio/sentry/j5;->FATAL:Lio/sentry/j5;

    .line 127
    .line 128
    const-string v1, "Fatal error during SentryAndroid.init(...)"

    .line 129
    .line 130
    invoke-interface {p1, p2, v1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    new-instance p1, Ljava/lang/RuntimeException;

    .line 134
    .line 135
    const-string p2, "Failed to initialize Sentry\'s SDK"

    .line 136
    .line 137
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :goto_0
    monitor-exit v0

    .line 142
    throw p0
.end method

.method public static e(Landroid/content/Context;Lio/sentry/q3$a;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/android/core/u;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/android/core/u;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0, p1}, Lio/sentry/android/core/y1;->d(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/q3$a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static synthetic f(Lio/sentry/ILogger;Landroid/content/Context;Lio/sentry/q3$a;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v8, p1

    .line 3
    .line 4
    move-object/from16 v9, p3

    .line 5
    .line 6
    new-instance v1, Lio/sentry/android/core/n1;

    .line 7
    .line 8
    invoke-direct {v1}, Lio/sentry/android/core/n1;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "timber.log.Timber"

    .line 12
    .line 13
    invoke-virtual {v1, v2, v9}, Lio/sentry/android/core/n1;->b(Ljava/lang/String;Lio/sentry/s5;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const-string v3, "androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks"

    .line 18
    .line 19
    invoke-virtual {v1, v3, v9}, Lio/sentry/android/core/n1;->b(Ljava/lang/String;Lio/sentry/s5;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    const/4 v5, 0x0

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    const-string v3, "io.sentry.android.fragment.FragmentLifecycleIntegration"

    .line 28
    .line 29
    invoke-virtual {v1, v3, v9}, Lio/sentry/android/core/n1;->b(Ljava/lang/String;Lio/sentry/s5;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    move v10, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v10, v5

    .line 38
    :goto_0
    if-eqz v2, :cond_1

    .line 39
    .line 40
    const-string v2, "io.sentry.android.timber.SentryTimberIntegration"

    .line 41
    .line 42
    invoke-virtual {v1, v2, v9}, Lio/sentry/android/core/n1;->b(Ljava/lang/String;Lio/sentry/s5;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    move v11, v4

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v11, v5

    .line 51
    :goto_1
    const-string v2, "io.sentry.android.replay.ReplayIntegration"

    .line 52
    .line 53
    invoke-virtual {v1, v2, v9}, Lio/sentry/android/core/n1;->b(Ljava/lang/String;Lio/sentry/s5;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    new-instance v12, Lio/sentry/android/core/p0;

    .line 58
    .line 59
    invoke-direct {v12, p0}, Lio/sentry/android/core/p0;-><init>(Lio/sentry/ILogger;)V

    .line 60
    .line 61
    .line 62
    new-instance v13, Lio/sentry/android/core/n1;

    .line 63
    .line 64
    invoke-direct {v13}, Lio/sentry/android/core/n1;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v14, Lio/sentry/android/core/h;

    .line 68
    .line 69
    invoke-direct {v14, v13, v9}, Lio/sentry/android/core/h;-><init>(Lio/sentry/android/core/n1;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v9, v8, p0, v12}, Lio/sentry/android/core/z;->k(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;)V

    .line 73
    .line 74
    .line 75
    move-object/from16 v0, p1

    .line 76
    .line 77
    move-object/from16 v1, p3

    .line 78
    .line 79
    move-object v2, v12

    .line 80
    move-object v3, v13

    .line 81
    move-object v4, v14

    .line 82
    move v5, v10

    .line 83
    move v6, v11

    .line 84
    invoke-static/range {v0 .. v7}, Lio/sentry/android/core/z;->g(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/p0;Lio/sentry/android/core/n1;Lio/sentry/android/core/h;ZZZ)V

    .line 85
    .line 86
    .line 87
    :try_start_0
    invoke-interface/range {p2 .. p3}, Lio/sentry/q3$a;->a(Lio/sentry/s5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    move-object v1, v0

    .line 93
    invoke-virtual/range {p3 .. p3}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 98
    .line 99
    const-string v3, "Error in the \'OptionsConfiguration.configure\' callback."

    .line 100
    .line 101
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    :goto_2
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual/range {p3 .. p3}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_2

    .line 113
    .line 114
    invoke-virtual {v12}, Lio/sentry/android/core/p0;->d()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const/16 v2, 0x18

    .line 119
    .line 120
    if-lt v1, v2, :cond_2

    .line 121
    .line 122
    invoke-virtual {v0}, Lio/sentry/android/core/performance/g;->j()Lio/sentry/android/core/performance/h;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lio/sentry/android/core/performance/h;->q()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_2

    .line 131
    .line 132
    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    .line 133
    .line 134
    .line 135
    move-result-wide v2

    .line 136
    invoke-virtual {v1, v2, v3}, Lio/sentry/android/core/performance/h;->x(J)V

    .line 137
    .line 138
    .line 139
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    instance-of v1, v1, Landroid/app/Application;

    .line 144
    .line 145
    if-eqz v1, :cond_3

    .line 146
    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Landroid/app/Application;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/g;->y(Landroid/app/Application;)V

    .line 154
    .line 155
    .line 156
    :cond_3
    invoke-virtual {v0}, Lio/sentry/android/core/performance/g;->q()Lio/sentry/android/core/performance/h;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lio/sentry/android/core/performance/h;->q()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_4

    .line 165
    .line 166
    sget-wide v1, Lio/sentry/android/core/y1;->a:J

    .line 167
    .line 168
    invoke-virtual {v0, v1, v2}, Lio/sentry/android/core/performance/h;->x(J)V

    .line 169
    .line 170
    .line 171
    :cond_4
    invoke-static {v9, v8, v12, v13, v14}, Lio/sentry/android/core/z;->f(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/p0;Lio/sentry/android/core/n1;Lio/sentry/android/core/h;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v9, v10, v11}, Lio/sentry/android/core/y1;->c(Lio/sentry/s5;ZZ)V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method private static synthetic g(Ljava/util/concurrent/atomic/AtomicBoolean;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/sentry/u0;->k()Lio/sentry/f6;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lio/sentry/f6;->k()Ljava/util/Date;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
