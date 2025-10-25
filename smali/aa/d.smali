.class abstract Laa/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Laa/d;->a:[C

    .line 8
    .line 9
    return-void
.end method

.method static a([BLaa/j;Laa/f;Ljava/util/Map;)Lj9/e;
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v7, Lj9/c;

    .line 4
    .line 5
    move-object/from16 v9, p0

    .line 6
    .line 7
    invoke-direct {v7, v9}, Lj9/c;-><init>([B)V

    .line 8
    .line 9
    .line 10
    new-instance v8, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const/16 v1, 0x32

    .line 13
    .line 14
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v10, Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 v11, 0x1

    .line 20
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v12, 0x0

    .line 25
    const/4 v2, -0x1

    .line 26
    move v13, v1

    .line 27
    move v14, v13

    .line 28
    move v15, v14

    .line 29
    move/from16 v16, v2

    .line 30
    .line 31
    move/from16 v17, v16

    .line 32
    .line 33
    move-object/from16 v18, v12

    .line 34
    .line 35
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Lj9/c;->a()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v6, 0x4

    .line 40
    if-ge v1, v6, :cond_0

    .line 41
    .line 42
    sget-object v1, Laa/h;->c:Laa/h;

    .line 43
    .line 44
    :goto_1
    move-object v5, v1

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    invoke-virtual {v7, v6}, Lj9/c;->d(I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v1}, Laa/h;->b(I)Laa/h;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    goto :goto_1

    .line 55
    :goto_2
    sget-object v1, Laa/d$a;->a:[I

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    aget v2, v1, v2

    .line 62
    .line 63
    const/4 v4, 0x2

    .line 64
    const/4 v3, 0x3

    .line 65
    packed-switch v2, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v0}, Laa/h;->f(Laa/j;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    goto :goto_5

    .line 73
    :pswitch_0
    invoke-virtual {v7, v6}, Lj9/c;->d(I)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v5, v0}, Laa/h;->f(Laa/j;)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v7, v2}, Lj9/c;->d(I)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-ne v1, v11, :cond_1

    .line 86
    .line 87
    invoke-static {v7, v8, v2}, Laa/d;->d(Lj9/c;Ljava/lang/StringBuilder;I)V

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :pswitch_1
    invoke-static {v7}, Laa/d;->g(Lj9/c;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-static {v1}, Lj9/d;->b(I)Lj9/d;

    .line 96
    .line 97
    .line 98
    move-result-object v18

    .line 99
    if-eqz v18, :cond_2

    .line 100
    .line 101
    :cond_1
    :goto_3
    :pswitch_2
    move/from16 v20, v3

    .line 102
    .line 103
    move/from16 v19, v4

    .line 104
    .line 105
    move-object v11, v5

    .line 106
    move/from16 v21, v6

    .line 107
    .line 108
    goto/16 :goto_6

    .line 109
    .line 110
    :cond_2
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    throw v0

    .line 115
    :pswitch_3
    invoke-virtual {v7}, Lj9/c;->a()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const/16 v2, 0x10

    .line 120
    .line 121
    if-lt v1, v2, :cond_3

    .line 122
    .line 123
    const/16 v1, 0x8

    .line 124
    .line 125
    invoke-virtual {v7, v1}, Lj9/c;->d(I)I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-virtual {v7, v1}, Lj9/c;->d(I)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    move/from16 v17, v1

    .line 134
    .line 135
    move/from16 v16, v2

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_3
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    throw v0

    .line 143
    :pswitch_4
    move/from16 v20, v3

    .line 144
    .line 145
    move/from16 v19, v4

    .line 146
    .line 147
    move/from16 v21, v6

    .line 148
    .line 149
    move v13, v11

    .line 150
    move v15, v13

    .line 151
    goto :goto_4

    .line 152
    :pswitch_5
    move/from16 v20, v3

    .line 153
    .line 154
    move/from16 v19, v4

    .line 155
    .line 156
    move/from16 v21, v6

    .line 157
    .line 158
    move v13, v11

    .line 159
    move v14, v13

    .line 160
    :goto_4
    move-object v11, v5

    .line 161
    goto :goto_6

    .line 162
    :goto_5
    invoke-virtual {v7, v2}, Lj9/c;->d(I)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 167
    .line 168
    .line 169
    move-result v19

    .line 170
    aget v1, v1, v19

    .line 171
    .line 172
    if-eq v1, v11, :cond_7

    .line 173
    .line 174
    if-eq v1, v4, :cond_6

    .line 175
    .line 176
    if-eq v1, v3, :cond_5

    .line 177
    .line 178
    if-ne v1, v6, :cond_4

    .line 179
    .line 180
    invoke-static {v7, v8, v2}, Laa/d;->e(Lj9/c;Ljava/lang/StringBuilder;I)V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_4
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    throw v0

    .line 189
    :cond_5
    move-object v1, v7

    .line 190
    move/from16 v19, v2

    .line 191
    .line 192
    move-object v2, v8

    .line 193
    move/from16 v20, v3

    .line 194
    .line 195
    move/from16 v3, v19

    .line 196
    .line 197
    move/from16 v19, v4

    .line 198
    .line 199
    move-object/from16 v4, v18

    .line 200
    .line 201
    move-object v11, v5

    .line 202
    move-object v5, v10

    .line 203
    move/from16 v21, v6

    .line 204
    .line 205
    move-object/from16 v6, p3

    .line 206
    .line 207
    invoke-static/range {v1 .. v6}, Laa/d;->c(Lj9/c;Ljava/lang/StringBuilder;ILj9/d;Ljava/util/Collection;Ljava/util/Map;)V

    .line 208
    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_6
    move v1, v2

    .line 212
    move/from16 v20, v3

    .line 213
    .line 214
    move/from16 v19, v4

    .line 215
    .line 216
    move-object v11, v5

    .line 217
    move/from16 v21, v6

    .line 218
    .line 219
    invoke-static {v7, v8, v1, v13}, Laa/d;->b(Lj9/c;Ljava/lang/StringBuilder;IZ)V

    .line 220
    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_7
    move v1, v2

    .line 224
    move/from16 v20, v3

    .line 225
    .line 226
    move/from16 v19, v4

    .line 227
    .line 228
    move-object v11, v5

    .line 229
    move/from16 v21, v6

    .line 230
    .line 231
    invoke-static {v7, v8, v1}, Laa/d;->f(Lj9/c;Ljava/lang/StringBuilder;I)V

    .line 232
    .line 233
    .line 234
    :goto_6
    sget-object v1, Laa/h;->c:Laa/h;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .line 236
    if-ne v11, v1, :cond_f

    .line 237
    .line 238
    if-eqz v18, :cond_a

    .line 239
    .line 240
    if-eqz v14, :cond_8

    .line 241
    .line 242
    move/from16 v15, v21

    .line 243
    .line 244
    goto :goto_8

    .line 245
    :cond_8
    if-eqz v15, :cond_9

    .line 246
    .line 247
    const/4 v0, 0x6

    .line 248
    goto :goto_7

    .line 249
    :cond_9
    move/from16 v15, v19

    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_a
    if-eqz v14, :cond_b

    .line 253
    .line 254
    move/from16 v15, v20

    .line 255
    .line 256
    goto :goto_8

    .line 257
    :cond_b
    if-eqz v15, :cond_c

    .line 258
    .line 259
    const/4 v0, 0x5

    .line 260
    :goto_7
    move v15, v0

    .line 261
    goto :goto_8

    .line 262
    :cond_c
    const/4 v15, 0x1

    .line 263
    :goto_8
    new-instance v0, Lj9/e;

    .line 264
    .line 265
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eqz v2, :cond_d

    .line 274
    .line 275
    move-object v11, v12

    .line 276
    goto :goto_9

    .line 277
    :cond_d
    move-object v11, v10

    .line 278
    :goto_9
    if-nez p2, :cond_e

    .line 279
    .line 280
    goto :goto_a

    .line 281
    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    move-object v12, v2

    .line 286
    :goto_a
    move-object v8, v0

    .line 287
    move-object/from16 v9, p0

    .line 288
    .line 289
    move-object v10, v1

    .line 290
    move/from16 v13, v16

    .line 291
    .line 292
    move/from16 v14, v17

    .line 293
    .line 294
    invoke-direct/range {v8 .. v15}, Lj9/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;III)V

    .line 295
    .line 296
    .line 297
    return-object v0

    .line 298
    :cond_f
    const/4 v11, 0x1

    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :catch_0
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    throw v0

    .line 306
    nop

    .line 307
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lj9/c;Ljava/lang/StringBuilder;IZ)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    const/4 v1, 0x1

    .line 6
    if-le p2, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lj9/c;->a()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0xb

    .line 13
    .line 14
    if-lt v1, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lj9/c;->d(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    div-int/lit8 v2, v1, 0x2d

    .line 21
    .line 22
    invoke-static {v2}, Laa/d;->h(I)C

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    rem-int/lit8 v1, v1, 0x2d

    .line 30
    .line 31
    invoke-static {v1}, Laa/d;->h(I)C

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    add-int/lit8 p2, p2, -0x2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    throw p0

    .line 46
    :cond_1
    if-ne p2, v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Lj9/c;->a()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const/4 v2, 0x6

    .line 53
    if-lt p2, v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Lj9/c;->d(I)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    invoke-static {p0}, Laa/d;->h(I)C

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    throw p0

    .line 72
    :cond_3
    :goto_1
    if-eqz p3, :cond_6

    .line 73
    .line 74
    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-ge v0, p0, :cond_6

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    const/16 p2, 0x25

    .line 85
    .line 86
    if-ne p0, p2, :cond_5

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    sub-int/2addr p0, v1

    .line 93
    if-ge v0, p0, :cond_4

    .line 94
    .line 95
    add-int/lit8 p0, v0, 0x1

    .line 96
    .line 97
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    if-ne p3, p2, :cond_4

    .line 102
    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    const/16 p0, 0x1d

    .line 108
    .line 109
    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 110
    .line 111
    .line 112
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    return-void
.end method

.method private static c(Lj9/c;Ljava/lang/StringBuilder;ILj9/d;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3

    .line 1
    mul-int/lit8 v0, p2, 0x8

    .line 2
    .line 3
    invoke-virtual {p0}, Lj9/c;->a()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gt v0, v1, :cond_2

    .line 8
    .line 9
    new-array v0, p2, [B

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, p2, :cond_0

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lj9/c;->d(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    int-to-byte v2, v2

    .line 21
    aput-byte v2, v0, v1

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-nez p3, :cond_1

    .line 27
    .line 28
    invoke-static {v0, p5}, Lj9/m;->a([BLjava/util/Map;)Ljava/nio/charset/Charset;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p3}, Lj9/d;->f()Ljava/nio/charset/Charset;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_1
    new-instance p2, Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {p2, v0, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    throw p0
.end method

.method private static d(Lj9/c;Ljava/lang/StringBuilder;I)V
    .locals 4

    .line 1
    sget-object v0, Lj9/m;->c:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    mul-int/lit8 v0, p2, 0xd

    .line 6
    .line 7
    invoke-virtual {p0}, Lj9/c;->a()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-gt v0, v1, :cond_2

    .line 12
    .line 13
    mul-int/lit8 v0, p2, 0x2

    .line 14
    .line 15
    new-array v0, v0, [B

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-lez p2, :cond_1

    .line 19
    .line 20
    const/16 v2, 0xd

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Lj9/c;->d(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    div-int/lit8 v3, v2, 0x60

    .line 27
    .line 28
    shl-int/lit8 v3, v3, 0x8

    .line 29
    .line 30
    rem-int/lit8 v2, v2, 0x60

    .line 31
    .line 32
    or-int/2addr v2, v3

    .line 33
    const/16 v3, 0xa00

    .line 34
    .line 35
    if-ge v2, v3, :cond_0

    .line 36
    .line 37
    const v3, 0xa1a1

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const v3, 0xa6a1

    .line 42
    .line 43
    .line 44
    :goto_1
    add-int/2addr v2, v3

    .line 45
    shr-int/lit8 v3, v2, 0x8

    .line 46
    .line 47
    and-int/lit16 v3, v3, 0xff

    .line 48
    .line 49
    int-to-byte v3, v3

    .line 50
    aput-byte v3, v0, v1

    .line 51
    .line 52
    add-int/lit8 v3, v1, 0x1

    .line 53
    .line 54
    and-int/lit16 v2, v2, 0xff

    .line 55
    .line 56
    int-to-byte v2, v2

    .line 57
    aput-byte v2, v0, v3

    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x2

    .line 60
    .line 61
    add-int/lit8 p2, p2, -0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/String;

    .line 65
    .line 66
    sget-object p2, Lj9/m;->c:Ljava/nio/charset/Charset;

    .line 67
    .line 68
    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    throw p0

    .line 80
    :cond_3
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    throw p0
.end method

.method private static e(Lj9/c;Ljava/lang/StringBuilder;I)V
    .locals 4

    .line 1
    mul-int/lit8 v0, p2, 0xd

    .line 2
    .line 3
    invoke-virtual {p0}, Lj9/c;->a()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-gt v0, v1, :cond_2

    .line 8
    .line 9
    mul-int/lit8 v0, p2, 0x2

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-lez p2, :cond_1

    .line 15
    .line 16
    const/16 v2, 0xd

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lj9/c;->d(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    div-int/lit16 v3, v2, 0xc0

    .line 23
    .line 24
    shl-int/lit8 v3, v3, 0x8

    .line 25
    .line 26
    rem-int/lit16 v2, v2, 0xc0

    .line 27
    .line 28
    or-int/2addr v2, v3

    .line 29
    const/16 v3, 0x1f00

    .line 30
    .line 31
    if-ge v2, v3, :cond_0

    .line 32
    .line 33
    const v3, 0x8140

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const v3, 0xc140

    .line 38
    .line 39
    .line 40
    :goto_1
    add-int/2addr v2, v3

    .line 41
    shr-int/lit8 v3, v2, 0x8

    .line 42
    .line 43
    int-to-byte v3, v3

    .line 44
    aput-byte v3, v0, v1

    .line 45
    .line 46
    add-int/lit8 v3, v1, 0x1

    .line 47
    .line 48
    int-to-byte v2, v2

    .line 49
    aput-byte v2, v0, v3

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x2

    .line 52
    .line 53
    add-int/lit8 p2, p2, -0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance p0, Ljava/lang/String;

    .line 57
    .line 58
    sget-object p2, Lj9/m;->b:Ljava/nio/charset/Charset;

    .line 59
    .line 60
    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    throw p0
.end method

.method private static f(Lj9/c;Ljava/lang/StringBuilder;I)V
    .locals 3

    .line 1
    :goto_0
    const/4 v0, 0x3

    .line 2
    const/16 v1, 0xa

    .line 3
    .line 4
    if-lt p2, v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Lj9/c;->a()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lt v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lj9/c;->d(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v2, 0x3e8

    .line 17
    .line 18
    if-ge v0, v2, :cond_0

    .line 19
    .line 20
    div-int/lit8 v2, v0, 0x64

    .line 21
    .line 22
    invoke-static {v2}, Laa/d;->h(I)C

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    div-int/lit8 v2, v0, 0xa

    .line 30
    .line 31
    rem-int/2addr v2, v1

    .line 32
    invoke-static {v2}, Laa/d;->h(I)C

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    rem-int/lit8 v0, v0, 0xa

    .line 40
    .line 41
    invoke-static {v0}, Laa/d;->h(I)C

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    add-int/lit8 p2, p2, -0x3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    throw p0

    .line 56
    :cond_1
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    throw p0

    .line 61
    :cond_2
    const/4 v0, 0x2

    .line 62
    if-ne p2, v0, :cond_5

    .line 63
    .line 64
    invoke-virtual {p0}, Lj9/c;->a()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    const/4 v0, 0x7

    .line 69
    if-lt p2, v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lj9/c;->d(I)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    const/16 p2, 0x64

    .line 76
    .line 77
    if-ge p0, p2, :cond_3

    .line 78
    .line 79
    div-int/lit8 p2, p0, 0xa

    .line 80
    .line 81
    invoke-static {p2}, Laa/d;->h(I)C

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    rem-int/2addr p0, v1

    .line 89
    invoke-static {p0}, Laa/d;->h(I)C

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    throw p0

    .line 102
    :cond_4
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    throw p0

    .line 107
    :cond_5
    const/4 v0, 0x1

    .line 108
    if-ne p2, v0, :cond_8

    .line 109
    .line 110
    invoke-virtual {p0}, Lj9/c;->a()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    const/4 v0, 0x4

    .line 115
    if-lt p2, v0, :cond_7

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Lj9/c;->d(I)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-ge p0, v1, :cond_6

    .line 122
    .line 123
    invoke-static {p0}, Laa/d;->h(I)C

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_6
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    throw p0

    .line 136
    :cond_7
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    throw p0

    .line 141
    :cond_8
    :goto_1
    return-void
.end method

.method private static g(Lj9/c;)I
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lj9/c;->d(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    and-int/lit16 v2, v1, 0x80

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    and-int/lit8 p0, v1, 0x7f

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    and-int/lit16 v2, v1, 0xc0

    .line 15
    .line 16
    const/16 v3, 0x80

    .line 17
    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lj9/c;->d(I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    and-int/lit8 v1, v1, 0x3f

    .line 25
    .line 26
    shl-int/lit8 v0, v1, 0x8

    .line 27
    .line 28
    or-int/2addr p0, v0

    .line 29
    return p0

    .line 30
    :cond_1
    and-int/lit16 v0, v1, 0xe0

    .line 31
    .line 32
    const/16 v2, 0xc0

    .line 33
    .line 34
    if-ne v0, v2, :cond_2

    .line 35
    .line 36
    const/16 v0, 0x10

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lj9/c;->d(I)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    and-int/lit8 v1, v1, 0x1f

    .line 43
    .line 44
    shl-int/lit8 v0, v1, 0x10

    .line 45
    .line 46
    or-int/2addr p0, v0

    .line 47
    return p0

    .line 48
    :cond_2
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    throw p0
.end method

.method private static h(I)C
    .locals 2

    .line 1
    sget-object v0, Laa/d;->a:[C

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge p0, v1, :cond_0

    .line 5
    .line 6
    aget-char p0, v0, p0

    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    throw p0
.end method
