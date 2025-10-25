.class public final Llb/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llb/x$a;,
        Llb/x$b;
    }
.end annotation


# static fields
.field private static final e:Llb/x$a;

.field private static volatile f:Z


# instance fields
.field private final a:Leb/d;

.field private final b:Llb/c;

.field private final c:Ljava/util/Date;

.field private final d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Llb/x$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llb/x$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Llb/x;->e:Llb/x$a;

    return-void
.end method

.method public constructor <init>(Leb/d;Llb/c;Ljava/util/Date;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "api"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "startDate"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "executor"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Llb/x;->a:Leb/d;

    .line 25
    .line 26
    iput-object p2, p0, Llb/x;->b:Llb/c;

    .line 27
    .line 28
    iput-object p3, p0, Llb/x;->c:Ljava/util/Date;

    .line 29
    .line 30
    iput-object p4, p0, Llb/x;->d:Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic a(JLjava/io/File;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Llb/x;->h(JLjava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Llb/x;)V
    .locals 0

    .line 1
    invoke-static {p0}, Llb/x;->j(Llb/x;)V

    return-void
.end method

.method private final e(Ljava/io/File;Ljava/util/Iterator;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Llb/x;->a:Leb/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "File: "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " failed to parse: "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/16 p3, 0x2e

    .line 33
    .line 34
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-interface {v0, p3}, Llb/i;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Llb/x;->a:Leb/d;

    .line 48
    .line 49
    invoke-static {p1, p2}, Llb/e0;->a(Ljava/io/File;Leb/d;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method static synthetic f(Llb/x;Ljava/io/File;Ljava/util/Iterator;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Llb/x;->e(Ljava/io/File;Ljava/util/Iterator;Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final g(Ljava/lang/String;Llb/d;)V
    .locals 19

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v8, ": "

    .line 6
    .line 7
    const-string v9, "Failed to remove file: "

    .line 8
    .line 9
    const-string v10, "file"

    .line 10
    .line 11
    if-eqz v0, :cond_e

    .line 12
    .line 13
    new-instance v1, Ljava/io/File;

    .line 14
    .line 15
    iget-object v2, v7, Llb/x;->a:Leb/d;

    .line 16
    .line 17
    invoke-virtual {v2}, Leb/d;->b()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v7, Llb/x;->a:Leb/d;

    .line 25
    .line 26
    invoke-static {v1, v0}, Llb/e0;->c(Ljava/io/File;Leb/d;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    :try_start_0
    iget-object v0, v7, Llb/x;->c:Ljava/util/Date;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    new-instance v0, Llb/w;

    .line 40
    .line 41
    invoke-direct {v0, v2, v3}, Llb/w;-><init>(J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v12, 0x0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    new-array v0, v12, [Ljava/io/File;

    .line 52
    .line 53
    :cond_1
    invoke-static {v0}, Lyc/g;->S([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v13

    .line 57
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v14, 0x1

    .line 62
    if-le v0, v14, :cond_2

    .line 63
    .line 64
    new-instance v0, Llb/x$c;

    .line 65
    .line 66
    invoke-direct {v0}, Llb/x$c;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {v13, v0}, Lyc/m;->u(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    move-object v0, v13

    .line 73
    check-cast v0, Ljava/util/Collection;

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    xor-int/2addr v0, v14

    .line 80
    if-eqz v0, :cond_e

    .line 81
    .line 82
    new-instance v15, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    move/from16 v16, v12

    .line 92
    .line 93
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    move-object v4, v0

    .line 104
    check-cast v4, Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 105
    .line 106
    :try_start_1
    iget-object v0, v7, Llb/x;->a:Leb/d;

    .line 107
    .line 108
    invoke-virtual {v0}, Leb/d;->h()Leb/e;

    .line 109
    .line 110
    .line 111
    new-instance v3, Ljava/io/FileInputStream;

    .line 112
    .line 113
    invoke-static {v4, v10}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 117
    .line 118
    .line 119
    :try_start_2
    iget-object v0, v7, Llb/x;->a:Leb/d;

    .line 120
    .line 121
    invoke-virtual {v0}, Leb/d;->E()Llb/b0;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sget-object v1, Lrd/d;->b:Ljava/nio/charset/Charset;

    .line 126
    .line 127
    new-instance v2, Ljava/io/InputStreamReader;

    .line 128
    .line 129
    invoke-direct {v2, v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 130
    .line 131
    .line 132
    instance-of v1, v2, Ljava/io/BufferedReader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 133
    .line 134
    if-eqz v1, :cond_3

    .line 135
    .line 136
    :try_start_3
    check-cast v2, Ljava/io/BufferedReader;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    move-object v1, v0

    .line 141
    move-object v12, v3

    .line 142
    move-object v11, v4

    .line 143
    move-object/from16 v18, v6

    .line 144
    .line 145
    const/4 v14, 0x0

    .line 146
    goto :goto_5

    .line 147
    :cond_3
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    .line 148
    .line 149
    const/16 v5, 0x2000

    .line 150
    .line 151
    invoke-direct {v1, v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 152
    .line 153
    .line 154
    move-object v2, v1

    .line 155
    :goto_2
    invoke-virtual {v0}, Llb/b0;->b()Lcom/google/gson/Gson;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    new-instance v1, Llb/x$d;

    .line 160
    .line 161
    invoke-direct {v1}, Llb/x$d;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/google/gson/reflect/a;->d()Ljava/lang/reflect/Type;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/Gson;->k(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Lcom/posthog/PostHogEvent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 173
    .line 174
    if-eqz v0, :cond_4

    .line 175
    .line 176
    :try_start_5
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 177
    .line 178
    .line 179
    add-int/lit8 v16, v16, 0x1

    .line 180
    .line 181
    move-object v12, v3

    .line 182
    move-object v11, v4

    .line 183
    move-object/from16 v18, v6

    .line 184
    .line 185
    const/4 v14, 0x0

    .line 186
    goto :goto_3

    .line 187
    :cond_4
    const/4 v0, 0x0

    .line 188
    const/4 v5, 0x4

    .line 189
    const/16 v17, 0x0

    .line 190
    .line 191
    move-object/from16 v1, p0

    .line 192
    .line 193
    move-object v2, v4

    .line 194
    move-object v12, v3

    .line 195
    move-object v3, v6

    .line 196
    move-object v11, v4

    .line 197
    move-object v4, v0

    .line 198
    const/4 v14, 0x0

    .line 199
    move-object/from16 v18, v6

    .line 200
    .line 201
    move-object/from16 v6, v17

    .line 202
    .line 203
    :try_start_6
    invoke-static/range {v1 .. v6}, Llb/x;->f(Llb/x;Ljava/io/File;Ljava/util/Iterator;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 207
    .line 208
    :goto_3
    :try_start_7
    invoke-static {v12, v14}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 209
    .line 210
    .line 211
    move-object/from16 v1, v18

    .line 212
    .line 213
    goto :goto_7

    .line 214
    :catchall_1
    move-exception v0

    .line 215
    goto :goto_4

    .line 216
    :catchall_2
    move-exception v0

    .line 217
    move-object v12, v3

    .line 218
    move-object v11, v4

    .line 219
    move-object/from16 v18, v6

    .line 220
    .line 221
    const/4 v14, 0x0

    .line 222
    :goto_4
    move-object v1, v0

    .line 223
    :goto_5
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 224
    :catchall_3
    move-exception v0

    .line 225
    move-object v2, v0

    .line 226
    :try_start_9
    invoke-static {v12, v1}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 227
    .line 228
    .line 229
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 230
    :catchall_4
    move-exception v0

    .line 231
    goto :goto_6

    .line 232
    :catchall_5
    move-exception v0

    .line 233
    move-object v11, v4

    .line 234
    move-object/from16 v18, v6

    .line 235
    .line 236
    const/4 v14, 0x0

    .line 237
    :goto_6
    :try_start_a
    invoke-static {v11, v10}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    move-object/from16 v1, v18

    .line 241
    .line 242
    invoke-direct {v7, v11, v1, v0}, Llb/x;->e(Ljava/io/File;Ljava/util/Iterator;Ljava/lang/Throwable;)V

    .line 243
    .line 244
    .line 245
    :goto_7
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    iget-object v2, v7, Llb/x;->a:Leb/d;

    .line 250
    .line 251
    invoke-virtual {v2}, Leb/d;->p()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-lt v0, v2, :cond_5

    .line 256
    .line 257
    goto :goto_8

    .line 258
    :cond_5
    move-object v6, v1

    .line 259
    const/4 v12, 0x0

    .line 260
    const/4 v14, 0x1

    .line 261
    goto/16 :goto_1

    .line 262
    .line 263
    :cond_6
    const/4 v14, 0x0

    .line 264
    :goto_8
    move/from16 v1, v16

    .line 265
    .line 266
    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_c

    .line 270
    const/4 v2, 0x1

    .line 271
    xor-int/2addr v0, v2

    .line 272
    if-eqz v0, :cond_d

    .line 273
    .line 274
    :try_start_b
    sget-object v0, Llb/x$b;->a:[I

    .line 275
    .line 276
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    aget v0, v0, v3

    .line 281
    .line 282
    if-eq v0, v2, :cond_8

    .line 283
    .line 284
    const/4 v2, 0x2

    .line 285
    if-eq v0, v2, :cond_7

    .line 286
    .line 287
    :goto_9
    const/4 v2, 0x1

    .line 288
    goto :goto_a

    .line 289
    :cond_7
    iget-object v0, v7, Llb/x;->b:Llb/c;

    .line 290
    .line 291
    invoke-virtual {v0, v15}, Llb/c;->l(Ljava/util/List;)V

    .line 292
    .line 293
    .line 294
    goto :goto_9

    .line 295
    :cond_8
    iget-object v0, v7, Llb/x;->b:Llb/c;

    .line 296
    .line 297
    invoke-virtual {v0, v15}, Llb/c;->d(Ljava/util/List;)V
    :try_end_b
    .catch Llb/e; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 298
    .line 299
    .line 300
    goto :goto_9

    .line 301
    :goto_a
    if-gt v2, v1, :cond_a

    .line 302
    .line 303
    const/4 v2, 0x1

    .line 304
    :goto_b
    :try_start_c
    invoke-static {v13}, Lyc/m;->B(Ljava/util/List;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    move-object v5, v0

    .line 309
    check-cast v5, Ljava/io/File;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 310
    .line 311
    :try_start_d
    iget-object v0, v7, Llb/x;->a:Leb/d;

    .line 312
    .line 313
    invoke-static {v5, v0}, Llb/e0;->a(Ljava/io/File;Leb/d;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 314
    .line 315
    .line 316
    goto :goto_e

    .line 317
    :catchall_6
    move-exception v0

    .line 318
    goto :goto_c

    .line 319
    :catchall_7
    move-exception v0

    .line 320
    move-object v5, v14

    .line 321
    :goto_c
    :try_start_e
    iget-object v3, v7, Llb/x;->a:Leb/d;

    .line 322
    .line 323
    invoke-virtual {v3}, Leb/d;->o()Llb/i;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    if-eqz v5, :cond_9

    .line 336
    .line 337
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    goto :goto_d

    .line 342
    :cond_9
    move-object v5, v14

    .line 343
    :goto_d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const/16 v5, 0x2e

    .line 353
    .line 354
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-interface {v3, v0}, Llb/i;->a(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    .line 362
    .line 363
    .line 364
    :goto_e
    if-eq v2, v1, :cond_a

    .line 365
    .line 366
    add-int/lit8 v2, v2, 0x1

    .line 367
    .line 368
    goto :goto_b

    .line 369
    :cond_a
    const/4 v12, 0x0

    .line 370
    const/4 v14, 0x1

    .line 371
    goto/16 :goto_0

    .line 372
    .line 373
    :catchall_8
    move-exception v0

    .line 374
    move-object v3, v0

    .line 375
    const/4 v2, 0x1

    .line 376
    goto :goto_f

    .line 377
    :catch_0
    move-exception v0

    .line 378
    :try_start_f
    invoke-static {v0}, Llb/e0;->f(Ljava/lang/Throwable;)Z

    .line 379
    .line 380
    .line 381
    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 382
    const/4 v3, 0x1

    .line 383
    xor-int/2addr v2, v3

    .line 384
    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 385
    :catch_1
    move-exception v0

    .line 386
    :try_start_11
    iget-object v2, v7, Llb/x;->a:Leb/d;

    .line 387
    .line 388
    invoke-static {v0, v2}, Llb/r;->b(Llb/e;Leb/d;)Z

    .line 389
    .line 390
    .line 391
    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 392
    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 393
    :catchall_9
    move-exception v0

    .line 394
    move-object v3, v0

    .line 395
    :goto_f
    if-eqz v2, :cond_c

    .line 396
    .line 397
    const/4 v2, 0x1

    .line 398
    if-gt v2, v1, :cond_c

    .line 399
    .line 400
    :goto_10
    :try_start_13
    invoke-static {v13}, Lyc/m;->B(Ljava/util/List;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    move-object v5, v0

    .line 405
    check-cast v5, Ljava/io/File;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 406
    .line 407
    :try_start_14
    iget-object v0, v7, Llb/x;->a:Leb/d;

    .line 408
    .line 409
    invoke-static {v5, v0}, Llb/e0;->a(Ljava/io/File;Leb/d;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 410
    .line 411
    .line 412
    goto :goto_13

    .line 413
    :catchall_a
    move-exception v0

    .line 414
    goto :goto_11

    .line 415
    :catchall_b
    move-exception v0

    .line 416
    move-object v5, v14

    .line 417
    :goto_11
    :try_start_15
    iget-object v4, v7, Llb/x;->a:Leb/d;

    .line 418
    .line 419
    invoke-virtual {v4}, Leb/d;->o()Llb/i;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    new-instance v6, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    if-eqz v5, :cond_b

    .line 432
    .line 433
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    goto :goto_12

    .line 438
    :cond_b
    move-object v5, v14

    .line 439
    :goto_12
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    const/16 v5, 0x2e

    .line 449
    .line 450
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-interface {v4, v0}, Llb/i;->a(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    :goto_13
    if-eq v2, v1, :cond_c

    .line 461
    .line 462
    add-int/lit8 v2, v2, 0x1

    .line 463
    .line 464
    goto :goto_10

    .line 465
    :cond_c
    throw v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 466
    :cond_d
    move v14, v2

    .line 467
    const/4 v12, 0x0

    .line 468
    goto/16 :goto_0

    .line 469
    .line 470
    :catchall_c
    move-exception v0

    .line 471
    iget-object v1, v7, Llb/x;->a:Leb/d;

    .line 472
    .line 473
    invoke-virtual {v1}, Leb/d;->o()Llb/i;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    .line 481
    .line 482
    const-string v3, "Flushing events failed: "

    .line 483
    .line 484
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    const/16 v3, 0x2e

    .line 491
    .line 492
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-interface {v1, v0}, Llb/i;->a(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    :cond_e
    return-void
.end method

.method private static final h(JLjava/io/File;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long p0, v0, p0

    .line 6
    .line 7
    if-gtz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method private final i()V
    .locals 15

    .line 1
    const-string v0, "Error deleting file: "

    .line 2
    .line 3
    iget-object v1, p0, Llb/x;->a:Leb/d;

    .line 4
    .line 5
    invoke-virtual {v1}, Leb/d;->n()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_a

    .line 10
    .line 11
    new-instance v2, Ljava/io/File;

    .line 12
    .line 13
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/io/File;

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v4, p0, Llb/x;->a:Leb/d;

    .line 24
    .line 25
    invoke-virtual {v4}, Leb/d;->b()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v4, ".tmp"

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Llb/x;->a:Leb/d;

    .line 45
    .line 46
    invoke-static {v1, v2}, Llb/e0;->c(Ljava/io/File;Leb/d;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    const/16 v2, 0x2e

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    :try_start_0
    new-instance v4, Llb/f0$a;

    .line 57
    .line 58
    invoke-direct {v4, v1}, Llb/f0$a;-><init>(Ljava/io/File;)V

    .line 59
    .line 60
    .line 61
    const/4 v5, 0x1

    .line 62
    invoke-virtual {v4, v5}, Llb/f0$a;->b(Z)Llb/f0$a;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Llb/f0$a;->a()Llb/f0;

    .line 67
    .line 68
    .line 69
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 70
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Llb/f0;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-nez v6, :cond_8

    .line 75
    .line 76
    new-instance v6, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Llb/f0;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    const-string v8, "legacy.iterator()"

    .line 86
    .line 87
    invoke-static {v7, v8}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    move v9, v8

    .line 92
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    if-eqz v10, :cond_5

    .line 97
    .line 98
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    check-cast v10, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 103
    .line 104
    :try_start_2
    iget-object v11, p0, Llb/x;->a:Leb/d;

    .line 105
    .line 106
    invoke-virtual {v11}, Leb/d;->h()Leb/e;

    .line 107
    .line 108
    .line 109
    new-instance v11, Ljava/io/ByteArrayInputStream;

    .line 110
    .line 111
    const-string v12, "eventBytes"

    .line 112
    .line 113
    invoke-static {v10, v12}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {v11, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 117
    .line 118
    .line 119
    :try_start_3
    iget-object v10, p0, Llb/x;->a:Leb/d;

    .line 120
    .line 121
    invoke-virtual {v10}, Leb/d;->E()Llb/b0;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    sget-object v12, Lrd/d;->b:Ljava/nio/charset/Charset;

    .line 126
    .line 127
    new-instance v13, Ljava/io/InputStreamReader;

    .line 128
    .line 129
    invoke-direct {v13, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 130
    .line 131
    .line 132
    instance-of v12, v13, Ljava/io/BufferedReader;

    .line 133
    .line 134
    if-eqz v12, :cond_3

    .line 135
    .line 136
    check-cast v13, Ljava/io/BufferedReader;

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    new-instance v12, Ljava/io/BufferedReader;

    .line 140
    .line 141
    const/16 v14, 0x2000

    .line 142
    .line 143
    invoke-direct {v12, v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 144
    .line 145
    .line 146
    move-object v13, v12

    .line 147
    :goto_1
    invoke-virtual {v10}, Llb/b0;->b()Lcom/google/gson/Gson;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    new-instance v12, Llb/x$e;

    .line 152
    .line 153
    invoke-direct {v12}, Llb/x$e;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v12}, Lcom/google/gson/reflect/a;->d()Ljava/lang/reflect/Type;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    invoke-virtual {v10, v13, v12}, Lcom/google/gson/Gson;->k(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    check-cast v10, Lcom/posthog/PostHogEvent;

    .line 165
    .line 166
    if-eqz v10, :cond_4

    .line 167
    .line 168
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    add-int/lit8 v9, v9, 0x1

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_4
    const/4 v10, 0x2

    .line 175
    invoke-static {p0, v7, v3, v10, v3}, Llb/x;->l(Llb/x;Ljava/util/Iterator;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    sget-object v10, Lxc/t;->a:Lxc/t;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    .line 180
    :goto_2
    :try_start_4
    invoke-static {v11, v3}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :catchall_0
    move-exception v10

    .line 185
    :try_start_5
    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 186
    :catchall_1
    move-exception v12

    .line 187
    :try_start_6
    invoke-static {v11, v10}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 191
    :catchall_2
    move-exception v10

    .line 192
    :try_start_7
    invoke-direct {p0, v7, v10}, Llb/x;->k(Ljava/util/Iterator;Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    iget-object v11, p0, Llb/x;->a:Leb/d;

    .line 200
    .line 201
    invoke-virtual {v11}, Leb/d;->p()I

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    if-lt v10, v11, :cond_2

    .line 206
    .line 207
    :cond_5
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 208
    .line 209
    .line 210
    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 211
    xor-int/2addr v7, v5

    .line 212
    if-eqz v7, :cond_1

    .line 213
    .line 214
    :try_start_8
    iget-object v7, p0, Llb/x;->b:Llb/c;

    .line 215
    .line 216
    invoke-virtual {v7, v6}, Llb/c;->d(Ljava/util/List;)V
    :try_end_8
    .catch Llb/e; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 217
    .line 218
    .line 219
    if-lez v9, :cond_1

    .line 220
    .line 221
    if-gt v5, v9, :cond_1

    .line 222
    .line 223
    move v6, v5

    .line 224
    :goto_4
    :try_start_9
    invoke-virtual {v4}, Llb/f0;->T0()V
    :try_end_9
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :catchall_3
    move-exception v7

    .line 229
    :try_start_a
    iget-object v8, p0, Llb/x;->a:Leb/d;

    .line 230
    .line 231
    invoke-virtual {v8}, Leb/d;->o()Llb/i;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    new-instance v10, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    invoke-interface {v8, v7}, Llb/i;->a(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    :goto_5
    if-eq v6, v9, :cond_1

    .line 257
    .line 258
    add-int/lit8 v6, v6, 0x1

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :catch_0
    iget-object v6, p0, Llb/x;->a:Leb/d;

    .line 262
    .line 263
    invoke-static {v1, v6}, Llb/e0;->a(Ljava/io/File;Leb/d;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 264
    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :catchall_4
    move-exception v3

    .line 269
    move v6, v5

    .line 270
    goto :goto_7

    .line 271
    :catch_1
    move-exception v3

    .line 272
    :try_start_b
    invoke-static {v3}, Llb/e0;->f(Ljava/lang/Throwable;)Z

    .line 273
    .line 274
    .line 275
    move-result v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 276
    xor-int/2addr v6, v5

    .line 277
    :try_start_c
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 278
    :catchall_5
    move-exception v3

    .line 279
    goto :goto_7

    .line 280
    :catch_2
    move-exception v3

    .line 281
    :try_start_d
    invoke-virtual {v3}, Llb/e;->a()I

    .line 282
    .line 283
    .line 284
    move-result v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 285
    const/16 v7, 0x190

    .line 286
    .line 287
    if-ge v6, v7, :cond_6

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_6
    move v8, v5

    .line 291
    :goto_6
    :try_start_e
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 292
    :catchall_6
    move-exception v3

    .line 293
    move v6, v8

    .line 294
    :goto_7
    if-eqz v6, :cond_7

    .line 295
    .line 296
    if-lez v9, :cond_7

    .line 297
    .line 298
    if-gt v5, v9, :cond_7

    .line 299
    .line 300
    :goto_8
    :try_start_f
    invoke-virtual {v4}, Llb/f0;->T0()V
    :try_end_f
    .catch Ljava/util/NoSuchElementException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 301
    .line 302
    .line 303
    goto :goto_9

    .line 304
    :catchall_7
    move-exception v6

    .line 305
    :try_start_10
    iget-object v7, p0, Llb/x;->a:Leb/d;

    .line 306
    .line 307
    invoke-virtual {v7}, Leb/d;->o()Llb/i;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    new-instance v8, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    invoke-interface {v7, v6}, Llb/i;->a(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    :goto_9
    if-eq v5, v9, :cond_7

    .line 333
    .line 334
    add-int/lit8 v5, v5, 0x1

    .line 335
    .line 336
    goto :goto_8

    .line 337
    :catch_3
    iget-object v0, p0, Llb/x;->a:Leb/d;

    .line 338
    .line 339
    invoke-static {v1, v0}, Llb/e0;->a(Ljava/io/File;Leb/d;)V

    .line 340
    .line 341
    .line 342
    :cond_7
    throw v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 343
    :cond_8
    :try_start_11
    invoke-virtual {v4}, Llb/f0;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    .line 344
    .line 345
    .line 346
    goto :goto_b

    .line 347
    :catchall_8
    move-exception v0

    .line 348
    move-object v3, v4

    .line 349
    goto :goto_a

    .line 350
    :catchall_9
    move-exception v0

    .line 351
    :goto_a
    :try_start_12
    iget-object v1, p0, Llb/x;->a:Leb/d;

    .line 352
    .line 353
    invoke-virtual {v1}, Leb/d;->o()Llb/i;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .line 361
    .line 362
    const-string v5, "Flushing legacy events failed: "

    .line 363
    .line 364
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-interface {v1, v0}, Llb/i;->a(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 378
    .line 379
    .line 380
    if-eqz v3, :cond_a

    .line 381
    .line 382
    :try_start_13
    invoke-virtual {v3}, Llb/f0;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    .line 383
    .line 384
    .line 385
    goto :goto_b

    .line 386
    :catchall_a
    move-exception v0

    .line 387
    if-eqz v3, :cond_9

    .line 388
    .line 389
    :try_start_14
    invoke-virtual {v3}, Llb/f0;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    .line 390
    .line 391
    .line 392
    :catchall_b
    :cond_9
    throw v0

    .line 393
    :catchall_c
    :cond_a
    :goto_b
    return-void
.end method

.method private static final j(Llb/x;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Llb/x;->a:Leb/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Leb/d;->r()Llb/k;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Llb/k;->a()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_0
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Llb/x;->a:Leb/d;

    .line 25
    .line 26
    invoke-virtual {p0}, Leb/d;->o()Llb/i;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, "Network isn\'t connected."

    .line 31
    .line 32
    invoke-interface {p0, v0}, Llb/i;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-direct {p0}, Llb/x;->i()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Llb/x;->a:Leb/d;

    .line 40
    .line 41
    invoke-virtual {v0}, Leb/d;->H()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v1, Llb/d;->a:Llb/d;

    .line 46
    .line 47
    invoke-direct {p0, v0, v1}, Llb/x;->g(Ljava/lang/String;Llb/d;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Llb/x;->a:Leb/d;

    .line 51
    .line 52
    invoke-virtual {v0}, Leb/d;->z()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v1, Llb/d;->b:Llb/d;

    .line 57
    .line 58
    invoke-direct {p0, v0, v1}, Llb/x;->g(Ljava/lang/String;Llb/d;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private final k(Ljava/util/Iterator;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Llb/x;->a:Leb/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "Event failed to parse: "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 p2, 0x2e

    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-interface {v0, p2}, Llb/i;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method static synthetic l(Llb/x;Ljava/util/Iterator;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Llb/x;->k(Ljava/util/Iterator;Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Llb/x;->f:Z

    .line 3
    .line 4
    return-void
.end method

.method public c(Leb/h;)V
    .locals 1

    .line 1
    const-string v0, "postHog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean p1, Llb/x;->f:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 12
    sput-boolean p1, Llb/x;->f:Z

    .line 13
    .line 14
    iget-object p1, p0, Llb/x;->d:Ljava/util/concurrent/ExecutorService;

    .line 15
    .line 16
    new-instance v0, Llb/v;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Llb/v;-><init>(Llb/x;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Llb/e0;->b(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Llb/x;->d:Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
