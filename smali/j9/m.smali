.class public abstract Lj9/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/nio/charset/Charset;

.field public static final b:Ljava/nio/charset/Charset;

.field public static final c:Ljava/nio/charset/Charset;

.field private static final d:Ljava/nio/charset/Charset;

.field private static final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lj9/m;->a:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    const-string v0, "SJIS"

    .line 8
    .line 9
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lj9/m;->b:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    :try_start_0
    const-string v0, "GB2312"

    .line 16
    .line 17
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    sput-object v0, Lj9/m;->c:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    const-string v0, "EUC_JP"

    .line 26
    .line 27
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lj9/m;->d:Ljava/nio/charset/Charset;

    .line 32
    .line 33
    sget-object v1, Lj9/m;->b:Ljava/nio/charset/Charset;

    .line 34
    .line 35
    sget-object v2, Lj9/m;->a:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 53
    :goto_2
    sput-boolean v0, Lj9/m;->e:Z

    .line 54
    .line 55
    return-void
.end method

.method public static a([BLjava/util/Map;)Ljava/nio/charset/Charset;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v2, Ld9/e;->f:Ld9/e;

    .line 8
    .line 9
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_0
    array-length v1, v0

    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    if-le v1, v2, :cond_3

    .line 33
    .line 34
    aget-byte v1, v0, v4

    .line 35
    .line 36
    const/4 v5, -0x2

    .line 37
    const/4 v6, -0x1

    .line 38
    if-ne v1, v5, :cond_1

    .line 39
    .line 40
    aget-byte v7, v0, v3

    .line 41
    .line 42
    if-eq v7, v6, :cond_2

    .line 43
    .line 44
    :cond_1
    if-ne v1, v6, :cond_3

    .line 45
    .line 46
    aget-byte v1, v0, v3

    .line 47
    .line 48
    if-ne v1, v5, :cond_3

    .line 49
    .line 50
    :cond_2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_3
    array-length v1, v0

    .line 54
    array-length v5, v0

    .line 55
    const/4 v6, 0x3

    .line 56
    if-le v5, v6, :cond_4

    .line 57
    .line 58
    aget-byte v5, v0, v4

    .line 59
    .line 60
    const/16 v7, -0x11

    .line 61
    .line 62
    if-ne v5, v7, :cond_4

    .line 63
    .line 64
    aget-byte v5, v0, v3

    .line 65
    .line 66
    const/16 v7, -0x45

    .line 67
    .line 68
    if-ne v5, v7, :cond_4

    .line 69
    .line 70
    aget-byte v5, v0, v2

    .line 71
    .line 72
    const/16 v7, -0x41

    .line 73
    .line 74
    if-ne v5, v7, :cond_4

    .line 75
    .line 76
    move v5, v3

    .line 77
    goto :goto_0

    .line 78
    :cond_4
    move v5, v4

    .line 79
    :goto_0
    move v7, v3

    .line 80
    move v8, v7

    .line 81
    move v2, v4

    .line 82
    move v9, v2

    .line 83
    move v10, v9

    .line 84
    move v11, v10

    .line 85
    move v12, v11

    .line 86
    move v13, v12

    .line 87
    move v14, v13

    .line 88
    move v15, v14

    .line 89
    move/from16 v16, v15

    .line 90
    .line 91
    move/from16 v17, v16

    .line 92
    .line 93
    move/from16 v18, v17

    .line 94
    .line 95
    :goto_1
    if-ge v9, v1, :cond_19

    .line 96
    .line 97
    if-nez v3, :cond_5

    .line 98
    .line 99
    if-nez v7, :cond_5

    .line 100
    .line 101
    if-eqz v8, :cond_19

    .line 102
    .line 103
    :cond_5
    aget-byte v6, v0, v9

    .line 104
    .line 105
    and-int/lit16 v6, v6, 0xff

    .line 106
    .line 107
    if-eqz v8, :cond_c

    .line 108
    .line 109
    if-lez v10, :cond_8

    .line 110
    .line 111
    and-int/lit16 v0, v6, 0x80

    .line 112
    .line 113
    if-nez v0, :cond_7

    .line 114
    .line 115
    :cond_6
    :goto_2
    const/4 v8, 0x0

    .line 116
    goto :goto_3

    .line 117
    :cond_7
    add-int/lit8 v10, v10, -0x1

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_8
    and-int/lit16 v0, v6, 0x80

    .line 121
    .line 122
    if-eqz v0, :cond_c

    .line 123
    .line 124
    and-int/lit8 v0, v6, 0x40

    .line 125
    .line 126
    if-nez v0, :cond_9

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 130
    .line 131
    and-int/lit8 v0, v6, 0x20

    .line 132
    .line 133
    if-nez v0, :cond_a

    .line 134
    .line 135
    add-int/lit8 v12, v12, 0x1

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 139
    .line 140
    and-int/lit8 v0, v6, 0x10

    .line 141
    .line 142
    if-nez v0, :cond_b

    .line 143
    .line 144
    add-int/lit8 v13, v13, 0x1

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_b
    add-int/lit8 v10, v10, 0x1

    .line 148
    .line 149
    and-int/lit8 v0, v6, 0x8

    .line 150
    .line 151
    if-nez v0, :cond_6

    .line 152
    .line 153
    add-int/lit8 v14, v14, 0x1

    .line 154
    .line 155
    :cond_c
    :goto_3
    const/16 v0, 0x7f

    .line 156
    .line 157
    if-eqz v3, :cond_f

    .line 158
    .line 159
    if-le v6, v0, :cond_d

    .line 160
    .line 161
    const/16 v0, 0xa0

    .line 162
    .line 163
    if-ge v6, v0, :cond_d

    .line 164
    .line 165
    const/4 v3, 0x0

    .line 166
    goto :goto_4

    .line 167
    :cond_d
    const/16 v0, 0x9f

    .line 168
    .line 169
    if-le v6, v0, :cond_f

    .line 170
    .line 171
    const/16 v0, 0xc0

    .line 172
    .line 173
    if-lt v6, v0, :cond_e

    .line 174
    .line 175
    const/16 v0, 0xd7

    .line 176
    .line 177
    if-eq v6, v0, :cond_e

    .line 178
    .line 179
    const/16 v0, 0xf7

    .line 180
    .line 181
    if-ne v6, v0, :cond_f

    .line 182
    .line 183
    :cond_e
    add-int/lit8 v16, v16, 0x1

    .line 184
    .line 185
    :cond_f
    :goto_4
    if-eqz v7, :cond_18

    .line 186
    .line 187
    if-lez v11, :cond_11

    .line 188
    .line 189
    const/16 v0, 0x40

    .line 190
    .line 191
    if-lt v6, v0, :cond_17

    .line 192
    .line 193
    const/16 v0, 0x7f

    .line 194
    .line 195
    if-eq v6, v0, :cond_17

    .line 196
    .line 197
    const/16 v0, 0xfc

    .line 198
    .line 199
    if-le v6, v0, :cond_10

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_10
    add-int/lit8 v11, v11, -0x1

    .line 203
    .line 204
    goto :goto_8

    .line 205
    :cond_11
    const/16 v0, 0x80

    .line 206
    .line 207
    if-eq v6, v0, :cond_17

    .line 208
    .line 209
    const/16 v0, 0xa0

    .line 210
    .line 211
    if-eq v6, v0, :cond_17

    .line 212
    .line 213
    const/16 v0, 0xef

    .line 214
    .line 215
    if-le v6, v0, :cond_12

    .line 216
    .line 217
    goto :goto_7

    .line 218
    :cond_12
    const/16 v0, 0xa0

    .line 219
    .line 220
    if-le v6, v0, :cond_14

    .line 221
    .line 222
    const/16 v0, 0xe0

    .line 223
    .line 224
    if-ge v6, v0, :cond_14

    .line 225
    .line 226
    add-int/lit8 v2, v2, 0x1

    .line 227
    .line 228
    add-int/lit8 v0, v18, 0x1

    .line 229
    .line 230
    if-le v0, v15, :cond_13

    .line 231
    .line 232
    move v15, v0

    .line 233
    move/from16 v18, v15

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_13
    move/from16 v18, v0

    .line 237
    .line 238
    :goto_5
    const/16 v17, 0x0

    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_14
    const/16 v0, 0x7f

    .line 242
    .line 243
    if-le v6, v0, :cond_16

    .line 244
    .line 245
    add-int/lit8 v11, v11, 0x1

    .line 246
    .line 247
    add-int/lit8 v0, v17, 0x1

    .line 248
    .line 249
    if-le v0, v4, :cond_15

    .line 250
    .line 251
    move v4, v0

    .line 252
    move/from16 v17, v4

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_15
    move/from16 v17, v0

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_16
    const/16 v17, 0x0

    .line 259
    .line 260
    :goto_6
    const/16 v18, 0x0

    .line 261
    .line 262
    goto :goto_8

    .line 263
    :cond_17
    :goto_7
    const/4 v7, 0x0

    .line 264
    :cond_18
    :goto_8
    add-int/lit8 v9, v9, 0x1

    .line 265
    .line 266
    move-object/from16 v0, p0

    .line 267
    .line 268
    const/4 v6, 0x3

    .line 269
    goto/16 :goto_1

    .line 270
    .line 271
    :cond_19
    if-eqz v8, :cond_1a

    .line 272
    .line 273
    if-lez v10, :cond_1a

    .line 274
    .line 275
    const/4 v8, 0x0

    .line 276
    :cond_1a
    if-eqz v7, :cond_1b

    .line 277
    .line 278
    if-lez v11, :cond_1b

    .line 279
    .line 280
    const/4 v7, 0x0

    .line 281
    :cond_1b
    if-eqz v8, :cond_1d

    .line 282
    .line 283
    if-nez v5, :cond_1c

    .line 284
    .line 285
    add-int/2addr v12, v13

    .line 286
    add-int/2addr v12, v14

    .line 287
    if-lez v12, :cond_1d

    .line 288
    .line 289
    :cond_1c
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 290
    .line 291
    return-object v0

    .line 292
    :cond_1d
    if-eqz v7, :cond_1f

    .line 293
    .line 294
    sget-boolean v0, Lj9/m;->e:Z

    .line 295
    .line 296
    if-nez v0, :cond_1e

    .line 297
    .line 298
    const/4 v0, 0x3

    .line 299
    if-ge v15, v0, :cond_1e

    .line 300
    .line 301
    if-lt v4, v0, :cond_1f

    .line 302
    .line 303
    :cond_1e
    sget-object v0, Lj9/m;->b:Ljava/nio/charset/Charset;

    .line 304
    .line 305
    return-object v0

    .line 306
    :cond_1f
    if-eqz v3, :cond_23

    .line 307
    .line 308
    if-eqz v7, :cond_23

    .line 309
    .line 310
    const/4 v0, 0x2

    .line 311
    if-ne v15, v0, :cond_20

    .line 312
    .line 313
    if-eq v2, v0, :cond_21

    .line 314
    .line 315
    :cond_20
    mul-int/lit8 v0, v16, 0xa

    .line 316
    .line 317
    if-lt v0, v1, :cond_22

    .line 318
    .line 319
    :cond_21
    sget-object v0, Lj9/m;->b:Ljava/nio/charset/Charset;

    .line 320
    .line 321
    goto :goto_9

    .line 322
    :cond_22
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 323
    .line 324
    :goto_9
    return-object v0

    .line 325
    :cond_23
    if-eqz v3, :cond_24

    .line 326
    .line 327
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 328
    .line 329
    return-object v0

    .line 330
    :cond_24
    if-eqz v7, :cond_25

    .line 331
    .line 332
    sget-object v0, Lj9/m;->b:Ljava/nio/charset/Charset;

    .line 333
    .line 334
    return-object v0

    .line 335
    :cond_25
    if-eqz v8, :cond_26

    .line 336
    .line 337
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 338
    .line 339
    return-object v0

    .line 340
    :cond_26
    sget-object v0, Lj9/m;->a:Ljava/nio/charset/Charset;

    .line 341
    .line 342
    return-object v0
.end method
