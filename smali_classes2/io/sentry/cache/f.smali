.class public Lio/sentry/cache/f;
.super Lio/sentry/cache/c;
.source "SourceFile"

# interfaces
.implements Lio/sentry/cache/g;


# instance fields
.field private final f:Ljava/util/concurrent/CountDownLatch;

.field private final g:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lio/sentry/s5;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/cache/c;-><init>(Lio/sentry/s5;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lio/sentry/cache/f;->g:Ljava/util/Map;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lio/sentry/cache/f;->f:Ljava/util/concurrent/CountDownLatch;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic F(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/sentry/cache/f;->N(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private G()[Ljava/io/File;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/sentry/cache/c;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/sentry/cache/c;->c:Ljava/io/File;

    .line 8
    .line 9
    new-instance v1, Lio/sentry/cache/e;

    .line 10
    .line 11
    invoke-direct {v1}, Lio/sentry/cache/e;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    new-array v0, v0, [Ljava/io/File;

    .line 23
    .line 24
    return-object v0
.end method

.method public static I(Lio/sentry/s5;)Lio/sentry/cache/g;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lio/sentry/s5;->getMaxCacheItems()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object v0, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v2, "cacheDirPath is null, returning NoOpEnvelopeCache"

    .line 21
    .line 22
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lio/sentry/transport/s;->d()Lio/sentry/transport/s;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    new-instance v2, Lio/sentry/cache/f;

    .line 31
    .line 32
    invoke-direct {v2, p0, v0, v1}, Lio/sentry/cache/f;-><init>(Lio/sentry/s5;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    return-object v2
.end method

.method public static K(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "session.json"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private declared-synchronized L(Lio/sentry/a4;)Ljava/io/File;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/f;->g:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/cache/f;->g:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ".envelope"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lio/sentry/cache/f;->g:Ljava/util/Map;

    .line 41
    .line 42
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-object p1, v0

    .line 46
    :goto_0
    new-instance v0, Ljava/io/File;

    .line 47
    .line 48
    iget-object v1, p0, Lio/sentry/cache/c;->c:Ljava/io/File;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return-object v0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    monitor-exit p0

    .line 61
    throw p1
.end method

.method public static M(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "previous_session.json"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private static synthetic N(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string p0, ".envelope"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private O(Lio/sentry/c0;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lio/sentry/util/j;->g(Lio/sentry/c0;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lio/sentry/hints/a;

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Lio/sentry/cache/c;->c:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lio/sentry/cache/f;->M(Ljava/lang/String;)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    iget-object v1, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 27
    .line 28
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget-object v3, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 33
    .line 34
    const-string v4, "Previous session is not ended, we\'d need to end it."

    .line 35
    .line 36
    new-array v5, v2, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-interface {v1, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 42
    .line 43
    new-instance v4, Ljava/io/InputStreamReader;

    .line 44
    .line 45
    new-instance v5, Ljava/io/FileInputStream;

    .line 46
    .line 47
    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 48
    .line 49
    .line 50
    sget-object v6, Lio/sentry/cache/c;->e:Ljava/nio/charset/Charset;

    .line 51
    .line 52
    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 56
    .line 57
    .line 58
    :try_start_1
    iget-object v4, p0, Lio/sentry/cache/c;->b:Lio/sentry/util/m;

    .line 59
    .line 60
    invoke-virtual {v4}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Lio/sentry/y0;

    .line 65
    .line 66
    const-class v5, Lio/sentry/f6;

    .line 67
    .line 68
    invoke-interface {v4, v1, v5}, Lio/sentry/y0;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Lio/sentry/f6;

    .line 73
    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    check-cast p1, Lio/sentry/hints/a;

    .line 77
    .line 78
    invoke-interface {p1}, Lio/sentry/hints/a;->c()Ljava/lang/Long;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const/4 v6, 0x0

    .line 83
    if-eqz v5, :cond_1

    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 86
    .line 87
    .line 88
    move-result-wide v7

    .line 89
    invoke-static {v7, v8}, Lio/sentry/j;->d(J)Ljava/util/Date;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v4}, Lio/sentry/f6;->k()Ljava/util/Date;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    if-eqz v7, :cond_0

    .line 98
    .line 99
    invoke-virtual {v5, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eqz v7, :cond_2

    .line 104
    .line 105
    :cond_0
    iget-object p1, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 106
    .line 107
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string v0, "Abnormal exit happened before previous session start, not ending the session."

    .line 112
    .line 113
    new-array v2, v2, [Ljava/lang/Object;

    .line 114
    .line 115
    invoke-interface {p1, v3, v0, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .line 117
    .line 118
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_1
    move-object v5, v6

    .line 123
    :cond_2
    :try_start_3
    invoke-interface {p1}, Lio/sentry/hints/a;->g()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    sget-object v2, Lio/sentry/f6$b;->Abnormal:Lio/sentry/f6$b;

    .line 128
    .line 129
    const/4 v3, 0x1

    .line 130
    invoke-virtual {v4, v2, v6, v3, p1}, Lio/sentry/f6;->q(Lio/sentry/f6$b;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v5}, Lio/sentry/f6;->d(Ljava/util/Date;)V

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, v0, v4}, Lio/sentry/cache/f;->U(Ljava/io/File;Lio/sentry/f6;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    .line 138
    .line 139
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :catchall_0
    move-exception p1

    .line 144
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :catchall_1
    move-exception v0

    .line 149
    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 153
    :catchall_2
    move-exception p1

    .line 154
    iget-object v0, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 155
    .line 156
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 161
    .line 162
    const-string v2, "Error processing previous session."

    .line 163
    .line 164
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_4
    iget-object p1, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 169
    .line 170
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 175
    .line 176
    const-string v1, "No previous session file to end."

    .line 177
    .line 178
    new-array v2, v2, [Ljava/lang/Object;

    .line 179
    .line 180
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :cond_5
    :goto_1
    return-void
.end method

.method private Q(Ljava/io/File;Lio/sentry/a4;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lio/sentry/a4;->c()Ljava/lang/Iterable;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Lio/sentry/x4;

    .line 24
    .line 25
    sget-object v0, Lio/sentry/i5;->Session:Lio/sentry/i5;

    .line 26
    .line 27
    invoke-virtual {p2}, Lio/sentry/x4;->G()Lio/sentry/y4;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lio/sentry/y4;->b()Lio/sentry/i5;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 42
    .line 43
    new-instance v1, Ljava/io/InputStreamReader;

    .line 44
    .line 45
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 46
    .line 47
    invoke-virtual {p2}, Lio/sentry/x4;->E()[B

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 52
    .line 53
    .line 54
    sget-object v3, Lio/sentry/cache/c;->e:Ljava/nio/charset/Charset;

    .line 55
    .line 56
    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 60
    .line 61
    .line 62
    :try_start_1
    iget-object v1, p0, Lio/sentry/cache/c;->b:Lio/sentry/util/m;

    .line 63
    .line 64
    invoke-virtual {v1}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lio/sentry/y0;

    .line 69
    .line 70
    const-class v2, Lio/sentry/f6;

    .line 71
    .line 72
    invoke-interface {v1, v0, v2}, Lio/sentry/y0;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lio/sentry/f6;

    .line 77
    .line 78
    if-nez v1, :cond_0

    .line 79
    .line 80
    iget-object p1, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 81
    .line 82
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 87
    .line 88
    const-string v2, "Item of type %s returned null by the parser."

    .line 89
    .line 90
    const/4 v3, 0x1

    .line 91
    new-array v3, v3, [Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {p2}, Lio/sentry/x4;->G()Lio/sentry/y4;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p2}, Lio/sentry/y4;->b()Lio/sentry/i5;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    const/4 v4, 0x0

    .line 102
    aput-object p2, v3, v4

    .line 103
    .line 104
    invoke-interface {p1, v1, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0, p1, v1}, Lio/sentry/cache/f;->U(Ljava/io/File;Lio/sentry/f6;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    .line 111
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catchall_0
    move-exception p1

    .line 116
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catchall_1
    move-exception p2

    .line 121
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    :goto_1
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 125
    :catchall_2
    move-exception p1

    .line 126
    iget-object p2, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 127
    .line 128
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 133
    .line 134
    const-string v1, "Item failed to process."

    .line 135
    .line 136
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_1
    iget-object p1, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 141
    .line 142
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    sget-object v0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 147
    .line 148
    invoke-virtual {p2}, Lio/sentry/x4;->G()Lio/sentry/y4;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p2}, Lio/sentry/y4;->b()Lio/sentry/i5;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    const-string v1, "Current envelope has a different envelope type %s"

    .line 161
    .line 162
    invoke-interface {p1, v0, v1, p2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_2
    iget-object p2, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 167
    .line 168
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    sget-object v0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    const-string v1, "Current envelope %s is empty"

    .line 183
    .line 184
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :goto_2
    return-void
.end method

.method private S()V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "last_crash"

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 17
    .line 18
    .line 19
    :try_start_1
    invoke-static {}, Lio/sentry/j;->c()Ljava/util/Date;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lio/sentry/j;->g(Ljava/util/Date;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v2, Lio/sentry/cache/c;->e:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_1
    move-exception v1

    .line 49
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 53
    :catchall_2
    move-exception v0

    .line 54
    iget-object v1, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 55
    .line 56
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 61
    .line 62
    const-string v3, "Error writing the crash marker file to the disk"

    .line 63
    .line 64
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :goto_1
    return-void
.end method

.method private T(Ljava/io/File;Lio/sentry/a4;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "Overwriting envelope to offline storage: %s"

    .line 24
    .line 25
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 35
    .line 36
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "Failed to delete: %s"

    .line 51
    .line 52
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 58
    .line 59
    .line 60
    :try_start_1
    iget-object v1, p0, Lio/sentry/cache/c;->b:Lio/sentry/util/m;

    .line 61
    .line 62
    invoke-virtual {v1}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lio/sentry/y0;

    .line 67
    .line 68
    invoke-interface {v1, p2, v0}, Lio/sentry/y0;->b(Lio/sentry/a4;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception p2

    .line 76
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_1
    move-exception v0

    .line 81
    :try_start_4
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 85
    :catchall_2
    move-exception p2

    .line 86
    iget-object v0, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 87
    .line 88
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string v2, "Error writing Envelope %s to offline storage"

    .line 103
    .line 104
    invoke-interface {v0, v1, p2, v2, p1}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :goto_1
    return-void
.end method

.method private U(Ljava/io/File;Lio/sentry/f6;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 14
    .line 15
    invoke-virtual {p2}, Lio/sentry/f6;->j()Ljava/util/UUID;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "Overwriting session to offline storage: %s"

    .line 24
    .line 25
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 35
    .line 36
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "Failed to delete: %s"

    .line 51
    .line 52
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 58
    .line 59
    .line 60
    :try_start_1
    new-instance p1, Ljava/io/BufferedWriter;

    .line 61
    .line 62
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 63
    .line 64
    sget-object v2, Lio/sentry/cache/c;->e:Ljava/nio/charset/Charset;

    .line 65
    .line 66
    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 70
    .line 71
    .line 72
    :try_start_2
    iget-object v1, p0, Lio/sentry/cache/c;->b:Lio/sentry/util/m;

    .line 73
    .line 74
    invoke-virtual {v1}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lio/sentry/y0;

    .line 79
    .line 80
    invoke-interface {v1, p2, p1}, Lio/sentry/y0;->a(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .line 82
    .line 83
    :try_start_3
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 84
    .line 85
    .line 86
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :catchall_0
    move-exception v1

    .line 91
    :try_start_5
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catchall_1
    move-exception p1

    .line 96
    :try_start_6
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    :goto_0
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 100
    :catchall_2
    move-exception p1

    .line 101
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catchall_3
    move-exception v0

    .line 106
    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 110
    :catchall_4
    move-exception p1

    .line 111
    iget-object v0, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 112
    .line 113
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 118
    .line 119
    invoke-virtual {p2}, Lio/sentry/f6;->j()Ljava/util/UUID;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    const-string v2, "Error writing Session to offline storage: %s"

    .line 128
    .line 129
    invoke-interface {v0, v1, p1, v2, p2}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :goto_2
    return-void
.end method


# virtual methods
.method public J()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/cache/f;->f:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public R()Z
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/f;->f:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/sentry/s5;->getSessionFlushTimeoutMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return v0

    .line 16
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

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
    const-string v2, "Timed out waiting for previous session to flush."

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    new-array v4, v3, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return v3
.end method

.method public W(Lio/sentry/a4;Lio/sentry/c0;)V
    .locals 7

    .line 1
    const-string v0, "Envelope is required."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lio/sentry/cache/f;->G()[Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lio/sentry/cache/c;->B([Ljava/io/File;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/sentry/cache/c;->c:Ljava/io/File;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lio/sentry/cache/f;->K(Ljava/lang/String;)Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lio/sentry/cache/c;->c:Ljava/io/File;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lio/sentry/cache/f;->M(Ljava/lang/String;)Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-class v2, Lio/sentry/hints/l;

    .line 34
    .line 35
    invoke-static {p2, v2}, Lio/sentry/util/j;->h(Lio/sentry/c0;Ljava/lang/Class;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    iget-object v2, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 49
    .line 50
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    sget-object v4, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 55
    .line 56
    const-string v5, "Current envelope doesn\'t exist."

    .line 57
    .line 58
    new-array v6, v3, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-interface {v2, v4, v5, v6}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    const-class v2, Lio/sentry/hints/a;

    .line 64
    .line 65
    invoke-static {p2, v2}, Lio/sentry/util/j;->h(Lio/sentry/c0;Ljava/lang/Class;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-direct {p0, p2}, Lio/sentry/cache/f;->O(Lio/sentry/c0;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    const-class v2, Lio/sentry/hints/n;

    .line 75
    .line 76
    invoke-static {p2, v2}, Lio/sentry/util/j;->h(Lio/sentry/c0;Ljava/lang/Class;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_6

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    iget-object v2, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 89
    .line 90
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    sget-object v4, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 95
    .line 96
    const-string v5, "Current session is not ended, we\'d need to end it."

    .line 97
    .line 98
    new-array v6, v3, [Ljava/lang/Object;

    .line 99
    .line 100
    invoke-interface {v2, v4, v5, v6}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 104
    .line 105
    new-instance v4, Ljava/io/InputStreamReader;

    .line 106
    .line 107
    new-instance v5, Ljava/io/FileInputStream;

    .line 108
    .line 109
    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 110
    .line 111
    .line 112
    sget-object v6, Lio/sentry/cache/c;->e:Ljava/nio/charset/Charset;

    .line 113
    .line 114
    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 118
    .line 119
    .line 120
    :try_start_1
    iget-object v4, p0, Lio/sentry/cache/c;->b:Lio/sentry/util/m;

    .line 121
    .line 122
    invoke-virtual {v4}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    check-cast v4, Lio/sentry/y0;

    .line 127
    .line 128
    const-class v5, Lio/sentry/f6;

    .line 129
    .line 130
    invoke-interface {v4, v2, v5}, Lio/sentry/y0;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Lio/sentry/f6;

    .line 135
    .line 136
    if-eqz v4, :cond_2

    .line 137
    .line 138
    invoke-direct {p0, v1, v4}, Lio/sentry/cache/f;->U(Ljava/io/File;Lio/sentry/f6;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    .line 140
    .line 141
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :catchall_0
    move-exception v1

    .line 146
    :try_start_3
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :catchall_1
    move-exception v2

    .line 151
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    :goto_0
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 155
    :catchall_2
    move-exception v1

    .line 156
    iget-object v2, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 157
    .line 158
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    sget-object v4, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 163
    .line 164
    const-string v5, "Error processing session."

    .line 165
    .line 166
    invoke-interface {v2, v4, v5, v1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    :cond_3
    :goto_1
    invoke-direct {p0, v0, p1}, Lio/sentry/cache/f;->Q(Ljava/io/File;Lio/sentry/a4;)V

    .line 170
    .line 171
    .line 172
    new-instance v0, Ljava/io/File;

    .line 173
    .line 174
    iget-object v1, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 175
    .line 176
    invoke-virtual {v1}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const-string v2, ".sentry-native/last_crash"

    .line 181
    .line 182
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_5

    .line 190
    .line 191
    new-instance v1, Ljava/io/File;

    .line 192
    .line 193
    iget-object v2, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 194
    .line 195
    invoke-virtual {v2}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    const-string v4, "last_crash"

    .line 200
    .line 201
    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_5

    .line 209
    .line 210
    iget-object v0, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 211
    .line 212
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    sget-object v2, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 217
    .line 218
    const-string v4, "Crash marker file exists, crashedLastRun will return true."

    .line 219
    .line 220
    new-array v3, v3, [Ljava/lang/Object;

    .line 221
    .line 222
    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-nez v0, :cond_4

    .line 230
    .line 231
    iget-object v0, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 232
    .line 233
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    const-string v3, "Failed to delete the crash marker file. %s."

    .line 248
    .line 249
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    :cond_4
    const/4 v0, 0x1

    .line 253
    :cond_5
    invoke-static {}, Lio/sentry/x3;->a()Lio/sentry/x3;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v1, v0}, Lio/sentry/x3;->b(Z)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Lio/sentry/cache/f;->J()V

    .line 261
    .line 262
    .line 263
    :cond_6
    invoke-direct {p0, p1}, Lio/sentry/cache/f;->L(Lio/sentry/a4;)Ljava/io/File;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-eqz v1, :cond_7

    .line 272
    .line 273
    iget-object p1, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 274
    .line 275
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    const-string v1, "Not adding Envelope to offline storage because it already exists: %s"

    .line 290
    .line 291
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :cond_7
    iget-object v1, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 296
    .line 297
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    const-string v4, "Adding Envelope to offline storage: %s"

    .line 312
    .line 313
    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    invoke-direct {p0, v0, p1}, Lio/sentry/cache/f;->T(Ljava/io/File;Lio/sentry/a4;)V

    .line 317
    .line 318
    .line 319
    const-class p1, Lio/sentry/UncaughtExceptionHandlerIntegration$a;

    .line 320
    .line 321
    invoke-static {p2, p1}, Lio/sentry/util/j;->h(Lio/sentry/c0;Ljava/lang/Class;)Z

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    if-eqz p1, :cond_8

    .line 326
    .line 327
    invoke-direct {p0}, Lio/sentry/cache/f;->S()V

    .line 328
    .line 329
    .line 330
    :cond_8
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 9

    .line 1
    invoke-direct {p0}, Lio/sentry/cache/f;->G()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    array-length v2, v0

    .line 8
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    array-length v2, v0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_0

    .line 14
    .line 15
    aget-object v4, v0, v3

    .line 16
    .line 17
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    .line 18
    .line 19
    new-instance v6, Ljava/io/FileInputStream;

    .line 20
    .line 21
    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    :try_start_1
    iget-object v6, p0, Lio/sentry/cache/c;->b:Lio/sentry/util/m;

    .line 28
    .line 29
    invoke-virtual {v6}, Lio/sentry/util/m;->a()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Lio/sentry/y0;

    .line 34
    .line 35
    invoke-interface {v6, v5}, Lio/sentry/y0;->d(Ljava/io/InputStream;)Lio/sentry/a4;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :catchall_0
    move-exception v6

    .line 47
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_1
    move-exception v5

    .line 52
    :try_start_4
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    throw v6
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 56
    :catch_0
    move-exception v5

    .line 57
    iget-object v6, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 58
    .line 59
    invoke-virtual {v6}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    sget-object v7, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const-string v8, "Error while reading cached envelope from file %s"

    .line 74
    .line 75
    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-interface {v6, v7, v4, v5}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catch_1
    iget-object v5, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 84
    .line 85
    invoke-virtual {v5}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    sget-object v6, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    const-string v7, "Envelope file \'%s\' disappeared while converting all cached files to envelopes."

    .line 100
    .line 101
    invoke-interface {v5, v6, v7, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    return-object v0
.end method

.method public z(Lio/sentry/a4;)V
    .locals 4

    .line 1
    const-string v0, "Envelope is required."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lio/sentry/cache/f;->L(Lio/sentry/a4;)Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 17
    .line 18
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "Discarding envelope from cache: %s"

    .line 33
    .line 34
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 44
    .line 45
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v2, "Failed to delete envelope: %s"

    .line 60
    .line 61
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lio/sentry/cache/c;->a:Lio/sentry/s5;

    .line 66
    .line 67
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string v2, "Envelope was not cached: %s"

    .line 82
    .line 83
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_0
    return-void
.end method
