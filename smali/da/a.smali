.class public abstract Lda/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/media/Image;)Lorg/opencv/core/Mat;
    .locals 24

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/opencv/core/Mat;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "getPlanes(...)"

    .line 18
    .line 19
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v4, 0x1

    .line 31
    aget-object v5, v2, v4

    .line 32
    .line 33
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v11, 0x2

    .line 39
    if-ne v5, v11, :cond_1

    .line 40
    .line 41
    aget-object v5, v2, v6

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 44
    .line 45
    .line 46
    aget-object v5, v2, v11

    .line 47
    .line 48
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 49
    .line 50
    .line 51
    aget-object v5, v2, v6

    .line 52
    .line 53
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    aget-object v5, v2, v6

    .line 58
    .line 59
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    aget-object v6, v2, v4

    .line 64
    .line 65
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    .line 68
    move-result-object v16

    .line 69
    aget-object v4, v2, v4

    .line 70
    .line 71
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    aget-object v4, v2, v11

    .line 76
    .line 77
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 78
    .line 79
    .line 80
    move-result-object v21

    .line 81
    aget-object v2, v2, v11

    .line 82
    .line 83
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    new-instance v15, Lorg/opencv/core/Mat;

    .line 88
    .line 89
    sget v7, Llf/a;->a:I

    .line 90
    .line 91
    int-to-long v9, v5

    .line 92
    move-object v4, v15

    .line 93
    move v5, v1

    .line 94
    move v6, v3

    .line 95
    invoke-direct/range {v4 .. v10}, Lorg/opencv/core/Mat;-><init>(IIILjava/nio/ByteBuffer;J)V

    .line 96
    .line 97
    .line 98
    new-instance v4, Lorg/opencv/core/Mat;

    .line 99
    .line 100
    div-int/2addr v1, v11

    .line 101
    div-int/lit8 v19, v3, 0x2

    .line 102
    .line 103
    sget v20, Llf/a;->b:I

    .line 104
    .line 105
    int-to-long v5, v12

    .line 106
    move-object v12, v4

    .line 107
    move v13, v1

    .line 108
    move/from16 v14, v19

    .line 109
    .line 110
    move-object v3, v15

    .line 111
    move/from16 v15, v20

    .line 112
    .line 113
    move-wide/from16 v17, v5

    .line 114
    .line 115
    invoke-direct/range {v12 .. v18}, Lorg/opencv/core/Mat;-><init>(IIILjava/nio/ByteBuffer;J)V

    .line 116
    .line 117
    .line 118
    new-instance v5, Lorg/opencv/core/Mat;

    .line 119
    .line 120
    int-to-long v6, v2

    .line 121
    move-object/from16 v17, v5

    .line 122
    .line 123
    move/from16 v18, v1

    .line 124
    .line 125
    move-wide/from16 v22, v6

    .line 126
    .line 127
    invoke-direct/range {v17 .. v23}, Lorg/opencv/core/Mat;-><init>(IIILjava/nio/ByteBuffer;J)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5}, Lorg/opencv/core/Mat;->b()J

    .line 131
    .line 132
    .line 133
    move-result-wide v1

    .line 134
    invoke-virtual {v4}, Lorg/opencv/core/Mat;->b()J

    .line 135
    .line 136
    .line 137
    move-result-wide v6

    .line 138
    sub-long/2addr v1, v6

    .line 139
    const-wide/16 v6, 0x0

    .line 140
    .line 141
    cmp-long v1, v1, v6

    .line 142
    .line 143
    if-lez v1, :cond_0

    .line 144
    .line 145
    const/16 v1, 0x5a

    .line 146
    .line 147
    invoke-static {v3, v4, v0, v1}, Lorg/opencv/imgproc/Imgproc;->b(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_5

    .line 151
    .line 152
    :cond_0
    const/16 v1, 0x5c

    .line 153
    .line 154
    invoke-static {v3, v5, v0, v1}, Lorg/opencv/imgproc/Imgproc;->b(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_5

    .line 158
    .line 159
    :cond_1
    div-int/lit8 v5, v1, 0x2

    .line 160
    .line 161
    add-int v7, v1, v5

    .line 162
    .line 163
    mul-int v8, v3, v7

    .line 164
    .line 165
    new-array v8, v8, [B

    .line 166
    .line 167
    aget-object v9, v2, v6

    .line 168
    .line 169
    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    aget-object v10, v2, v4

    .line 174
    .line 175
    invoke-virtual {v10}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    aget-object v11, v2, v11

    .line 180
    .line 181
    invoke-virtual {v11}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    aget-object v12, v2, v6

    .line 186
    .line 187
    invoke-virtual {v12}, Landroid/media/Image$Plane;->getRowStride()I

    .line 188
    .line 189
    .line 190
    move-result v12

    .line 191
    if-ne v12, v3, :cond_2

    .line 192
    .line 193
    mul-int v12, v3, v1

    .line 194
    .line 195
    invoke-virtual {v9, v8, v6, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_2
    sub-int/2addr v12, v3

    .line 200
    move v13, v6

    .line 201
    move v14, v13

    .line 202
    :goto_0
    if-ge v14, v1, :cond_4

    .line 203
    .line 204
    invoke-virtual {v9, v8, v13, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 205
    .line 206
    .line 207
    add-int/2addr v13, v3

    .line 208
    add-int/lit8 v15, v1, -0x1

    .line 209
    .line 210
    if-ge v14, v15, :cond_3

    .line 211
    .line 212
    invoke-virtual {v9}, Ljava/nio/Buffer;->position()I

    .line 213
    .line 214
    .line 215
    move-result v15

    .line 216
    add-int/2addr v15, v12

    .line 217
    invoke-virtual {v9, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 218
    .line 219
    .line 220
    :cond_3
    add-int/lit8 v14, v14, 0x1

    .line 221
    .line 222
    goto :goto_0

    .line 223
    :cond_4
    move v12, v13

    .line 224
    :goto_1
    aget-object v2, v2, v4

    .line 225
    .line 226
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    div-int/lit8 v4, v3, 0x2

    .line 231
    .line 232
    sub-int/2addr v2, v4

    .line 233
    const/4 v9, 0x4

    .line 234
    if-nez v2, :cond_5

    .line 235
    .line 236
    mul-int/2addr v1, v3

    .line 237
    div-int/2addr v1, v9

    .line 238
    invoke-virtual {v10, v8, v12, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 239
    .line 240
    .line 241
    add-int/2addr v12, v1

    .line 242
    invoke-virtual {v11, v8, v12, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_5
    move v1, v6

    .line 247
    :goto_2
    if-ge v1, v5, :cond_7

    .line 248
    .line 249
    invoke-virtual {v10, v8, v12, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 250
    .line 251
    .line 252
    add-int/2addr v12, v4

    .line 253
    add-int/lit8 v13, v5, -0x1

    .line 254
    .line 255
    if-ge v1, v13, :cond_6

    .line 256
    .line 257
    invoke-virtual {v10}, Ljava/nio/Buffer;->position()I

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    add-int/2addr v13, v2

    .line 262
    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 263
    .line 264
    .line 265
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 266
    .line 267
    goto :goto_2

    .line 268
    :cond_7
    move v1, v6

    .line 269
    :goto_3
    if-ge v1, v5, :cond_9

    .line 270
    .line 271
    invoke-virtual {v11, v8, v12, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 272
    .line 273
    .line 274
    add-int/2addr v12, v4

    .line 275
    add-int/lit8 v10, v5, -0x1

    .line 276
    .line 277
    if-ge v1, v10, :cond_8

    .line 278
    .line 279
    invoke-virtual {v11}, Ljava/nio/Buffer;->position()I

    .line 280
    .line 281
    .line 282
    move-result v10

    .line 283
    add-int/2addr v10, v2

    .line 284
    invoke-virtual {v11, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 285
    .line 286
    .line 287
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 288
    .line 289
    goto :goto_3

    .line 290
    :cond_9
    :goto_4
    new-instance v1, Lorg/opencv/core/Mat;

    .line 291
    .line 292
    sget v2, Llf/a;->a:I

    .line 293
    .line 294
    invoke-direct {v1, v7, v3, v2}, Lorg/opencv/core/Mat;-><init>(III)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1, v6, v6, v8}, Lorg/opencv/core/Mat;->g(II[B)I

    .line 298
    .line 299
    .line 300
    const/16 v2, 0x64

    .line 301
    .line 302
    invoke-static {v1, v0, v2, v9}, Lorg/opencv/imgproc/Imgproc;->a(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;II)V

    .line 303
    .line 304
    .line 305
    :goto_5
    return-object v0
.end method
