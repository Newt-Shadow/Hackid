.class public final Lio/appmetrica/analytics/networktasks/impl/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;

.field public final c:Lio/appmetrica/analytics/networktasks/impl/f;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/networktasks/internal/NetworkTask;Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;Lio/appmetrica/analytics/networktasks/impl/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/networktasks/impl/h;->a:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/networktasks/impl/h;->b:Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;

    .line 7
    .line 8
    iput-object p3, p0, Lio/appmetrica/analytics/networktasks/impl/h;->c:Lio/appmetrica/analytics/networktasks/impl/f;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lio/appmetrica/analytics/networktasks/impl/h;->a:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->getExponentialBackoffPolicy()Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffPolicy;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, v0, Lio/appmetrica/analytics/networktasks/impl/h;->a:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    .line 10
    .line 11
    invoke-virtual {v2}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->getConnectionExecutionPolicy()Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;->canBeExecuted()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, v0, Lio/appmetrica/analytics/networktasks/impl/h;->a:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    .line 20
    .line 21
    invoke-virtual {v3}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->getExponentialBackoffPolicy()Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffPolicy;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, v0, Lio/appmetrica/analytics/networktasks/impl/h;->a:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    .line 26
    .line 27
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->getRetryPolicyConfig()Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {v3, v4}, Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffPolicy;->canBeExecuted(Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget-object v4, v0, Lio/appmetrica/analytics/networktasks/impl/h;->b:Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;

    .line 36
    .line 37
    invoke-virtual {v4}, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;->isRunning()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_c

    .line 42
    .line 43
    if-eqz v2, :cond_c

    .line 44
    .line 45
    if-eqz v3, :cond_c

    .line 46
    .line 47
    iget-object v2, v0, Lio/appmetrica/analytics/networktasks/impl/h;->a:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    .line 48
    .line 49
    invoke-virtual {v2}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->onCreateNetworkTask()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/4 v3, 0x0

    .line 54
    move-object v4, v3

    .line 55
    :goto_0
    iget-object v5, v0, Lio/appmetrica/analytics/networktasks/impl/h;->b:Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;

    .line 56
    .line 57
    invoke-virtual {v5}, Lio/appmetrica/analytics/coreapi/internal/executors/InterruptionSafeThread;->isRunning()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_b

    .line 62
    .line 63
    if-eqz v2, :cond_b

    .line 64
    .line 65
    iget-object v2, v0, Lio/appmetrica/analytics/networktasks/impl/h;->a:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    .line 66
    .line 67
    invoke-virtual {v2}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->getRetryPolicyConfig()Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-interface {v1, v2}, Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffPolicy;->canBeExecuted(Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_b

    .line 76
    .line 77
    iget-object v2, v0, Lio/appmetrica/analytics/networktasks/impl/h;->c:Lio/appmetrica/analytics/networktasks/impl/f;

    .line 78
    .line 79
    iget-object v4, v0, Lio/appmetrica/analytics/networktasks/impl/h;->a:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->onPerformRequest()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    const/4 v5, 0x1

    .line 89
    const/4 v6, 0x0

    .line 90
    if-eqz v2, :cond_9

    .line 91
    .line 92
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->getUrl()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-eqz v2, :cond_7

    .line 97
    .line 98
    invoke-static {v2}, Lrd/n;->P0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_0

    .line 111
    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :cond_0
    new-instance v7, Lio/appmetrica/analytics/network/internal/Request$Builder;

    .line 115
    .line 116
    invoke-direct {v7, v2}, Lio/appmetrica/analytics/network/internal/Request$Builder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v2, "Accept"

    .line 120
    .line 121
    const-string v8, "application/json"

    .line 122
    .line 123
    invoke-virtual {v7, v2, v8}, Lio/appmetrica/analytics/network/internal/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/network/internal/Request$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->getUserAgent()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    const-string v8, "User-Agent"

    .line 132
    .line 133
    invoke-virtual {v2, v8, v7}, Lio/appmetrica/analytics/network/internal/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/network/internal/Request$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->getRequestDataHolder()Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-virtual {v7}, Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;->getHeaders()Ljava/util/Map;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    if-eqz v9, :cond_1

    .line 158
    .line 159
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    check-cast v9, Ljava/util/Map$Entry;

    .line 164
    .line 165
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    check-cast v10, Ljava/lang/String;

    .line 170
    .line 171
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    move-object v11, v9

    .line 176
    check-cast v11, Ljava/lang/Iterable;

    .line 177
    .line 178
    const-string v12, ","

    .line 179
    .line 180
    const/4 v13, 0x0

    .line 181
    const/4 v14, 0x0

    .line 182
    const/4 v15, 0x0

    .line 183
    const/16 v16, 0x0

    .line 184
    .line 185
    const/16 v17, 0x0

    .line 186
    .line 187
    const/16 v18, 0x3e

    .line 188
    .line 189
    const/16 v19, 0x0

    .line 190
    .line 191
    invoke-static/range {v11 .. v19}, Lyc/m;->X(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lid/l;ILjava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    invoke-virtual {v2, v10, v9}, Lio/appmetrica/analytics/network/internal/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/network/internal/Request$Builder;

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_1
    sget-object v8, Lio/appmetrica/analytics/networktasks/internal/NetworkTask$Method;->POST:Lio/appmetrica/analytics/networktasks/internal/NetworkTask$Method;

    .line 200
    .line 201
    invoke-virtual {v7}, Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;->getMethod()Lio/appmetrica/analytics/networktasks/internal/NetworkTask$Method;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    if-ne v8, v9, :cond_4

    .line 206
    .line 207
    invoke-virtual {v7}, Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;->getPostData()[B

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    if-eqz v8, :cond_4

    .line 212
    .line 213
    array-length v9, v8

    .line 214
    if-nez v9, :cond_2

    .line 215
    .line 216
    move v9, v5

    .line 217
    goto :goto_2

    .line 218
    :cond_2
    move v9, v6

    .line 219
    :goto_2
    xor-int/2addr v9, v5

    .line 220
    if-ne v9, v5, :cond_4

    .line 221
    .line 222
    invoke-virtual {v2, v8}, Lio/appmetrica/analytics/network/internal/Request$Builder;->post([B)Lio/appmetrica/analytics/network/internal/Request$Builder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7}, Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;->getSendTimestamp()Ljava/lang/Long;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    if-eqz v8, :cond_3

    .line 230
    .line 231
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 232
    .line 233
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 234
    .line 235
    .line 236
    move-result-wide v10

    .line 237
    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 238
    .line 239
    .line 240
    move-result-wide v8

    .line 241
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    const-string v9, "Send-Timestamp"

    .line 246
    .line 247
    invoke-virtual {v2, v9, v8}, Lio/appmetrica/analytics/network/internal/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/network/internal/Request$Builder;

    .line 248
    .line 249
    .line 250
    :cond_3
    invoke-virtual {v7}, Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;->getSendTimezoneSec()Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    if-eqz v7, :cond_4

    .line 255
    .line 256
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    const-string v8, "Send-Timezone"

    .line 265
    .line 266
    invoke-virtual {v2, v8, v7}, Lio/appmetrica/analytics/network/internal/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/network/internal/Request$Builder;

    .line 267
    .line 268
    .line 269
    :cond_4
    new-instance v7, Lio/appmetrica/analytics/network/internal/NetworkClient$Builder;

    .line 270
    .line 271
    invoke-direct {v7}, Lio/appmetrica/analytics/network/internal/NetworkClient$Builder;-><init>()V

    .line 272
    .line 273
    .line 274
    sget v8, Lio/appmetrica/analytics/networktasks/impl/b;->a:I

    .line 275
    .line 276
    invoke-virtual {v7, v8}, Lio/appmetrica/analytics/network/internal/NetworkClient$Builder;->withConnectTimeout(I)Lio/appmetrica/analytics/network/internal/NetworkClient$Builder;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    invoke-virtual {v7, v8}, Lio/appmetrica/analytics/network/internal/NetworkClient$Builder;->withReadTimeout(I)Lio/appmetrica/analytics/network/internal/NetworkClient$Builder;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    invoke-virtual {v7, v8}, Lio/appmetrica/analytics/network/internal/NetworkClient$Builder;->withSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lio/appmetrica/analytics/network/internal/NetworkClient$Builder;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    invoke-virtual {v7}, Lio/appmetrica/analytics/network/internal/NetworkClient$Builder;->build()Lio/appmetrica/analytics/network/internal/NetworkClient;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    invoke-virtual {v2}, Lio/appmetrica/analytics/network/internal/Request$Builder;->build()Lio/appmetrica/analytics/network/internal/Request;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v7, v2}, Lio/appmetrica/analytics/network/internal/NetworkClient;->newCall(Lio/appmetrica/analytics/network/internal/Request;)Lio/appmetrica/analytics/network/internal/Call;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-interface {v2}, Lio/appmetrica/analytics/network/internal/Call;->execute()Lio/appmetrica/analytics/network/internal/Response;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v2}, Lio/appmetrica/analytics/network/internal/Response;->getCode()I

    .line 309
    .line 310
    .line 311
    move-result v7

    .line 312
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->getResponseDataHolder()Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    invoke-virtual {v8, v7}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->setResponseCode(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2}, Lio/appmetrica/analytics/network/internal/Response;->getHeaders()Ljava/util/Map;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    invoke-static {v7}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->convertMapKeysToLowerCase(Ljava/util/Map;)Ljava/util/Map;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    invoke-virtual {v8, v7}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->setResponseHeaders(Ljava/util/Map;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v8}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->isValidResponse()Z

    .line 331
    .line 332
    .line 333
    move-result v7

    .line 334
    if-eqz v7, :cond_5

    .line 335
    .line 336
    invoke-virtual {v2}, Lio/appmetrica/analytics/network/internal/Response;->getResponseData()[B

    .line 337
    .line 338
    .line 339
    move-result-object v7

    .line 340
    invoke-virtual {v8, v7}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->setResponseData([B)V

    .line 341
    .line 342
    .line 343
    :cond_5
    invoke-virtual {v2}, Lio/appmetrica/analytics/network/internal/Response;->isCompleted()Z

    .line 344
    .line 345
    .line 346
    move-result v7

    .line 347
    if-eqz v7, :cond_6

    .line 348
    .line 349
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->onRequestComplete()Z

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    goto :goto_6

    .line 354
    :cond_6
    invoke-virtual {v2}, Lio/appmetrica/analytics/network/internal/Response;->getException()Ljava/lang/Throwable;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v4, v2}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->onRequestError(Ljava/lang/Throwable;)V

    .line 359
    .line 360
    .line 361
    goto :goto_5

    .line 362
    :cond_7
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    const-string v8, "Task "

    .line 365
    .line 366
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->description()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v8

    .line 373
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v8, " url is `"

    .line 377
    .line 378
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v2, "`. All hosts = "

    .line 385
    .line 386
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->getUnderlyingTask()Lio/appmetrica/analytics/networktasks/internal/UnderlyingNetworkTask;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    invoke-interface {v2}, Lio/appmetrica/analytics/networktasks/internal/UnderlyingNetworkTask;->getFullUrlFormer()Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-virtual {v2}, Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;->getAllHosts()Ljava/util/List;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    if-eqz v2, :cond_8

    .line 402
    .line 403
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    goto :goto_4

    .line 408
    :cond_8
    move-object v2, v3

    .line 409
    :goto_4
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 417
    .line 418
    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v4, v7}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->onRequestError(Ljava/lang/Throwable;)V

    .line 422
    .line 423
    .line 424
    goto :goto_5

    .line 425
    :cond_9
    invoke-virtual {v4, v3}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->onRequestError(Ljava/lang/Throwable;)V

    .line 426
    .line 427
    .line 428
    :goto_5
    move v2, v6

    .line 429
    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 430
    .line 431
    .line 432
    move-result-object v4

    .line 433
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    if-nez v2, :cond_a

    .line 438
    .line 439
    iget-object v2, v0, Lio/appmetrica/analytics/networktasks/impl/h;->a:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    .line 440
    .line 441
    invoke-virtual {v2}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->shouldTryNextHost()Z

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    if-eqz v2, :cond_a

    .line 446
    .line 447
    move v2, v5

    .line 448
    goto :goto_7

    .line 449
    :cond_a
    move v2, v6

    .line 450
    :goto_7
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 451
    .line 452
    .line 453
    move-result v5

    .line 454
    invoke-interface {v1, v5}, Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffPolicy;->onHostAttemptFinished(Z)V

    .line 455
    .line 456
    .line 457
    goto/16 :goto_0

    .line 458
    .line 459
    :cond_b
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 460
    .line 461
    invoke-static {v4, v2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v2

    .line 465
    invoke-interface {v1, v2}, Lio/appmetrica/analytics/networktasks/internal/ExponentialBackoffPolicy;->onAllHostsAttemptsFinished(Z)V

    .line 466
    .line 467
    .line 468
    goto :goto_8

    .line 469
    :cond_c
    iget-object v1, v0, Lio/appmetrica/analytics/networktasks/impl/h;->a:Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    .line 470
    .line 471
    invoke-virtual {v1}, Lio/appmetrica/analytics/networktasks/internal/NetworkTask;->onShouldNotExecute()V

    .line 472
    .line 473
    .line 474
    :goto_8
    return-void
.end method
