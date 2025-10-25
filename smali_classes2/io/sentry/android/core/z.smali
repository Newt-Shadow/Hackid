.class abstract Lio/sentry/android/core/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/android/core/z;->i(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/android/core/z;->j(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/android/core/z;->h(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static d(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "sentry"

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private static e(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "@"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, "+"

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method static f(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/p0;Lio/sentry/android/core/n1;Lio/sentry/android/core/h;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/s5;->getEnvelopeDiskCache()Lio/sentry/cache/g;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lio/sentry/transport/s;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lio/sentry/android/core/cache/b;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lio/sentry/android/core/cache/b;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setEnvelopeDiskCache(Lio/sentry/cache/g;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lio/sentry/s5;->getConnectionStatusProvider()Lio/sentry/l0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    instance-of v0, v0, Lio/sentry/w1;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Lio/sentry/android/core/internal/util/a;

    .line 32
    .line 33
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, p1, v1, p2}, Lio/sentry/android/core/internal/util/a;-><init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setConnectionStatusProvider(Lio/sentry/l0;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    new-instance v0, Lio/sentry/cache/t;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lio/sentry/cache/t;-><init>(Lio/sentry/s5;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lio/sentry/s5;->addScopeObserver(Lio/sentry/v0;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lio/sentry/cache/h;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lio/sentry/cache/h;-><init>(Lio/sentry/s5;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lio/sentry/s5;->addOptionsObserver(Lio/sentry/q0;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    new-instance v0, Lio/sentry/k;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lio/sentry/k;-><init>(Lio/sentry/s5;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lio/sentry/s5;->addEventProcessor(Lio/sentry/y;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lio/sentry/android/core/a1;

    .line 74
    .line 75
    invoke-direct {v0, p1, p2, p0}, Lio/sentry/android/core/a1;-><init>(Landroid/content/Context;Lio/sentry/android/core/p0;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lio/sentry/s5;->addEventProcessor(Lio/sentry/y;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lio/sentry/android/core/u1;

    .line 82
    .line 83
    invoke-direct {v0, p0, p4}, Lio/sentry/android/core/u1;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/h;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lio/sentry/s5;->addEventProcessor(Lio/sentry/y;)V

    .line 87
    .line 88
    .line 89
    new-instance p4, Lio/sentry/android/core/ScreenshotEventProcessor;

    .line 90
    .line 91
    invoke-direct {p4, p0, p2}, Lio/sentry/android/core/ScreenshotEventProcessor;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/p0;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p4}, Lio/sentry/s5;->addEventProcessor(Lio/sentry/y;)V

    .line 95
    .line 96
    .line 97
    new-instance p4, Lio/sentry/android/core/ViewHierarchyEventProcessor;

    .line 98
    .line 99
    invoke-direct {p4, p0}, Lio/sentry/android/core/ViewHierarchyEventProcessor;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p4}, Lio/sentry/s5;->addEventProcessor(Lio/sentry/y;)V

    .line 103
    .line 104
    .line 105
    new-instance p4, Lio/sentry/android/core/i0;

    .line 106
    .line 107
    invoke-direct {p4, p1, p0, p2}, Lio/sentry/android/core/i0;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/p0;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p4}, Lio/sentry/s5;->addEventProcessor(Lio/sentry/y;)V

    .line 111
    .line 112
    .line 113
    new-instance p4, Lio/sentry/android/core/e0;

    .line 114
    .line 115
    invoke-direct {p4, p0}, Lio/sentry/android/core/e0;-><init>(Lio/sentry/s5;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p4}, Lio/sentry/s5;->setTransportGate(Lio/sentry/transport/r;)V

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 122
    .line 123
    .line 124
    move-result-object p4

    .line 125
    monitor-enter p4

    .line 126
    :try_start_0
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lio/sentry/android/core/performance/g;->h()Lio/sentry/b1;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_3

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setTransactionProfiler(Lio/sentry/b1;)V

    .line 137
    .line 138
    .line 139
    invoke-static {}, Lio/sentry/android/core/performance/g;->p()Lio/sentry/android/core/performance/g;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/g;->z(Lio/sentry/b1;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_3
    new-instance v0, Lio/sentry/android/core/d0;

    .line 149
    .line 150
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getFrameMetricsCollector()Lio/sentry/android/core/internal/util/t;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    const-string v2, "options.getFrameMetricsCollector is required"

    .line 155
    .line 156
    invoke-static {v1, v2}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Lio/sentry/android/core/internal/util/t;

    .line 161
    .line 162
    invoke-direct {v0, p1, p0, p2, v1}, Lio/sentry/android/core/d0;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/p0;Lio/sentry/android/core/internal/util/t;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setTransactionProfiler(Lio/sentry/b1;)V

    .line 166
    .line 167
    .line 168
    :goto_0
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    new-instance p4, Lio/sentry/android/core/internal/modules/a;

    .line 170
    .line 171
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-direct {p4, p1, v0}, Lio/sentry/android/core/internal/modules/a;-><init>(Landroid/content/Context;Lio/sentry/ILogger;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p4}, Lio/sentry/s5;->setModulesLoader(Lio/sentry/internal/modules/b;)V

    .line 179
    .line 180
    .line 181
    new-instance p4, Lio/sentry/android/core/internal/debugmeta/a;

    .line 182
    .line 183
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-direct {p4, p1, v0}, Lio/sentry/android/core/internal/debugmeta/a;-><init>(Landroid/content/Context;Lio/sentry/ILogger;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, p4}, Lio/sentry/s5;->setDebugMetaLoader(Lio/sentry/internal/debugmeta/a;)V

    .line 191
    .line 192
    .line 193
    const-string p1, "androidx.core.view.ScrollingView"

    .line 194
    .line 195
    invoke-virtual {p3, p1, p0}, Lio/sentry/android/core/n1;->b(Ljava/lang/String;Lio/sentry/s5;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    const-string p4, "androidx.compose.ui.node.Owner"

    .line 200
    .line 201
    invoke-virtual {p3, p4, p0}, Lio/sentry/android/core/n1;->b(Ljava/lang/String;Lio/sentry/s5;)Z

    .line 202
    .line 203
    .line 204
    move-result p4

    .line 205
    invoke-virtual {p0}, Lio/sentry/s5;->getGestureTargetLocators()Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    const/4 v1, 0x1

    .line 214
    if-eqz v0, :cond_6

    .line 215
    .line 216
    new-instance v0, Ljava/util/ArrayList;

    .line 217
    .line 218
    const/4 v2, 0x2

    .line 219
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    .line 221
    .line 222
    new-instance v2, Lio/sentry/android/core/internal/gestures/a;

    .line 223
    .line 224
    invoke-direct {v2, p1}, Lio/sentry/android/core/internal/gestures/a;-><init>(Z)V

    .line 225
    .line 226
    .line 227
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    if-eqz p4, :cond_4

    .line 231
    .line 232
    const-string p1, "io.sentry.compose.gestures.ComposeGestureTargetLocator"

    .line 233
    .line 234
    invoke-virtual {p3, p1, p0}, Lio/sentry/android/core/n1;->b(Ljava/lang/String;Lio/sentry/s5;)Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    if-eqz p1, :cond_4

    .line 239
    .line 240
    move p1, v1

    .line 241
    goto :goto_1

    .line 242
    :cond_4
    const/4 p1, 0x0

    .line 243
    :goto_1
    if-eqz p1, :cond_5

    .line 244
    .line 245
    new-instance p1, Lio/sentry/compose/gestures/ComposeGestureTargetLocator;

    .line 246
    .line 247
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-direct {p1, v2}, Lio/sentry/compose/gestures/ComposeGestureTargetLocator;-><init>(Lio/sentry/ILogger;)V

    .line 252
    .line 253
    .line 254
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    :cond_5
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setGestureTargetLocators(Ljava/util/List;)V

    .line 258
    .line 259
    .line 260
    :cond_6
    invoke-virtual {p0}, Lio/sentry/s5;->getViewHierarchyExporters()Ljava/util/List;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-eqz p1, :cond_7

    .line 269
    .line 270
    if-eqz p4, :cond_7

    .line 271
    .line 272
    const-string p1, "io.sentry.compose.viewhierarchy.ComposeViewHierarchyExporter"

    .line 273
    .line 274
    invoke-virtual {p3, p1, p0}, Lio/sentry/android/core/n1;->b(Ljava/lang/String;Lio/sentry/s5;)Z

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-eqz p1, :cond_7

    .line 279
    .line 280
    new-instance p1, Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .line 284
    .line 285
    new-instance p3, Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;

    .line 286
    .line 287
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 288
    .line 289
    .line 290
    move-result-object p4

    .line 291
    invoke-direct {p3, p4}, Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;-><init>(Lio/sentry/ILogger;)V

    .line 292
    .line 293
    .line 294
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, p1}, Lio/sentry/s5;->setViewHierarchyExporters(Ljava/util/List;)V

    .line 298
    .line 299
    .line 300
    :cond_7
    invoke-static {}, Lio/sentry/android/core/internal/util/c;->b()Lio/sentry/android/core/internal/util/c;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-virtual {p0, p1}, Lio/sentry/s5;->setMainThreadChecker(Lio/sentry/util/thread/a;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0}, Lio/sentry/s5;->getPerformanceCollectors()Ljava/util/List;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    if-eqz p1, :cond_8

    .line 316
    .line 317
    new-instance p1, Lio/sentry/android/core/v;

    .line 318
    .line 319
    invoke-direct {p1}, Lio/sentry/android/core/v;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0, p1}, Lio/sentry/s5;->addPerformanceCollector(Lio/sentry/r0;)V

    .line 323
    .line 324
    .line 325
    new-instance p1, Lio/sentry/android/core/s;

    .line 326
    .line 327
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 328
    .line 329
    .line 330
    move-result-object p3

    .line 331
    invoke-direct {p1, p3, p2}, Lio/sentry/android/core/s;-><init>(Lio/sentry/ILogger;Lio/sentry/android/core/p0;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, p1}, Lio/sentry/s5;->addPerformanceCollector(Lio/sentry/r0;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    if-eqz p1, :cond_8

    .line 342
    .line 343
    new-instance p1, Lio/sentry/android/core/c2;

    .line 344
    .line 345
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getFrameMetricsCollector()Lio/sentry/android/core/internal/util/t;

    .line 346
    .line 347
    .line 348
    move-result-object p2

    .line 349
    const-string p3, "options.getFrameMetricsCollector is required"

    .line 350
    .line 351
    invoke-static {p2, p3}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object p2

    .line 355
    check-cast p2, Lio/sentry/android/core/internal/util/t;

    .line 356
    .line 357
    invoke-direct {p1, p0, p2}, Lio/sentry/android/core/c2;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/internal/util/t;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p0, p1}, Lio/sentry/s5;->addPerformanceCollector(Lio/sentry/r0;)V

    .line 361
    .line 362
    .line 363
    :cond_8
    new-instance p1, Lio/sentry/m;

    .line 364
    .line 365
    invoke-direct {p1, p0}, Lio/sentry/m;-><init>(Lio/sentry/s5;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, p1}, Lio/sentry/s5;->setTransactionPerformanceCollector(Lio/sentry/b7;)V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    :catchall_0
    move-exception p0

    .line 373
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    throw p0
.end method

.method static g(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/p0;Lio/sentry/android/core/n1;Lio/sentry/android/core/h;ZZZ)V
    .locals 4

    .line 1
    new-instance v0, Lio/sentry/util/m;

    .line 2
    .line 3
    new-instance v1, Lio/sentry/android/core/w;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lio/sentry/android/core/w;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lio/sentry/util/m;-><init>(Lio/sentry/util/m$a;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lio/sentry/android/core/SendCachedEnvelopeIntegration;

    .line 12
    .line 13
    new-instance v2, Lio/sentry/k3;

    .line 14
    .line 15
    new-instance v3, Lio/sentry/android/core/x;

    .line 16
    .line 17
    invoke-direct {v3, p1}, Lio/sentry/android/core/x;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Lio/sentry/k3;-><init>(Lio/sentry/h3;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2, v0}, Lio/sentry/android/core/SendCachedEnvelopeIntegration;-><init>(Lio/sentry/j3;Lio/sentry/util/m;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lio/sentry/s5;->addIntegration(Lio/sentry/e1;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "io.sentry.android.ndk.SentryNdk"

    .line 30
    .line 31
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p3, v1, v2}, Lio/sentry/android/core/n1;->c(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lio/sentry/android/core/NdkIntegration;

    .line 40
    .line 41
    invoke-direct {v2, v1}, Lio/sentry/android/core/NdkIntegration;-><init>(Ljava/lang/Class;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2}, Lio/sentry/s5;->addIntegration(Lio/sentry/e1;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lio/sentry/android/core/EnvelopeFileObserverIntegration;->b()Lio/sentry/android/core/EnvelopeFileObserverIntegration;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1, v1}, Lio/sentry/s5;->addIntegration(Lio/sentry/e1;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lio/sentry/android/core/SendCachedEnvelopeIntegration;

    .line 55
    .line 56
    new-instance v2, Lio/sentry/l3;

    .line 57
    .line 58
    new-instance v3, Lio/sentry/android/core/y;

    .line 59
    .line 60
    invoke-direct {v3, p1}, Lio/sentry/android/core/y;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, v3}, Lio/sentry/l3;-><init>(Lio/sentry/h3;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2, v0}, Lio/sentry/android/core/SendCachedEnvelopeIntegration;-><init>(Lio/sentry/j3;Lio/sentry/util/m;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lio/sentry/s5;->addIntegration(Lio/sentry/e1;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lio/sentry/android/core/AppLifecycleIntegration;

    .line 73
    .line 74
    invoke-direct {v0}, Lio/sentry/android/core/AppLifecycleIntegration;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lio/sentry/s5;->addIntegration(Lio/sentry/e1;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p0, p2}, Lio/sentry/android/core/h0;->a(Landroid/content/Context;Lio/sentry/android/core/p0;)Lio/sentry/e1;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Lio/sentry/s5;->addIntegration(Lio/sentry/e1;)V

    .line 85
    .line 86
    .line 87
    instance-of v0, p0, Landroid/app/Application;

    .line 88
    .line 89
    if-eqz v0, :cond_0

    .line 90
    .line 91
    new-instance v0, Lio/sentry/android/core/ActivityLifecycleIntegration;

    .line 92
    .line 93
    move-object v1, p0

    .line 94
    check-cast v1, Landroid/app/Application;

    .line 95
    .line 96
    invoke-direct {v0, v1, p2, p4}, Lio/sentry/android/core/ActivityLifecycleIntegration;-><init>(Landroid/app/Application;Lio/sentry/android/core/p0;Lio/sentry/android/core/h;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lio/sentry/s5;->addIntegration(Lio/sentry/e1;)V

    .line 100
    .line 101
    .line 102
    new-instance p4, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;

    .line 103
    .line 104
    invoke-direct {p4, v1}, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;-><init>(Landroid/app/Application;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p4}, Lio/sentry/s5;->addIntegration(Lio/sentry/e1;)V

    .line 108
    .line 109
    .line 110
    new-instance p4, Lio/sentry/android/core/CurrentActivityIntegration;

    .line 111
    .line 112
    invoke-direct {p4, v1}, Lio/sentry/android/core/CurrentActivityIntegration;-><init>(Landroid/app/Application;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p4}, Lio/sentry/s5;->addIntegration(Lio/sentry/e1;)V

    .line 116
    .line 117
    .line 118
    new-instance p4, Lio/sentry/android/core/UserInteractionIntegration;

    .line 119
    .line 120
    invoke-direct {p4, v1, p3}, Lio/sentry/android/core/UserInteractionIntegration;-><init>(Landroid/app/Application;Lio/sentry/android/core/n1;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p4}, Lio/sentry/s5;->addIntegration(Lio/sentry/e1;)V

    .line 124
    .line 125
    .line 126
    if-eqz p5, :cond_1

    .line 127
    .line 128
    new-instance p3, Lio/sentry/android/fragment/FragmentLifecycleIntegration;

    .line 129
    .line 130
    const/4 p4, 0x1

    .line 131
    invoke-direct {p3, v1, p4, p4}, Lio/sentry/android/fragment/FragmentLifecycleIntegration;-><init>(Landroid/app/Application;ZZ)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p3}, Lio/sentry/s5;->addIntegration(Lio/sentry/e1;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    sget-object p4, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 143
    .line 144
    const/4 p5, 0x0

    .line 145
    new-array p5, p5, [Ljava/lang/Object;

    .line 146
    .line 147
    const-string v0, "ActivityLifecycle, FragmentLifecycle and UserInteraction Integrations need an Application class to be installed."

    .line 148
    .line 149
    invoke-interface {p3, p4, v0, p5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_1
    :goto_0
    if-eqz p6, :cond_2

    .line 153
    .line 154
    new-instance p3, Lio/sentry/android/timber/SentryTimberIntegration;

    .line 155
    .line 156
    invoke-direct {p3}, Lio/sentry/android/timber/SentryTimberIntegration;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p3}, Lio/sentry/s5;->addIntegration(Lio/sentry/e1;)V

    .line 160
    .line 161
    .line 162
    :cond_2
    new-instance p3, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;

    .line 163
    .line 164
    invoke-direct {p3, p0}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;-><init>(Landroid/content/Context;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p3}, Lio/sentry/s5;->addIntegration(Lio/sentry/e1;)V

    .line 168
    .line 169
    .line 170
    new-instance p3, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;

    .line 171
    .line 172
    invoke-direct {p3, p0}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;-><init>(Landroid/content/Context;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, p3}, Lio/sentry/s5;->addIntegration(Lio/sentry/e1;)V

    .line 176
    .line 177
    .line 178
    new-instance p3, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    .line 179
    .line 180
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 181
    .line 182
    .line 183
    move-result-object p4

    .line 184
    invoke-direct {p3, p0, p2, p4}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;-><init>(Landroid/content/Context;Lio/sentry/android/core/p0;Lio/sentry/ILogger;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, p3}, Lio/sentry/s5;->addIntegration(Lio/sentry/e1;)V

    .line 188
    .line 189
    .line 190
    if-eqz p7, :cond_3

    .line 191
    .line 192
    new-instance p2, Lio/sentry/android/replay/ReplayIntegration;

    .line 193
    .line 194
    invoke-static {}, Lio/sentry/transport/n;->b()Lio/sentry/transport/p;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    invoke-direct {p2, p0, p3}, Lio/sentry/android/replay/ReplayIntegration;-><init>(Landroid/content/Context;Lio/sentry/transport/p;)V

    .line 199
    .line 200
    .line 201
    new-instance p0, Lio/sentry/android/replay/a;

    .line 202
    .line 203
    invoke-direct {p0}, Lio/sentry/android/replay/a;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2, p0}, Lio/sentry/android/replay/ReplayIntegration;->D0(Lio/sentry/x2;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, p2}, Lio/sentry/s5;->addIntegration(Lio/sentry/e1;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, p2}, Lio/sentry/s5;->setReplayController(Lio/sentry/y2;)V

    .line 213
    .line 214
    .line 215
    :cond_3
    return-void
.end method

.method private static synthetic h(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/android/core/cache/b;->Y(Lio/sentry/s5;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static synthetic i(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic j(Lio/sentry/android/core/SentryAndroidOptions;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/sentry/s5;->getOutboxPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static k(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;)V
    .locals 2

    .line 1
    const-string v0, "The context is required."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lio/sentry/android/core/x0;->h(Landroid/content/Context;)Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "The options object is required."

    .line 11
    .line 12
    invoke-static {p0, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string v0, "The ILogger object is required."

    .line 16
    .line 17
    invoke-static {p2, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lio/sentry/s5;->setLogger(Lio/sentry/ILogger;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lio/sentry/android/core/z1;

    .line 24
    .line 25
    invoke-direct {v0}, Lio/sentry/android/core/z1;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lio/sentry/s5;->setDateProvider(Lio/sentry/z3;)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v0, 0xfa0

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Lio/sentry/s5;->setFlushTimeoutMillis(J)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lio/sentry/android/core/internal/util/t;

    .line 37
    .line 38
    invoke-direct {v0, p1, p2, p3}, Lio/sentry/android/core/internal/util/t;-><init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setFrameMetricsCollector(Lio/sentry/android/core/internal/util/t;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p0, p3}, Lio/sentry/android/core/p1;->a(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/p0;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lio/sentry/android/core/z;->d(Landroid/content/Context;)Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p0, p2}, Lio/sentry/s5;->setCacheDirPath(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p1, p3}, Lio/sentry/android/core/z;->l(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/p0;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private static l(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/p0;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lio/sentry/android/core/x0;->r(Landroid/content/Context;Lio/sentry/android/core/p0;)Landroid/content/pm/PackageInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/s5;->getRelease()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {v0, p2}, Lio/sentry/android/core/x0;->s(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/p0;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {v0, p2}, Lio/sentry/android/core/z;->e(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p0, p2}, Lio/sentry/s5;->setRelease(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    const-string v0, "android."

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lio/sentry/s5;->addInAppInclude(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Lio/sentry/s5;->getDistinctId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-nez p2, :cond_2

    .line 44
    .line 45
    :try_start_0
    invoke-static {p1}, Lio/sentry/android/core/g1;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lio/sentry/s5;->setDistinctId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    sget-object p2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 59
    .line 60
    const-string v0, "Could not generate distinct Id."

    .line 61
    .line 62
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void
.end method
