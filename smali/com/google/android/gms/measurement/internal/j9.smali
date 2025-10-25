.class final Lcom/google/android/gms/measurement/internal/j9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/google/android/gms/measurement/internal/k9;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/k9;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/j9;->a:Z

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/j9;->b:Landroid/net/Uri;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/j9;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/j9;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j9;->e:Lcom/google/android/gms/measurement/internal/k9;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/j9;->e:Lcom/google/android/gms/measurement/internal/k9;

    .line 4
    .line 5
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/k9;->a:Lcom/google/android/gms/measurement/internal/w9;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 8
    .line 9
    .line 10
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/j9;->d:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/j9;->b:Landroid/net/Uri;

    .line 13
    .line 14
    :try_start_0
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 15
    .line 16
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    const-string v7, "https://google.com/search?"

    .line 21
    .line 22
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 26
    const-string v9, "Activity created with data \'referrer\' without required params"

    .line 27
    .line 28
    const-string v10, "utm_medium"

    .line 29
    .line 30
    const-string v11, "utm_source"

    .line 31
    .line 32
    const-string v12, "utm_campaign"

    .line 33
    .line 34
    const-string v13, "_cis"

    .line 35
    .line 36
    const-string v15, "gclid"

    .line 37
    .line 38
    if-eqz v8, :cond_0

    .line 39
    .line 40
    :goto_0
    const/4 v6, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :try_start_1
    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-nez v8, :cond_1

    .line 47
    .line 48
    const-string v8, "gbraid"

    .line 49
    .line 50
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-nez v8, :cond_1

    .line 55
    .line 56
    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-nez v8, :cond_1

    .line 61
    .line 62
    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-nez v8, :cond_1

    .line 67
    .line 68
    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-nez v8, :cond_1

    .line 73
    .line 74
    const-string v8, "utm_id"

    .line 75
    .line 76
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-nez v8, :cond_1

    .line 81
    .line 82
    const-string v8, "dclid"

    .line 83
    .line 84
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-nez v8, :cond_1

    .line 89
    .line 90
    const-string v8, "srsltid"

    .line 91
    .line 92
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-nez v8, :cond_1

    .line 97
    .line 98
    const-string v8, "sfmc_id"

    .line 99
    .line 100
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-nez v8, :cond_1

    .line 105
    .line 106
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 107
    .line 108
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/yd;->s0(Landroid/net/Uri;)Landroid/os/Bundle;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    if-eqz v6, :cond_2

    .line 133
    .line 134
    const-string v7, "referrer"

    .line 135
    .line 136
    invoke-virtual {v6, v13, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    .line 138
    .line 139
    :cond_2
    :goto_1
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/j9;->c:Ljava/lang/String;

    .line 140
    .line 141
    iget-boolean v8, v1, Lcom/google/android/gms/measurement/internal/j9;->a:Z

    .line 142
    .line 143
    const-string v14, "_cmp"

    .line 144
    .line 145
    const/4 v1, 0x1

    .line 146
    if-eqz v8, :cond_4

    .line 147
    .line 148
    :try_start_2
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-virtual {v8, v4}, Lcom/google/android/gms/measurement/internal/yd;->s0(Landroid/net/Uri;)Landroid/os/Bundle;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    if-eqz v4, :cond_4

    .line 157
    .line 158
    const-string v8, "intent"

    .line 159
    .line 160
    invoke-virtual {v4, v13, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v15}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-nez v8, :cond_3

    .line 168
    .line 169
    if-eqz v6, :cond_3

    .line 170
    .line 171
    invoke-virtual {v6, v15}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-eqz v8, :cond_3

    .line 176
    .line 177
    const-string v8, "_cer"

    .line 178
    .line 179
    const-string v13, "gclid=%s"
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 180
    .line 181
    move-object/from16 v16, v2

    .line 182
    .line 183
    :try_start_3
    new-array v2, v1, [Ljava/lang/Object;

    .line 184
    .line 185
    invoke-virtual {v6, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v17

    .line 189
    const/16 v18, 0x0

    .line 190
    .line 191
    aput-object v17, v2, v18

    .line 192
    .line 193
    invoke-static {v13, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v4, v8, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_3
    move-object/from16 v16, v2

    .line 202
    .line 203
    :goto_2
    invoke-virtual {v0, v7, v14, v4}, Lcom/google/android/gms/measurement/internal/w9;->t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 204
    .line 205
    .line 206
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/w9;->r:Lcom/google/android/gms/measurement/internal/ge;

    .line 207
    .line 208
    invoke-virtual {v2, v7, v4}, Lcom/google/android/gms/measurement/internal/ge;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_4
    move-object/from16 v16, v2

    .line 213
    .line 214
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-eqz v2, :cond_5

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_5
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    const-string v4, "Activity created with referrer"

    .line 230
    .line 231
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    sget-object v4, Lcom/google/android/gms/measurement/internal/c5;->H0:Lcom/google/android/gms/measurement/internal/b5;

    .line 239
    .line 240
    const/4 v8, 0x0

    .line 241
    invoke-virtual {v2, v8, v4}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 242
    .line 243
    .line 244
    move-result v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 245
    const-string v4, "_ldl"

    .line 246
    .line 247
    const-string v8, "auto"

    .line 248
    .line 249
    if-eqz v2, :cond_7

    .line 250
    .line 251
    if-eqz v6, :cond_6

    .line 252
    .line 253
    :try_start_4
    invoke-virtual {v0, v7, v14, v6}, Lcom/google/android/gms/measurement/internal/w9;->t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 254
    .line 255
    .line 256
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/w9;->r:Lcom/google/android/gms/measurement/internal/ge;

    .line 257
    .line 258
    invoke-virtual {v2, v7, v6}, Lcom/google/android/gms/measurement/internal/ge;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 259
    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_6
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    const-string v5, "Referrer does not contain valid parameters"

    .line 271
    .line 272
    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    :goto_4
    const/4 v2, 0x0

    .line 276
    invoke-virtual {v0, v8, v4, v2, v1}, Lcom/google/android/gms/measurement/internal/w9;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :cond_7
    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_a

    .line 285
    .line 286
    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-nez v2, :cond_8

    .line 291
    .line 292
    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-nez v2, :cond_8

    .line 297
    .line 298
    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-nez v2, :cond_8

    .line 303
    .line 304
    const-string v2, "utm_term"

    .line 305
    .line 306
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-nez v2, :cond_8

    .line 311
    .line 312
    const-string v2, "utm_content"

    .line 313
    .line 314
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-eqz v2, :cond_a

    .line 319
    .line 320
    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-nez v2, :cond_9

    .line 325
    .line 326
    invoke-virtual {v0, v8, v4, v3, v1}, Lcom/google/android/gms/measurement/internal/w9;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 327
    .line 328
    .line 329
    :cond_9
    :goto_5
    return-void

    .line 330
    :cond_a
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 339
    .line 340
    .line 341
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    move-object/from16 v1, v16

    .line 344
    .line 345
    goto :goto_6

    .line 346
    :catch_1
    move-exception v0

    .line 347
    move-object v1, v2

    .line 348
    :goto_6
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/k9;->a:Lcom/google/android/gms/measurement/internal/w9;

    .line 349
    .line 350
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 351
    .line 352
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    const-string v2, "Throwable caught in handleReferrerForOnActivityCreated"

    .line 361
    .line 362
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    return-void
.end method
