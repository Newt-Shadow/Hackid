.class public final Lcom/google/android/gms/measurement/internal/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 51

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Lo5/b;->x(Landroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    const-string v5, ""

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/16 v7, 0x64

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    const-wide/32 v9, -0x80000000

    .line 17
    .line 18
    .line 19
    move/from16 v22, v2

    .line 20
    .line 21
    move/from16 v28, v22

    .line 22
    .line 23
    move/from16 v30, v28

    .line 24
    .line 25
    move/from16 v38, v30

    .line 26
    .line 27
    move/from16 v43, v38

    .line 28
    .line 29
    move/from16 v50, v43

    .line 30
    .line 31
    move-wide/from16 v16, v3

    .line 32
    .line 33
    move-wide/from16 v18, v16

    .line 34
    .line 35
    move-wide/from16 v26, v18

    .line 36
    .line 37
    move-wide/from16 v32, v26

    .line 38
    .line 39
    move-wide/from16 v39, v32

    .line 40
    .line 41
    move-wide/from16 v44, v39

    .line 42
    .line 43
    move-wide/from16 v48, v44

    .line 44
    .line 45
    move-object/from16 v35, v5

    .line 46
    .line 47
    move-object/from16 v36, v35

    .line 48
    .line 49
    move-object/from16 v42, v36

    .line 50
    .line 51
    move-object/from16 v47, v42

    .line 52
    .line 53
    move-object v12, v6

    .line 54
    move-object v13, v12

    .line 55
    move-object v14, v13

    .line 56
    move-object v15, v14

    .line 57
    move-object/from16 v20, v15

    .line 58
    .line 59
    move-object/from16 v25, v20

    .line 60
    .line 61
    move-object/from16 v31, v25

    .line 62
    .line 63
    move-object/from16 v34, v31

    .line 64
    .line 65
    move-object/from16 v37, v34

    .line 66
    .line 67
    move-object/from16 v46, v37

    .line 68
    .line 69
    move/from16 v41, v7

    .line 70
    .line 71
    move/from16 v21, v8

    .line 72
    .line 73
    move/from16 v29, v21

    .line 74
    .line 75
    move-wide/from16 v23, v9

    .line 76
    .line 77
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-ge v2, v1, :cond_0

    .line 82
    .line 83
    invoke-static/range {p1 .. p1}, Lo5/b;->q(Landroid/os/Parcel;)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-static {v2}, Lo5/b;->k(I)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    packed-switch v3, :pswitch_data_0

    .line 92
    .line 93
    .line 94
    :pswitch_0
    invoke-static {v0, v2}, Lo5/b;->w(Landroid/os/Parcel;I)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_1
    invoke-static {v0, v2}, Lo5/b;->s(Landroid/os/Parcel;I)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    move/from16 v50, v2

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :pswitch_2
    invoke-static {v0, v2}, Lo5/b;->t(Landroid/os/Parcel;I)J

    .line 106
    .line 107
    .line 108
    move-result-wide v2

    .line 109
    move-wide/from16 v48, v2

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_3
    invoke-static {v0, v2}, Lo5/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    move-object/from16 v47, v2

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :pswitch_4
    invoke-static {v0, v2}, Lo5/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    move-object/from16 v46, v2

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :pswitch_5
    invoke-static {v0, v2}, Lo5/b;->t(Landroid/os/Parcel;I)J

    .line 127
    .line 128
    .line 129
    move-result-wide v2

    .line 130
    move-wide/from16 v44, v2

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :pswitch_6
    invoke-static {v0, v2}, Lo5/b;->s(Landroid/os/Parcel;I)I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    move/from16 v43, v2

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :pswitch_7
    invoke-static {v0, v2}, Lo5/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    move-object/from16 v42, v2

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :pswitch_8
    invoke-static {v0, v2}, Lo5/b;->s(Landroid/os/Parcel;I)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    move/from16 v41, v2

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :pswitch_9
    invoke-static {v0, v2}, Lo5/b;->t(Landroid/os/Parcel;I)J

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    move-wide/from16 v39, v2

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :pswitch_a
    invoke-static {v0, v2}, Lo5/b;->l(Landroid/os/Parcel;I)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    move/from16 v38, v2

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :pswitch_b
    invoke-static {v0, v2}, Lo5/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    move-object/from16 v37, v2

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :pswitch_c
    invoke-static {v0, v2}, Lo5/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    move-object/from16 v36, v2

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :pswitch_d
    invoke-static {v0, v2}, Lo5/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    move-object/from16 v35, v2

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :pswitch_e
    invoke-static {v0, v2}, Lo5/b;->g(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    move-object/from16 v34, v2

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :pswitch_f
    invoke-static {v0, v2}, Lo5/b;->t(Landroid/os/Parcel;I)J

    .line 197
    .line 198
    .line 199
    move-result-wide v2

    .line 200
    move-wide/from16 v32, v2

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :pswitch_10
    invoke-static {v0, v2}, Lo5/b;->m(Landroid/os/Parcel;I)Ljava/lang/Boolean;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    move-object/from16 v31, v2

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :pswitch_11
    invoke-static {v0, v2}, Lo5/b;->l(Landroid/os/Parcel;I)Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    move/from16 v30, v2

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :pswitch_12
    invoke-static {v0, v2}, Lo5/b;->l(Landroid/os/Parcel;I)Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    move/from16 v29, v2

    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :pswitch_13
    invoke-static {v0, v2}, Lo5/b;->s(Landroid/os/Parcel;I)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    move/from16 v28, v2

    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :pswitch_14
    invoke-static {v0, v2}, Lo5/b;->t(Landroid/os/Parcel;I)J

    .line 236
    .line 237
    .line 238
    move-result-wide v2

    .line 239
    move-wide/from16 v26, v2

    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :pswitch_15
    invoke-static {v0, v2}, Lo5/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    move-object/from16 v25, v2

    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :pswitch_16
    invoke-static {v0, v2}, Lo5/b;->t(Landroid/os/Parcel;I)J

    .line 252
    .line 253
    .line 254
    move-result-wide v2

    .line 255
    move-wide/from16 v23, v2

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :pswitch_17
    invoke-static {v0, v2}, Lo5/b;->l(Landroid/os/Parcel;I)Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    move/from16 v22, v2

    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :pswitch_18
    invoke-static {v0, v2}, Lo5/b;->l(Landroid/os/Parcel;I)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    move/from16 v21, v2

    .line 272
    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :pswitch_19
    invoke-static {v0, v2}, Lo5/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    move-object/from16 v20, v2

    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :pswitch_1a
    invoke-static {v0, v2}, Lo5/b;->t(Landroid/os/Parcel;I)J

    .line 284
    .line 285
    .line 286
    move-result-wide v2

    .line 287
    move-wide/from16 v18, v2

    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :pswitch_1b
    invoke-static {v0, v2}, Lo5/b;->t(Landroid/os/Parcel;I)J

    .line 292
    .line 293
    .line 294
    move-result-wide v2

    .line 295
    move-wide/from16 v16, v2

    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :pswitch_1c
    invoke-static {v0, v2}, Lo5/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    move-object v15, v2

    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :pswitch_1d
    invoke-static {v0, v2}, Lo5/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    move-object v14, v2

    .line 311
    goto/16 :goto_0

    .line 312
    .line 313
    :pswitch_1e
    invoke-static {v0, v2}, Lo5/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    move-object v13, v2

    .line 318
    goto/16 :goto_0

    .line 319
    .line 320
    :pswitch_1f
    invoke-static {v0, v2}, Lo5/b;->f(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    move-object v12, v2

    .line 325
    goto/16 :goto_0

    .line 326
    .line 327
    :cond_0
    invoke-static {v0, v1}, Lo5/b;->j(Landroid/os/Parcel;I)V

    .line 328
    .line 329
    .line 330
    new-instance v0, Lcom/google/android/gms/measurement/internal/ae;

    .line 331
    .line 332
    move-object v11, v0

    .line 333
    invoke-direct/range {v11 .. v50}, Lcom/google/android/gms/measurement/internal/ae;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    .line 334
    .line 335
    .line 336
    return-object v0

    .line 337
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/measurement/internal/ae;

    .line 2
    .line 3
    return-object p1
.end method
