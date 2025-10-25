.class public final Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromSurveyQuestion$posthog(Lcom/posthog/surveys/SurveyQuestion;)Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;
    .locals 13

    .line 1
    const-string v0, "question"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getQuestion()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getOptional()Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    move v5, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v5, v3

    .line 28
    :goto_0
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getDescriptionContentType()Lcom/posthog/surveys/SurveyTextContentType;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v6, 0x1

    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    sget-object v7, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    aget v1, v7, v1

    .line 43
    .line 44
    if-eq v1, v6, :cond_3

    .line 45
    .line 46
    if-ne v1, v4, :cond_2

    .line 47
    .line 48
    sget-object v1, Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;->TEXT:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    new-instance p1, Lxc/i;

    .line 52
    .line 53
    invoke-direct {p1}, Lxc/i;-><init>()V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_3
    sget-object v1, Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;->HTML:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    .line 58
    .line 59
    :goto_1
    if-nez v1, :cond_5

    .line 60
    .line 61
    :cond_4
    sget-object v1, Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;->TEXT:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    .line 62
    .line 63
    :cond_5
    move-object v7, v1

    .line 64
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getType()Lcom/posthog/surveys/SurveyQuestionType;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-nez v1, :cond_6

    .line 69
    .line 70
    const/4 v1, -0x1

    .line 71
    goto :goto_2

    .line 72
    :cond_6
    sget-object v8, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion$WhenMappings;->$EnumSwitchMapping$2:[I

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    aget v1, v8, v1

    .line 79
    .line 80
    :goto_2
    if-eq v1, v6, :cond_1e

    .line 81
    .line 82
    if-eq v1, v4, :cond_1c

    .line 83
    .line 84
    const/4 v8, 0x3

    .line 85
    const/4 v9, 0x5

    .line 86
    if-eq v1, v8, :cond_11

    .line 87
    .line 88
    const/4 v4, 0x4

    .line 89
    if-eq v1, v4, :cond_c

    .line 90
    .line 91
    if-eq v1, v9, :cond_7

    .line 92
    .line 93
    goto/16 :goto_e

    .line 94
    .line 95
    :cond_7
    instance-of v0, p1, Lcom/posthog/surveys/MultipleSurveyQuestion;

    .line 96
    .line 97
    if-eqz v0, :cond_8

    .line 98
    .line 99
    move-object v1, p1

    .line 100
    check-cast v1, Lcom/posthog/surveys/MultipleSurveyQuestion;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/posthog/surveys/MultipleSurveyQuestion;->getChoices()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    if-nez v1, :cond_9

    .line 107
    .line 108
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    goto :goto_3

    .line 113
    :cond_8
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    :cond_9
    :goto_3
    move-object v8, v1

    .line 118
    if-eqz v0, :cond_a

    .line 119
    .line 120
    move-object v1, p1

    .line 121
    check-cast v1, Lcom/posthog/surveys/MultipleSurveyQuestion;

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/posthog/surveys/MultipleSurveyQuestion;->getHasOpenChoice()Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-eqz v1, :cond_a

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    move v9, v1

    .line 134
    goto :goto_4

    .line 135
    :cond_a
    move v9, v3

    .line 136
    :goto_4
    if-eqz v0, :cond_b

    .line 137
    .line 138
    move-object v0, p1

    .line 139
    check-cast v0, Lcom/posthog/surveys/MultipleSurveyQuestion;

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/posthog/surveys/MultipleSurveyQuestion;->getShuffleOptions()Ljava/lang/Boolean;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-eqz v0, :cond_b

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    goto :goto_5

    .line 152
    :cond_b
    move v0, v3

    .line 153
    :goto_5
    new-instance v11, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getDescription()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getButtonText()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    const/4 v10, 0x1

    .line 164
    move-object v1, v11

    .line 165
    move-object v4, v7

    .line 166
    move-object v7, v8

    .line 167
    move v8, v9

    .line 168
    move v9, v0

    .line 169
    invoke-direct/range {v1 .. v10}, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;Ljava/util/List;ZZZ)V

    .line 170
    .line 171
    .line 172
    goto :goto_9

    .line 173
    :cond_c
    instance-of v0, p1, Lcom/posthog/surveys/SingleSurveyQuestion;

    .line 174
    .line 175
    if-eqz v0, :cond_d

    .line 176
    .line 177
    move-object v1, p1

    .line 178
    check-cast v1, Lcom/posthog/surveys/SingleSurveyQuestion;

    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/posthog/surveys/SingleSurveyQuestion;->getChoices()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    if-nez v1, :cond_e

    .line 185
    .line 186
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    goto :goto_6

    .line 191
    :cond_d
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    :cond_e
    :goto_6
    move-object v8, v1

    .line 196
    if-eqz v0, :cond_f

    .line 197
    .line 198
    move-object v1, p1

    .line 199
    check-cast v1, Lcom/posthog/surveys/SingleSurveyQuestion;

    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/posthog/surveys/SingleSurveyQuestion;->getHasOpenChoice()Ljava/lang/Boolean;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    if-eqz v1, :cond_f

    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    move v9, v1

    .line 212
    goto :goto_7

    .line 213
    :cond_f
    move v9, v3

    .line 214
    :goto_7
    if-eqz v0, :cond_10

    .line 215
    .line 216
    move-object v0, p1

    .line 217
    check-cast v0, Lcom/posthog/surveys/SingleSurveyQuestion;

    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/posthog/surveys/SingleSurveyQuestion;->getShuffleOptions()Ljava/lang/Boolean;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    if-eqz v0, :cond_10

    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    goto :goto_8

    .line 230
    :cond_10
    move v0, v3

    .line 231
    :goto_8
    new-instance v11, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;

    .line 232
    .line 233
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getDescription()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getButtonText()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    const/4 v10, 0x0

    .line 242
    move-object v1, v11

    .line 243
    move-object v4, v7

    .line 244
    move-object v7, v8

    .line 245
    move v8, v9

    .line 246
    move v9, v0

    .line 247
    invoke-direct/range {v1 .. v10}, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;Ljava/util/List;ZZZ)V

    .line 248
    .line 249
    .line 250
    :goto_9
    move-object v0, v11

    .line 251
    goto/16 :goto_e

    .line 252
    .line 253
    :cond_11
    instance-of v0, p1, Lcom/posthog/surveys/RatingSurveyQuestion;

    .line 254
    .line 255
    if-eqz v0, :cond_1b

    .line 256
    .line 257
    move-object v0, p1

    .line 258
    check-cast v0, Lcom/posthog/surveys/RatingSurveyQuestion;

    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/posthog/surveys/RatingSurveyQuestion;->getDisplay()Lcom/posthog/surveys/SurveyRatingDisplayType;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    if-eqz v1, :cond_14

    .line 265
    .line 266
    sget-object v8, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    aget v1, v8, v1

    .line 273
    .line 274
    if-eq v1, v6, :cond_13

    .line 275
    .line 276
    if-ne v1, v4, :cond_12

    .line 277
    .line 278
    sget-object v1, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->NUMBER:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    .line 279
    .line 280
    goto :goto_a

    .line 281
    :cond_12
    new-instance p1, Lxc/i;

    .line 282
    .line 283
    invoke-direct {p1}, Lxc/i;-><init>()V

    .line 284
    .line 285
    .line 286
    throw p1

    .line 287
    :cond_13
    sget-object v1, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->EMOJI:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    .line 288
    .line 289
    :goto_a
    if-nez v1, :cond_15

    .line 290
    .line 291
    :cond_14
    sget-object v1, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->NUMBER:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    .line 292
    .line 293
    :cond_15
    move-object v8, v1

    .line 294
    invoke-virtual {v0}, Lcom/posthog/surveys/RatingSurveyQuestion;->getScale()Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    if-nez v1, :cond_16

    .line 299
    .line 300
    goto :goto_b

    .line 301
    :cond_16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    const/16 v4, 0xa

    .line 306
    .line 307
    if-ne v1, v4, :cond_17

    .line 308
    .line 309
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-static {v1, v3}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    goto :goto_c

    .line 322
    :cond_17
    :goto_b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v0}, Lcom/posthog/surveys/RatingSurveyQuestion;->getScale()Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    if-eqz v3, :cond_18

    .line 331
    .line 332
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 333
    .line 334
    .line 335
    move-result v9

    .line 336
    :cond_18
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-static {v1, v3}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    :goto_c
    invoke-virtual {v1}, Lxc/k;->a()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    check-cast v3, Ljava/lang/Number;

    .line 349
    .line 350
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 351
    .line 352
    .line 353
    move-result v9

    .line 354
    invoke-virtual {v1}, Lxc/k;->b()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    check-cast v1, Ljava/lang/Number;

    .line 359
    .line 360
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 361
    .line 362
    .line 363
    move-result v10

    .line 364
    new-instance v12, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;

    .line 365
    .line 366
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getDescription()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getButtonText()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    invoke-virtual {v0}, Lcom/posthog/surveys/RatingSurveyQuestion;->getLowerBoundLabel()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    const-string v1, ""

    .line 379
    .line 380
    if-nez p1, :cond_19

    .line 381
    .line 382
    move-object p1, v1

    .line 383
    :cond_19
    invoke-virtual {v0}, Lcom/posthog/surveys/RatingSurveyQuestion;->getUpperBoundLabel()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    if-nez v0, :cond_1a

    .line 388
    .line 389
    move-object v11, v1

    .line 390
    goto :goto_d

    .line 391
    :cond_1a
    move-object v11, v0

    .line 392
    :goto_d
    move-object v1, v12

    .line 393
    move-object v4, v7

    .line 394
    move-object v7, v8

    .line 395
    move v8, v9

    .line 396
    move v9, v10

    .line 397
    move-object v10, p1

    .line 398
    invoke-direct/range {v1 .. v11}, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;IILjava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    move-object v0, v12

    .line 402
    goto :goto_e

    .line 403
    :cond_1b
    new-instance v0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;

    .line 404
    .line 405
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getDescription()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getButtonText()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    sget-object p1, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->NUMBER:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    .line 414
    .line 415
    const/4 v8, 0x1

    .line 416
    const/4 v9, 0x5

    .line 417
    const-string v10, ""

    .line 418
    .line 419
    const-string v11, ""

    .line 420
    .line 421
    move-object v1, v0

    .line 422
    move-object v4, v7

    .line 423
    move-object v7, p1

    .line 424
    invoke-direct/range {v1 .. v11}, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;IILjava/lang/String;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    goto :goto_e

    .line 428
    :cond_1c
    instance-of v0, p1, Lcom/posthog/surveys/LinkSurveyQuestion;

    .line 429
    .line 430
    if-eqz v0, :cond_1d

    .line 431
    .line 432
    new-instance v0, Lcom/posthog/surveys/PostHogDisplayLinkQuestion;

    .line 433
    .line 434
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getDescription()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getButtonText()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v6

    .line 442
    check-cast p1, Lcom/posthog/surveys/LinkSurveyQuestion;

    .line 443
    .line 444
    invoke-virtual {p1}, Lcom/posthog/surveys/LinkSurveyQuestion;->getLink()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    move-object v1, v0

    .line 449
    move-object v4, v7

    .line 450
    move-object v7, p1

    .line 451
    invoke-direct/range {v1 .. v7}, Lcom/posthog/surveys/PostHogDisplayLinkQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    goto :goto_e

    .line 455
    :cond_1d
    new-instance v0, Lcom/posthog/surveys/PostHogDisplayLinkQuestion;

    .line 456
    .line 457
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getDescription()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getButtonText()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v6

    .line 465
    const/4 p1, 0x0

    .line 466
    move-object v1, v0

    .line 467
    move-object v4, v7

    .line 468
    move-object v7, p1

    .line 469
    invoke-direct/range {v1 .. v7}, Lcom/posthog/surveys/PostHogDisplayLinkQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    goto :goto_e

    .line 473
    :cond_1e
    new-instance v0, Lcom/posthog/surveys/PostHogDisplayOpenQuestion;

    .line 474
    .line 475
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getDescription()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getButtonText()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v6

    .line 483
    move-object v1, v0

    .line 484
    move-object v4, v7

    .line 485
    invoke-direct/range {v1 .. v6}, Lcom/posthog/surveys/PostHogDisplayOpenQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;)V

    .line 486
    .line 487
    .line 488
    :goto_e
    return-object v0
.end method
