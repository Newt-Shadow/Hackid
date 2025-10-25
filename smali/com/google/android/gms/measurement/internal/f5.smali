.class public final Lcom/google/android/gms/measurement/internal/f5;
.super Lcom/google/android/gms/measurement/internal/e5;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private final i:J

.field private final j:J

.field private k:Ljava/util/List;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:J

.field private q:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/w6;JJ)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/e5;-><init>(Lcom/google/android/gms/measurement/internal/w6;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/f5;->p:J

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f5;->q:Ljava/lang/String;

    .line 10
    .line 11
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/f5;->i:J

    .line 12
    .line 13
    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/f5;->j:J

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method protected final m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method protected final n()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/f5;->j:J

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/f5;->i:J

    .line 18
    .line 19
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "sdkVersion bundled with app, dynamiteVersion"

    .line 24
    .line 25
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x0

    .line 45
    const-string v4, ""

    .line 46
    .line 47
    const/high16 v5, -0x80000000

    .line 48
    .line 49
    const-string v6, "Unknown"

    .line 50
    .line 51
    const-string v7, "unknown"

    .line 52
    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    const-string v9, "PackageManager is null, app identity information might be inaccurate. appId"

    .line 68
    .line 69
    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    move-object v8, v6

    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :cond_1
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 80
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    const-string v9, "Error retrieving app installer package name. appId"

    .line 95
    .line 96
    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :goto_0
    if-nez v7, :cond_2

    .line 100
    .line 101
    const-string v0, "manual_install"

    .line 102
    .line 103
    move-object v7, v0

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    const-string v0, "com.android.vending"

    .line 106
    .line 107
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    move-object v7, v4

    .line 114
    :cond_3
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    .line 130
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 131
    .line 132
    invoke-virtual {v2, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    if-nez v9, :cond_4

    .line 141
    .line 142
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 146
    goto :goto_2

    .line 147
    :cond_4
    move-object v8, v6

    .line 148
    :goto_2
    :try_start_2
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 149
    .line 150
    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :catch_1
    move-object v0, v6

    .line 154
    move-object v6, v8

    .line 155
    goto :goto_3

    .line 156
    :catch_2
    move-object v0, v6

    .line 157
    :goto_3
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 158
    .line 159
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    const-string v10, "Error retrieving package info. appId, appName"

    .line 172
    .line 173
    invoke-virtual {v8, v10, v9, v6}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    move-object v8, v6

    .line 177
    move-object v6, v0

    .line 178
    :goto_4
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/f5;->c:Ljava/lang/String;

    .line 179
    .line 180
    iput-object v7, p0, Lcom/google/android/gms/measurement/internal/f5;->f:Ljava/lang/String;

    .line 181
    .line 182
    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/f5;->d:Ljava/lang/String;

    .line 183
    .line 184
    iput v5, p0, Lcom/google/android/gms/measurement/internal/f5;->e:I

    .line 185
    .line 186
    iput-object v8, p0, Lcom/google/android/gms/measurement/internal/f5;->g:Ljava/lang/String;

    .line 187
    .line 188
    const-wide/16 v5, 0x0

    .line 189
    .line 190
    iput-wide v5, p0, Lcom/google/android/gms/measurement/internal/f5;->h:J

    .line 191
    .line 192
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->h()I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-eqz v5, :cond_b

    .line 199
    .line 200
    const/4 v6, 0x1

    .line 201
    if-eq v5, v6, :cond_a

    .line 202
    .line 203
    const/4 v6, 0x3

    .line 204
    if-eq v5, v6, :cond_9

    .line 205
    .line 206
    const/4 v6, 0x4

    .line 207
    if-eq v5, v6, :cond_8

    .line 208
    .line 209
    const/4 v6, 0x6

    .line 210
    if-eq v5, v6, :cond_7

    .line 211
    .line 212
    const/4 v6, 0x7

    .line 213
    if-eq v5, v6, :cond_6

    .line 214
    .line 215
    const/16 v6, 0x8

    .line 216
    .line 217
    if-eq v5, v6, :cond_5

    .line 218
    .line 219
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 220
    .line 221
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/p5;->u()Lcom/google/android/gms/measurement/internal/n5;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    const-string v8, "App measurement disabled"

    .line 230
    .line 231
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->p()Lcom/google/android/gms/measurement/internal/n5;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    const-string v7, "Invalid scion state in identity"

    .line 243
    .line 244
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_5
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 249
    .line 250
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->u()Lcom/google/android/gms/measurement/internal/n5;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    const-string v7, "App measurement disabled due to denied storage consent"

    .line 259
    .line 260
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_6
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 265
    .line 266
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->u()Lcom/google/android/gms/measurement/internal/n5;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    const-string v7, "App measurement disabled via the global data collection setting"

    .line 275
    .line 276
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_7
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 281
    .line 282
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    const-string v7, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    .line 291
    .line 292
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_8
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 297
    .line 298
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->u()Lcom/google/android/gms/measurement/internal/n5;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    const-string v7, "App measurement disabled via the manifest"

    .line 307
    .line 308
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_9
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 313
    .line 314
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->u()Lcom/google/android/gms/measurement/internal/n5;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    const-string v7, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    .line 323
    .line 324
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    goto :goto_5

    .line 328
    :cond_a
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 329
    .line 330
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->u()Lcom/google/android/gms/measurement/internal/n5;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    const-string v7, "App measurement deactivated via the manifest"

    .line 339
    .line 340
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_b
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 345
    .line 346
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    const-string v7, "App measurement collection enabled"

    .line 355
    .line 356
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    :goto_5
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/f5;->n:Ljava/lang/String;

    .line 360
    .line 361
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 362
    .line 363
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 364
    .line 365
    .line 366
    :try_start_3
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 367
    .line 368
    .line 369
    move-result-object v7

    .line 370
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->H()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    const-string v8, "google_app_id"

    .line 375
    .line 376
    invoke-static {v7, v8, v0}, Li6/e0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 381
    .line 382
    .line 383
    move-result v7

    .line 384
    if-eqz v7, :cond_c

    .line 385
    .line 386
    goto :goto_6

    .line 387
    :cond_c
    move-object v4, v0

    .line 388
    :goto_6
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/f5;->n:Ljava/lang/String;

    .line 389
    .line 390
    if-nez v5, :cond_d

    .line 391
    .line 392
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    const-string v4, "App measurement enabled for app package, google app id"

    .line 401
    .line 402
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/f5;->c:Ljava/lang/String;

    .line 403
    .line 404
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/f5;->n:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {v0, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    .line 407
    .line 408
    .line 409
    goto :goto_7

    .line 410
    :catch_3
    move-exception v0

    .line 411
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 412
    .line 413
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    const-string v5, "Fetching Google App Id failed with exception. appId"

    .line 426
    .line 427
    invoke-virtual {v4, v5, v1, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    :cond_d
    :goto_7
    const/4 v0, 0x0

    .line 431
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/f5;->k:Ljava/util/List;

    .line 432
    .line 433
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 434
    .line 435
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    const-string v4, "analytics.safelisted_events"

    .line 443
    .line 444
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/m;->K(Ljava/lang/String;)Ljava/util/List;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    if-nez v1, :cond_e

    .line 449
    .line 450
    goto :goto_8

    .line 451
    :cond_e
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 452
    .line 453
    .line 454
    move-result v4

    .line 455
    if-eqz v4, :cond_f

    .line 456
    .line 457
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    const-string v4, "Safelisted event list is empty. Ignoring"

    .line 466
    .line 467
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    goto :goto_9

    .line 471
    :cond_f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 476
    .line 477
    .line 478
    move-result v5

    .line 479
    if-eqz v5, :cond_11

    .line 480
    .line 481
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    check-cast v5, Ljava/lang/String;

    .line 486
    .line 487
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 488
    .line 489
    .line 490
    move-result-object v6

    .line 491
    const-string v7, "safelisted event"

    .line 492
    .line 493
    invoke-virtual {v6, v7, v5}, Lcom/google/android/gms/measurement/internal/yd;->u0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 494
    .line 495
    .line 496
    move-result v5

    .line 497
    if-nez v5, :cond_10

    .line 498
    .line 499
    goto :goto_9

    .line 500
    :cond_11
    :goto_8
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/f5;->k:Ljava/util/List;

    .line 501
    .line 502
    :goto_9
    if-eqz v2, :cond_12

    .line 503
    .line 504
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-static {v0}, Lt5/b;->a(Landroid/content/Context;)Z

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    iput v0, p0, Lcom/google/android/gms/measurement/internal/f5;->m:I

    .line 513
    .line 514
    return-void

    .line 515
    :cond_12
    iput v3, p0, Lcom/google/android/gms/measurement/internal/f5;->m:I

    .line 516
    .line 517
    return-void
.end method

.method final o(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/ae;
    .locals 50

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 4
    .line 5
    .line 6
    new-instance v42, Lcom/google/android/gms/measurement/internal/ae;

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->q()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->r()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 17
    .line 18
    .line 19
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/f5;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 22
    .line 23
    .line 24
    iget v0, v1, Lcom/google/android/gms/measurement/internal/f5;->e:I

    .line 25
    .line 26
    int-to-long v6, v0

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 28
    .line 29
    .line 30
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/f5;->f:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/f5;->f:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m;->A()J

    .line 44
    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 50
    .line 51
    .line 52
    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/f5;->h:J

    .line 53
    .line 54
    const-wide/16 v11, 0x0

    .line 55
    .line 56
    cmp-long v2, v9, v11

    .line 57
    .line 58
    const/4 v13, 0x0

    .line 59
    if-nez v2, :cond_4

    .line 60
    .line 61
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 80
    .line 81
    .line 82
    invoke-static {v9}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-static {}, Lcom/google/android/gms/measurement/internal/yd;->C()Ljava/security/MessageDigest;

    .line 93
    .line 94
    .line 95
    move-result-object v14

    .line 96
    if-nez v14, :cond_0

    .line 97
    .line 98
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v2, "Could not get MD5 instance"

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-wide/16 v9, -0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_0
    if-eqz v10, :cond_3

    .line 117
    .line 118
    :try_start_0
    invoke-virtual {v2, v9, v0}, Lcom/google/android/gms/measurement/internal/yd;->S(Landroid/content/Context;Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_2

    .line 123
    .line 124
    invoke-static {v9}, Lt5/e;->a(Landroid/content/Context;)Lt5/d;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 129
    .line 130
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    const/16 v15, 0x40

    .line 139
    .line 140
    invoke-virtual {v0, v10, v15}, Lt5/d;->e(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 145
    .line 146
    if-eqz v0, :cond_1

    .line 147
    .line 148
    array-length v10, v0

    .line 149
    if-lez v10, :cond_1

    .line 150
    .line 151
    aget-object v0, v0, v13

    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v14, v0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/yd;->D([B)J

    .line 162
    .line 163
    .line 164
    move-result-wide v9

    .line 165
    move-wide v15, v9

    .line 166
    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const-string v9, "Could not get signatures"

    .line 176
    .line 177
    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    .line 180
    const-wide/16 v15, -0x1

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_2
    move-wide v15, v11

    .line 184
    :goto_0
    move-wide v9, v15

    .line 185
    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 188
    .line 189
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    const-string v9, "Package name not found"

    .line 198
    .line 199
    invoke-virtual {v2, v9, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    :cond_3
    move-wide v9, v11

    .line 203
    :goto_1
    iput-wide v9, v1, Lcom/google/android/gms/measurement/internal/f5;->h:J

    .line 204
    .line 205
    :cond_4
    move-wide v14, v9

    .line 206
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->g()Z

    .line 209
    .line 210
    .line 211
    move-result v16

    .line 212
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    iget-boolean v2, v2, Lcom/google/android/gms/measurement/internal/d6;->s:Z

    .line 217
    .line 218
    const/4 v9, 0x1

    .line 219
    xor-int/lit8 v17, v2, 0x1

    .line 220
    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->g()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    const/4 v10, 0x0

    .line 229
    if-nez v2, :cond_5

    .line 230
    .line 231
    :catch_1
    :goto_2
    move-object v0, v10

    .line 232
    goto/16 :goto_3

    .line 233
    .line 234
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/mg;->a()Z

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    sget-object v11, Lcom/google/android/gms/measurement/internal/c5;->I0:Lcom/google/android/gms/measurement/internal/b5;

    .line 242
    .line 243
    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_6

    .line 248
    .line 249
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 250
    .line 251
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    const-string v2, "Disabled IID for tests."

    .line 260
    .line 261
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_6
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    const-string v2, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 274
    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    if-nez v0, :cond_7

    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_7
    :try_start_2
    const-string v2, "getInstance"

    .line 283
    .line 284
    new-array v11, v9, [Ljava/lang/Class;

    .line 285
    .line 286
    const-class v12, Landroid/content/Context;

    .line 287
    .line 288
    aput-object v12, v11, v13

    .line 289
    .line 290
    invoke-virtual {v0, v2, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    new-array v11, v9, [Ljava/lang/Object;

    .line 295
    .line 296
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 297
    .line 298
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 299
    .line 300
    .line 301
    move-result-object v12

    .line 302
    aput-object v12, v11, v13

    .line 303
    .line 304
    invoke-virtual {v2, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 308
    if-nez v2, :cond_8

    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_8
    :try_start_3
    const-string v11, "getFirebaseInstanceId"

    .line 312
    .line 313
    new-array v12, v13, [Ljava/lang/Class;

    .line 314
    .line 315
    invoke-virtual {v0, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    new-array v11, v13, [Ljava/lang/Object;

    .line 320
    .line 321
    invoke-virtual {v0, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 326
    .line 327
    goto :goto_3

    .line 328
    :catch_2
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 329
    .line 330
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->t()Lcom/google/android/gms/measurement/internal/n5;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    const-string v2, "Failed to retrieve Firebase Instance Id"

    .line 339
    .line 340
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    goto :goto_2

    .line 344
    :catch_3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 345
    .line 346
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->s()Lcom/google/android/gms/measurement/internal/n5;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    const-string v2, "Failed to obtain Firebase Analytics instance"

    .line 355
    .line 356
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_2

    .line 360
    .line 361
    :goto_3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 362
    .line 363
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 364
    .line 365
    .line 366
    move-result-object v11

    .line 367
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/d6;->f:Lcom/google/android/gms/measurement/internal/a6;

    .line 368
    .line 369
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/a6;->a()J

    .line 370
    .line 371
    .line 372
    move-result-wide v11

    .line 373
    const-wide/16 v18, 0x0

    .line 374
    .line 375
    cmp-long v20, v11, v18

    .line 376
    .line 377
    if-nez v20, :cond_9

    .line 378
    .line 379
    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/w6;->D:J

    .line 380
    .line 381
    move-wide/from16 v22, v11

    .line 382
    .line 383
    goto :goto_4

    .line 384
    :cond_9
    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/w6;->D:J

    .line 385
    .line 386
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 387
    .line 388
    .line 389
    move-result-wide v9

    .line 390
    move-wide/from16 v22, v9

    .line 391
    .line 392
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 393
    .line 394
    .line 395
    iget v11, v1, Lcom/google/android/gms/measurement/internal/f5;->m:I

    .line 396
    .line 397
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 398
    .line 399
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 400
    .line 401
    .line 402
    move-result-object v9

    .line 403
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/m;->M()Z

    .line 404
    .line 405
    .line 406
    move-result v24

    .line 407
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 408
    .line 409
    .line 410
    move-result-object v9

    .line 411
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/d6;->p()Landroid/content/SharedPreferences;

    .line 415
    .line 416
    .line 417
    move-result-object v9

    .line 418
    const-string v10, "deferred_analytics_collection"

    .line 419
    .line 420
    invoke-interface {v9, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 421
    .line 422
    .line 423
    move-result v25

    .line 424
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 425
    .line 426
    .line 427
    move-result-object v9

    .line 428
    const-string v12, "google_analytics_default_allow_ad_personalization_signals"

    .line 429
    .line 430
    const/4 v10, 0x1

    .line 431
    invoke-virtual {v9, v12, v10}, Lcom/google/android/gms/measurement/internal/m;->O(Ljava/lang/String;Z)Li6/r;

    .line 432
    .line 433
    .line 434
    move-result-object v9

    .line 435
    sget-object v10, Li6/r;->e:Li6/r;

    .line 436
    .line 437
    if-eq v9, v10, :cond_a

    .line 438
    .line 439
    move/from16 v26, v11

    .line 440
    .line 441
    const/4 v9, 0x1

    .line 442
    goto :goto_5

    .line 443
    :cond_a
    move/from16 v26, v11

    .line 444
    .line 445
    move v9, v13

    .line 446
    :goto_5
    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/f5;->i:J

    .line 447
    .line 448
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 449
    .line 450
    .line 451
    move-result-object v27

    .line 452
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/f5;->k:Ljava/util/List;

    .line 453
    .line 454
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 455
    .line 456
    .line 457
    move-result-object v28

    .line 458
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/d6;->w()Lcom/google/android/gms/measurement/internal/d8;

    .line 459
    .line 460
    .line 461
    move-result-object v28

    .line 462
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/d8;->l()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v28

    .line 466
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/f5;->l:Ljava/lang/String;

    .line 467
    .line 468
    if-nez v13, :cond_b

    .line 469
    .line 470
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 471
    .line 472
    .line 473
    move-result-object v13

    .line 474
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/yd;->l0()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v13

    .line 478
    iput-object v13, v1, Lcom/google/android/gms/measurement/internal/f5;->l:Ljava/lang/String;

    .line 479
    .line 480
    :cond_b
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/f5;->l:Ljava/lang/String;

    .line 481
    .line 482
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 483
    .line 484
    .line 485
    move-result-object v30

    .line 486
    move-object/from16 v31, v9

    .line 487
    .line 488
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/d6;->w()Lcom/google/android/gms/measurement/internal/d8;

    .line 489
    .line 490
    .line 491
    move-result-object v9

    .line 492
    move-wide/from16 v32, v10

    .line 493
    .line 494
    sget-object v10, Li6/s;->c:Li6/s;

    .line 495
    .line 496
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/d8;->o(Li6/s;)Z

    .line 497
    .line 498
    .line 499
    move-result v9

    .line 500
    if-nez v9, :cond_c

    .line 501
    .line 502
    move-wide/from16 v34, v14

    .line 503
    .line 504
    const-wide/16 v18, 0x0

    .line 505
    .line 506
    const/16 v30, 0x0

    .line 507
    .line 508
    move-object v15, v13

    .line 509
    goto :goto_7

    .line 510
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 511
    .line 512
    .line 513
    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/f5;->p:J

    .line 514
    .line 515
    const-wide/16 v18, 0x0

    .line 516
    .line 517
    cmp-long v9, v9, v18

    .line 518
    .line 519
    if-nez v9, :cond_d

    .line 520
    .line 521
    move-wide/from16 v34, v14

    .line 522
    .line 523
    move-object v15, v13

    .line 524
    goto :goto_6

    .line 525
    :cond_d
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 526
    .line 527
    .line 528
    move-result-object v9

    .line 529
    invoke-interface {v9}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 530
    .line 531
    .line 532
    move-result-wide v9

    .line 533
    move-wide/from16 v34, v14

    .line 534
    .line 535
    move-object v15, v13

    .line 536
    iget-wide v13, v1, Lcom/google/android/gms/measurement/internal/f5;->p:J

    .line 537
    .line 538
    sub-long/2addr v9, v13

    .line 539
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/f5;->o:Ljava/lang/String;

    .line 540
    .line 541
    if-eqz v11, :cond_e

    .line 542
    .line 543
    const-wide/32 v13, 0x5265c00

    .line 544
    .line 545
    .line 546
    cmp-long v9, v9, v13

    .line 547
    .line 548
    if-lez v9, :cond_e

    .line 549
    .line 550
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/f5;->q:Ljava/lang/String;

    .line 551
    .line 552
    if-nez v9, :cond_e

    .line 553
    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->p()V

    .line 555
    .line 556
    .line 557
    :cond_e
    :goto_6
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/f5;->o:Ljava/lang/String;

    .line 558
    .line 559
    if-nez v9, :cond_f

    .line 560
    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->p()V

    .line 562
    .line 563
    .line 564
    :cond_f
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/f5;->o:Ljava/lang/String;

    .line 565
    .line 566
    move-object/from16 v30, v9

    .line 567
    .line 568
    :goto_7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 569
    .line 570
    .line 571
    move-result-object v9

    .line 572
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/m;->P()Z

    .line 573
    .line 574
    .line 575
    move-result v36

    .line 576
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/f5;->q()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v9

    .line 584
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 585
    .line 586
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 587
    .line 588
    .line 589
    move-result-object v11

    .line 590
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 591
    .line 592
    .line 593
    move-result-object v11

    .line 594
    if-nez v11, :cond_10

    .line 595
    .line 596
    move-wide/from16 v43, v18

    .line 597
    .line 598
    const/4 v11, 0x0

    .line 599
    goto :goto_9

    .line 600
    :cond_10
    :try_start_4
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 601
    .line 602
    .line 603
    move-result-object v10

    .line 604
    invoke-static {v10}, Lt5/e;->a(Landroid/content/Context;)Lt5/d;

    .line 605
    .line 606
    .line 607
    move-result-object v10
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 608
    const/4 v11, 0x0

    .line 609
    :try_start_5
    invoke-virtual {v10, v9, v11}, Lt5/d;->c(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 610
    .line 611
    .line 612
    move-result-object v10

    .line 613
    if-eqz v10, :cond_11

    .line 614
    .line 615
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 616
    .line 617
    goto :goto_8

    .line 618
    :catch_4
    const/4 v11, 0x0

    .line 619
    :catch_5
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 620
    .line 621
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 625
    .line 626
    .line 627
    move-result-object v2

    .line 628
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->u()Lcom/google/android/gms/measurement/internal/n5;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    const-string v10, "PackageManager failed to find running app: app_id"

    .line 633
    .line 634
    invoke-virtual {v2, v10, v9}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 635
    .line 636
    .line 637
    :cond_11
    move v2, v11

    .line 638
    :goto_8
    int-to-long v9, v2

    .line 639
    move-wide/from16 v43, v9

    .line 640
    .line 641
    :goto_9
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 642
    .line 643
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 644
    .line 645
    .line 646
    move-result-object v9

    .line 647
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/d6;->w()Lcom/google/android/gms/measurement/internal/d8;

    .line 648
    .line 649
    .line 650
    move-result-object v9

    .line 651
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/d8;->b()I

    .line 652
    .line 653
    .line 654
    move-result v45

    .line 655
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 656
    .line 657
    .line 658
    move-result-object v9

    .line 659
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/d6;->u()Lcom/google/android/gms/measurement/internal/y;

    .line 660
    .line 661
    .line 662
    move-result-object v9

    .line 663
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/y;->e()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v46

    .line 667
    invoke-static {}, Lcom/google/android/gms/internal/measurement/nf;->a()Z

    .line 668
    .line 669
    .line 670
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 671
    .line 672
    .line 673
    move-result-object v9

    .line 674
    sget-object v10, Lcom/google/android/gms/measurement/internal/c5;->R0:Lcom/google/android/gms/measurement/internal/b5;

    .line 675
    .line 676
    const/4 v13, 0x0

    .line 677
    invoke-virtual {v9, v13, v10}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 678
    .line 679
    .line 680
    move-result v9

    .line 681
    if-eqz v9, :cond_12

    .line 682
    .line 683
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 684
    .line 685
    .line 686
    move-result-object v9

    .line 687
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/yd;->I()I

    .line 688
    .line 689
    .line 690
    move-result v9

    .line 691
    move/from16 v47, v9

    .line 692
    .line 693
    goto :goto_a

    .line 694
    :cond_12
    move/from16 v47, v11

    .line 695
    .line 696
    :goto_a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/nf;->a()Z

    .line 697
    .line 698
    .line 699
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 700
    .line 701
    .line 702
    move-result-object v9

    .line 703
    invoke-virtual {v9, v13, v10}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 704
    .line 705
    .line 706
    move-result v9

    .line 707
    if-eqz v9, :cond_13

    .line 708
    .line 709
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 710
    .line 711
    .line 712
    move-result-object v9

    .line 713
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/yd;->J()J

    .line 714
    .line 715
    .line 716
    move-result-wide v9

    .line 717
    move-wide/from16 v48, v9

    .line 718
    .line 719
    goto :goto_b

    .line 720
    :cond_13
    move-wide/from16 v48, v18

    .line 721
    .line 722
    :goto_b
    const-wide/32 v9, 0x2078d

    .line 723
    .line 724
    .line 725
    move-object/from16 v29, v31

    .line 726
    .line 727
    move-wide/from16 v31, v32

    .line 728
    .line 729
    const/4 v11, 0x1

    .line 730
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 731
    .line 732
    .line 733
    move-result-object v13

    .line 734
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/m;->R()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v37

    .line 738
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    invoke-virtual {v2, v12, v11}, Lcom/google/android/gms/measurement/internal/m;->O(Ljava/lang/String;Z)Li6/r;

    .line 743
    .line 744
    .line 745
    move-result-object v2

    .line 746
    new-instance v11, Lcom/google/android/gms/measurement/internal/c3;

    .line 747
    .line 748
    invoke-direct {v11, v2}, Lcom/google/android/gms/measurement/internal/c3;-><init>(Li6/r;)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/c3;->b()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v38

    .line 755
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 756
    .line 757
    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/w6;->D:J

    .line 758
    .line 759
    move-wide/from16 v39, v11

    .line 760
    .line 761
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->N()Lcom/google/android/gms/measurement/internal/ca;

    .line 762
    .line 763
    .line 764
    move-result-object v2

    .line 765
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ca;->q()Lcom/google/android/gms/internal/measurement/p7;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/p7;->zza()I

    .line 770
    .line 771
    .line 772
    move-result v41

    .line 773
    move-object/from16 v2, v42

    .line 774
    .line 775
    move/from16 v19, v26

    .line 776
    .line 777
    move-wide/from16 v11, v34

    .line 778
    .line 779
    move-object/from16 v33, v15

    .line 780
    .line 781
    move-object/from16 v13, p1

    .line 782
    .line 783
    move/from16 v14, v16

    .line 784
    .line 785
    move/from16 v15, v17

    .line 786
    .line 787
    move-object/from16 v16, v0

    .line 788
    .line 789
    move-wide/from16 v17, v22

    .line 790
    .line 791
    move/from16 v20, v24

    .line 792
    .line 793
    move/from16 v21, v25

    .line 794
    .line 795
    move-object/from16 v22, v27

    .line 796
    .line 797
    move-wide/from16 v23, v31

    .line 798
    .line 799
    move-object/from16 v25, v29

    .line 800
    .line 801
    move-object/from16 v26, v28

    .line 802
    .line 803
    move-object/from16 v27, v33

    .line 804
    .line 805
    move-object/from16 v28, v30

    .line 806
    .line 807
    move/from16 v29, v36

    .line 808
    .line 809
    move-wide/from16 v30, v43

    .line 810
    .line 811
    move/from16 v32, v45

    .line 812
    .line 813
    move-object/from16 v33, v46

    .line 814
    .line 815
    move/from16 v34, v47

    .line 816
    .line 817
    move-wide/from16 v35, v48

    .line 818
    .line 819
    invoke-direct/range {v2 .. v41}, Lcom/google/android/gms/measurement/internal/ae;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    .line 820
    .line 821
    .line 822
    return-object v42
.end method

.method final p()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d6;->w()Lcom/google/android/gms/measurement/internal/d8;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Li6/s;->c:Li6/s;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/d8;->o(Li6/s;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v3, "Analytics Storage consent is not granted"

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/16 v1, 0x10

    .line 39
    .line 40
    new-array v1, v1, [B

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/yd;->q0()Ljava/security/SecureRandom;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 51
    .line 52
    .line 53
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 54
    .line 55
    new-instance v4, Ljava/math/BigInteger;

    .line 56
    .line 57
    invoke-direct {v4, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 58
    .line 59
    .line 60
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v4, "%032x"

    .line 65
    .line 66
    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    new-array v2, v2, [Ljava/lang/Object;

    .line 79
    .line 80
    if-nez v1, :cond_1

    .line 81
    .line 82
    const-string v4, "null"

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    const-string v4, "not null"

    .line 86
    .line 87
    :goto_1
    const/4 v5, 0x0

    .line 88
    aput-object v4, v2, v5

    .line 89
    .line 90
    const-string v4, "Resetting session stitching token to %s"

    .line 91
    .line 92
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/f5;->o:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/f5;->p:J

    .line 110
    .line 111
    return-void
.end method

.method final q()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f5;->c:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f5;->c:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method

.method final r()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f5;->n:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f5;->n:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method final s()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f5;->g:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f5;->g:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method

.method final t()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/measurement/internal/f5;->e:I

    .line 5
    .line 6
    return v0
.end method

.method final u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/f5;->j:J

    return-wide v0
.end method

.method final v()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e5;->j()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/measurement/internal/f5;->m:I

    .line 5
    .line 6
    return v0
.end method

.method final w()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f5;->k:Ljava/util/List;

    return-object v0
.end method

.method final x(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f5;->q:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f5;->q:Ljava/lang/String;

    .line 14
    .line 15
    return v1
.end method
