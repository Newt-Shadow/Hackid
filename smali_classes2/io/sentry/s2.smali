.class final Lio/sentry/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final c:Ljava/nio/charset/Charset;


# instance fields
.field private final a:Lio/sentry/s5;

.field private final b:Lio/sentry/o0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/sentry/s2;->c:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Lio/sentry/s5;Lio/sentry/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/s2;->b:Lio/sentry/o0;

    .line 7
    .line 8
    return-void
.end method

.method private a(Ljava/io/File;)Ljava/util/Date;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 2
    .line 3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 4
    .line 5
    new-instance v2, Ljava/io/FileInputStream;

    .line 6
    .line 7
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lio/sentry/s2;->c:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-direct {v1, v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v1, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 23
    .line 24
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 29
    .line 30
    const-string v3, "Crash marker file has %s timestamp."

    .line 31
    .line 32
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lio/sentry/j;->e(Ljava/lang/String;)Ljava/util/Date;

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_1
    move-exception v0

    .line 53
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    iget-object v0, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 59
    .line 60
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    new-array v2, v2, [Ljava/lang/Object;

    .line 68
    .line 69
    const-string v3, "Error converting the crash timestamp."

    .line 70
    .line 71
    invoke-interface {v0, v1, p1, v3, v2}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-exception p1

    .line 76
    iget-object v0, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 77
    .line 78
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 83
    .line 84
    const-string v2, "Error reading the crash marker file."

    .line 85
    .line 86
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :goto_1
    const/4 p1, 0x0

    .line 90
    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v2, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 17
    .line 18
    const-string v3, "Cache dir is not set, not finalizing the previous session."

    .line 19
    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v2, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 27
    .line 28
    invoke-virtual {v2}, Lio/sentry/s5;->isEnableAutoSessionTracking()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 35
    .line 36
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 41
    .line 42
    const-string v3, "Session tracking is disabled, bailing from previous session finalizer."

    .line 43
    .line 44
    new-array v1, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-object v2, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 51
    .line 52
    invoke-virtual {v2}, Lio/sentry/s5;->getEnvelopeDiskCache()Lio/sentry/cache/g;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    instance-of v3, v2, Lio/sentry/cache/f;

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    check-cast v2, Lio/sentry/cache/f;

    .line 61
    .line 62
    invoke-virtual {v2}, Lio/sentry/cache/f;->R()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 69
    .line 70
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sget-object v2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 75
    .line 76
    const-string v3, "Timed out waiting to flush previous session to its own file in session finalizer."

    .line 77
    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    invoke-static {v0}, Lio/sentry/cache/f;->M(Ljava/lang/String;)Ljava/io/File;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v2, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 89
    .line 90
    invoke-virtual {v2}, Lio/sentry/s5;->getSerializer()Lio/sentry/y0;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_7

    .line 99
    .line 100
    iget-object v3, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 101
    .line 102
    invoke-virtual {v3}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    sget-object v4, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 107
    .line 108
    const-string v5, "Current session is not ended, we\'d need to end it."

    .line 109
    .line 110
    new-array v6, v1, [Ljava/lang/Object;

    .line 111
    .line 112
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 116
    .line 117
    new-instance v4, Ljava/io/InputStreamReader;

    .line 118
    .line 119
    new-instance v5, Ljava/io/FileInputStream;

    .line 120
    .line 121
    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 122
    .line 123
    .line 124
    sget-object v6, Lio/sentry/s2;->c:Ljava/nio/charset/Charset;

    .line 125
    .line 126
    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 130
    .line 131
    .line 132
    :try_start_1
    const-class v4, Lio/sentry/f6;

    .line 133
    .line 134
    invoke-interface {v2, v3, v4}, Lio/sentry/y0;->c(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Lio/sentry/f6;

    .line 139
    .line 140
    const/4 v5, 0x1

    .line 141
    if-nez v4, :cond_3

    .line 142
    .line 143
    iget-object v2, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 144
    .line 145
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    sget-object v4, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 150
    .line 151
    const-string v6, "Stream from path %s resulted in a null envelope."

    .line 152
    .line 153
    new-array v5, v5, [Ljava/lang/Object;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    aput-object v7, v5, v1

    .line 160
    .line 161
    invoke-interface {v2, v4, v6, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_3
    new-instance v6, Ljava/io/File;

    .line 166
    .line 167
    iget-object v7, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 168
    .line 169
    invoke-virtual {v7}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    const-string v8, ".sentry-native/last_crash"

    .line 174
    .line 175
    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    const/4 v8, 0x0

    .line 183
    if-eqz v7, :cond_5

    .line 184
    .line 185
    iget-object v7, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 186
    .line 187
    invoke-virtual {v7}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    sget-object v9, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 192
    .line 193
    const-string v10, "Crash marker file exists, last Session is gonna be Crashed."

    .line 194
    .line 195
    new-array v11, v1, [Ljava/lang/Object;

    .line 196
    .line 197
    invoke-interface {v7, v9, v10, v11}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    invoke-direct {p0, v6}, Lio/sentry/s2;->a(Ljava/io/File;)Ljava/util/Date;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 205
    .line 206
    .line 207
    move-result v9

    .line 208
    if-nez v9, :cond_4

    .line 209
    .line 210
    iget-object v9, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 211
    .line 212
    invoke-virtual {v9}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    sget-object v10, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 217
    .line 218
    const-string v11, "Failed to delete the crash marker file. %s."

    .line 219
    .line 220
    new-array v12, v5, [Ljava/lang/Object;

    .line 221
    .line 222
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    aput-object v6, v12, v1

    .line 227
    .line 228
    invoke-interface {v9, v10, v11, v12}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    :cond_4
    sget-object v6, Lio/sentry/f6$b;->Crashed:Lio/sentry/f6$b;

    .line 232
    .line 233
    invoke-virtual {v4, v6, v8, v5}, Lio/sentry/f6;->p(Lio/sentry/f6$b;Ljava/lang/String;Z)Z

    .line 234
    .line 235
    .line 236
    move-object v8, v7

    .line 237
    :cond_5
    invoke-virtual {v4}, Lio/sentry/f6;->f()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    if-nez v5, :cond_6

    .line 242
    .line 243
    invoke-virtual {v4, v8}, Lio/sentry/f6;->d(Ljava/util/Date;)V

    .line 244
    .line 245
    .line 246
    :cond_6
    iget-object v5, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 247
    .line 248
    invoke-virtual {v5}, Lio/sentry/s5;->getSdkVersion()Lio/sentry/protocol/p;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    invoke-static {v2, v4, v5}, Lio/sentry/a4;->a(Lio/sentry/y0;Lio/sentry/f6;Lio/sentry/protocol/p;)Lio/sentry/a4;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    iget-object v4, p0, Lio/sentry/s2;->b:Lio/sentry/o0;

    .line 257
    .line 258
    invoke-interface {v4, v2}, Lio/sentry/o0;->v(Lio/sentry/a4;)Lio/sentry/protocol/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    .line 260
    .line 261
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :catchall_0
    move-exception v2

    .line 266
    :try_start_3
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 267
    .line 268
    .line 269
    goto :goto_1

    .line 270
    :catchall_1
    move-exception v3

    .line 271
    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 272
    .line 273
    .line 274
    :goto_1
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 275
    :catchall_2
    move-exception v2

    .line 276
    iget-object v3, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 277
    .line 278
    invoke-virtual {v3}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    sget-object v4, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 283
    .line 284
    const-string v5, "Error processing previous session."

    .line 285
    .line 286
    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    .line 288
    .line 289
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-nez v0, :cond_7

    .line 294
    .line 295
    iget-object v0, p0, Lio/sentry/s2;->a:Lio/sentry/s5;

    .line 296
    .line 297
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    sget-object v2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 302
    .line 303
    const-string v3, "Failed to delete the previous session file."

    .line 304
    .line 305
    new-array v1, v1, [Ljava/lang/Object;

    .line 306
    .line 307
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    :cond_7
    return-void
.end method
