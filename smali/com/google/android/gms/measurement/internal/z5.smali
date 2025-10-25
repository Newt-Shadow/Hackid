.class public final Lcom/google/android/gms/measurement/internal/z5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/os/Bundle;

.field private c:Landroid/os/Bundle;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/d6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/d6;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/z5;->d:Lcom/google/android/gms/measurement/internal/d6;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/z5;->a:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p1, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/z5;->b:Landroid/os/Bundle;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z5;->c:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_7

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z5;->d:Lcom/google/android/gms/measurement/internal/d6;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z5;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_10

    .line 21
    .line 22
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v4, Lorg/json/JSONArray;

    .line 28
    .line 29
    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    move v5, v1

    .line 34
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 35
    .line 36
    .line 37
    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    if-ge v5, v6, :cond_f

    .line 39
    .line 40
    :try_start_1
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    const-string v7, "n"

    .line 45
    .line 46
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const-string v8, "t"

    .line 51
    .line 52
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v9
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    const/16 v10, 0x64

    .line 61
    .line 62
    const/4 v11, 0x4

    .line 63
    const/4 v12, 0x3

    .line 64
    const/4 v13, 0x2

    .line 65
    const/4 v14, 0x1

    .line 66
    if-eq v9, v10, :cond_5

    .line 67
    .line 68
    const/16 v10, 0x6c

    .line 69
    .line 70
    if-eq v9, v10, :cond_4

    .line 71
    .line 72
    const/16 v10, 0x73

    .line 73
    .line 74
    if-eq v9, v10, :cond_3

    .line 75
    .line 76
    const/16 v10, 0xd18

    .line 77
    .line 78
    if-eq v9, v10, :cond_2

    .line 79
    .line 80
    const/16 v10, 0xd75

    .line 81
    .line 82
    if-eq v9, v10, :cond_1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    const-string v9, "la"

    .line 86
    .line 87
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-eqz v9, :cond_6

    .line 92
    .line 93
    move v9, v11

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    const-string v9, "ia"

    .line 96
    .line 97
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-eqz v9, :cond_6

    .line 102
    .line 103
    move v9, v12

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    const-string v9, "s"

    .line 106
    .line 107
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-eqz v9, :cond_6

    .line 112
    .line 113
    move v9, v1

    .line 114
    goto :goto_2

    .line 115
    :cond_4
    const-string v9, "l"

    .line 116
    .line 117
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    if-eqz v9, :cond_6

    .line 122
    .line 123
    move v9, v13

    .line 124
    goto :goto_2

    .line 125
    :cond_5
    const-string v9, "d"

    .line 126
    .line 127
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-eqz v9, :cond_6

    .line 132
    .line 133
    move v9, v14

    .line 134
    goto :goto_2

    .line 135
    :cond_6
    :goto_1
    const/4 v9, -0x1

    .line 136
    :goto_2
    const-string v10, "v"

    .line 137
    .line 138
    if-eqz v9, :cond_d

    .line 139
    .line 140
    if-eq v9, v14, :cond_c

    .line 141
    .line 142
    if-eq v9, v13, :cond_b

    .line 143
    .line 144
    if-eq v9, v12, :cond_9

    .line 145
    .line 146
    if-eq v9, v11, :cond_7

    .line 147
    .line 148
    :try_start_2
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 149
    .line 150
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    const-string v7, "Unrecognized persisted bundle type. Type"

    .line 159
    .line 160
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_5

    .line 164
    .line 165
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/nf;->a()Z

    .line 166
    .line 167
    .line 168
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 169
    .line 170
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    sget-object v9, Lcom/google/android/gms/measurement/internal/c5;->R0:Lcom/google/android/gms/measurement/internal/b5;

    .line 175
    .line 176
    invoke-virtual {v8, v3, v9}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    if-eqz v8, :cond_e

    .line 181
    .line 182
    new-instance v8, Lorg/json/JSONArray;

    .line 183
    .line 184
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-direct {v8, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    new-array v9, v6, [J

    .line 196
    .line 197
    move v10, v1

    .line 198
    :goto_3
    if-ge v10, v6, :cond_8

    .line 199
    .line 200
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->optLong(I)J

    .line 201
    .line 202
    .line 203
    move-result-wide v11

    .line 204
    aput-wide v11, v9, v10

    .line 205
    .line 206
    add-int/lit8 v10, v10, 0x1

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_8
    invoke-virtual {v2, v7, v9}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/nf;->a()Z

    .line 214
    .line 215
    .line 216
    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 217
    .line 218
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    sget-object v9, Lcom/google/android/gms/measurement/internal/c5;->R0:Lcom/google/android/gms/measurement/internal/b5;

    .line 223
    .line 224
    invoke-virtual {v8, v3, v9}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    if-eqz v8, :cond_e

    .line 229
    .line 230
    new-instance v8, Lorg/json/JSONArray;

    .line 231
    .line 232
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-direct {v8, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    new-array v9, v6, [I

    .line 244
    .line 245
    move v10, v1

    .line 246
    :goto_4
    if-ge v10, v6, :cond_a

    .line 247
    .line 248
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->optInt(I)I

    .line 249
    .line 250
    .line 251
    move-result v11

    .line 252
    aput v11, v9, v10

    .line 253
    .line 254
    add-int/lit8 v10, v10, 0x1

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_a
    invoke-virtual {v2, v7, v9}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 258
    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_b
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 266
    .line 267
    .line 268
    move-result-wide v8

    .line 269
    invoke-virtual {v2, v7, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 270
    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_c
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 278
    .line 279
    .line 280
    move-result-wide v8

    .line 281
    invoke-virtual {v2, v7, v8, v9}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 282
    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_d
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    invoke-virtual {v2, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 290
    .line 291
    .line 292
    goto :goto_5

    .line 293
    :catch_0
    :try_start_3
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/z5;->d:Lcom/google/android/gms/measurement/internal/d6;

    .line 294
    .line 295
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 296
    .line 297
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    const-string v7, "Error reading value from SharedPreferences. Value dropped"

    .line 306
    .line 307
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    :cond_e
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 311
    .line 312
    goto/16 :goto_0

    .line 313
    .line 314
    :cond_f
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/z5;->c:Landroid/os/Bundle;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 315
    .line 316
    goto :goto_6

    .line 317
    :catch_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z5;->d:Lcom/google/android/gms/measurement/internal/d6;

    .line 318
    .line 319
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 320
    .line 321
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    const-string v1, "Error loading bundle from SharedPreferences. Values will be lost"

    .line 330
    .line 331
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    :cond_10
    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z5;->c:Landroid/os/Bundle;

    .line 335
    .line 336
    if-nez v0, :cond_11

    .line 337
    .line 338
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z5;->b:Landroid/os/Bundle;

    .line 339
    .line 340
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/z5;->c:Landroid/os/Bundle;

    .line 341
    .line 342
    :cond_11
    :goto_7
    new-instance v0, Landroid/os/Bundle;

    .line 343
    .line 344
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z5;->c:Landroid/os/Bundle;

    .line 345
    .line 346
    invoke-static {v1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    check-cast v1, Landroid/os/Bundle;

    .line 351
    .line 352
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 353
    .line 354
    .line 355
    return-object v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    move-object v2, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/z5;->d:Lcom/google/android/gms/measurement/internal/d6;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v2}, Landroid/os/BaseBundle;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z5;->a:Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_1
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/z5;->a:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v6, Lorg/json/JSONArray;

    .line 45
    .line 46
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_c

    .line 62
    .line 63
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    if-eqz v8, :cond_2

    .line 74
    .line 75
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    .line 76
    .line 77
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v10, "n"

    .line 81
    .line 82
    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/nf;->a()Z

    .line 86
    .line 87
    .line 88
    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    sget-object v11, Lcom/google/android/gms/measurement/internal/c5;->R0:Lcom/google/android/gms/measurement/internal/b5;

    .line 95
    .line 96
    const/4 v12, 0x0

    .line 97
    invoke-virtual {v10, v12, v11}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 98
    .line 99
    .line 100
    move-result v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    const-string v11, "Cannot serialize bundle value to SharedPreferences. Type"

    .line 102
    .line 103
    const-string v12, "d"

    .line 104
    .line 105
    const-string v13, "l"

    .line 106
    .line 107
    const-string v14, "s"

    .line 108
    .line 109
    const-string v15, "v"

    .line 110
    .line 111
    move-object/from16 p1, v3

    .line 112
    .line 113
    const-string v3, "t"

    .line 114
    .line 115
    if-eqz v10, :cond_8

    .line 116
    .line 117
    :try_start_1
    instance-of v10, v8, Ljava/lang/String;

    .line 118
    .line 119
    if-eqz v10, :cond_3

    .line 120
    .line 121
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v9, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v9, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    .line 130
    .line 131
    goto/16 :goto_2

    .line 132
    .line 133
    :cond_3
    instance-of v10, v8, Ljava/lang/Long;

    .line 134
    .line 135
    if-eqz v10, :cond_4

    .line 136
    .line 137
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v9, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v9, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    instance-of v10, v8, [I

    .line 149
    .line 150
    if-eqz v10, :cond_5

    .line 151
    .line 152
    check-cast v8, [I

    .line 153
    .line 154
    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v9, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    .line 160
    .line 161
    const-string v0, "ia"

    .line 162
    .line 163
    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_5
    instance-of v10, v8, [J

    .line 168
    .line 169
    if-eqz v10, :cond_6

    .line 170
    .line 171
    check-cast v8, [J

    .line 172
    .line 173
    invoke-static {v8}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v9, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    .line 179
    .line 180
    const-string v0, "la"

    .line 181
    .line 182
    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_6
    instance-of v10, v8, Ljava/lang/Double;

    .line 187
    .line 188
    if-eqz v10, :cond_7

    .line 189
    .line 190
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v9, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v0, v11, v3}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :catch_0
    move-exception v0

    .line 218
    goto :goto_3

    .line 219
    :cond_8
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    invoke-virtual {v9, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    .line 225
    .line 226
    instance-of v10, v8, Ljava/lang/String;

    .line 227
    .line 228
    if-eqz v10, :cond_9

    .line 229
    .line 230
    invoke-virtual {v9, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_9
    instance-of v10, v8, Ljava/lang/Long;

    .line 235
    .line 236
    if-eqz v10, :cond_a

    .line 237
    .line 238
    invoke-virtual {v9, v3, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_a
    instance-of v10, v8, Ljava/lang/Double;

    .line 243
    .line 244
    if-eqz v10, :cond_b

    .line 245
    .line 246
    invoke-virtual {v9, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    .line 248
    .line 249
    :goto_2
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v0, v11, v3}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    .line 267
    .line 268
    goto :goto_4

    .line 269
    :catch_1
    move-exception v0

    .line 270
    move-object/from16 p1, v3

    .line 271
    .line 272
    :goto_3
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/z5;->d:Lcom/google/android/gms/measurement/internal/d6;

    .line 273
    .line 274
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 275
    .line 276
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    const-string v8, "Cannot serialize bundle value to SharedPreferences"

    .line 285
    .line 286
    invoke-virtual {v3, v8, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    :goto_4
    move-object/from16 v3, p1

    .line 290
    .line 291
    goto/16 :goto_1

    .line 292
    .line 293
    :cond_c
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 298
    .line 299
    .line 300
    :goto_5
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 301
    .line 302
    .line 303
    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/z5;->c:Landroid/os/Bundle;

    .line 304
    .line 305
    return-void
.end method
