.class final Lcom/google/android/gms/measurement/internal/d;
.super Lcom/google/android/gms/measurement/internal/c;
.source "SourceFile"


# instance fields
.field private final g:Lcom/google/android/gms/internal/measurement/m4;

.field final synthetic h:Lcom/google/android/gms/measurement/internal/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/e;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/m4;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/d;->h:Lcom/google/android/gms/measurement/internal/e;

    .line 5
    .line 6
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/c;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/google/android/gms/internal/measurement/m4;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/google/android/gms/internal/measurement/m4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m4;->D()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method final b()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method final c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method final k(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/w7;Z)Z
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/re;->a()Z

    .line 3
    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/d;->h:Lcom/google/android/gms/measurement/internal/e;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v4, Lcom/google/android/gms/measurement/internal/c5;->E0:Lcom/google/android/gms/measurement/internal/b5;

    .line 16
    .line 17
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/google/android/gms/internal/measurement/m4;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m4;->G()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m4;->H()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m4;->J()Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v8, 0x1

    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    if-nez v5, :cond_1

    .line 40
    .line 41
    if-eqz v6, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v4, v7

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    move v4, v8

    .line 47
    :goto_1
    const/4 v5, 0x0

    .line 48
    if-eqz p4, :cond_3

    .line 49
    .line 50
    if-nez v4, :cond_3

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget v2, v0, Lcom/google/android/gms/measurement/internal/c;->b:I

    .line 61
    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m4;->C()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m4;->D()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    :cond_2
    const-string v3, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 81
    .line 82
    invoke-virtual {v1, v3, v2, v5}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return v8

    .line 86
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m4;->F()Lcom/google/android/gms/internal/measurement/g4;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/g4;->H()Z

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/w7;->H()Z

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    if-eqz v11, :cond_5

    .line 99
    .line 100
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/g4;->E()Z

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    if-nez v11, :cond_4

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/w7;->E()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/i5;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    const-string v11, "No number filter for long property. property"

    .line 127
    .line 128
    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_2

    .line 132
    .line 133
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/w7;->I()J

    .line 134
    .line 135
    .line 136
    move-result-wide v11

    .line 137
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/g4;->F()Lcom/google/android/gms/internal/measurement/k4;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-static {v11, v12, v5}, Lcom/google/android/gms/measurement/internal/c;->g(JLcom/google/android/gms/internal/measurement/k4;)Ljava/lang/Boolean;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-static {v5, v10}, Lcom/google/android/gms/measurement/internal/c;->e(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    goto/16 :goto_2

    .line 150
    .line 151
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/w7;->L()Z

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    if-eqz v11, :cond_7

    .line 156
    .line 157
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/g4;->E()Z

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    if-nez v11, :cond_6

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/w7;->E()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/i5;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    const-string v11, "No number filter for double property. property"

    .line 184
    .line 185
    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_2

    .line 189
    .line 190
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/w7;->M()D

    .line 191
    .line 192
    .line 193
    move-result-wide v11

    .line 194
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/g4;->F()Lcom/google/android/gms/internal/measurement/k4;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-static {v11, v12, v5}, Lcom/google/android/gms/measurement/internal/c;->h(DLcom/google/android/gms/internal/measurement/k4;)Ljava/lang/Boolean;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-static {v5, v10}, Lcom/google/android/gms/measurement/internal/c;->e(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    goto/16 :goto_2

    .line 207
    .line 208
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/w7;->F()Z

    .line 209
    .line 210
    .line 211
    move-result v11

    .line 212
    if-eqz v11, :cond_b

    .line 213
    .line 214
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/g4;->C()Z

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    if-nez v11, :cond_a

    .line 219
    .line 220
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/g4;->E()Z

    .line 221
    .line 222
    .line 223
    move-result v11

    .line 224
    if-nez v11, :cond_8

    .line 225
    .line 226
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 235
    .line 236
    .line 237
    move-result-object v10

    .line 238
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/w7;->E()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/i5;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    const-string v11, "No string or number filter defined. property"

    .line 247
    .line 248
    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/w7;->G()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v11

    .line 256
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/td;->O(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v11

    .line 260
    if-eqz v11, :cond_9

    .line 261
    .line 262
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/w7;->G()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/g4;->F()Lcom/google/android/gms/internal/measurement/k4;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    invoke-static {v5, v9}, Lcom/google/android/gms/measurement/internal/c;->i(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/k4;)Ljava/lang/Boolean;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    invoke-static {v5, v10}, Lcom/google/android/gms/measurement/internal/c;->e(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    goto :goto_2

    .line 279
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 284
    .line 285
    .line 286
    move-result-object v9

    .line 287
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 288
    .line 289
    .line 290
    move-result-object v10

    .line 291
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/w7;->E()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v11

    .line 295
    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/i5;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v10

    .line 299
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/w7;->G()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v11

    .line 303
    const-string v12, "Invalid user property value for Numeric number filter. property, value"

    .line 304
    .line 305
    invoke-virtual {v9, v12, v10, v11}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/w7;->G()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/g4;->D()Lcom/google/android/gms/internal/measurement/q4;

    .line 314
    .line 315
    .line 316
    move-result-object v9

    .line 317
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 318
    .line 319
    .line 320
    move-result-object v11

    .line 321
    invoke-static {v5, v9, v11}, Lcom/google/android/gms/measurement/internal/c;->f(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/q4;Lcom/google/android/gms/measurement/internal/p5;)Ljava/lang/Boolean;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    invoke-static {v5, v10}, Lcom/google/android/gms/measurement/internal/c;->e(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    goto :goto_2

    .line 330
    :cond_b
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 335
    .line 336
    .line 337
    move-result-object v9

    .line 338
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 339
    .line 340
    .line 341
    move-result-object v10

    .line 342
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/w7;->E()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v11

    .line 346
    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/i5;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v10

    .line 350
    const-string v11, "User property has no value, property"

    .line 351
    .line 352
    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    if-nez v5, :cond_c

    .line 364
    .line 365
    const-string v9, "null"

    .line 366
    .line 367
    goto :goto_3

    .line 368
    :cond_c
    move-object v9, v5

    .line 369
    :goto_3
    const-string v10, "Property filter result"

    .line 370
    .line 371
    invoke-virtual {v1, v10, v9}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    if-nez v5, :cond_d

    .line 375
    .line 376
    return v7

    .line 377
    :cond_d
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 378
    .line 379
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/c;->c:Ljava/lang/Boolean;

    .line 380
    .line 381
    if-eqz v6, :cond_f

    .line 382
    .line 383
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-eqz v1, :cond_e

    .line 388
    .line 389
    goto :goto_4

    .line 390
    :cond_e
    return v8

    .line 391
    :cond_f
    :goto_4
    if-eqz p4, :cond_10

    .line 392
    .line 393
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m4;->G()Z

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    if-eqz v1, :cond_11

    .line 398
    .line 399
    :cond_10
    iput-object v5, v0, Lcom/google/android/gms/measurement/internal/c;->d:Ljava/lang/Boolean;

    .line 400
    .line 401
    :cond_11
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-eqz v1, :cond_15

    .line 406
    .line 407
    if-eqz v4, :cond_15

    .line 408
    .line 409
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/w7;->C()Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-eqz v1, :cond_15

    .line 414
    .line 415
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/w7;->D()J

    .line 416
    .line 417
    .line 418
    move-result-wide v4

    .line 419
    if-eqz p1, :cond_12

    .line 420
    .line 421
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 422
    .line 423
    .line 424
    move-result-wide v4

    .line 425
    :cond_12
    if-eqz v2, :cond_13

    .line 426
    .line 427
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m4;->G()Z

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    if-eqz v1, :cond_13

    .line 432
    .line 433
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m4;->H()Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-nez v1, :cond_13

    .line 438
    .line 439
    if-eqz p2, :cond_13

    .line 440
    .line 441
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 442
    .line 443
    .line 444
    move-result-wide v4

    .line 445
    :cond_13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m4;->H()Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_14

    .line 450
    .line 451
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/c;->f:Ljava/lang/Long;

    .line 456
    .line 457
    goto :goto_5

    .line 458
    :cond_14
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/c;->e:Ljava/lang/Long;

    .line 463
    .line 464
    :cond_15
    :goto_5
    return v8
.end method
