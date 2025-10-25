.class public final Lio/sentry/x;
.super Lio/sentry/p;
.source "SourceFile"

# interfaces
.implements Lio/sentry/n0;


# instance fields
.field private final e:Lio/sentry/o0;

.field private final f:Lio/sentry/y0;

.field private final g:Lio/sentry/ILogger;


# direct methods
.method public constructor <init>(Lio/sentry/o0;Lio/sentry/y0;Lio/sentry/ILogger;JI)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p3

    .line 4
    move-wide v3, p4

    .line 5
    move v5, p6

    .line 6
    invoke-direct/range {v0 .. v5}, Lio/sentry/p;-><init>(Lio/sentry/o0;Lio/sentry/ILogger;JI)V

    .line 7
    .line 8
    .line 9
    const-string p4, "Hub is required."

    .line 10
    .line 11
    invoke-static {p1, p4}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lio/sentry/o0;

    .line 16
    .line 17
    iput-object p1, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    .line 18
    .line 19
    const-string p1, "Serializer is required."

    .line 20
    .line 21
    invoke-static {p2, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lio/sentry/y0;

    .line 26
    .line 27
    iput-object p1, p0, Lio/sentry/x;->f:Lio/sentry/y0;

    .line 28
    .line 29
    const-string p1, "Logger is required."

    .line 30
    .line 31
    invoke-static {p3, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lio/sentry/ILogger;

    .line 36
    .line 37
    iput-object p1, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic g(Lio/sentry/x;Ljava/lang/Throwable;Ljava/io/File;Lio/sentry/hints/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/x;->k(Ljava/lang/Throwable;Ljava/io/File;Lio/sentry/hints/k;)V

    return-void
.end method

.method public static synthetic h(Lio/sentry/x;Lio/sentry/hints/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/x;->j(Lio/sentry/hints/i;)V

    return-void
.end method

.method public static synthetic i(Lio/sentry/x;Ljava/io/File;Lio/sentry/hints/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/x;->l(Ljava/io/File;Lio/sentry/hints/k;)V

    return-void
.end method

.method private synthetic j(Lio/sentry/hints/i;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/sentry/hints/i;->e()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 8
    .line 9
    sget-object v0, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    const-string v2, "Timed out waiting for envelope submission."

    .line 15
    .line 16
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private synthetic k(Ljava/lang/Throwable;Ljava/io/File;Lio/sentry/hints/k;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p3, v0}, Lio/sentry/hints/k;->d(Z)V

    .line 3
    .line 4
    .line 5
    iget-object p3, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 6
    .line 7
    sget-object v0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v1, "File \'%s\' won\'t retry."

    .line 18
    .line 19
    invoke-interface {p3, v0, p1, v1, p2}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private synthetic l(Ljava/io/File;Lio/sentry/hints/k;)V
    .locals 2

    .line 1
    invoke-interface {p2}, Lio/sentry/hints/k;->b()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    const-string p2, "after trying to capture it"

    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Lio/sentry/x;->m(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 13
    .line 14
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v1, "Deleted file %s."

    .line 25
    .line 26
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p2, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 31
    .line 32
    sget-object v0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v1, "File not deleted since retry was marked. %s."

    .line 43
    .line 44
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method private m(Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "Failed to delete \'%s\' %s"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 10
    .line 11
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    new-array v3, v3, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const/4 v5, 0x0

    .line 21
    aput-object v4, v3, v5

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    aput-object p2, v3, v4

    .line 25
    .line 26
    invoke-interface {v1, v2, v0, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    iget-object v2, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 32
    .line 33
    sget-object v3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {v2, v3, v1, v0, p1}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lio/sentry/c0;)V
    .locals 1

    .line 1
    const-string v0, "Path is required."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p2}, Lio/sentry/x;->f(Ljava/io/File;Lio/sentry/c0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, ".envelope"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic e(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/sentry/p;->e(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected f(Ljava/io/File;Lio/sentry/c0;)V
    .locals 9

    .line 1
    const-class v0, Lio/sentry/hints/k;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 10
    .line 11
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "\'%s\' is not a file."

    .line 22
    .line 23
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0, v1}, Lio/sentry/x;->c(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    iget-object p2, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 38
    .line 39
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v1, "File \'%s\' doesn\'t match extension expected."

    .line 50
    .line 51
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    iget-object p2, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 66
    .line 67
    sget-object v0, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v1, "File \'%s\' cannot be deleted so it will not be processed."

    .line 78
    .line 79
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    const/4 v1, 0x0

    .line 84
    const/4 v2, 0x1

    .line 85
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 86
    .line 87
    new-instance v4, Ljava/io/FileInputStream;

    .line 88
    .line 89
    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 93
    .line 94
    .line 95
    :try_start_1
    iget-object v4, p0, Lio/sentry/x;->f:Lio/sentry/y0;

    .line 96
    .line 97
    invoke-interface {v4, v3}, Lio/sentry/y0;->d(Ljava/io/InputStream;)Lio/sentry/a4;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    if-nez v4, :cond_3

    .line 102
    .line 103
    iget-object v4, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 104
    .line 105
    sget-object v5, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 106
    .line 107
    const-string v6, "Failed to deserialize cached envelope %s"

    .line 108
    .line 109
    new-array v7, v2, [Ljava/lang/Object;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    aput-object v8, v7, v1

    .line 116
    .line 117
    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    iget-object v5, p0, Lio/sentry/x;->e:Lio/sentry/o0;

    .line 122
    .line 123
    invoke-interface {v5, v4, p2}, Lio/sentry/o0;->u(Lio/sentry/a4;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 124
    .line 125
    .line 126
    :goto_0
    const-class v4, Lio/sentry/hints/i;

    .line 127
    .line 128
    iget-object v5, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 129
    .line 130
    new-instance v6, Lio/sentry/u;

    .line 131
    .line 132
    invoke-direct {v6, p0}, Lio/sentry/u;-><init>(Lio/sentry/x;)V

    .line 133
    .line 134
    .line 135
    invoke-static {p2, v4, v5, v6}, Lio/sentry/util/j;->q(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/j$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .line 137
    .line 138
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 142
    .line 143
    new-instance v2, Lio/sentry/v;

    .line 144
    .line 145
    invoke-direct {v2, p0, p1}, Lio/sentry/v;-><init>(Lio/sentry/x;Ljava/io/File;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :catchall_0
    move-exception v4

    .line 150
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :catchall_1
    move-exception v3

    .line 155
    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    :goto_1
    throw v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 159
    :catchall_2
    move-exception v3

    .line 160
    :try_start_5
    iget-object v4, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 161
    .line 162
    sget-object v5, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 163
    .line 164
    const-string v6, "Failed to capture cached envelope %s"

    .line 165
    .line 166
    new-array v2, v2, [Ljava/lang/Object;

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    aput-object v7, v2, v1

    .line 173
    .line 174
    invoke-interface {v4, v5, v3, v6, v2}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    iget-object v1, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 178
    .line 179
    new-instance v2, Lio/sentry/w;

    .line 180
    .line 181
    invoke-direct {v2, p0, v3, p1}, Lio/sentry/w;-><init>(Lio/sentry/x;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 182
    .line 183
    .line 184
    invoke-static {p2, v0, v1, v2}, Lio/sentry/util/j;->q(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/j$a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 188
    .line 189
    new-instance v2, Lio/sentry/v;

    .line 190
    .line 191
    invoke-direct {v2, p0, p1}, Lio/sentry/v;-><init>(Lio/sentry/x;Ljava/io/File;)V

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :catch_0
    move-exception v3

    .line 196
    :try_start_6
    iget-object v4, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 197
    .line 198
    sget-object v5, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 199
    .line 200
    const-string v6, "I/O on file \'%s\' failed."

    .line 201
    .line 202
    new-array v2, v2, [Ljava/lang/Object;

    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    aput-object v7, v2, v1

    .line 209
    .line 210
    invoke-interface {v4, v5, v3, v6, v2}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 211
    .line 212
    .line 213
    iget-object v1, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 214
    .line 215
    new-instance v2, Lio/sentry/v;

    .line 216
    .line 217
    invoke-direct {v2, p0, p1}, Lio/sentry/v;-><init>(Lio/sentry/x;Ljava/io/File;)V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :catch_1
    move-exception v3

    .line 222
    :try_start_7
    iget-object v4, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 223
    .line 224
    sget-object v5, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 225
    .line 226
    const-string v6, "File \'%s\' cannot be found."

    .line 227
    .line 228
    new-array v2, v2, [Ljava/lang/Object;

    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    aput-object v7, v2, v1

    .line 235
    .line 236
    invoke-interface {v4, v5, v3, v6, v2}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 237
    .line 238
    .line 239
    iget-object v1, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 240
    .line 241
    new-instance v2, Lio/sentry/v;

    .line 242
    .line 243
    invoke-direct {v2, p0, p1}, Lio/sentry/v;-><init>(Lio/sentry/x;Ljava/io/File;)V

    .line 244
    .line 245
    .line 246
    :goto_2
    invoke-static {p2, v0, v1, v2}, Lio/sentry/util/j;->q(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/j$a;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :catchall_3
    move-exception v1

    .line 251
    iget-object v2, p0, Lio/sentry/x;->g:Lio/sentry/ILogger;

    .line 252
    .line 253
    new-instance v3, Lio/sentry/v;

    .line 254
    .line 255
    invoke-direct {v3, p0, p1}, Lio/sentry/v;-><init>(Lio/sentry/x;Ljava/io/File;)V

    .line 256
    .line 257
    .line 258
    invoke-static {p2, v0, v2, v3}, Lio/sentry/util/j;->q(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/j$a;)V

    .line 259
    .line 260
    .line 261
    throw v1
.end method
