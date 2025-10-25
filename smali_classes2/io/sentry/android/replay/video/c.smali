.class public final Lio/sentry/android/replay/video/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/sentry/s5;

.field private final b:Lio/sentry/android/replay/video/a;

.field private final c:Lid/a;

.field private final d:Lxc/d;

.field private final e:Landroid/media/MediaCodec;

.field private final f:Lxc/d;

.field private final g:Landroid/media/MediaCodec$BufferInfo;

.field private final h:Lio/sentry/android/replay/video/b;

.field private i:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lio/sentry/s5;Lio/sentry/android/replay/video/a;Lid/a;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "muxerConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/android/replay/video/c;->a:Lio/sentry/s5;

    .line 3
    iput-object p2, p0, Lio/sentry/android/replay/video/c;->b:Lio/sentry/android/replay/video/a;

    .line 4
    iput-object p3, p0, Lio/sentry/android/replay/video/c;->c:Lid/a;

    .line 5
    sget-object p1, Lxc/h;->c:Lxc/h;

    sget-object p3, Lio/sentry/android/replay/video/c$a;->e:Lio/sentry/android/replay/video/c$a;

    invoke-static {p1, p3}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    move-result-object p3

    iput-object p3, p0, Lio/sentry/android/replay/video/c;->d:Lxc/d;

    .line 6
    invoke-direct {p0}, Lio/sentry/android/replay/video/c;->d()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "c2.android.avc.encoder"

    .line 7
    invoke-static {p3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p3

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lio/sentry/android/replay/video/a;->d()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p3

    :goto_0
    const-string v0, "if (hasExynosCodec) {\n  \u2026onfig.mimeType)\n        }"

    .line 9
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p3, p0, Lio/sentry/android/replay/video/c;->e:Landroid/media/MediaCodec;

    .line 11
    new-instance p3, Lio/sentry/android/replay/video/c$b;

    invoke-direct {p3, p0}, Lio/sentry/android/replay/video/c$b;-><init>(Lio/sentry/android/replay/video/c;)V

    invoke-static {p1, p3}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/replay/video/c;->f:Lxc/d;

    .line 12
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/video/c;->g:Landroid/media/MediaCodec$BufferInfo;

    .line 13
    new-instance p1, Lio/sentry/android/replay/video/b;

    invoke-virtual {p2}, Lio/sentry/android/replay/video/a;->b()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    const-string v0, "muxerConfig.file.absolutePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/sentry/android/replay/video/a;->c()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p1, p3, p2}, Lio/sentry/android/replay/video/b;-><init>(Ljava/lang/String;F)V

    iput-object p1, p0, Lio/sentry/android/replay/video/c;->h:Lio/sentry/android/replay/video/b;

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/s5;Lio/sentry/android/replay/video/a;Lid/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/replay/video/c;-><init>(Lio/sentry/s5;Lio/sentry/android/replay/video/a;Lid/a;)V

    return-void
.end method

.method private final a(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->a:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "[Encoder]: drainCodec("

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 v3, 0x29

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    new-array v4, v3, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->a:Lio/sentry/s5;

    .line 40
    .line 41
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v2, "[Encoder]: sending EOS to encoder"

    .line 46
    .line 47
    new-array v4, v3, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->e:Landroid/media/MediaCodec;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->e:Landroid/media/MediaCodec;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :cond_1
    :goto_0
    iget-object v1, p0, Lio/sentry/android/replay/video/c;->e:Landroid/media/MediaCodec;

    .line 64
    .line 65
    iget-object v2, p0, Lio/sentry/android/replay/video/c;->g:Landroid/media/MediaCodec$BufferInfo;

    .line 66
    .line 67
    const-wide/32 v4, 0x186a0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    const/4 v2, -0x1

    .line 75
    if-ne v1, v2, :cond_3

    .line 76
    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_2
    iget-object v1, p0, Lio/sentry/android/replay/video/c;->a:Lio/sentry/s5;

    .line 82
    .line 83
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 88
    .line 89
    const-string v4, "[Encoder]: no output available, spinning to await EOS"

    .line 90
    .line 91
    new-array v5, v3, [Ljava/lang/Object;

    .line 92
    .line 93
    invoke-interface {v1, v2, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    const/4 v2, -0x3

    .line 98
    if-ne v1, v2, :cond_4

    .line 99
    .line 100
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->e:Landroid/media/MediaCodec;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    const/4 v2, -0x2

    .line 108
    if-ne v1, v2, :cond_6

    .line 109
    .line 110
    iget-object v1, p0, Lio/sentry/android/replay/video/c;->h:Lio/sentry/android/replay/video/b;

    .line 111
    .line 112
    invoke-virtual {v1}, Lio/sentry/android/replay/video/b;->b()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_5

    .line 117
    .line 118
    iget-object v1, p0, Lio/sentry/android/replay/video/c;->e:Landroid/media/MediaCodec;

    .line 119
    .line 120
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const-string v2, "mediaCodec.outputFormat"

    .line 125
    .line 126
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, Lio/sentry/android/replay/video/c;->a:Lio/sentry/s5;

    .line 130
    .line 131
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    sget-object v4, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 136
    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v6, "[Encoder]: encoder output format changed: "

    .line 143
    .line 144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    new-array v6, v3, [Ljava/lang/Object;

    .line 155
    .line 156
    invoke-interface {v2, v4, v5, v6}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    iget-object v2, p0, Lio/sentry/android/replay/video/c;->h:Lio/sentry/android/replay/video/b;

    .line 160
    .line 161
    invoke-virtual {v2, v1}, Lio/sentry/android/replay/video/b;->e(Landroid/media/MediaFormat;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    .line 166
    .line 167
    const-string v0, "format changed twice"

    .line 168
    .line 169
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :cond_6
    if-gez v1, :cond_7

    .line 174
    .line 175
    iget-object v2, p0, Lio/sentry/android/replay/video/c;->a:Lio/sentry/s5;

    .line 176
    .line 177
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    sget-object v4, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 182
    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v6, "[Encoder]: unexpected result from encoder.dequeueOutputBuffer: "

    .line 189
    .line 190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    new-array v5, v3, [Ljava/lang/Object;

    .line 201
    .line 202
    invoke-interface {v2, v4, v1, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_7
    if-eqz v0, :cond_c

    .line 208
    .line 209
    aget-object v2, v0, v1

    .line 210
    .line 211
    if-eqz v2, :cond_c

    .line 212
    .line 213
    iget-object v4, p0, Lio/sentry/android/replay/video/c;->g:Landroid/media/MediaCodec$BufferInfo;

    .line 214
    .line 215
    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 216
    .line 217
    and-int/lit8 v4, v4, 0x2

    .line 218
    .line 219
    if-eqz v4, :cond_8

    .line 220
    .line 221
    iget-object v4, p0, Lio/sentry/android/replay/video/c;->a:Lio/sentry/s5;

    .line 222
    .line 223
    invoke-virtual {v4}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    sget-object v5, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 228
    .line 229
    const-string v6, "[Encoder]: ignoring BUFFER_FLAG_CODEC_CONFIG"

    .line 230
    .line 231
    new-array v7, v3, [Ljava/lang/Object;

    .line 232
    .line 233
    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    iget-object v4, p0, Lio/sentry/android/replay/video/c;->g:Landroid/media/MediaCodec$BufferInfo;

    .line 237
    .line 238
    iput v3, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 239
    .line 240
    :cond_8
    iget-object v4, p0, Lio/sentry/android/replay/video/c;->g:Landroid/media/MediaCodec$BufferInfo;

    .line 241
    .line 242
    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 243
    .line 244
    if-eqz v4, :cond_a

    .line 245
    .line 246
    iget-object v4, p0, Lio/sentry/android/replay/video/c;->h:Lio/sentry/android/replay/video/b;

    .line 247
    .line 248
    invoke-virtual {v4}, Lio/sentry/android/replay/video/b;->b()Z

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    if-eqz v4, :cond_9

    .line 253
    .line 254
    iget-object v4, p0, Lio/sentry/android/replay/video/c;->h:Lio/sentry/android/replay/video/b;

    .line 255
    .line 256
    iget-object v5, p0, Lio/sentry/android/replay/video/c;->g:Landroid/media/MediaCodec$BufferInfo;

    .line 257
    .line 258
    invoke-virtual {v4, v2, v5}, Lio/sentry/android/replay/video/b;->c(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 259
    .line 260
    .line 261
    iget-object v2, p0, Lio/sentry/android/replay/video/c;->a:Lio/sentry/s5;

    .line 262
    .line 263
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    sget-object v4, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 268
    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    const-string v6, "[Encoder]: sent "

    .line 275
    .line 276
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    iget-object v6, p0, Lio/sentry/android/replay/video/c;->g:Landroid/media/MediaCodec$BufferInfo;

    .line 280
    .line 281
    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 282
    .line 283
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v6, " bytes to muxer"

    .line 287
    .line 288
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    new-array v6, v3, [Ljava/lang/Object;

    .line 296
    .line 297
    invoke-interface {v2, v4, v5, v6}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    goto :goto_1

    .line 301
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 302
    .line 303
    const-string v0, "muxer hasn\'t started"

    .line 304
    .line 305
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw p1

    .line 309
    :cond_a
    :goto_1
    iget-object v2, p0, Lio/sentry/android/replay/video/c;->e:Landroid/media/MediaCodec;

    .line 310
    .line 311
    invoke-virtual {v2, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 312
    .line 313
    .line 314
    iget-object v1, p0, Lio/sentry/android/replay/video/c;->g:Landroid/media/MediaCodec$BufferInfo;

    .line 315
    .line 316
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 317
    .line 318
    and-int/lit8 v1, v1, 0x4

    .line 319
    .line 320
    if-eqz v1, :cond_1

    .line 321
    .line 322
    if-nez p1, :cond_b

    .line 323
    .line 324
    iget-object p1, p0, Lio/sentry/android/replay/video/c;->a:Lio/sentry/s5;

    .line 325
    .line 326
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 331
    .line 332
    const-string v1, "[Encoder]: reached end of stream unexpectedly"

    .line 333
    .line 334
    new-array v2, v3, [Ljava/lang/Object;

    .line 335
    .line 336
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    goto :goto_2

    .line 340
    :cond_b
    iget-object p1, p0, Lio/sentry/android/replay/video/c;->a:Lio/sentry/s5;

    .line 341
    .line 342
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 347
    .line 348
    const-string v1, "[Encoder]: end of stream reached"

    .line 349
    .line 350
    new-array v2, v3, [Ljava/lang/Object;

    .line 351
    .line 352
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    :goto_2
    return-void

    .line 356
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    .line 357
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    .line 363
    const-string v2, "encoderOutputBuffer "

    .line 364
    .line 365
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string v1, " was null"

    .line 372
    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw p1
.end method

.method private final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->d:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final f()Landroid/media/MediaFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->f:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/media/MediaFormat;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final b(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    const-string v0, "image"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "MANUFACTURER"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v2, "xiaomi"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-static {v0, v2, v3}, Lrd/n;->L(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v4, 0x0

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "motorola"

    .line 27
    .line 28
    invoke-static {v0, v1, v3}, Lrd/n;->L(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->i:Landroid/view/Surface;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->i:Landroid/view/Surface;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0, v4}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move-object v0, v4

    .line 54
    :goto_1
    if-eqz v0, :cond_3

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, p1, v1, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object p1, p0, Lio/sentry/android/replay/video/c;->i:Landroid/view/Surface;

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    const/4 p1, 0x0

    .line 68
    invoke-direct {p0, p1}, Lio/sentry/android/replay/video/c;->a(Z)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->h:Lio/sentry/android/replay/video/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/android/replay/video/b;->a()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final e()Landroid/media/MediaCodec;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->e:Landroid/media/MediaCodec;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lio/sentry/android/replay/video/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->b:Lio/sentry/android/replay/video/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lio/sentry/s5;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->a:Lio/sentry/s5;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->c:Lid/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lid/a;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0}, Lio/sentry/android/replay/video/c;->a(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->e:Landroid/media/MediaCodec;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->e:Landroid/media/MediaCodec;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->i:Landroid/view/Surface;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->h:Lio/sentry/android/replay/video/b;

    .line 30
    .line 31
    invoke-virtual {v0}, Lio/sentry/android/replay/video/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    iget-object v1, p0, Lio/sentry/android/replay/video/c;->a:Lio/sentry/s5;

    .line 37
    .line 38
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 43
    .line 44
    const-string v3, "Failed to properly release video encoder"

    .line 45
    .line 46
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->e:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-direct {p0}, Lio/sentry/android/replay/video/c;->f()Landroid/media/MediaFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->e:Landroid/media/MediaCodec;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lio/sentry/android/replay/video/c;->i:Landroid/view/Surface;

    .line 19
    .line 20
    iget-object v0, p0, Lio/sentry/android/replay/video/c;->e:Landroid/media/MediaCodec;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lio/sentry/android/replay/video/c;->a(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
