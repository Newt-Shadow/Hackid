.class abstract Lio/sentry/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/p$a;
    }
.end annotation


# instance fields
.field private final a:Lio/sentry/o0;

.field private final b:Lio/sentry/ILogger;

.field private final c:J

.field private final d:Ljava/util/Queue;


# direct methods
.method constructor <init>(Lio/sentry/o0;Lio/sentry/ILogger;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/p;->a:Lio/sentry/o0;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/p;->b:Lio/sentry/ILogger;

    .line 7
    .line 8
    iput-wide p3, p0, Lio/sentry/p;->c:J

    .line 9
    .line 10
    new-instance p1, Lio/sentry/f;

    .line 11
    .line 12
    invoke-direct {p1, p5}, Lio/sentry/f;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lio/sentry/t6;->i(Ljava/util/Queue;)Lio/sentry/t6;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lio/sentry/p;->d:Ljava/util/Queue;

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic b(Lio/sentry/p;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/p;->d(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic d(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lio/sentry/p;->c(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method


# virtual methods
.method protected abstract c(Ljava/lang/String;)Z
.end method

.method public e(Ljava/io/File;)V
    .locals 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/p;->b:Lio/sentry/ILogger;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 4
    .line 5
    const-string v2, "Processing dir. %s"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    new-array v4, v3, [Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    const/4 v6, 0x0

    .line 15
    aput-object v5, v4, v6

    .line 16
    .line 17
    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lio/sentry/p;->b:Lio/sentry/ILogger;

    .line 27
    .line 28
    sget-object v1, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 29
    .line 30
    const-string v2, "Directory \'%s\' doesn\'t exist. No cached events to send."

    .line 31
    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    aput-object v4, v3, v6

    .line 39
    .line 40
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lio/sentry/p;->b:Lio/sentry/ILogger;

    .line 51
    .line 52
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 53
    .line 54
    const-string v2, "Cache dir %s is not a directory."

    .line 55
    .line 56
    new-array v3, v3, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    aput-object v4, v3, v6

    .line 63
    .line 64
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    iget-object v0, p0, Lio/sentry/p;->b:Lio/sentry/ILogger;

    .line 75
    .line 76
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 77
    .line 78
    const-string v2, "Cache dir %s is null."

    .line 79
    .line 80
    new-array v3, v3, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    aput-object v4, v3, v6

    .line 87
    .line 88
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    new-instance v2, Lio/sentry/o;

    .line 93
    .line 94
    invoke-direct {v2, p0}, Lio/sentry/o;-><init>(Lio/sentry/p;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iget-object v4, p0, Lio/sentry/p;->b:Lio/sentry/ILogger;

    .line 102
    .line 103
    const-string v5, "Processing %d items from cache dir %s"

    .line 104
    .line 105
    const/4 v7, 0x2

    .line 106
    new-array v7, v7, [Ljava/lang/Object;

    .line 107
    .line 108
    if-eqz v2, :cond_3

    .line 109
    .line 110
    array-length v2, v2

    .line 111
    goto :goto_0

    .line 112
    :cond_3
    move v2, v6

    .line 113
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    aput-object v2, v7, v6

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    aput-object v2, v7, v3

    .line 124
    .line 125
    invoke-interface {v4, v1, v5, v7}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    array-length v1, v0

    .line 129
    move v2, v6

    .line 130
    :goto_1
    if-ge v2, v1, :cond_7

    .line 131
    .line 132
    aget-object v4, v0, v2

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-nez v5, :cond_4

    .line 139
    .line 140
    iget-object v5, p0, Lio/sentry/p;->b:Lio/sentry/ILogger;

    .line 141
    .line 142
    sget-object v7, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 143
    .line 144
    const-string v8, "File %s is not a File."

    .line 145
    .line 146
    new-array v9, v3, [Ljava/lang/Object;

    .line 147
    .line 148
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    aput-object v4, v9, v6

    .line 153
    .line 154
    invoke-interface {v5, v7, v8, v9}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    iget-object v5, p0, Lio/sentry/p;->d:Ljava/util/Queue;

    .line 163
    .line 164
    invoke-interface {v5, v11}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-eqz v5, :cond_5

    .line 169
    .line 170
    iget-object v4, p0, Lio/sentry/p;->b:Lio/sentry/ILogger;

    .line 171
    .line 172
    sget-object v5, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 173
    .line 174
    const-string v7, "File \'%s\' has already been processed so it will not be processed again."

    .line 175
    .line 176
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-interface {v4, v5, v7, v8}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_5
    iget-object v5, p0, Lio/sentry/p;->a:Lio/sentry/o0;

    .line 185
    .line 186
    invoke-interface {v5}, Lio/sentry/o0;->l()Lio/sentry/transport/z;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    if-eqz v5, :cond_6

    .line 191
    .line 192
    sget-object v7, Lio/sentry/i;->All:Lio/sentry/i;

    .line 193
    .line 194
    invoke-virtual {v5, v7}, Lio/sentry/transport/z;->j(Lio/sentry/i;)Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-eqz v5, :cond_6

    .line 199
    .line 200
    iget-object v0, p0, Lio/sentry/p;->b:Lio/sentry/ILogger;

    .line 201
    .line 202
    sget-object v1, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 203
    .line 204
    const-string v2, "DirectoryProcessor, rate limiting active."

    .line 205
    .line 206
    new-array v3, v6, [Ljava/lang/Object;

    .line 207
    .line 208
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :cond_6
    iget-object v5, p0, Lio/sentry/p;->b:Lio/sentry/ILogger;

    .line 213
    .line 214
    sget-object v7, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 215
    .line 216
    const-string v8, "Processing file: %s"

    .line 217
    .line 218
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    invoke-interface {v5, v7, v8, v9}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    new-instance v5, Lio/sentry/p$a;

    .line 226
    .line 227
    iget-wide v8, p0, Lio/sentry/p;->c:J

    .line 228
    .line 229
    iget-object v10, p0, Lio/sentry/p;->b:Lio/sentry/ILogger;

    .line 230
    .line 231
    iget-object v12, p0, Lio/sentry/p;->d:Ljava/util/Queue;

    .line 232
    .line 233
    move-object v7, v5

    .line 234
    invoke-direct/range {v7 .. v12}, Lio/sentry/p$a;-><init>(JLio/sentry/ILogger;Ljava/lang/String;Ljava/util/Queue;)V

    .line 235
    .line 236
    .line 237
    invoke-static {v5}, Lio/sentry/util/j;->e(Ljava/lang/Object;)Lio/sentry/c0;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-virtual {p0, v4, v5}, Lio/sentry/p;->f(Ljava/io/File;Lio/sentry/c0;)V

    .line 242
    .line 243
    .line 244
    const-wide/16 v4, 0x64

    .line 245
    .line 246
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .line 248
    .line 249
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 250
    .line 251
    goto :goto_1

    .line 252
    :catchall_0
    move-exception v0

    .line 253
    iget-object v1, p0, Lio/sentry/p;->b:Lio/sentry/ILogger;

    .line 254
    .line 255
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 256
    .line 257
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    const-string v3, "Failed processing \'%s\'"

    .line 266
    .line 267
    invoke-interface {v1, v2, v0, v3, p1}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    :cond_7
    return-void
.end method

.method protected abstract f(Ljava/io/File;Lio/sentry/c0;)V
.end method
