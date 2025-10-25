.class Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/TextInputChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 13

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 4
    .line 5
    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "Received \'"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, "\' message."

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "TextInputChannel"

    .line 39
    .line 40
    invoke-static {v3, v2}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x1

    .line 51
    const/4 v4, 0x0

    .line 52
    const/4 v5, -0x1

    .line 53
    sparse-switch v2, :sswitch_data_0

    .line 54
    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :sswitch_0
    const-string v2, "TextInput.requestAutofill"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_1
    const/16 v5, 0x9

    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :sswitch_1
    const-string v2, "TextInput.clearClient"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_2
    const/16 v5, 0x8

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :sswitch_2
    const-string v2, "TextInput.finishAutofillContext"

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    const/4 v5, 0x7

    .line 96
    goto :goto_0

    .line 97
    :sswitch_3
    const-string v2, "TextInput.setEditableSizeAndTransform"

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_4

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    const/4 v5, 0x6

    .line 107
    goto :goto_0

    .line 108
    :sswitch_4
    const-string v2, "TextInput.sendAppPrivateCommand"

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_5

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    const/4 v5, 0x5

    .line 118
    goto :goto_0

    .line 119
    :sswitch_5
    const-string v2, "TextInput.show"

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_6

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_6
    const/4 v5, 0x4

    .line 129
    goto :goto_0

    .line 130
    :sswitch_6
    const-string v2, "TextInput.hide"

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-nez v1, :cond_7

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_7
    const/4 v5, 0x3

    .line 140
    goto :goto_0

    .line 141
    :sswitch_7
    const-string v2, "TextInput.setClient"

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_8

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_8
    const/4 v5, 0x2

    .line 151
    goto :goto_0

    .line 152
    :sswitch_8
    const-string v2, "TextInput.setEditingState"

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_9

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_9
    move v5, v3

    .line 162
    goto :goto_0

    .line 163
    :sswitch_9
    const-string v2, "TextInput.setPlatformViewClient"

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_a

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_a
    move v5, v4

    .line 173
    :goto_0
    const-string v1, "error"

    .line 174
    .line 175
    const/4 v2, 0x0

    .line 176
    packed-switch v5, :pswitch_data_0

    .line 177
    .line 178
    .line 179
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_4

    .line 183
    .line 184
    :pswitch_0
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 185
    .line 186
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-interface {p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->requestAutofill()V

    .line 191
    .line 192
    .line 193
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_4

    .line 197
    .line 198
    :pswitch_1
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 199
    .line 200
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-interface {p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->clearClient()V

    .line 205
    .line 206
    .line 207
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_4

    .line 211
    .line 212
    :pswitch_2
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 213
    .line 214
    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast p1, Ljava/lang/Boolean;

    .line 219
    .line 220
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->finishAutofillContext(Z)V

    .line 225
    .line 226
    .line 227
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_4

    .line 231
    .line 232
    :pswitch_3
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    .line 233
    .line 234
    const-string v0, "width"

    .line 235
    .line 236
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 237
    .line 238
    .line 239
    move-result-wide v6

    .line 240
    const-string v0, "height"

    .line 241
    .line 242
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 243
    .line 244
    .line 245
    move-result-wide v8

    .line 246
    const-string v0, "transform"

    .line 247
    .line 248
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    const/16 v0, 0x10

    .line 253
    .line 254
    new-array v10, v0, [D

    .line 255
    .line 256
    :goto_1
    if-ge v4, v0, :cond_b

    .line 257
    .line 258
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getDouble(I)D

    .line 259
    .line 260
    .line 261
    move-result-wide v11

    .line 262
    aput-wide v11, v10, v4

    .line 263
    .line 264
    add-int/lit8 v4, v4, 0x1

    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_b
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 268
    .line 269
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-interface/range {v5 .. v10}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->setEditableSizeAndTransform(DD[D)V

    .line 274
    .line 275
    .line 276
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .line 278
    .line 279
    goto/16 :goto_4

    .line 280
    .line 281
    :catch_0
    move-exception p1

    .line 282
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-interface {p2, v1, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_4

    .line 290
    .line 291
    :pswitch_4
    :try_start_1
    check-cast p1, Lorg/json/JSONObject;

    .line 292
    .line 293
    const-string v3, "action"

    .line 294
    .line 295
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    if-eqz p1, :cond_c

    .line 304
    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    if-nez v4, :cond_c

    .line 310
    .line 311
    new-instance v4, Landroid/os/Bundle;

    .line 312
    .line 313
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    goto :goto_2

    .line 320
    :cond_c
    move-object v4, v2

    .line 321
    :goto_2
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 322
    .line 323
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-interface {p1, v3, v4}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 328
    .line 329
    .line 330
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 331
    .line 332
    .line 333
    goto/16 :goto_4

    .line 334
    .line 335
    :catch_1
    move-exception p1

    .line 336
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    invoke-interface {p2, v1, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    goto/16 :goto_4

    .line 344
    .line 345
    :pswitch_5
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 346
    .line 347
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    invoke-interface {p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->show()V

    .line 352
    .line 353
    .line 354
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_4

    .line 358
    .line 359
    :pswitch_6
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 360
    .line 361
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    invoke-interface {p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->hide()V

    .line 366
    .line 367
    .line 368
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    goto :goto_4

    .line 372
    :pswitch_7
    :try_start_2
    check-cast p1, Lorg/json/JSONArray;

    .line 373
    .line 374
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getInt(I)I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    iget-object v3, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 383
    .line 384
    invoke-static {v3}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->fromJson(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-interface {v3, v0, p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->setClient(ILio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V

    .line 393
    .line 394
    .line 395
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    .line 396
    .line 397
    .line 398
    goto :goto_4

    .line 399
    :catch_2
    move-exception p1

    .line 400
    goto :goto_3

    .line 401
    :catch_3
    move-exception p1

    .line 402
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    invoke-interface {p2, v1, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    goto :goto_4

    .line 410
    :pswitch_8
    :try_start_3
    check-cast p1, Lorg/json/JSONObject;

    .line 411
    .line 412
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 413
    .line 414
    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->fromJson(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->setEditingState(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V

    .line 423
    .line 424
    .line 425
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    .line 426
    .line 427
    .line 428
    goto :goto_4

    .line 429
    :catch_4
    move-exception p1

    .line 430
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    invoke-interface {p2, v1, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    goto :goto_4

    .line 438
    :pswitch_9
    :try_start_4
    check-cast p1, Lorg/json/JSONObject;

    .line 439
    .line 440
    const-string v0, "platformViewId"

    .line 441
    .line 442
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    const-string v3, "usesVirtualDisplay"

    .line 447
    .line 448
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 449
    .line 450
    .line 451
    move-result p1

    .line 452
    iget-object v3, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 453
    .line 454
    invoke-static {v3}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    invoke-interface {v3, v0, p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->setPlatformViewClient(IZ)V

    .line 459
    .line 460
    .line 461
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    .line 462
    .line 463
    .line 464
    goto :goto_4

    .line 465
    :catch_5
    move-exception p1

    .line 466
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    invoke-interface {p2, v1, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    :goto_4
    return-void

    .line 474
    nop

    .line 475
    :sswitch_data_0
    .sparse-switch
        -0x6a0a6d0c -> :sswitch_9
        -0x3c861a16 -> :sswitch_8
        -0x23d2364 -> :sswitch_7
        0x101f2613 -> :sswitch_6
        0x102423ce -> :sswitch_5
        0x26b1e570 -> :sswitch_4
        0x47cf0f0b -> :sswitch_3
        0x66f8a3d9 -> :sswitch_2
        0x71834287 -> :sswitch_1
        0x7df775f0 -> :sswitch_0
    .end sparse-switch

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
