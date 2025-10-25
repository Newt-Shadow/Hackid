.class public Lb3/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/w3;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ls3/j;

.field private c:I

.field private d:J

.field private e:Z

.field private f:Ls3/w;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb3/w;->a:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Ls3/j;

    .line 7
    .line 8
    invoke-direct {p1}, Ls3/j;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lb3/w;->b:Ls3/j;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lb3/w;->c:I

    .line 15
    .line 16
    const-wide/16 v0, 0x1388

    .line 17
    .line 18
    iput-wide v0, p0, Lb3/w;->d:J

    .line 19
    .line 20
    sget-object p1, Ls3/w;->a:Ls3/w;

    .line 21
    .line 22
    iput-object p1, p0, Lb3/w;->f:Ls3/w;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;Lz4/y;Ld3/v;Lm4/n;Lt3/e;)[Lb3/t3;
    .locals 12

    .line 1
    move-object v10, p0

    .line 2
    new-instance v11, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v1, v10, Lb3/w;->a:Landroid/content/Context;

    .line 8
    .line 9
    iget v2, v10, Lb3/w;->c:I

    .line 10
    .line 11
    iget-object v3, v10, Lb3/w;->f:Ls3/w;

    .line 12
    .line 13
    iget-boolean v4, v10, Lb3/w;->e:Z

    .line 14
    .line 15
    iget-wide v7, v10, Lb3/w;->d:J

    .line 16
    .line 17
    move-object v0, p0

    .line 18
    move-object v5, p1

    .line 19
    move-object v6, p2

    .line 20
    move-object v9, v11

    .line 21
    invoke-virtual/range {v0 .. v9}, Lb3/w;->h(Landroid/content/Context;ILs3/w;ZLandroid/os/Handler;Lz4/y;JLjava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v10, Lb3/w;->a:Landroid/content/Context;

    .line 25
    .line 26
    iget-boolean v1, v10, Lb3/w;->g:Z

    .line 27
    .line 28
    iget-boolean v2, v10, Lb3/w;->h:Z

    .line 29
    .line 30
    iget-boolean v3, v10, Lb3/w;->i:Z

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1, v2, v3}, Lb3/w;->c(Landroid/content/Context;ZZZ)Ld3/w;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    iget-object v1, v10, Lb3/w;->a:Landroid/content/Context;

    .line 39
    .line 40
    iget v2, v10, Lb3/w;->c:I

    .line 41
    .line 42
    iget-object v3, v10, Lb3/w;->f:Ls3/w;

    .line 43
    .line 44
    iget-boolean v4, v10, Lb3/w;->e:Z

    .line 45
    .line 46
    move-object v0, p0

    .line 47
    move-object v6, p1

    .line 48
    move-object v7, p3

    .line 49
    move-object v8, v11

    .line 50
    invoke-virtual/range {v0 .. v8}, Lb3/w;->b(Landroid/content/Context;ILs3/w;ZLd3/w;Landroid/os/Handler;Ld3/v;Ljava/util/ArrayList;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v1, v10, Lb3/w;->a:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iget v4, v10, Lb3/w;->c:I

    .line 60
    .line 61
    move-object v0, p0

    .line 62
    move-object/from16 v2, p4

    .line 63
    .line 64
    move-object v5, v11

    .line 65
    invoke-virtual/range {v0 .. v5}, Lb3/w;->g(Landroid/content/Context;Lm4/n;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v10, Lb3/w;->a:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iget v4, v10, Lb3/w;->c:I

    .line 75
    .line 76
    move-object/from16 v2, p5

    .line 77
    .line 78
    invoke-virtual/range {v0 .. v5}, Lb3/w;->e(Landroid/content/Context;Lt3/e;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, v10, Lb3/w;->a:Landroid/content/Context;

    .line 82
    .line 83
    iget v1, v10, Lb3/w;->c:I

    .line 84
    .line 85
    invoke-virtual {p0, v0, v1, v11}, Lb3/w;->d(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, v10, Lb3/w;->a:Landroid/content/Context;

    .line 89
    .line 90
    iget v1, v10, Lb3/w;->c:I

    .line 91
    .line 92
    move-object v2, p1

    .line 93
    invoke-virtual {p0, v0, p1, v1, v11}, Lb3/w;->f(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    .line 94
    .line 95
    .line 96
    const/4 v0, 0x0

    .line 97
    new-array v0, v0, [Lb3/t3;

    .line 98
    .line 99
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, [Lb3/t3;

    .line 104
    .line 105
    return-object v0
.end method

.method protected b(Landroid/content/Context;ILs3/w;ZLd3/w;Landroid/os/Handler;Ld3/v;Ljava/util/ArrayList;)V
    .locals 16

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v9, p5

    .line 4
    .line 5
    move-object/from16 v10, p6

    .line 6
    .line 7
    move-object/from16 v11, p7

    .line 8
    .line 9
    move-object/from16 v12, p8

    .line 10
    .line 11
    const-class v13, Ld3/w;

    .line 12
    .line 13
    const-class v14, Ld3/v;

    .line 14
    .line 15
    const-class v15, Landroid/os/Handler;

    .line 16
    .line 17
    const-string v8, "DefaultRenderersFactory"

    .line 18
    .line 19
    new-instance v7, Ld3/s0;

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lb3/w;->i()Ls3/l$b;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    move-object v1, v7

    .line 26
    move-object/from16 v2, p1

    .line 27
    .line 28
    move-object/from16 v4, p3

    .line 29
    .line 30
    move/from16 v5, p4

    .line 31
    .line 32
    move-object/from16 v6, p6

    .line 33
    .line 34
    move-object v9, v7

    .line 35
    move-object/from16 v7, p7

    .line 36
    .line 37
    move-object v10, v8

    .line 38
    move-object/from16 v8, p5

    .line 39
    .line 40
    invoke-direct/range {v1 .. v8}, Ld3/s0;-><init>(Landroid/content/Context;Ls3/l$b;Ls3/w;ZLandroid/os/Handler;Ld3/v;Ld3/w;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x2

    .line 54
    if-ne v0, v2, :cond_1

    .line 55
    .line 56
    add-int/lit8 v1, v1, -0x1

    .line 57
    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 59
    :try_start_0
    const-string v3, "com.google.android.exoplayer2.decoder.midi.MidiRenderer"

    .line 60
    .line 61
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    new-array v4, v0, [Ljava/lang/Class;

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    new-array v4, v0, [Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lb3/t3;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    .line 79
    add-int/lit8 v4, v1, 0x1

    .line 80
    .line 81
    :try_start_1
    invoke-virtual {v12, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const-string v1, "Loaded MidiRenderer."

    .line 85
    .line 86
    invoke-static {v10, v1}, Ly4/r;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move v1, v4

    .line 91
    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/RuntimeException;

    .line 94
    .line 95
    const-string v2, "Error instantiating MIDI extension"

    .line 96
    .line 97
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    throw v1

    .line 101
    :catch_2
    :goto_0
    move v4, v1

    .line 102
    :goto_1
    const/4 v1, 0x3

    .line 103
    const/4 v3, 0x1

    .line 104
    :try_start_2
    const-string v5, "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"

    .line 105
    .line 106
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    new-array v6, v1, [Ljava/lang/Class;

    .line 111
    .line 112
    aput-object v15, v6, v0

    .line 113
    .line 114
    aput-object v14, v6, v3

    .line 115
    .line 116
    aput-object v13, v6, v2

    .line 117
    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 119
    .line 120
    .line 121
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 122
    move-object/from16 v6, p5

    .line 123
    .line 124
    move-object/from16 v7, p6

    .line 125
    .line 126
    move-object v8, v10

    .line 127
    :try_start_3
    filled-new-array {v7, v11, v6}, [Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    invoke-virtual {v5, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    check-cast v5, Lb3/t3;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 136
    .line 137
    add-int/lit8 v9, v4, 0x1

    .line 138
    .line 139
    :try_start_4
    invoke-virtual {v12, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    const-string v4, "Loaded LibopusAudioRenderer."

    .line 143
    .line 144
    invoke-static {v8, v4}, Ly4/r;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :catch_3
    move v4, v9

    .line 149
    goto :goto_2

    .line 150
    :catch_4
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    .line 152
    .line 153
    const-string v2, "Error instantiating Opus extension"

    .line 154
    .line 155
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    throw v1

    .line 159
    :catch_5
    move-object/from16 v6, p5

    .line 160
    .line 161
    move-object/from16 v7, p6

    .line 162
    .line 163
    move-object v8, v10

    .line 164
    :catch_6
    :goto_2
    move v9, v4

    .line 165
    :goto_3
    :try_start_5
    const-string v4, "com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer"

    .line 166
    .line 167
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    new-array v5, v1, [Ljava/lang/Class;

    .line 172
    .line 173
    aput-object v15, v5, v0

    .line 174
    .line 175
    aput-object v14, v5, v3

    .line 176
    .line 177
    aput-object v13, v5, v2

    .line 178
    .line 179
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    filled-new-array {v7, v11, v6}, [Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    check-cast v4, Lb3/t3;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 192
    .line 193
    add-int/lit8 v5, v9, 0x1

    .line 194
    .line 195
    :try_start_6
    invoke-virtual {v12, v9, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    const-string v4, "Loaded LibflacAudioRenderer."

    .line 199
    .line 200
    invoke-static {v8, v4}, Ly4/r;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 201
    .line 202
    .line 203
    goto :goto_5

    .line 204
    :catch_7
    move v9, v5

    .line 205
    goto :goto_4

    .line 206
    :catch_8
    move-exception v0

    .line 207
    new-instance v1, Ljava/lang/RuntimeException;

    .line 208
    .line 209
    const-string v2, "Error instantiating FLAC extension"

    .line 210
    .line 211
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    .line 213
    .line 214
    throw v1

    .line 215
    :catch_9
    :goto_4
    move v5, v9

    .line 216
    :goto_5
    :try_start_7
    const-string v4, "com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 217
    .line 218
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    new-array v1, v1, [Ljava/lang/Class;

    .line 223
    .line 224
    aput-object v15, v1, v0

    .line 225
    .line 226
    aput-object v14, v1, v3

    .line 227
    .line 228
    aput-object v13, v1, v2

    .line 229
    .line 230
    invoke-virtual {v4, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    filled-new-array {v7, v11, v6}, [Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Lb3/t3;

    .line 243
    .line 244
    invoke-virtual {v12, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    const-string v0, "Loaded FfmpegAudioRenderer."

    .line 248
    .line 249
    invoke-static {v8, v0}, Ly4/r;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    .line 250
    .line 251
    .line 252
    goto :goto_6

    .line 253
    :catch_a
    move-exception v0

    .line 254
    new-instance v1, Ljava/lang/RuntimeException;

    .line 255
    .line 256
    const-string v2, "Error instantiating FFmpeg extension"

    .line 257
    .line 258
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    .line 260
    .line 261
    throw v1

    .line 262
    :catch_b
    :goto_6
    return-void
.end method

.method protected c(Landroid/content/Context;ZZZ)Ld3/w;
    .locals 1

    .line 1
    new-instance v0, Ld3/i0$f;

    .line 2
    .line 3
    invoke-direct {v0}, Ld3/i0$f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ld3/i;->c(Landroid/content/Context;)Ld3/i;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ld3/i0$f;->g(Ld3/i;)Ld3/i0$f;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p2}, Ld3/i0$f;->i(Z)Ld3/i0$f;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p3}, Ld3/i0$f;->h(Z)Ld3/i0$f;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p4}, Ld3/i0$f;->j(I)Ld3/i0$f;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ld3/i0$f;->f()Ld3/i0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method protected d(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    new-instance p1, La5/b;

    .line 2
    .line 3
    invoke-direct {p1}, La5/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected e(Landroid/content/Context;Lt3/e;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    new-instance p1, Lt3/f;

    .line 2
    .line 3
    invoke-direct {p1, p2, p3}, Lt3/f;-><init>(Lt3/e;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected f(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected g(Landroid/content/Context;Lm4/n;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    new-instance p1, Lm4/o;

    .line 2
    .line 3
    invoke-direct {p1, p2, p3}, Lm4/o;-><init>(Lm4/n;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected h(Landroid/content/Context;ILs3/w;ZLandroid/os/Handler;Lz4/y;JLjava/util/ArrayList;)V
    .locals 16

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v11, p9

    .line 4
    .line 5
    const-string v12, "DefaultRenderersFactory"

    .line 6
    .line 7
    const-class v13, Lz4/y;

    .line 8
    .line 9
    const-class v14, Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v15, Lz4/i;

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lb3/w;->i()Ls3/l$b;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/16 v10, 0x32

    .line 18
    .line 19
    move-object v1, v15

    .line 20
    move-object/from16 v2, p1

    .line 21
    .line 22
    move-object/from16 v4, p3

    .line 23
    .line 24
    move-wide/from16 v5, p7

    .line 25
    .line 26
    move/from16 v7, p4

    .line 27
    .line 28
    move-object/from16 v8, p5

    .line 29
    .line 30
    move-object/from16 v9, p6

    .line 31
    .line 32
    invoke-direct/range {v1 .. v10}, Lz4/i;-><init>(Landroid/content/Context;Ls3/l$b;Ls3/w;JZLandroid/os/Handler;Lz4/y;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v2, 0x2

    .line 46
    if-ne v0, v2, :cond_1

    .line 47
    .line 48
    add-int/lit8 v1, v1, -0x1

    .line 49
    .line 50
    :cond_1
    const/16 v0, 0x32

    .line 51
    .line 52
    const/4 v3, 0x3

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x4

    .line 55
    const/4 v6, 0x1

    .line 56
    :try_start_0
    const-string v7, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    .line 57
    .line 58
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    new-array v8, v5, [Ljava/lang/Class;

    .line 63
    .line 64
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 65
    .line 66
    aput-object v9, v8, v4

    .line 67
    .line 68
    aput-object v14, v8, v6

    .line 69
    .line 70
    aput-object v13, v8, v2

    .line 71
    .line 72
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 73
    .line 74
    aput-object v9, v8, v3

    .line 75
    .line 76
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    new-array v8, v5, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    aput-object v9, v8, v4

    .line 87
    .line 88
    aput-object p5, v8, v6

    .line 89
    .line 90
    aput-object p6, v8, v2

    .line 91
    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    aput-object v9, v8, v3

    .line 97
    .line 98
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    check-cast v7, Lb3/t3;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    .line 104
    add-int/lit8 v8, v1, 0x1

    .line 105
    .line 106
    :try_start_1
    invoke-virtual {v11, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    const-string v1, "Loaded LibvpxVideoRenderer."

    .line 110
    .line 111
    invoke-static {v12, v1}, Ly4/r;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :catch_0
    move v1, v8

    .line 116
    goto :goto_0

    .line 117
    :catch_1
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/RuntimeException;

    .line 119
    .line 120
    const-string v2, "Error instantiating VP9 extension"

    .line 121
    .line 122
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    throw v1

    .line 126
    :catch_2
    :goto_0
    move v8, v1

    .line 127
    :goto_1
    :try_start_2
    const-string v1, "com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer"

    .line 128
    .line 129
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-array v7, v5, [Ljava/lang/Class;

    .line 134
    .line 135
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 136
    .line 137
    aput-object v9, v7, v4

    .line 138
    .line 139
    aput-object v14, v7, v6

    .line 140
    .line 141
    aput-object v13, v7, v2

    .line 142
    .line 143
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 144
    .line 145
    aput-object v9, v7, v3

    .line 146
    .line 147
    invoke-virtual {v1, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    new-array v5, v5, [Ljava/lang/Object;

    .line 152
    .line 153
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    aput-object v7, v5, v4

    .line 158
    .line 159
    aput-object p5, v5, v6

    .line 160
    .line 161
    aput-object p6, v5, v2

    .line 162
    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    aput-object v0, v5, v3

    .line 168
    .line 169
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Lb3/t3;

    .line 174
    .line 175
    invoke-virtual {v11, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    const-string v0, "Loaded Libgav1VideoRenderer."

    .line 179
    .line 180
    invoke-static {v12, v0}, Ly4/r;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :catch_3
    move-exception v0

    .line 185
    new-instance v1, Ljava/lang/RuntimeException;

    .line 186
    .line 187
    const-string v2, "Error instantiating AV1 extension"

    .line 188
    .line 189
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    throw v1

    .line 193
    :catch_4
    :goto_2
    return-void
.end method

.method protected i()Ls3/l$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/w;->b:Ls3/j;

    .line 2
    .line 3
    return-object v0
.end method
