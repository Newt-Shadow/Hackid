.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppMetricaConfigPigeon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    }
.end annotation


# instance fields
.field private advIdentifiersTracking:Ljava/lang/Boolean;

.field private anrMonitoring:Ljava/lang/Boolean;

.field private anrMonitoringTimeout:Ljava/lang/Long;

.field private apiKey:Ljava/lang/String;

.field private appBuildNumber:Ljava/lang/Long;

.field private appEnvironment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appOpenTrackingEnabled:Ljava/lang/Boolean;

.field private appVersion:Ljava/lang/String;

.field private crashReporting:Ljava/lang/Boolean;

.field private customHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataSendingEnabled:Ljava/lang/Boolean;

.field private deviceType:Ljava/lang/String;

.field private dispatchPeriodSeconds:Ljava/lang/Long;

.field private errorEnvironment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private firstActivationAsUpdate:Ljava/lang/Boolean;

.field private location:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;

.field private locationTracking:Ljava/lang/Boolean;

.field private logs:Ljava/lang/Boolean;

.field private maxReportsCount:Ljava/lang/Long;

.field private maxReportsInDatabaseCount:Ljava/lang/Long;

.field private nativeCrashReporting:Ljava/lang/Boolean;

.field private preloadInfo:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;

.field private revenueAutoTrackingEnabled:Ljava/lang/Boolean;

.field private sessionTimeout:Ljava/lang/Long;

.field private sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

.field private userProfileID:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setApiKey(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setAdvIdentifiersTracking(Ljava/lang/Boolean;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setAnrMonitoring(Ljava/lang/Boolean;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    move-object v1, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    instance-of v3, v1, Ljava/lang/Integer;

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    check-cast v1, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    int-to-long v3, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    check-cast v1, Ljava/lang/Long;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_1
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setAnrMonitoringTimeout(Ljava/lang/Long;)V

    .line 69
    .line 70
    .line 71
    const/4 v1, 0x4

    .line 72
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    move-object v1, v2

    .line 79
    goto :goto_3

    .line 80
    :cond_2
    instance-of v3, v1, Ljava/lang/Integer;

    .line 81
    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    check-cast v1, Ljava/lang/Integer;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    int-to-long v3, v1

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    check-cast v1, Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v3

    .line 98
    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :goto_3
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setAppBuildNumber(Ljava/lang/Long;)V

    .line 103
    .line 104
    .line 105
    const/4 v1, 0x5

    .line 106
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Ljava/util/Map;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setAppEnvironment(Ljava/util/Map;)V

    .line 113
    .line 114
    .line 115
    const/4 v1, 0x6

    .line 116
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setAppOpenTrackingEnabled(Ljava/lang/Boolean;)V

    .line 123
    .line 124
    .line 125
    const/4 v1, 0x7

    .line 126
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setAppVersion(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const/16 v1, 0x8

    .line 136
    .line 137
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setCrashReporting(Ljava/lang/Boolean;)V

    .line 144
    .line 145
    .line 146
    const/16 v1, 0x9

    .line 147
    .line 148
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Ljava/util/List;

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setCustomHosts(Ljava/util/List;)V

    .line 155
    .line 156
    .line 157
    const/16 v1, 0xa

    .line 158
    .line 159
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Ljava/lang/Boolean;

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setDataSendingEnabled(Ljava/lang/Boolean;)V

    .line 166
    .line 167
    .line 168
    const/16 v1, 0xb

    .line 169
    .line 170
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    check-cast v1, Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setDeviceType(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const/16 v1, 0xc

    .line 180
    .line 181
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-nez v1, :cond_4

    .line 186
    .line 187
    move-object v1, v2

    .line 188
    goto :goto_5

    .line 189
    :cond_4
    instance-of v3, v1, Ljava/lang/Integer;

    .line 190
    .line 191
    if-eqz v3, :cond_5

    .line 192
    .line 193
    check-cast v1, Ljava/lang/Integer;

    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    int-to-long v3, v1

    .line 200
    goto :goto_4

    .line 201
    :cond_5
    check-cast v1, Ljava/lang/Long;

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 204
    .line 205
    .line 206
    move-result-wide v3

    .line 207
    :goto_4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    :goto_5
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setDispatchPeriodSeconds(Ljava/lang/Long;)V

    .line 212
    .line 213
    .line 214
    const/16 v1, 0xd

    .line 215
    .line 216
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    check-cast v1, Ljava/util/Map;

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setErrorEnvironment(Ljava/util/Map;)V

    .line 223
    .line 224
    .line 225
    const/16 v1, 0xe

    .line 226
    .line 227
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    check-cast v1, Ljava/lang/Boolean;

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setFirstActivationAsUpdate(Ljava/lang/Boolean;)V

    .line 234
    .line 235
    .line 236
    const/16 v1, 0xf

    .line 237
    .line 238
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    if-nez v1, :cond_6

    .line 243
    .line 244
    move-object v1, v2

    .line 245
    goto :goto_6

    .line 246
    :cond_6
    check-cast v1, Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-static {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    :goto_6
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setLocation(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;)V

    .line 253
    .line 254
    .line 255
    const/16 v1, 0x10

    .line 256
    .line 257
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    check-cast v1, Ljava/lang/Boolean;

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setLocationTracking(Ljava/lang/Boolean;)V

    .line 264
    .line 265
    .line 266
    const/16 v1, 0x11

    .line 267
    .line 268
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    check-cast v1, Ljava/lang/Boolean;

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setLogs(Ljava/lang/Boolean;)V

    .line 275
    .line 276
    .line 277
    const/16 v1, 0x12

    .line 278
    .line 279
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    if-nez v1, :cond_7

    .line 284
    .line 285
    move-object v1, v2

    .line 286
    goto :goto_8

    .line 287
    :cond_7
    instance-of v3, v1, Ljava/lang/Integer;

    .line 288
    .line 289
    if-eqz v3, :cond_8

    .line 290
    .line 291
    check-cast v1, Ljava/lang/Integer;

    .line 292
    .line 293
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    int-to-long v3, v1

    .line 298
    goto :goto_7

    .line 299
    :cond_8
    check-cast v1, Ljava/lang/Long;

    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 302
    .line 303
    .line 304
    move-result-wide v3

    .line 305
    :goto_7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    :goto_8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setMaxReportsCount(Ljava/lang/Long;)V

    .line 310
    .line 311
    .line 312
    const/16 v1, 0x13

    .line 313
    .line 314
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    if-nez v1, :cond_9

    .line 319
    .line 320
    move-object v1, v2

    .line 321
    goto :goto_a

    .line 322
    :cond_9
    instance-of v3, v1, Ljava/lang/Integer;

    .line 323
    .line 324
    if-eqz v3, :cond_a

    .line 325
    .line 326
    check-cast v1, Ljava/lang/Integer;

    .line 327
    .line 328
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    int-to-long v3, v1

    .line 333
    goto :goto_9

    .line 334
    :cond_a
    check-cast v1, Ljava/lang/Long;

    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 337
    .line 338
    .line 339
    move-result-wide v3

    .line 340
    :goto_9
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    :goto_a
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setMaxReportsInDatabaseCount(Ljava/lang/Long;)V

    .line 345
    .line 346
    .line 347
    const/16 v1, 0x14

    .line 348
    .line 349
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    check-cast v1, Ljava/lang/Boolean;

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setNativeCrashReporting(Ljava/lang/Boolean;)V

    .line 356
    .line 357
    .line 358
    const/16 v1, 0x15

    .line 359
    .line 360
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    if-nez v1, :cond_b

    .line 365
    .line 366
    move-object v1, v2

    .line 367
    goto :goto_b

    .line 368
    :cond_b
    check-cast v1, Ljava/util/ArrayList;

    .line 369
    .line 370
    invoke-static {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    :goto_b
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setPreloadInfo(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;)V

    .line 375
    .line 376
    .line 377
    const/16 v1, 0x16

    .line 378
    .line 379
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    check-cast v1, Ljava/lang/Boolean;

    .line 384
    .line 385
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setRevenueAutoTrackingEnabled(Ljava/lang/Boolean;)V

    .line 386
    .line 387
    .line 388
    const/16 v1, 0x17

    .line 389
    .line 390
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    if-nez v1, :cond_c

    .line 395
    .line 396
    goto :goto_d

    .line 397
    :cond_c
    instance-of v2, v1, Ljava/lang/Integer;

    .line 398
    .line 399
    if-eqz v2, :cond_d

    .line 400
    .line 401
    check-cast v1, Ljava/lang/Integer;

    .line 402
    .line 403
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    int-to-long v1, v1

    .line 408
    goto :goto_c

    .line 409
    :cond_d
    check-cast v1, Ljava/lang/Long;

    .line 410
    .line 411
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 412
    .line 413
    .line 414
    move-result-wide v1

    .line 415
    :goto_c
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    :goto_d
    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setSessionTimeout(Ljava/lang/Long;)V

    .line 420
    .line 421
    .line 422
    const/16 v1, 0x18

    .line 423
    .line 424
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    check-cast v1, Ljava/lang/Boolean;

    .line 429
    .line 430
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setSessionsAutoTrackingEnabled(Ljava/lang/Boolean;)V

    .line 431
    .line 432
    .line 433
    const/16 v1, 0x19

    .line 434
    .line 435
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object p0

    .line 439
    check-cast p0, Ljava/lang/String;

    .line 440
    .line 441
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setUserProfileID(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    return-object v0
.end method


# virtual methods
.method public getAdvIdentifiersTracking()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->advIdentifiersTracking:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAnrMonitoring()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->anrMonitoring:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAnrMonitoringTimeout()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->anrMonitoringTimeout:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->apiKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppBuildNumber()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->appBuildNumber:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppEnvironment()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->appEnvironment:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppOpenTrackingEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->appVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCrashReporting()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->crashReporting:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCustomHosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->customHosts:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDataSendingEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->dataSendingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->deviceType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDispatchPeriodSeconds()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->dispatchPeriodSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getErrorEnvironment()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->errorEnvironment:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFirstActivationAsUpdate()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->firstActivationAsUpdate:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocation()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->location:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocationTracking()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->locationTracking:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogs()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->logs:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxReportsCount()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->maxReportsCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxReportsInDatabaseCount()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->maxReportsInDatabaseCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNativeCrashReporting()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->nativeCrashReporting:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreloadInfo()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->preloadInfo:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRevenueAutoTrackingEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSessionTimeout()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->sessionTimeout:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSessionsAutoTrackingEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserProfileID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->userProfileID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAdvIdentifiersTracking(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->advIdentifiersTracking:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setAnrMonitoring(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->anrMonitoring:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setAnrMonitoringTimeout(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->anrMonitoringTimeout:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->apiKey:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"apiKey\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setAppBuildNumber(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->appBuildNumber:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setAppEnvironment(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->appEnvironment:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setAppOpenTrackingEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->appVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCrashReporting(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->crashReporting:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setCustomHosts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->customHosts:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setDataSendingEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->dataSendingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->deviceType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDispatchPeriodSeconds(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->dispatchPeriodSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setErrorEnvironment(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->errorEnvironment:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setFirstActivationAsUpdate(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->firstActivationAsUpdate:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setLocation(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->location:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;

    .line 2
    .line 3
    return-void
.end method

.method public setLocationTracking(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->locationTracking:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setLogs(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->logs:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxReportsCount(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->maxReportsCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxReportsInDatabaseCount(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->maxReportsInDatabaseCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setNativeCrashReporting(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->nativeCrashReporting:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setPreloadInfo(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->preloadInfo:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;

    .line 2
    .line 3
    return-void
.end method

.method public setRevenueAutoTrackingEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setSessionTimeout(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->sessionTimeout:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setSessionsAutoTrackingEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setUserProfileID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->userProfileID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method toList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->apiKey:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->advIdentifiersTracking:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->anrMonitoring:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->anrMonitoringTimeout:Ljava/lang/Long;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->appBuildNumber:Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->appEnvironment:Ljava/util/Map;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->appVersion:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->crashReporting:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->customHosts:Ljava/util/List;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->dataSendingEnabled:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->deviceType:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->dispatchPeriodSeconds:Ljava/lang/Long;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->errorEnvironment:Ljava/util/Map;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->firstActivationAsUpdate:Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->location:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;

    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    if-nez v1, :cond_0

    .line 87
    .line 88
    move-object v1, v2

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;->toList()Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->locationTracking:Ljava/lang/Boolean;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->logs:Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->maxReportsCount:Ljava/lang/Long;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->maxReportsInDatabaseCount:Ljava/lang/Long;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->nativeCrashReporting:Ljava/lang/Boolean;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->preloadInfo:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;

    .line 123
    .line 124
    if-nez v1, :cond_1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;->toList()Ljava/util/ArrayList;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->sessionTimeout:Ljava/lang/Long;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->userProfileID:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    return-object v0
.end method
