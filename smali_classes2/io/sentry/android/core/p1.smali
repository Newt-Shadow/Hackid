.class abstract Lio/sentry/android/core/p1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/p0;)V
    .locals 11

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "io.sentry.traces.trace-propagation-targets"

    .line 4
    .line 5
    const-string v2, "The application context is required."

    .line 6
    .line 7
    invoke-static {p0, v2}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const-string v2, "The options object is required."

    .line 11
    .line 12
    invoke-static {p1, v2}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {p0, v2, p2}, Lio/sentry/android/core/p1;->b(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;)Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz p0, :cond_12

    .line 29
    .line 30
    const-string v3, "io.sentry.debug"

    .line 31
    .line 32
    invoke-virtual {p1}, Lio/sentry/s5;->isDebug()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setDebug(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lio/sentry/s5;->isDebug()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    const-string v3, "io.sentry.debug.level"

    .line 50
    .line 51
    invoke-virtual {p1}, Lio/sentry/s5;->getDiagnosticLevel()Lio/sentry/j5;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/p1;->h(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_0

    .line 70
    .line 71
    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3}, Lio/sentry/j5;->valueOf(Ljava/lang/String;)Lio/sentry/j5;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setDiagnosticLevel(Lio/sentry/j5;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    const-string v3, "io.sentry.anr.enable"

    .line 83
    .line 84
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrEnabled()Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrEnabled(Z)V

    .line 93
    .line 94
    .line 95
    const-string v3, "io.sentry.session-tracking.enable"

    .line 96
    .line 97
    invoke-virtual {p1}, Lio/sentry/s5;->isEnableAutoSessionTracking()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    const-string v4, "io.sentry.auto-session-tracking.enable"

    .line 106
    .line 107
    invoke-static {p0, p2, v4, v3}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setEnableAutoSessionTracking(Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lio/sentry/s5;->getSampleRate()Ljava/lang/Double;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 119
    .line 120
    if-nez v3, :cond_1

    .line 121
    .line 122
    const-string v3, "io.sentry.sample-rate"

    .line 123
    .line 124
    invoke-static {p0, p2, v3}, Lio/sentry/android/core/p1;->e(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/lang/Double;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 129
    .line 130
    .line 131
    move-result-wide v6

    .line 132
    cmpl-double v6, v6, v4

    .line 133
    .line 134
    if-eqz v6, :cond_1

    .line 135
    .line 136
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setSampleRate(Ljava/lang/Double;)V

    .line 137
    .line 138
    .line 139
    :cond_1
    const-string v3, "io.sentry.anr.report-debug"

    .line 140
    .line 141
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrReportInDebug()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrReportInDebug(Z)V

    .line 150
    .line 151
    .line 152
    const-string v3, "io.sentry.anr.timeout-interval-millis"

    .line 153
    .line 154
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    .line 155
    .line 156
    .line 157
    move-result-wide v6

    .line 158
    invoke-static {p0, p2, v3, v6, v7}, Lio/sentry/android/core/p1;->g(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v6

    .line 162
    invoke-virtual {p1, v6, v7}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrTimeoutIntervalMillis(J)V

    .line 163
    .line 164
    .line 165
    const-string v3, "io.sentry.anr.attach-thread-dumps"

    .line 166
    .line 167
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachAnrThreadDump()Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachAnrThreadDump(Z)V

    .line 176
    .line 177
    .line 178
    const-string v3, "io.sentry.dsn"

    .line 179
    .line 180
    invoke-virtual {p1}, Lio/sentry/s5;->getDsn()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->h(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    const-string v6, "io.sentry.enabled"

    .line 189
    .line 190
    invoke-virtual {p1}, Lio/sentry/s5;->isEnabled()Z

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    invoke-static {p0, p2, v6, v7}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    if-eqz v6, :cond_3

    .line 199
    .line 200
    if-eqz v3, :cond_2

    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    if-eqz v7, :cond_2

    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_2
    if-nez v3, :cond_4

    .line 210
    .line 211
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    sget-object v8, Lio/sentry/j5;->FATAL:Lio/sentry/j5;

    .line 216
    .line 217
    const-string v9, "DSN is required. Use empty string to disable SDK."

    .line 218
    .line 219
    new-array v10, v2, [Ljava/lang/Object;

    .line 220
    .line 221
    invoke-interface {v7, v8, v9, v10}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    sget-object v8, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 230
    .line 231
    const-string v9, "Sentry enabled flag set to false or DSN is empty: disabling sentry-android"

    .line 232
    .line 233
    new-array v10, v2, [Ljava/lang/Object;

    .line 234
    .line 235
    invoke-interface {v7, v8, v9, v10}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    :cond_4
    :goto_1
    invoke-virtual {p1, v6}, Lio/sentry/s5;->setEnabled(Z)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setDsn(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const-string v3, "io.sentry.ndk.enable"

    .line 245
    .line 246
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNdk()Z

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableNdk(Z)V

    .line 255
    .line 256
    .line 257
    const-string v3, "io.sentry.ndk.scope-sync.enable"

    .line 258
    .line 259
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableScopeSync()Z

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableScopeSync(Z)V

    .line 268
    .line 269
    .line 270
    const-string v3, "io.sentry.release"

    .line 271
    .line 272
    invoke-virtual {p1}, Lio/sentry/s5;->getRelease()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->h(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setRelease(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    const-string v3, "io.sentry.environment"

    .line 284
    .line 285
    invoke-virtual {p1}, Lio/sentry/s5;->getEnvironment()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->h(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setEnvironment(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    const-string v3, "io.sentry.session-tracking.timeout-interval-millis"

    .line 297
    .line 298
    invoke-virtual {p1}, Lio/sentry/s5;->getSessionTrackingIntervalMillis()J

    .line 299
    .line 300
    .line 301
    move-result-wide v6

    .line 302
    invoke-static {p0, p2, v3, v6, v7}, Lio/sentry/android/core/p1;->g(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J

    .line 303
    .line 304
    .line 305
    move-result-wide v6

    .line 306
    invoke-virtual {p1, v6, v7}, Lio/sentry/s5;->setSessionTrackingIntervalMillis(J)V

    .line 307
    .line 308
    .line 309
    const-string v3, "io.sentry.max-breadcrumbs"

    .line 310
    .line 311
    invoke-virtual {p1}, Lio/sentry/s5;->getMaxBreadcrumbs()I

    .line 312
    .line 313
    .line 314
    move-result v6

    .line 315
    int-to-long v6, v6

    .line 316
    invoke-static {p0, p2, v3, v6, v7}, Lio/sentry/android/core/p1;->g(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J

    .line 317
    .line 318
    .line 319
    move-result-wide v6

    .line 320
    long-to-int v3, v6

    .line 321
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setMaxBreadcrumbs(I)V

    .line 322
    .line 323
    .line 324
    const-string v3, "io.sentry.breadcrumbs.activity-lifecycle"

    .line 325
    .line 326
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleBreadcrumbs()Z

    .line 327
    .line 328
    .line 329
    move-result v6

    .line 330
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableActivityLifecycleBreadcrumbs(Z)V

    .line 335
    .line 336
    .line 337
    const-string v3, "io.sentry.breadcrumbs.app-lifecycle"

    .line 338
    .line 339
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppLifecycleBreadcrumbs()Z

    .line 340
    .line 341
    .line 342
    move-result v6

    .line 343
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppLifecycleBreadcrumbs(Z)V

    .line 348
    .line 349
    .line 350
    const-string v3, "io.sentry.breadcrumbs.system-events"

    .line 351
    .line 352
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    .line 353
    .line 354
    .line 355
    move-result v6

    .line 356
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableSystemEventBreadcrumbs(Z)V

    .line 361
    .line 362
    .line 363
    const-string v3, "io.sentry.breadcrumbs.app-components"

    .line 364
    .line 365
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppComponentBreadcrumbs()Z

    .line 366
    .line 367
    .line 368
    move-result v6

    .line 369
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppComponentBreadcrumbs(Z)V

    .line 374
    .line 375
    .line 376
    const-string v3, "io.sentry.breadcrumbs.user-interaction"

    .line 377
    .line 378
    invoke-virtual {p1}, Lio/sentry/s5;->isEnableUserInteractionBreadcrumbs()Z

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setEnableUserInteractionBreadcrumbs(Z)V

    .line 387
    .line 388
    .line 389
    const-string v3, "io.sentry.breadcrumbs.network-events"

    .line 390
    .line 391
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNetworkEventBreadcrumbs()Z

    .line 392
    .line 393
    .line 394
    move-result v6

    .line 395
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableNetworkEventBreadcrumbs(Z)V

    .line 400
    .line 401
    .line 402
    const-string v3, "io.sentry.uncaught-exception-handler.enable"

    .line 403
    .line 404
    invoke-virtual {p1}, Lio/sentry/s5;->isEnableUncaughtExceptionHandler()Z

    .line 405
    .line 406
    .line 407
    move-result v6

    .line 408
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setEnableUncaughtExceptionHandler(Z)V

    .line 413
    .line 414
    .line 415
    const-string v3, "io.sentry.attach-threads"

    .line 416
    .line 417
    invoke-virtual {p1}, Lio/sentry/s5;->isAttachThreads()Z

    .line 418
    .line 419
    .line 420
    move-result v6

    .line 421
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setAttachThreads(Z)V

    .line 426
    .line 427
    .line 428
    const-string v3, "io.sentry.attach-screenshot"

    .line 429
    .line 430
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachScreenshot()Z

    .line 431
    .line 432
    .line 433
    move-result v6

    .line 434
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachScreenshot(Z)V

    .line 439
    .line 440
    .line 441
    const-string v3, "io.sentry.attach-view-hierarchy"

    .line 442
    .line 443
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachViewHierarchy()Z

    .line 444
    .line 445
    .line 446
    move-result v6

    .line 447
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachViewHierarchy(Z)V

    .line 452
    .line 453
    .line 454
    const-string v3, "io.sentry.send-client-reports"

    .line 455
    .line 456
    invoke-virtual {p1}, Lio/sentry/s5;->isSendClientReports()Z

    .line 457
    .line 458
    .line 459
    move-result v6

    .line 460
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 461
    .line 462
    .line 463
    move-result v3

    .line 464
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setSendClientReports(Z)V

    .line 465
    .line 466
    .line 467
    const-string v3, "io.sentry.additional-context"

    .line 468
    .line 469
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isCollectAdditionalContext()Z

    .line 470
    .line 471
    .line 472
    move-result v6

    .line 473
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setCollectAdditionalContext(Z)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p1}, Lio/sentry/s5;->getEnableTracing()Ljava/lang/Boolean;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    if-nez v3, :cond_5

    .line 485
    .line 486
    const-string v3, "io.sentry.traces.enable"

    .line 487
    .line 488
    const/4 v6, 0x0

    .line 489
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->d(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setEnableTracing(Ljava/lang/Boolean;)V

    .line 494
    .line 495
    .line 496
    :cond_5
    invoke-virtual {p1}, Lio/sentry/s5;->getTracesSampleRate()Ljava/lang/Double;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    if-nez v3, :cond_6

    .line 501
    .line 502
    const-string v3, "io.sentry.traces.sample-rate"

    .line 503
    .line 504
    invoke-static {p0, p2, v3}, Lio/sentry/android/core/p1;->e(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/lang/Double;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 509
    .line 510
    .line 511
    move-result-wide v6

    .line 512
    cmpl-double v6, v6, v4

    .line 513
    .line 514
    if-eqz v6, :cond_6

    .line 515
    .line 516
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setTracesSampleRate(Ljava/lang/Double;)V

    .line 517
    .line 518
    .line 519
    :cond_6
    const-string v3, "io.sentry.traces.trace-sampling"

    .line 520
    .line 521
    invoke-virtual {p1}, Lio/sentry/s5;->isTraceSampling()Z

    .line 522
    .line 523
    .line 524
    move-result v6

    .line 525
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 526
    .line 527
    .line 528
    move-result v3

    .line 529
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setTraceSampling(Z)V

    .line 530
    .line 531
    .line 532
    const-string v3, "io.sentry.traces.activity.enable"

    .line 533
    .line 534
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoActivityLifecycleTracing()Z

    .line 535
    .line 536
    .line 537
    move-result v6

    .line 538
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 539
    .line 540
    .line 541
    move-result v3

    .line 542
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAutoActivityLifecycleTracing(Z)V

    .line 543
    .line 544
    .line 545
    const-string v3, "io.sentry.traces.activity.auto-finish.enable"

    .line 546
    .line 547
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleTracingAutoFinish()Z

    .line 548
    .line 549
    .line 550
    move-result v6

    .line 551
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 552
    .line 553
    .line 554
    move-result v3

    .line 555
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableActivityLifecycleTracingAutoFinish(Z)V

    .line 556
    .line 557
    .line 558
    const-string v3, "io.sentry.traces.profiling.enable"

    .line 559
    .line 560
    invoke-virtual {p1}, Lio/sentry/s5;->isProfilingEnabled()Z

    .line 561
    .line 562
    .line 563
    move-result v6

    .line 564
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 565
    .line 566
    .line 567
    move-result v3

    .line 568
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setProfilingEnabled(Z)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {p1}, Lio/sentry/s5;->getProfilesSampleRate()Ljava/lang/Double;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    if-nez v3, :cond_7

    .line 576
    .line 577
    const-string v3, "io.sentry.traces.profiling.sample-rate"

    .line 578
    .line 579
    invoke-static {p0, p2, v3}, Lio/sentry/android/core/p1;->e(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/lang/Double;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 584
    .line 585
    .line 586
    move-result-wide v6

    .line 587
    cmpl-double v6, v6, v4

    .line 588
    .line 589
    if-eqz v6, :cond_7

    .line 590
    .line 591
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setProfilesSampleRate(Ljava/lang/Double;)V

    .line 592
    .line 593
    .line 594
    :cond_7
    const-string v3, "io.sentry.traces.user-interaction.enable"

    .line 595
    .line 596
    invoke-virtual {p1}, Lio/sentry/s5;->isEnableUserInteractionTracing()Z

    .line 597
    .line 598
    .line 599
    move-result v6

    .line 600
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 601
    .line 602
    .line 603
    move-result v3

    .line 604
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setEnableUserInteractionTracing(Z)V

    .line 605
    .line 606
    .line 607
    const-string v3, "io.sentry.traces.time-to-full-display.enable"

    .line 608
    .line 609
    invoke-virtual {p1}, Lio/sentry/s5;->isEnableTimeToFullDisplayTracing()Z

    .line 610
    .line 611
    .line 612
    move-result v6

    .line 613
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 614
    .line 615
    .line 616
    move-result v3

    .line 617
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setEnableTimeToFullDisplayTracing(Z)V

    .line 618
    .line 619
    .line 620
    const-string v3, "io.sentry.traces.idle-timeout"

    .line 621
    .line 622
    const-wide/16 v6, -0x1

    .line 623
    .line 624
    invoke-static {p0, p2, v3, v6, v7}, Lio/sentry/android/core/p1;->g(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J

    .line 625
    .line 626
    .line 627
    move-result-wide v8

    .line 628
    cmp-long v3, v8, v6

    .line 629
    .line 630
    if-eqz v3, :cond_8

    .line 631
    .line 632
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setIdleTimeout(Ljava/lang/Long;)V

    .line 637
    .line 638
    .line 639
    :cond_8
    invoke-static {p0, p2, v1}, Lio/sentry/android/core/p1;->f(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 644
    .line 645
    .line 646
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    const-string v7, "io.sentry.traces.tracing-origins"

    .line 648
    .line 649
    if-nez v6, :cond_a

    .line 650
    .line 651
    if-eqz v3, :cond_9

    .line 652
    .line 653
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 654
    .line 655
    .line 656
    move-result v6

    .line 657
    if-eqz v6, :cond_a

    .line 658
    .line 659
    :cond_9
    invoke-static {p0, p2, v7}, Lio/sentry/android/core/p1;->f(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    .line 660
    .line 661
    .line 662
    move-result-object v3

    .line 663
    :cond_a
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 664
    .line 665
    .line 666
    move-result v1

    .line 667
    if-nez v1, :cond_b

    .line 668
    .line 669
    invoke-virtual {p0, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    if-eqz v1, :cond_c

    .line 674
    .line 675
    :cond_b
    if-nez v3, :cond_c

    .line 676
    .line 677
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    invoke-virtual {p1, v1}, Lio/sentry/s5;->setTracePropagationTargets(Ljava/util/List;)V

    .line 682
    .line 683
    .line 684
    goto :goto_2

    .line 685
    :cond_c
    if-eqz v3, :cond_d

    .line 686
    .line 687
    invoke-virtual {p1, v3}, Lio/sentry/s5;->setTracePropagationTargets(Ljava/util/List;)V

    .line 688
    .line 689
    .line 690
    :cond_d
    :goto_2
    const-string v1, "io.sentry.traces.frames-tracking"

    .line 691
    .line 692
    const/4 v3, 0x1

    .line 693
    invoke-static {p0, p2, v1, v3}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableFramesTracking(Z)V

    .line 698
    .line 699
    .line 700
    const-string v1, "io.sentry.proguard-uuid"

    .line 701
    .line 702
    invoke-virtual {p1}, Lio/sentry/s5;->getProguardUuid()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v6

    .line 706
    invoke-static {p0, p2, v1, v6}, Lio/sentry/android/core/p1;->h(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v1

    .line 710
    invoke-virtual {p1, v1}, Lio/sentry/s5;->setProguardUuid(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {p1}, Lio/sentry/s5;->getSdkVersion()Lio/sentry/protocol/p;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    if-nez v1, :cond_e

    .line 718
    .line 719
    new-instance v1, Lio/sentry/protocol/p;

    .line 720
    .line 721
    invoke-direct {v1, v0, v0}, Lio/sentry/protocol/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    :cond_e
    const-string v0, "io.sentry.sdk.name"

    .line 725
    .line 726
    invoke-virtual {v1}, Lio/sentry/protocol/p;->f()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v6

    .line 730
    invoke-static {p0, p2, v0, v6}, Lio/sentry/android/core/p1;->i(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    invoke-virtual {v1, v0}, Lio/sentry/protocol/p;->i(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    const-string v0, "io.sentry.sdk.version"

    .line 738
    .line 739
    invoke-virtual {v1}, Lio/sentry/protocol/p;->h()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v6

    .line 743
    invoke-static {p0, p2, v0, v6}, Lio/sentry/android/core/p1;->i(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    invoke-virtual {v1, v0}, Lio/sentry/protocol/p;->k(Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {p1, v1}, Lio/sentry/s5;->setSdkVersion(Lio/sentry/protocol/p;)V

    .line 751
    .line 752
    .line 753
    const-string v0, "io.sentry.send-default-pii"

    .line 754
    .line 755
    invoke-virtual {p1}, Lio/sentry/s5;->isSendDefaultPii()Z

    .line 756
    .line 757
    .line 758
    move-result v1

    .line 759
    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 760
    .line 761
    .line 762
    move-result v0

    .line 763
    invoke-virtual {p1, v0}, Lio/sentry/s5;->setSendDefaultPii(Z)V

    .line 764
    .line 765
    .line 766
    const-string v0, "io.sentry.gradle-plugin-integrations"

    .line 767
    .line 768
    invoke-static {p0, p2, v0}, Lio/sentry/android/core/p1;->f(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    if-eqz v0, :cond_f

    .line 773
    .line 774
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 779
    .line 780
    .line 781
    move-result v1

    .line 782
    if-eqz v1, :cond_f

    .line 783
    .line 784
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v1

    .line 788
    check-cast v1, Ljava/lang/String;

    .line 789
    .line 790
    invoke-static {}, Lio/sentry/h5;->c()Lio/sentry/h5;

    .line 791
    .line 792
    .line 793
    move-result-object v6

    .line 794
    invoke-virtual {v6, v1}, Lio/sentry/h5;->a(Ljava/lang/String;)V

    .line 795
    .line 796
    .line 797
    goto :goto_3

    .line 798
    :cond_f
    const-string v0, "io.sentry.enable-root-check"

    .line 799
    .line 800
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableRootCheck()Z

    .line 801
    .line 802
    .line 803
    move-result v1

    .line 804
    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 805
    .line 806
    .line 807
    move-result v0

    .line 808
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableRootCheck(Z)V

    .line 809
    .line 810
    .line 811
    const-string v0, "io.sentry.send-modules"

    .line 812
    .line 813
    invoke-virtual {p1}, Lio/sentry/s5;->isSendModules()Z

    .line 814
    .line 815
    .line 816
    move-result v1

    .line 817
    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 818
    .line 819
    .line 820
    move-result v0

    .line 821
    invoke-virtual {p1, v0}, Lio/sentry/s5;->setSendModules(Z)V

    .line 822
    .line 823
    .line 824
    const-string v0, "io.sentry.performance-v2.enable"

    .line 825
    .line 826
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    .line 827
    .line 828
    .line 829
    move-result v1

    .line 830
    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 831
    .line 832
    .line 833
    move-result v0

    .line 834
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnablePerformanceV2(Z)V

    .line 835
    .line 836
    .line 837
    const-string v0, "io.sentry.profiling.enable-app-start"

    .line 838
    .line 839
    invoke-virtual {p1}, Lio/sentry/s5;->isEnableAppStartProfiling()Z

    .line 840
    .line 841
    .line 842
    move-result v1

    .line 843
    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    invoke-virtual {p1, v0}, Lio/sentry/s5;->setEnableAppStartProfiling(Z)V

    .line 848
    .line 849
    .line 850
    const-string v0, "io.sentry.enable-scope-persistence"

    .line 851
    .line 852
    invoke-virtual {p1}, Lio/sentry/s5;->isEnableScopePersistence()Z

    .line 853
    .line 854
    .line 855
    move-result v1

    .line 856
    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 857
    .line 858
    .line 859
    move-result v0

    .line 860
    invoke-virtual {p1, v0}, Lio/sentry/s5;->setEnableScopePersistence(Z)V

    .line 861
    .line 862
    .line 863
    const-string v0, "io.sentry.enable-metrics"

    .line 864
    .line 865
    invoke-virtual {p1}, Lio/sentry/s5;->isEnableMetrics()Z

    .line 866
    .line 867
    .line 868
    move-result v1

    .line 869
    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 870
    .line 871
    .line 872
    move-result v0

    .line 873
    invoke-virtual {p1, v0}, Lio/sentry/s5;->setEnableMetrics(Z)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {p1}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    invoke-virtual {v0}, Lio/sentry/u5;->k()Ljava/lang/Double;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    if-nez v0, :cond_10

    .line 885
    .line 886
    const-string v0, "io.sentry.session-replay.session-sample-rate"

    .line 887
    .line 888
    invoke-static {p0, p2, v0}, Lio/sentry/android/core/p1;->e(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/lang/Double;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 893
    .line 894
    .line 895
    move-result-wide v6

    .line 896
    cmpl-double v1, v6, v4

    .line 897
    .line 898
    if-eqz v1, :cond_10

    .line 899
    .line 900
    invoke-virtual {p1}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 901
    .line 902
    .line 903
    move-result-object v1

    .line 904
    invoke-virtual {v1, v0}, Lio/sentry/u5;->w(Ljava/lang/Double;)V

    .line 905
    .line 906
    .line 907
    :cond_10
    invoke-virtual {p1}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    invoke-virtual {v0}, Lio/sentry/u5;->g()Ljava/lang/Double;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    if-nez v0, :cond_11

    .line 916
    .line 917
    const-string v0, "io.sentry.session-replay.on-error-sample-rate"

    .line 918
    .line 919
    invoke-static {p0, p2, v0}, Lio/sentry/android/core/p1;->e(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/lang/Double;

    .line 920
    .line 921
    .line 922
    move-result-object v0

    .line 923
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 924
    .line 925
    .line 926
    move-result-wide v6

    .line 927
    cmpl-double v1, v6, v4

    .line 928
    .line 929
    if-eqz v1, :cond_11

    .line 930
    .line 931
    invoke-virtual {p1}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 932
    .line 933
    .line 934
    move-result-object v1

    .line 935
    invoke-virtual {v1, v0}, Lio/sentry/u5;->t(Ljava/lang/Double;)V

    .line 936
    .line 937
    .line 938
    :cond_11
    invoke-virtual {p1}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    const-string v1, "io.sentry.session-replay.mask-all-text"

    .line 943
    .line 944
    invoke-static {p0, p2, v1, v3}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 945
    .line 946
    .line 947
    move-result v1

    .line 948
    invoke-virtual {v0, v1}, Lio/sentry/u5;->s(Z)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {p1}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    const-string v1, "io.sentry.session-replay.mask-all-images"

    .line 956
    .line 957
    invoke-static {p0, p2, v1, v3}, Lio/sentry/android/core/p1;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 958
    .line 959
    .line 960
    move-result p0

    .line 961
    invoke-virtual {v0, p0}, Lio/sentry/u5;->r(Z)V

    .line 962
    .line 963
    .line 964
    :cond_12
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 965
    .line 966
    .line 967
    move-result-object p0

    .line 968
    sget-object p2, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 969
    .line 970
    const-string v0, "Retrieving configuration from AndroidManifest.xml"

    .line 971
    .line 972
    new-array v1, v2, [Ljava/lang/Object;

    .line 973
    .line 974
    invoke-interface {p0, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 975
    .line 976
    .line 977
    goto :goto_4

    .line 978
    :catchall_0
    move-exception p0

    .line 979
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 980
    .line 981
    .line 982
    move-result-object p1

    .line 983
    sget-object p2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 984
    .line 985
    const-string v0, "Failed to read configuration from android manifest metadata."

    .line 986
    .line 987
    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 988
    .line 989
    .line 990
    :goto_4
    return-void
.end method

.method private static b(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;)Landroid/os/Bundle;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Lio/sentry/android/core/p0;

    .line 5
    .line 6
    invoke-direct {p2, p1}, Lio/sentry/android/core/p0;-><init>(Lio/sentry/ILogger;)V

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-static {p0, p2}, Lio/sentry/android/core/x0;->i(Landroid/content/Context;Lio/sentry/android/core/p0;)Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    :goto_1
    return-object p0
.end method

.method private static c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p2, p3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    sget-object p3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p2, " read: "

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 v0, 0x0

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-interface {p1, p3, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return p0
.end method

.method private static d(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    move p3, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p3, 0x1

    .line 13
    :goto_0
    invoke-virtual {p0, p2, p3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    sget-object p3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p2, " read: "

    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    new-array v0, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-interface {p1, p3, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_1
    sget-object p0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p2, " used default "

    .line 60
    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    new-array v0, v1, [Ljava/lang/Object;

    .line 72
    .line 73
    invoke-interface {p1, p0, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-object p3
.end method

.method private static e(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/lang/Double;
    .locals 4

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    .line 3
    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Float;->doubleValue()D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 16
    .line 17
    cmpl-double v2, v0, v2

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    invoke-virtual {p0, p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    :cond_0
    sget-object p0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p2, " read: "

    .line 45
    .line 46
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const/4 v2, 0x0

    .line 57
    new-array v2, v2, [Ljava/lang/Object;

    .line 58
    .line 59
    invoke-interface {p1, p0, p2, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method private static f(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p2, " read: "

    .line 16
    .line 17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 v1, 0x0

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-interface {p1, v0, p2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    const-string p1, ","

    .line 36
    .line 37
    const/4 p2, -0x1

    .line 38
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method private static g(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J
    .locals 1

    .line 1
    long-to-int p3, p3

    .line 2
    invoke-virtual {p0, p2, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    int-to-long p3, p0

    .line 7
    sget-object p0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p2, " read: "

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const/4 v0, 0x0

    .line 30
    new-array v0, v0, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-interface {p1, p0, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-wide p3
.end method

.method private static h(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p2, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object p3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p2, " read: "

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 v0, 0x0

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-interface {p1, p3, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method private static i(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p2, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object p3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p2, " read: "

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 v0, 0x0

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-interface {p1, p3, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method
