.class public final Lio/sentry/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Ljava/util/List;

.field private B:Ljava/lang/Boolean;

.field private C:Ljava/lang/Boolean;

.field private D:Lio/sentry/s5$g;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Double;

.field private k:Ljava/lang/Double;

.field private l:Lio/sentry/s5$j;

.field private final m:Ljava/util/Map;

.field private n:Lio/sentry/s5$i;

.field private final o:Ljava/util/List;

.field private final p:Ljava/util/List;

.field private q:Ljava/util/List;

.field private final r:Ljava/util/List;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/Long;

.field private final u:Ljava/util/Set;

.field private v:Ljava/lang/Boolean;

.field private w:Ljava/lang/Boolean;

.field private x:Ljava/util/Set;

.field private y:Ljava/lang/Boolean;

.field private z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/a0;->m:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/sentry/a0;->o:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lio/sentry/a0;->p:Ljava/util/List;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lio/sentry/a0;->q:Ljava/util/List;

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lio/sentry/a0;->r:Ljava/util/List;

    .line 34
    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lio/sentry/a0;->u:Ljava/util/Set;

    .line 41
    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lio/sentry/a0;->x:Ljava/util/Set;

    .line 48
    .line 49
    return-void
.end method

.method public static g(Lio/sentry/config/f;Lio/sentry/ILogger;)Lio/sentry/a0;
    .locals 6

    .line 1
    new-instance v0, Lio/sentry/a0;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/a0;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "dsn"

    .line 7
    .line 8
    invoke-interface {p0, v1}, Lio/sentry/config/f;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lio/sentry/a0;->N(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "environment"

    .line 16
    .line 17
    invoke-interface {p0, v1}, Lio/sentry/config/f;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lio/sentry/a0;->U(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "release"

    .line 25
    .line 26
    invoke-interface {p0, v1}, Lio/sentry/config/f;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lio/sentry/a0;->c0(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "dist"

    .line 34
    .line 35
    invoke-interface {p0, v1}, Lio/sentry/config/f;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lio/sentry/a0;->M(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "servername"

    .line 43
    .line 44
    invoke-interface {p0, v1}, Lio/sentry/config/f;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lio/sentry/a0;->f0(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v1, "uncaught.handler.enabled"

    .line 52
    .line 53
    invoke-interface {p0, v1}, Lio/sentry/config/f;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lio/sentry/a0;->S(Ljava/lang/Boolean;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "uncaught.handler.print-stacktrace"

    .line 61
    .line 62
    invoke-interface {p0, v1}, Lio/sentry/config/f;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lio/sentry/a0;->Y(Ljava/lang/Boolean;)V

    .line 67
    .line 68
    .line 69
    const-string v1, "enable-tracing"

    .line 70
    .line 71
    invoke-interface {p0, v1}, Lio/sentry/config/f;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lio/sentry/a0;->R(Ljava/lang/Boolean;)V

    .line 76
    .line 77
    .line 78
    const-string v1, "traces-sample-rate"

    .line 79
    .line 80
    invoke-interface {p0, v1}, Lio/sentry/config/f;->e(Ljava/lang/String;)Ljava/lang/Double;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lio/sentry/a0;->h0(Ljava/lang/Double;)V

    .line 85
    .line 86
    .line 87
    const-string v1, "profiles-sample-rate"

    .line 88
    .line 89
    invoke-interface {p0, v1}, Lio/sentry/config/f;->e(Ljava/lang/String;)Ljava/lang/Double;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lio/sentry/a0;->Z(Ljava/lang/Double;)V

    .line 94
    .line 95
    .line 96
    const-string v1, "debug"

    .line 97
    .line 98
    invoke-interface {p0, v1}, Lio/sentry/config/f;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lio/sentry/a0;->L(Ljava/lang/Boolean;)V

    .line 103
    .line 104
    .line 105
    const-string v1, "enable-deduplication"

    .line 106
    .line 107
    invoke-interface {p0, v1}, Lio/sentry/config/f;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lio/sentry/a0;->P(Ljava/lang/Boolean;)V

    .line 112
    .line 113
    .line 114
    const-string v1, "send-client-reports"

    .line 115
    .line 116
    invoke-interface {p0, v1}, Lio/sentry/config/f;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lio/sentry/a0;->d0(Ljava/lang/Boolean;)V

    .line 121
    .line 122
    .line 123
    const-string v1, "max-request-body-size"

    .line 124
    .line 125
    invoke-interface {p0, v1}, Lio/sentry/config/f;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    if-eqz v1, :cond_0

    .line 130
    .line 131
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {v1}, Lio/sentry/s5$j;->valueOf(Ljava/lang/String;)Lio/sentry/s5$j;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lio/sentry/a0;->X(Lio/sentry/s5$j;)V

    .line 142
    .line 143
    .line 144
    :cond_0
    const-string v1, "tags"

    .line 145
    .line 146
    invoke-interface {p0, v1}, Lio/sentry/config/f;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_1

    .line 163
    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Ljava/util/Map$Entry;

    .line 169
    .line 170
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Ljava/lang/String;

    .line 175
    .line 176
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    check-cast v2, Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v0, v3, v2}, Lio/sentry/a0;->g0(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_1
    const-string v1, "proxy.host"

    .line 187
    .line 188
    invoke-interface {p0, v1}, Lio/sentry/config/f;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    const-string v2, "proxy.user"

    .line 193
    .line 194
    invoke-interface {p0, v2}, Lio/sentry/config/f;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    const-string v3, "proxy.pass"

    .line 199
    .line 200
    invoke-interface {p0, v3}, Lio/sentry/config/f;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    const-string v4, "proxy.port"

    .line 205
    .line 206
    const-string v5, "80"

    .line 207
    .line 208
    invoke-interface {p0, v4, v5}, Lio/sentry/config/f;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    if-eqz v1, :cond_2

    .line 213
    .line 214
    new-instance v5, Lio/sentry/s5$i;

    .line 215
    .line 216
    invoke-direct {v5, v1, v4, v2, v3}, Lio/sentry/s5$i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v5}, Lio/sentry/a0;->b0(Lio/sentry/s5$i;)V

    .line 220
    .line 221
    .line 222
    :cond_2
    const-string v1, "in-app-includes"

    .line 223
    .line 224
    invoke-interface {p0, v1}, Lio/sentry/config/f;->g(Ljava/lang/String;)Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_3

    .line 237
    .line 238
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    check-cast v2, Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v0, v2}, Lio/sentry/a0;->e(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_3
    const-string v1, "in-app-excludes"

    .line 249
    .line 250
    invoke-interface {p0, v1}, Lio/sentry/config/f;->g(Ljava/lang/String;)Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-eqz v2, :cond_4

    .line 263
    .line 264
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    check-cast v2, Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {v0, v2}, Lio/sentry/a0;->d(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_4
    const-string v1, "trace-propagation-targets"

    .line 275
    .line 276
    invoke-interface {p0, v1}, Lio/sentry/config/f;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    if-eqz v2, :cond_5

    .line 281
    .line 282
    invoke-interface {p0, v1}, Lio/sentry/config/f;->g(Ljava/lang/String;)Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    goto :goto_3

    .line 287
    :cond_5
    const/4 v1, 0x0

    .line 288
    :goto_3
    if-nez v1, :cond_6

    .line 289
    .line 290
    const-string v2, "tracing-origins"

    .line 291
    .line 292
    invoke-interface {p0, v2}, Lio/sentry/config/f;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    if-eqz v3, :cond_6

    .line 297
    .line 298
    invoke-interface {p0, v2}, Lio/sentry/config/f;->g(Ljava/lang/String;)Ljava/util/List;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    :cond_6
    if-eqz v1, :cond_7

    .line 303
    .line 304
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-eqz v2, :cond_7

    .line 313
    .line 314
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    check-cast v2, Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v0, v2}, Lio/sentry/a0;->f(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_7
    const-string v1, "context-tags"

    .line 325
    .line 326
    invoke-interface {p0, v1}, Lio/sentry/config/f;->g(Ljava/lang/String;)Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    if-eqz v2, :cond_8

    .line 339
    .line 340
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    check-cast v2, Ljava/lang/String;

    .line 345
    .line 346
    invoke-virtual {v0, v2}, Lio/sentry/a0;->b(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    goto :goto_5

    .line 350
    :cond_8
    const-string v1, "proguard-uuid"

    .line 351
    .line 352
    invoke-interface {p0, v1}, Lio/sentry/config/f;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Lio/sentry/a0;->a0(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    const-string v1, "bundle-ids"

    .line 360
    .line 361
    invoke-interface {p0, v1}, Lio/sentry/config/f;->g(Ljava/lang/String;)Ljava/util/List;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-eqz v2, :cond_9

    .line 374
    .line 375
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    check-cast v2, Ljava/lang/String;

    .line 380
    .line 381
    invoke-virtual {v0, v2}, Lio/sentry/a0;->a(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    goto :goto_6

    .line 385
    :cond_9
    const-string v1, "idle-timeout"

    .line 386
    .line 387
    invoke-interface {p0, v1}, Lio/sentry/config/f;->d(Ljava/lang/String;)Ljava/lang/Long;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-virtual {v0, v1}, Lio/sentry/a0;->V(Ljava/lang/Long;)V

    .line 392
    .line 393
    .line 394
    const-string v1, "enabled"

    .line 395
    .line 396
    invoke-interface {p0, v1}, Lio/sentry/config/f;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    invoke-virtual {v0, v1}, Lio/sentry/a0;->T(Ljava/lang/Boolean;)V

    .line 401
    .line 402
    .line 403
    const-string v1, "enable-pretty-serialization-output"

    .line 404
    .line 405
    invoke-interface {p0, v1}, Lio/sentry/config/f;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-virtual {v0, v1}, Lio/sentry/a0;->Q(Ljava/lang/Boolean;)V

    .line 410
    .line 411
    .line 412
    const-string v1, "send-modules"

    .line 413
    .line 414
    invoke-interface {p0, v1}, Lio/sentry/config/f;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Lio/sentry/a0;->e0(Ljava/lang/Boolean;)V

    .line 419
    .line 420
    .line 421
    const-string v1, "ignored-checkins"

    .line 422
    .line 423
    invoke-interface {p0, v1}, Lio/sentry/config/f;->g(Ljava/lang/String;)Ljava/util/List;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-virtual {v0, v1}, Lio/sentry/a0;->W(Ljava/util/List;)V

    .line 428
    .line 429
    .line 430
    const-string v1, "enable-backpressure-handling"

    .line 431
    .line 432
    invoke-interface {p0, v1}, Lio/sentry/config/f;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-virtual {v0, v1}, Lio/sentry/a0;->O(Ljava/lang/Boolean;)V

    .line 437
    .line 438
    .line 439
    const-string v1, "ignored-exceptions-for-type"

    .line 440
    .line 441
    invoke-interface {p0, v1}, Lio/sentry/config/f;->g(Ljava/lang/String;)Ljava/util/List;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    if-eqz v2, :cond_b

    .line 454
    .line 455
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    check-cast v2, Ljava/lang/String;

    .line 460
    .line 461
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    const-class v4, Ljava/lang/Throwable;

    .line 466
    .line 467
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 468
    .line 469
    .line 470
    move-result v4

    .line 471
    if-eqz v4, :cond_a

    .line 472
    .line 473
    invoke-virtual {v0, v3}, Lio/sentry/a0;->c(Ljava/lang/Class;)V

    .line 474
    .line 475
    .line 476
    goto :goto_7

    .line 477
    :cond_a
    sget-object v3, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 478
    .line 479
    const-string v4, "Skipping setting %s as ignored-exception-for-type. Reason: %s does not extend Throwable"

    .line 480
    .line 481
    filled-new-array {v2, v2}, [Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v5

    .line 485
    invoke-interface {p1, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    .line 487
    .line 488
    goto :goto_7

    .line 489
    :catch_0
    sget-object v3, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 490
    .line 491
    const-string v4, "Skipping setting %s as ignored-exception-for-type. Reason: %s class is not found"

    .line 492
    .line 493
    filled-new-array {v2, v2}, [Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    invoke-interface {p1, v3, v4, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    goto :goto_7

    .line 501
    :cond_b
    const-string p1, "cron.default-checkin-margin"

    .line 502
    .line 503
    invoke-interface {p0, p1}, Lio/sentry/config/f;->d(Ljava/lang/String;)Ljava/lang/Long;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    const-string v1, "cron.default-max-runtime"

    .line 508
    .line 509
    invoke-interface {p0, v1}, Lio/sentry/config/f;->d(Ljava/lang/String;)Ljava/lang/Long;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    const-string v2, "cron.default-timezone"

    .line 514
    .line 515
    invoke-interface {p0, v2}, Lio/sentry/config/f;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    const-string v3, "cron.default-failure-issue-threshold"

    .line 520
    .line 521
    invoke-interface {p0, v3}, Lio/sentry/config/f;->d(Ljava/lang/String;)Ljava/lang/Long;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    const-string v4, "cron.default-recovery-threshold"

    .line 526
    .line 527
    invoke-interface {p0, v4}, Lio/sentry/config/f;->d(Ljava/lang/String;)Ljava/lang/Long;

    .line 528
    .line 529
    .line 530
    move-result-object p0

    .line 531
    if-nez p1, :cond_c

    .line 532
    .line 533
    if-nez v1, :cond_c

    .line 534
    .line 535
    if-nez v2, :cond_c

    .line 536
    .line 537
    if-nez v3, :cond_c

    .line 538
    .line 539
    if-eqz p0, :cond_d

    .line 540
    .line 541
    :cond_c
    new-instance v4, Lio/sentry/s5$g;

    .line 542
    .line 543
    invoke-direct {v4}, Lio/sentry/s5$g;-><init>()V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v4, p1}, Lio/sentry/s5$g;->f(Ljava/lang/Long;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v4, v1}, Lio/sentry/s5$g;->h(Ljava/lang/Long;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v4, v2}, Lio/sentry/s5$g;->j(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v4, v3}, Lio/sentry/s5$g;->g(Ljava/lang/Long;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v4, p0}, Lio/sentry/s5$g;->i(Ljava/lang/Long;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v0, v4}, Lio/sentry/a0;->K(Lio/sentry/s5$g;)V

    .line 562
    .line 563
    .line 564
    :cond_d
    return-object v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->w:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public D()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->m:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public E()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->q:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public F()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->j:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public G()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->C:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public H()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->z:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public I()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->y:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public J()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->B:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public K(Lio/sentry/s5$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->D:Lio/sentry/s5$g;

    .line 2
    .line 3
    return-void
.end method

.method public L(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->g:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public M(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public O(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->C:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public P(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->h:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public Q(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->z:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public R(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->i:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public S(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->f:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public T(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->y:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public V(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->t:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public W(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->A:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public X(Lio/sentry/s5$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->l:Lio/sentry/s5$j;

    .line 2
    .line 3
    return-void
.end method

.method public Y(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->v:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public Z(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->k:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->x:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public a0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->r:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b0(Lio/sentry/s5$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->n:Lio/sentry/s5$i;

    .line 2
    .line 3
    return-void
.end method

.method public c(Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->u:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->o:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->w:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->p:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e0(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->B:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->q:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/sentry/a0;->q:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lio/sentry/a0;->q:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public f0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public g0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->m:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->x:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public h0(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/a0;->j:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public i()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->r:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Lio/sentry/s5$g;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->D:Lio/sentry/s5$g;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->g:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->h:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->i:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->f:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->t:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->A:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->u:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->o:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->p:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public w()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->v:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->k:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Lio/sentry/s5$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/a0;->n:Lio/sentry/s5$i;

    .line 2
    .line 3
    return-object v0
.end method
