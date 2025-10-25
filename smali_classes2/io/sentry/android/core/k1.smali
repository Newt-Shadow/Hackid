.class public abstract Lio/sentry/android/core/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lio/sentry/f6$b;ZLjava/util/concurrent/atomic/AtomicReference;Lio/sentry/s5;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/sentry/android/core/k1;->j(Lio/sentry/f6$b;ZLjava/util/concurrent/atomic/AtomicReference;Lio/sentry/s5;Lio/sentry/u0;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/s5;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/android/core/k1;->h(Lio/sentry/s5;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/sentry/android/core/k1;->i(Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/u0;)V

    return-void
.end method

.method public static d([BZ)Lio/sentry/protocol/r;
    .locals 13

    .line 1
    invoke-static {}, Lio/sentry/k0;->h()Lio/sentry/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 11
    .line 12
    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    .line 14
    .line 15
    :try_start_1
    invoke-virtual {v1}, Lio/sentry/s5;->getSerializer()Lio/sentry/y0;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v1}, Lio/sentry/s5;->getEnvelopeReader()Lio/sentry/m0;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-interface {v4, v3}, Lio/sentry/m0;->a(Ljava/io/InputStream;)Lio/sentry/a4;

    .line 24
    .line 25
    .line 26
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 30
    .line 31
    .line 32
    return-object v2

    .line 33
    :cond_0
    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Lio/sentry/a4;->c()Ljava/lang/Iterable;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const/4 v7, 0x0

    .line 47
    move-object v8, v2

    .line 48
    move v9, v7

    .line 49
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    const/4 v11, 0x1

    .line 54
    if-eqz v10, :cond_4

    .line 55
    .line 56
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    check-cast v10, Lio/sentry/x4;

    .line 61
    .line 62
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {v10, p0}, Lio/sentry/x4;->F(Lio/sentry/y0;)Lio/sentry/z4;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    if-eqz v10, :cond_1

    .line 70
    .line 71
    invoke-virtual {v10}, Lio/sentry/z4;->x0()Z

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    if-eqz v12, :cond_2

    .line 76
    .line 77
    sget-object v8, Lio/sentry/f6$b;->Crashed:Lio/sentry/f6$b;

    .line 78
    .line 79
    :cond_2
    invoke-virtual {v10}, Lio/sentry/z4;->x0()Z

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    if-nez v12, :cond_3

    .line 84
    .line 85
    invoke-virtual {v10}, Lio/sentry/z4;->y0()Z

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    if-eqz v10, :cond_1

    .line 90
    .line 91
    :cond_3
    move v9, v11

    .line 92
    goto :goto_0

    .line 93
    :cond_4
    invoke-static {v0, v1, v8, v9}, Lio/sentry/android/core/k1;->l(Lio/sentry/o0;Lio/sentry/s5;Lio/sentry/f6$b;Z)Lio/sentry/f6;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    if-eqz v6, :cond_7

    .line 98
    .line 99
    invoke-static {p0, v6}, Lio/sentry/x4;->C(Lio/sentry/y0;Lio/sentry/f6;)Lio/sentry/x4;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-interface {v5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    invoke-interface {v0}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0}, Lio/sentry/s5;->getMainThreadChecker()Lio/sentry/util/thread/a;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-interface {p0}, Lio/sentry/util/thread/a;->a()Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-nez p0, :cond_6

    .line 121
    .line 122
    :cond_5
    move v7, v11

    .line 123
    :cond_6
    invoke-static {v1, v7}, Lio/sentry/android/core/k1;->f(Lio/sentry/s5;Z)V

    .line 124
    .line 125
    .line 126
    if-eqz p1, :cond_7

    .line 127
    .line 128
    invoke-interface {v0}, Lio/sentry/o0;->f()V

    .line 129
    .line 130
    .line 131
    :cond_7
    new-instance p0, Lio/sentry/a4;

    .line 132
    .line 133
    invoke-virtual {v4}, Lio/sentry/a4;->b()Lio/sentry/b4;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-direct {p0, p1, v5}, Lio/sentry/a4;-><init>(Lio/sentry/b4;Ljava/lang/Iterable;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, p0}, Lio/sentry/o0;->v(Lio/sentry/a4;)Lio/sentry/protocol/r;

    .line 141
    .line 142
    .line 143
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 145
    .line 146
    .line 147
    return-object p0

    .line 148
    :catchall_0
    move-exception p0

    .line 149
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :catchall_1
    move-exception p1

    .line 154
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    :goto_1
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 158
    :catchall_2
    move-exception p0

    .line 159
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 164
    .line 165
    const-string v1, "Failed to capture envelope"

    .line 166
    .line 167
    invoke-interface {p1, v0, v1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    return-object v2
.end method

.method private static e(Lio/sentry/s5;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-object v0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 13
    .line 14
    const-string v2, "Cache dir is not set, not deleting the current session."

    .line 15
    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lio/sentry/s5;->isEnableAutoSessionTracking()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 33
    .line 34
    const-string v2, "Session tracking is disabled, bailing from deleting current session file."

    .line 35
    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-static {v0}, Lio/sentry/cache/f;->K(Ljava/lang/String;)Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    sget-object v0, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 57
    .line 58
    const-string v2, "Failed to delete the current session file."

    .line 59
    .line 60
    new-array v1, v1, [Ljava/lang/Object;

    .line 61
    .line 62
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method private static f(Lio/sentry/s5;Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lio/sentry/android/core/h1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lio/sentry/android/core/h1;-><init>(Lio/sentry/s5;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
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
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sget-object v0, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 22
    .line 23
    const-string v1, "Submission of deletion of the current session file rejected."

    .line 24
    .line 25
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p0}, Lio/sentry/android/core/k1;->e(Lio/sentry/s5;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public static g()Lio/sentry/u0;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lio/sentry/k0;->h()Lio/sentry/k0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lio/sentry/android/core/j1;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Lio/sentry/android/core/j1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lio/sentry/k0;->y(Lio/sentry/e3;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lio/sentry/u0;

    .line 23
    .line 24
    return-object v0
.end method

.method private static synthetic h(Lio/sentry/s5;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/android/core/k1;->e(Lio/sentry/s5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic i(Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/sentry/u0;->r()Lio/sentry/u0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic j(Lio/sentry/f6$b;ZLjava/util/concurrent/atomic/AtomicReference;Lio/sentry/s5;Lio/sentry/u0;)V
    .locals 1

    .line 1
    invoke-interface {p4}, Lio/sentry/u0;->k()Lio/sentry/f6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    invoke-virtual {v0, p0, p3, p1, p3}, Lio/sentry/f6;->q(Lio/sentry/f6$b;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/sentry/f6;->l()Lio/sentry/f6$b;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget-object p1, Lio/sentry/f6$b;->Crashed:Lio/sentry/f6$b;

    .line 19
    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lio/sentry/f6;->c()V

    .line 23
    .line 24
    .line 25
    invoke-interface {p4}, Lio/sentry/u0;->A()V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p3}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sget-object p1, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    new-array p2, p2, [Ljava/lang/Object;

    .line 40
    .line 41
    const-string p3, "Session is null on updateSession"

    .line 42
    .line 43
    invoke-interface {p0, p1, p3, p2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    return-void
.end method

.method public static k(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/u0;)Ljava/util/Map;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lio/sentry/util/p;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lio/sentry/util/p;-><init>(Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1}, Lio/sentry/android/core/b1;->i(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/b1;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-virtual {v3, v4, v4}, Lio/sentry/android/core/b1;->a(ZZ)Lio/sentry/protocol/e;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-interface {p2}, Lio/sentry/u0;->y()Lio/sentry/protocol/c;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v5, v4}, Lio/sentry/protocol/c;->i(Lio/sentry/protocol/e;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Lio/sentry/u0;->y()Lio/sentry/protocol/c;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v3}, Lio/sentry/android/core/b1;->j()Lio/sentry/protocol/l;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v4, v3}, Lio/sentry/protocol/c;->k(Lio/sentry/protocol/l;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p2}, Lio/sentry/u0;->G()Lio/sentry/protocol/b0;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    new-instance v3, Lio/sentry/protocol/b0;

    .line 52
    .line 53
    invoke-direct {v3}, Lio/sentry/protocol/b0;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-interface {p2, v3}, Lio/sentry/u0;->n(Lio/sentry/protocol/b0;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {v3}, Lio/sentry/protocol/b0;->m()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-nez v4, :cond_2

    .line 64
    .line 65
    :try_start_1
    invoke-static {p0}, Lio/sentry/android/core/g1;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v3, v4}, Lio/sentry/protocol/b0;->q(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v3

    .line 74
    :try_start_2
    sget-object v4, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 75
    .line 76
    const-string v5, "Could not retrieve installation ID"

    .line 77
    .line 78
    invoke-interface {v1, v4, v5, v3}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    invoke-interface {p2}, Lio/sentry/u0;->y()Lio/sentry/protocol/c;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3}, Lio/sentry/protocol/c;->a()Lio/sentry/protocol/a;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-nez v3, :cond_3

    .line 90
    .line 91
    new-instance v3, Lio/sentry/protocol/a;

    .line 92
    .line 93
    invoke-direct {v3}, Lio/sentry/protocol/a;-><init>()V

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-static {p0}, Lio/sentry/android/core/x0;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v3, v4}, Lio/sentry/protocol/a;->n(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v4, p1}, Lio/sentry/android/core/performance/g;->k(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/h;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lio/sentry/android/core/performance/h;->s()Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_4

    .line 116
    .line 117
    invoke-virtual {v4}, Lio/sentry/android/core/performance/h;->m()Lio/sentry/y3;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-static {v4}, Lio/sentry/j;->n(Lio/sentry/y3;)Ljava/util/Date;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v3, v4}, Lio/sentry/protocol/a;->o(Ljava/util/Date;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    new-instance v4, Lio/sentry/android/core/p0;

    .line 129
    .line 130
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-direct {v4, v5}, Lio/sentry/android/core/p0;-><init>(Lio/sentry/ILogger;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    const/16 v6, 0x1000

    .line 142
    .line 143
    invoke-static {p0, v6, v5, v4}, Lio/sentry/android/core/x0;->q(Landroid/content/Context;ILio/sentry/ILogger;Lio/sentry/android/core/p0;)Landroid/content/pm/PackageInfo;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    if-eqz p0, :cond_5

    .line 148
    .line 149
    invoke-static {p0, v4, v3}, Lio/sentry/android/core/x0;->F(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/p0;Lio/sentry/protocol/a;)V

    .line 150
    .line 151
    .line 152
    :cond_5
    invoke-interface {p2}, Lio/sentry/u0;->y()Lio/sentry/protocol/c;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p0, v3}, Lio/sentry/protocol/c;->g(Lio/sentry/protocol/a;)V

    .line 157
    .line 158
    .line 159
    const-string p0, "user"

    .line 160
    .line 161
    invoke-interface {v2, p0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-interface {p2}, Lio/sentry/u0;->G()Lio/sentry/protocol/b0;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-interface {p0, v1, v3}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 170
    .line 171
    .line 172
    const-string p0, "contexts"

    .line 173
    .line 174
    invoke-interface {v2, p0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-interface {p2}, Lio/sentry/u0;->y()Lio/sentry/protocol/c;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-interface {p0, v1, v3}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 183
    .line 184
    .line 185
    const-string p0, "tags"

    .line 186
    .line 187
    invoke-interface {v2, p0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-interface {p2}, Lio/sentry/u0;->w()Ljava/util/Map;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-interface {p0, v1, v3}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 196
    .line 197
    .line 198
    const-string p0, "extras"

    .line 199
    .line 200
    invoke-interface {v2, p0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-interface {p2}, Lio/sentry/u0;->getExtras()Ljava/util/Map;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-interface {p0, v1, v3}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 209
    .line 210
    .line 211
    const-string p0, "fingerprint"

    .line 212
    .line 213
    invoke-interface {v2, p0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-interface {p2}, Lio/sentry/u0;->F()Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-interface {p0, v1, v3}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 222
    .line 223
    .line 224
    const-string p0, "level"

    .line 225
    .line 226
    invoke-interface {v2, p0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-interface {p2}, Lio/sentry/u0;->m()Lio/sentry/j5;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-interface {p0, v1, v3}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;

    .line 235
    .line 236
    .line 237
    const-string p0, "breadcrumbs"

    .line 238
    .line 239
    invoke-interface {v2, p0}, Lio/sentry/m2;->k(Ljava/lang/String;)Lio/sentry/m2;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    invoke-interface {p2}, Lio/sentry/u0;->l()Ljava/util/Queue;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-interface {p0, v1, p2}, Lio/sentry/m2;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    .line 249
    .line 250
    return-object v0

    .line 251
    :catchall_0
    move-exception p0

    .line 252
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    sget-object p2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 257
    .line 258
    const-string v0, "Could not serialize scope."

    .line 259
    .line 260
    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    .line 262
    .line 263
    new-instance p0, Ljava/util/HashMap;

    .line 264
    .line 265
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 266
    .line 267
    .line 268
    return-object p0
.end method

.method private static l(Lio/sentry/o0;Lio/sentry/s5;Lio/sentry/f6$b;Z)Lio/sentry/f6;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lio/sentry/android/core/i1;

    .line 7
    .line 8
    invoke-direct {v1, p2, p3, v0, p1}, Lio/sentry/android/core/i1;-><init>(Lio/sentry/f6$b;ZLjava/util/concurrent/atomic/AtomicReference;Lio/sentry/s5;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v1}, Lio/sentry/o0;->y(Lio/sentry/e3;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lio/sentry/f6;

    .line 19
    .line 20
    return-object p0
.end method
