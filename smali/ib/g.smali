.class public final Lib/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lib/g$a;
    }
.end annotation


# static fields
.field private static final e:Lib/g$a;

.field private static volatile f:Z


# instance fields
.field private final a:Lfb/b;

.field private volatile b:Z

.field private c:Ljava/lang/Thread;

.field private d:Leb/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lib/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lib/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lib/g;->e:Lib/g$a;

    return-void
.end method

.method public constructor <init>(Lfb/b;)V
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lib/g;->a:Lfb/b;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lib/g;Leb/h;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lib/g;->d(Ljava/util/List;Lib/g;Leb/h;)V

    return-void
.end method

.method private static final d(Ljava/util/List;Lib/g;Leb/h;)V
    .locals 11

    .line 1
    const-string v0, "$cmd"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "$postHog"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast p0, Ljava/util/Collection;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    new-array v3, v2, [Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {p0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, [Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 33
    .line 34
    .line 35
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 36
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v3, "process.inputStream"

    .line 41
    .line 42
    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v3, Lrd/d;->b:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    new-instance v4, Ljava/io/InputStreamReader;

    .line 48
    .line 49
    invoke-direct {v4, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 50
    .line 51
    .line 52
    instance-of v1, v4, Ljava/io/BufferedReader;

    .line 53
    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    check-cast v4, Ljava/io/BufferedReader;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 60
    .line 61
    const/16 v3, 0x2000

    .line 62
    .line 63
    invoke-direct {v1, v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 64
    .line 65
    .line 66
    move-object v4, v1

    .line 67
    :goto_0
    const/4 v1, 0x1

    .line 68
    :try_start_2
    iput-boolean v1, p1, Lib/g;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    .line 70
    move-object v3, v0

    .line 71
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-direct {p1}, Lib/g;->e()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-nez v5, :cond_2

    .line 80
    .line 81
    goto/16 :goto_5

    .line 82
    .line 83
    :cond_2
    if-eqz v3, :cond_4

    .line 84
    .line 85
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-nez v5, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    move v5, v2

    .line 93
    goto :goto_2

    .line 94
    :cond_4
    :goto_1
    move v5, v1

    .line 95
    :goto_2
    if-eqz v5, :cond_5

    .line 96
    .line 97
    goto/16 :goto_5

    .line 98
    .line 99
    :cond_5
    const-string v5, "PostHog"

    .line 100
    .line 101
    const/4 v6, 0x2

    .line 102
    invoke-static {v3, v5, v2, v6, v0}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-nez v5, :cond_d

    .line 107
    .line 108
    const-string v5, "StrictMode"

    .line 109
    .line 110
    invoke-static {v3, v5, v2, v6, v0}, Lrd/n;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_6

    .line 115
    .line 116
    goto/16 :goto_5

    .line 117
    .line 118
    :cond_6
    new-instance v5, Lib/b;

    .line 119
    .line 120
    invoke-direct {v5}, Lib/b;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v3}, Lib/b;->b(Ljava/lang/String;)Lib/a;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    if-nez v5, :cond_7

    .line 128
    .line 129
    goto/16 :goto_5

    .line 130
    .line 131
    :cond_7
    const-string v6, "LogcatParser().parse(line) ?: continue"

    .line 132
    .line 133
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 137
    .line 138
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v7, "level"

    .line 142
    .line 143
    iget-object v8, v5, Lib/a;->b:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    iget-object v7, v5, Lib/a;->c:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    .line 154
    const-string v8, ""

    .line 155
    .line 156
    if-eqz v7, :cond_8

    .line 157
    .line 158
    :try_start_4
    const-string v9, "tag"

    .line 159
    .line 160
    invoke-static {v7, v9}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v7}, Lrd/n;->P0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    if-nez v7, :cond_9

    .line 172
    .line 173
    :cond_8
    move-object v7, v8

    .line 174
    :cond_9
    iget-object v9, v5, Lib/a;->d:Ljava/lang/String;

    .line 175
    .line 176
    if-eqz v9, :cond_b

    .line 177
    .line 178
    const-string v10, "text"

    .line 179
    .line 180
    invoke-static {v9, v10}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-static {v9}, Lrd/n;->P0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    if-nez v9, :cond_a

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_a
    move-object v8, v9

    .line 195
    :cond_b
    :goto_3
    const-string v9, "payload"

    .line 196
    .line 197
    new-instance v10, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v7, ": "

    .line 206
    .line 207
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    invoke-static {v7}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    iget-object v5, v5, Lib/a;->a:Ljava/util/GregorianCalendar;

    .line 225
    .line 226
    if-eqz v5, :cond_c

    .line 227
    .line 228
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    if-eqz v5, :cond_c

    .line 233
    .line 234
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    .line 235
    .line 236
    .line 237
    move-result-wide v7

    .line 238
    goto :goto_4

    .line 239
    :cond_c
    iget-object v5, p1, Lib/g;->a:Lfb/b;

    .line 240
    .line 241
    invoke-virtual {v5}, Leb/d;->f()Llb/g;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-interface {v5}, Llb/g;->currentTimeMillis()J

    .line 246
    .line 247
    .line 248
    move-result-wide v7

    .line 249
    :goto_4
    new-instance v5, Lcom/posthog/internal/replay/RRPluginEvent;

    .line 250
    .line 251
    const-string v9, "rrweb/console@1"

    .line 252
    .line 253
    invoke-direct {v5, v9, v6, v7, v8}, Lcom/posthog/internal/replay/RRPluginEvent;-><init>(Ljava/lang/String;Ljava/util/Map;J)V

    .line 254
    .line 255
    .line 256
    invoke-static {v5}, Lyc/m;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-static {v5, p2}, Lcom/posthog/internal/replay/RRUtilsKt;->capture(Ljava/util/List;Leb/h;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 261
    .line 262
    .line 263
    :catchall_0
    :cond_d
    :goto_5
    if-eqz v3, :cond_e

    .line 264
    .line 265
    :try_start_5
    iget-boolean v5, p1, Lib/g;->b:Z

    .line 266
    .line 267
    if-nez v5, :cond_1

    .line 268
    .line 269
    :cond_e
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 270
    .line 271
    :try_start_6
    invoke-static {v4, v0}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 275
    .line 276
    .line 277
    goto :goto_6

    .line 278
    :catchall_1
    move-exception p1

    .line 279
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 280
    :catchall_2
    move-exception p2

    .line 281
    :try_start_8
    invoke-static {v4, p1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 282
    .line 283
    .line 284
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 285
    :catchall_3
    move-object v0, p0

    .line 286
    :catchall_4
    if-eqz v0, :cond_f

    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 289
    .line 290
    .line 291
    :cond_f
    :goto_6
    return-void
.end method

.method private final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lib/g;->d:Leb/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Leb/h;->p()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method private final f()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lib/g;->f:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lib/g;->d:Leb/h;

    .line 6
    .line 7
    iput-boolean v0, p0, Lib/g;->b:Z

    .line 8
    .line 9
    iget-object v0, p0, Lib/g;->c:Ljava/lang/Thread;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Llb/e0;->d(Ljava/lang/Thread;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public c(Leb/h;)V
    .locals 4

    .line 1
    const-string v0, "postHog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lib/g;->f:Z

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lib/g;->a:Lfb/b;

    .line 11
    .line 12
    invoke-virtual {v0}, Lfb/b;->j0()Lhb/n;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lhb/n;->a()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-direct {p0}, Lib/g;->f()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 30
    sput-boolean v0, Lib/g;->f:Z

    .line 31
    .line 32
    iput-object p1, p0, Lib/g;->d:Leb/h;

    .line 33
    .line 34
    const-string v0, "threadtime"

    .line 35
    .line 36
    const-string v1, "*:E"

    .line 37
    .line 38
    const-string v2, "logcat"

    .line 39
    .line 40
    const-string v3, "-v"

    .line 41
    .line 42
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lyc/m;->m([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 51
    .line 52
    const-string v2, "MM-dd HH:mm:ss.mmm"

    .line 53
    .line 54
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 55
    .line 56
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 57
    .line 58
    .line 59
    const-string v2, "-T"

    .line 60
    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lib/g;->a:Lfb/b;

    .line 65
    .line 66
    invoke-virtual {v2}, Leb/d;->f()Llb/g;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v2}, Llb/g;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v2

    .line 74
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "sdf.format(config.datePr\u2026ider.currentTimeMillis())"

    .line 83
    .line 84
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    iput-boolean v1, p0, Lib/g;->b:Z

    .line 92
    .line 93
    iget-object v1, p0, Lib/g;->c:Ljava/lang/Thread;

    .line 94
    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    invoke-static {v1}, Llb/e0;->d(Ljava/lang/Thread;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    .line 101
    .line 102
    new-instance v2, Lib/f;

    .line 103
    .line 104
    invoke-direct {v2, v0, p0, p1}, Lib/f;-><init>(Ljava/util/List;Lib/g;Leb/h;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 108
    .line 109
    .line 110
    iput-object v1, p0, Lib/g;->c:Ljava/lang/Thread;

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 113
    .line 114
    .line 115
    :cond_2
    :goto_0
    return-void
.end method
