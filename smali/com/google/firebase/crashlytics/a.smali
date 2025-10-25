.class public Lcom/google/firebase/crashlytics/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lq7/d0;


# direct methods
.method private constructor <init>(Lq7/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/a;->a:Lq7/d0;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/a;->g(Ljava/lang/Exception;)V

    return-void
.end method

.method public static e()Lcom/google/firebase/crashlytics/a;
    .locals 2

    .line 1
    invoke-static {}, Lh7/f;->o()Lh7/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/google/firebase/crashlytics/a;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lh7/f;->k(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/firebase/crashlytics/a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 17
    .line 18
    const-string v1, "FirebaseCrashlytics component is not present."

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method static f(Lh7/f;Ll8/e;Lk8/a;Lk8/a;Lk8/a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)Lcom/google/firebase/crashlytics/a;
    .locals 18

    .line 1
    invoke-virtual/range {p0 .. p0}, Lh7/f;->m()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v4, "Initializing Firebase Crashlytics "

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lq7/d0;->s()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v4, " for "

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ln7/g;->g(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v15, Lr7/i;

    .line 46
    .line 47
    move-object/from16 v2, p5

    .line 48
    .line 49
    move-object/from16 v3, p6

    .line 50
    .line 51
    invoke-direct {v15, v2, v3}, Lr7/i;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Lw7/g;

    .line 55
    .line 56
    invoke-direct {v3, v1}, Lw7/g;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    new-instance v2, Lq7/j0;

    .line 60
    .line 61
    move-object/from16 v14, p0

    .line 62
    .line 63
    invoke-direct {v2, v14}, Lq7/j0;-><init>(Lh7/f;)V

    .line 64
    .line 65
    .line 66
    new-instance v13, Lq7/o0;

    .line 67
    .line 68
    move-object/from16 v4, p1

    .line 69
    .line 70
    invoke-direct {v13, v1, v0, v4, v2}, Lq7/o0;-><init>(Landroid/content/Context;Ljava/lang/String;Ll8/e;Lq7/j0;)V

    .line 71
    .line 72
    .line 73
    new-instance v7, Ln7/d;

    .line 74
    .line 75
    move-object/from16 v0, p2

    .line 76
    .line 77
    invoke-direct {v7, v0}, Ln7/d;-><init>(Lk8/a;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lm7/d;

    .line 81
    .line 82
    move-object/from16 v4, p3

    .line 83
    .line 84
    invoke-direct {v0, v4}, Lm7/d;-><init>(Lk8/a;)V

    .line 85
    .line 86
    .line 87
    new-instance v12, Lq7/n;

    .line 88
    .line 89
    invoke-direct {v12, v2, v3}, Lq7/n;-><init>(Lq7/j0;Lw7/g;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v12}, Lv8/b;->e(Lv8/c;)V

    .line 93
    .line 94
    .line 95
    new-instance v11, Ln7/l;

    .line 96
    .line 97
    move-object/from16 v4, p4

    .line 98
    .line 99
    invoke-direct {v11, v4}, Ln7/l;-><init>(Lk8/a;)V

    .line 100
    .line 101
    .line 102
    new-instance v10, Lq7/d0;

    .line 103
    .line 104
    invoke-virtual {v0}, Lm7/d;->e()Lp7/b;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    invoke-virtual {v0}, Lm7/d;->d()Lo7/a;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    move-object v4, v10

    .line 113
    move-object/from16 v5, p0

    .line 114
    .line 115
    move-object v6, v13

    .line 116
    move-object v8, v2

    .line 117
    move-object/from16 v16, v10

    .line 118
    .line 119
    move-object v10, v0

    .line 120
    move-object v0, v11

    .line 121
    move-object v11, v3

    .line 122
    move-object/from16 v17, v13

    .line 123
    .line 124
    move-object v13, v0

    .line 125
    move-object v14, v15

    .line 126
    invoke-direct/range {v4 .. v14}, Lq7/d0;-><init>(Lh7/f;Lq7/o0;Ln7/a;Lq7/j0;Lp7/b;Lo7/a;Lw7/g;Lq7/n;Ln7/l;Lr7/i;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual/range {p0 .. p0}, Lh7/f;->r()Lh7/n;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lh7/n;->c()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v1}, Lq7/j;->m(Landroid/content/Context;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-static {v1}, Lq7/j;->j(Landroid/content/Context;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v8, "Mapping file ID is: "

    .line 155
    .line 156
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-virtual {v6, v7}, Ln7/g;->b(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-eqz v7, :cond_0

    .line 178
    .line 179
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    check-cast v7, Lq7/g;

    .line 184
    .line 185
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    invoke-virtual {v7}, Lq7/g;->c()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    invoke-virtual {v7}, Lq7/g;->a()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    invoke-virtual {v7}, Lq7/g;->b()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    filled-new-array {v9, v10, v7}, [Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    const-string v9, "Build id for %s on %s: %s"

    .line 206
    .line 207
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    invoke-virtual {v8, v7}, Ln7/g;->b(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_0
    new-instance v6, Ln7/f;

    .line 216
    .line 217
    invoke-direct {v6, v1}, Ln7/f;-><init>(Landroid/content/Context;)V

    .line 218
    .line 219
    .line 220
    move-object/from16 p0, v1

    .line 221
    .line 222
    move-object/from16 p1, v17

    .line 223
    .line 224
    move-object/from16 p2, v0

    .line 225
    .line 226
    move-object/from16 p3, v4

    .line 227
    .line 228
    move-object/from16 p4, v5

    .line 229
    .line 230
    move-object/from16 p5, v6

    .line 231
    .line 232
    :try_start_0
    invoke-static/range {p0 .. p5}, Lq7/b;->a(Landroid/content/Context;Lq7/o0;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ln7/f;)Lq7/b;

    .line 233
    .line 234
    .line 235
    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v6, "Installer package name is: "

    .line 246
    .line 247
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-object v6, v9, Lq7/b;->d:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {v4, v5}, Ln7/g;->i(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    new-instance v4, Lv7/b;

    .line 263
    .line 264
    invoke-direct {v4}, Lv7/b;-><init>()V

    .line 265
    .line 266
    .line 267
    iget-object v5, v9, Lq7/b;->f:Ljava/lang/String;

    .line 268
    .line 269
    iget-object v6, v9, Lq7/b;->g:Ljava/lang/String;

    .line 270
    .line 271
    move-object v8, v2

    .line 272
    move-object v2, v0

    .line 273
    move-object v0, v3

    .line 274
    move-object/from16 v3, v17

    .line 275
    .line 276
    move-object v7, v0

    .line 277
    invoke-static/range {v1 .. v8}, Ly7/g;->l(Landroid/content/Context;Ljava/lang/String;Lq7/o0;Lv7/b;Ljava/lang/String;Ljava/lang/String;Lw7/g;Lq7/j0;)Ly7/g;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v0, v15}, Ly7/g;->o(Lr7/i;)Lm6/Task;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    new-instance v2, Lm7/g;

    .line 286
    .line 287
    invoke-direct {v2}, Lm7/g;-><init>()V

    .line 288
    .line 289
    .line 290
    move-object/from16 v3, p7

    .line 291
    .line 292
    invoke-virtual {v1, v3, v2}, Lm6/Task;->d(Ljava/util/concurrent/Executor;Lm6/g;)Lm6/Task;

    .line 293
    .line 294
    .line 295
    move-object/from16 v1, v16

    .line 296
    .line 297
    invoke-virtual {v1, v9, v0}, Lq7/d0;->J(Lq7/b;Ly7/j;)Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    if-eqz v2, :cond_1

    .line 302
    .line 303
    invoke-virtual {v1, v0}, Lq7/d0;->q(Ly7/j;)Lm6/Task;

    .line 304
    .line 305
    .line 306
    :cond_1
    new-instance v0, Lcom/google/firebase/crashlytics/a;

    .line 307
    .line 308
    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/a;-><init>(Lq7/d0;)V

    .line 309
    .line 310
    .line 311
    return-object v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    move-object v1, v0

    .line 314
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    const-string v2, "Error retrieving app package info."

    .line 319
    .line 320
    invoke-virtual {v0, v2, v1}, Ln7/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    .line 322
    .line 323
    const/4 v0, 0x0

    .line 324
    return-object v0
.end method

.method private static synthetic g(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Error fetching settings."

    .line 6
    .line 7
    invoke-virtual {v0, v1, p0}, Ln7/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public b()Lm6/Task;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/a;->a:Lq7/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq7/d0;->l()Lm6/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/a;->a:Lq7/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq7/d0;->m()Lm6/Task;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/a;->a:Lq7/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq7/d0;->n()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/a;->a:Lq7/d0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lq7/d0;->E(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ln7/g;->f()Ln7/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "A null value was passed to recordException. Ignoring."

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ln7/g;->k(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/a;->a:Lq7/d0;

    .line 14
    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, p1, v1}, Lq7/d0;->F(Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/a;->a:Lq7/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq7/d0;->K()Lm6/Task;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/a;->a:Lq7/d0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lq7/d0;->L(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/a;->a:Lq7/d0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lq7/d0;->M(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/a;->a:Lq7/d0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lq7/d0;->O(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
