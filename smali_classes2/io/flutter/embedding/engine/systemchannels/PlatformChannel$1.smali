.class Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/PlatformChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

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
    .locals 5

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 4
    .line 5
    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

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
    const-string v3, "PlatformChannel"

    .line 39
    .line 40
    invoke-static {v3, v2}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    sparse-switch v3, :sswitch_data_0

    .line 49
    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :sswitch_0
    const-string v3, "SystemChrome.setPreferredOrientations"

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    const/4 v1, 0x2

    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :sswitch_1
    const-string v3, "SystemChrome.setEnabledSystemUIOverlays"

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    const/4 v1, 0x4

    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :sswitch_2
    const-string v3, "Clipboard.getData"

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    const/16 v1, 0xb

    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :sswitch_3
    const-string v3, "SystemChrome.setSystemUIOverlayStyle"

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    const/16 v1, 0x8

    .line 96
    .line 97
    goto/16 :goto_1

    .line 98
    .line 99
    :sswitch_4
    const-string v3, "SystemChrome.setEnabledSystemUIMode"

    .line 100
    .line 101
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_1

    .line 106
    .line 107
    const/4 v1, 0x5

    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :sswitch_5
    const-string v3, "Clipboard.hasStrings"

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_1

    .line 117
    .line 118
    const/16 v1, 0xd

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :sswitch_6
    const-string v3, "SystemChrome.restoreSystemUIOverlays"

    .line 122
    .line 123
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_1

    .line 128
    .line 129
    const/4 v1, 0x7

    .line 130
    goto :goto_1

    .line 131
    :sswitch_7
    const-string v3, "SystemSound.play"

    .line 132
    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_1

    .line 138
    .line 139
    const/4 v1, 0x0

    .line 140
    goto :goto_1

    .line 141
    :sswitch_8
    const-string v3, "HapticFeedback.vibrate"

    .line 142
    .line 143
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_1

    .line 148
    .line 149
    const/4 v1, 0x1

    .line 150
    goto :goto_1

    .line 151
    :sswitch_9
    const-string v3, "SystemChrome.setApplicationSwitcherDescription"

    .line 152
    .line 153
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_1

    .line 158
    .line 159
    const/4 v1, 0x3

    .line 160
    goto :goto_1

    .line 161
    :sswitch_a
    const-string v3, "SystemChrome.setSystemUIChangeListener"

    .line 162
    .line 163
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_1

    .line 168
    .line 169
    const/4 v1, 0x6

    .line 170
    goto :goto_1

    .line 171
    :sswitch_b
    const-string v3, "Clipboard.setData"

    .line 172
    .line 173
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_1

    .line 178
    .line 179
    const/16 v1, 0xc

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :sswitch_c
    const-string v3, "SystemNavigator.pop"

    .line 183
    .line 184
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_1

    .line 189
    .line 190
    const/16 v1, 0xa

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :sswitch_d
    const-string v3, "Share.invoke"

    .line 194
    .line 195
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_1

    .line 200
    .line 201
    const/16 v1, 0xe

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :sswitch_e
    const-string v3, "SystemNavigator.setFrameworkHandlesBack"

    .line 205
    .line 206
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_c

    .line 210
    if-eqz v1, :cond_1

    .line 211
    .line 212
    const/16 v1, 0x9

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_1
    :goto_0
    const/4 v1, -0x1

    .line 216
    :goto_1
    const-string v3, "text"

    .line 217
    .line 218
    packed-switch v1, :pswitch_data_0

    .line 219
    .line 220
    .line 221
    :try_start_1
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_7

    .line 225
    .line 226
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 227
    .line 228
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 229
    .line 230
    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-interface {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;->share(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_7

    .line 241
    .line 242
    :pswitch_1
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 243
    .line 244
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-interface {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;->clipboardHasStrings()Z

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    new-instance v1, Lorg/json/JSONObject;

    .line 253
    .line 254
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 255
    .line 256
    .line 257
    const-string v3, "value"

    .line 258
    .line 259
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 260
    .line 261
    .line 262
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_7

    .line 266
    .line 267
    :pswitch_2
    check-cast p1, Lorg/json/JSONObject;

    .line 268
    .line 269
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 274
    .line 275
    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-interface {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;->setClipboardData(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_7

    .line 286
    .line 287
    :pswitch_3
    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_c

    .line 288
    .line 289
    if-eqz p1, :cond_2

    .line 290
    .line 291
    :try_start_2
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;->fromValue(Ljava/lang/String;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;

    .line 292
    .line 293
    .line 294
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_c

    .line 295
    goto :goto_2

    .line 296
    :catch_0
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    const-string v4, "No such clipboard content format: "

    .line 302
    .line 303
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-interface {p2, v0, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    :cond_2
    move-object p1, v2

    .line 317
    :goto_2
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 318
    .line 319
    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-interface {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;->getClipboardData(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;)Ljava/lang/CharSequence;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    if-eqz p1, :cond_3

    .line 328
    .line 329
    new-instance v1, Lorg/json/JSONObject;

    .line 330
    .line 331
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    .line 336
    .line 337
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_7

    .line 341
    .line 342
    :cond_3
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_7

    .line 346
    .line 347
    :pswitch_4
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 348
    .line 349
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-interface {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;->popSystemNavigator()V

    .line 354
    .line 355
    .line 356
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_7

    .line 360
    .line 361
    :pswitch_5
    check-cast p1, Ljava/lang/Boolean;

    .line 362
    .line 363
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 364
    .line 365
    .line 366
    move-result p1

    .line 367
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 368
    .line 369
    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-interface {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;->setFrameworkHandlesBack(Z)V

    .line 374
    .line 375
    .line 376
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_c

    .line 377
    .line 378
    .line 379
    goto/16 :goto_7

    .line 380
    .line 381
    :pswitch_6
    :try_start_4
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 382
    .line 383
    check-cast p1, Lorg/json/JSONObject;

    .line 384
    .line 385
    invoke-static {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$500(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 390
    .line 391
    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-interface {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;->setSystemUiOverlayStyle(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V

    .line 396
    .line 397
    .line 398
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_1

    .line 399
    .line 400
    .line 401
    goto/16 :goto_7

    .line 402
    .line 403
    :catch_1
    move-exception p1

    .line 404
    goto :goto_3

    .line 405
    :catch_2
    move-exception p1

    .line 406
    :goto_3
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    invoke-interface {p2, v0, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_7

    .line 414
    .line 415
    :pswitch_7
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 416
    .line 417
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    invoke-interface {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;->restoreSystemUiOverlays()V

    .line 422
    .line 423
    .line 424
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    goto/16 :goto_7

    .line 428
    .line 429
    :pswitch_8
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 430
    .line 431
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    invoke-interface {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;->setSystemUiChangeListener()V

    .line 436
    .line 437
    .line 438
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_c

    .line 439
    .line 440
    .line 441
    goto/16 :goto_7

    .line 442
    .line 443
    :pswitch_9
    :try_start_6
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 444
    .line 445
    check-cast p1, Ljava/lang/String;

    .line 446
    .line 447
    invoke-static {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$400(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;Ljava/lang/String;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 452
    .line 453
    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-interface {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;->showSystemUiMode(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;)V

    .line 458
    .line 459
    .line 460
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_3

    .line 461
    .line 462
    .line 463
    goto/16 :goto_7

    .line 464
    .line 465
    :catch_3
    move-exception p1

    .line 466
    goto :goto_4

    .line 467
    :catch_4
    move-exception p1

    .line 468
    :goto_4
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    invoke-interface {p2, v0, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_c

    .line 473
    .line 474
    .line 475
    goto/16 :goto_7

    .line 476
    .line 477
    :pswitch_a
    :try_start_8
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 478
    .line 479
    check-cast p1, Lorg/json/JSONArray;

    .line 480
    .line 481
    invoke-static {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$300(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;Lorg/json/JSONArray;)Ljava/util/List;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 486
    .line 487
    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    invoke-interface {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;->showSystemOverlays(Ljava/util/List;)V

    .line 492
    .line 493
    .line 494
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_8} :catch_5

    .line 495
    .line 496
    .line 497
    goto/16 :goto_7

    .line 498
    .line 499
    :catch_5
    move-exception p1

    .line 500
    goto :goto_5

    .line 501
    :catch_6
    move-exception p1

    .line 502
    :goto_5
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    invoke-interface {p2, v0, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_c

    .line 507
    .line 508
    .line 509
    goto/16 :goto_7

    .line 510
    .line 511
    :pswitch_b
    :try_start_a
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 512
    .line 513
    check-cast p1, Lorg/json/JSONObject;

    .line 514
    .line 515
    invoke-static {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$200(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;

    .line 516
    .line 517
    .line 518
    move-result-object p1

    .line 519
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 520
    .line 521
    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    invoke-interface {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;->setApplicationSwitcherDescription(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;)V

    .line 526
    .line 527
    .line 528
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_7

    .line 529
    .line 530
    .line 531
    goto/16 :goto_7

    .line 532
    .line 533
    :catch_7
    move-exception p1

    .line 534
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    invoke-interface {p2, v0, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_c

    .line 539
    .line 540
    .line 541
    goto/16 :goto_7

    .line 542
    .line 543
    :pswitch_c
    :try_start_c
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 544
    .line 545
    check-cast p1, Lorg/json/JSONArray;

    .line 546
    .line 547
    invoke-static {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$100(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;Lorg/json/JSONArray;)I

    .line 548
    .line 549
    .line 550
    move-result p1

    .line 551
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 552
    .line 553
    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    invoke-interface {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;->setPreferredOrientations(I)V

    .line 558
    .line 559
    .line 560
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c .. :try_end_c} :catch_8

    .line 561
    .line 562
    .line 563
    goto :goto_7

    .line 564
    :catch_8
    move-exception p1

    .line 565
    goto :goto_6

    .line 566
    :catch_9
    move-exception p1

    .line 567
    :goto_6
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object p1

    .line 571
    invoke-interface {p2, v0, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_c

    .line 572
    .line 573
    .line 574
    goto :goto_7

    .line 575
    :pswitch_d
    :try_start_e
    check-cast p1, Ljava/lang/String;

    .line 576
    .line 577
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$HapticFeedbackType;->fromValue(Ljava/lang/String;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$HapticFeedbackType;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 582
    .line 583
    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    invoke-interface {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;->vibrateHapticFeedback(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$HapticFeedbackType;)V

    .line 588
    .line 589
    .line 590
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e .. :try_end_e} :catch_a
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_c

    .line 591
    .line 592
    .line 593
    goto :goto_7

    .line 594
    :catch_a
    move-exception p1

    .line 595
    :try_start_f
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object p1

    .line 599
    invoke-interface {p2, v0, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_c

    .line 600
    .line 601
    .line 602
    goto :goto_7

    .line 603
    :pswitch_e
    :try_start_10
    check-cast p1, Ljava/lang/String;

    .line 604
    .line 605
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;->fromValue(Ljava/lang/String;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;

    .line 606
    .line 607
    .line 608
    move-result-object p1

    .line 609
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 610
    .line 611
    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    invoke-interface {v1, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;->playSystemSound(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;)V

    .line 616
    .line 617
    .line 618
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_c

    .line 619
    .line 620
    .line 621
    goto :goto_7

    .line 622
    :catch_b
    move-exception p1

    .line 623
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object p1

    .line 627
    invoke-interface {p2, v0, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_c

    .line 628
    .line 629
    .line 630
    goto :goto_7

    .line 631
    :catch_c
    move-exception p1

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    .line 633
    .line 634
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    .line 636
    .line 637
    const-string v3, "JSON error: "

    .line 638
    .line 639
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object p1

    .line 646
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object p1

    .line 653
    invoke-interface {p2, v0, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 654
    .line 655
    .line 656
    :goto_7
    return-void

    .line 657
    :sswitch_data_0
    .sparse-switch
        -0x59804db0 -> :sswitch_e
        -0x3789da79 -> :sswitch_d
        -0x2dad73d5 -> :sswitch_c
        -0x2af4a94c -> :sswitch_b
        -0x2267c49c -> :sswitch_a
        -0x20b0f718 -> :sswitch_9
        -0xebc6f23 -> :sswitch_8
        -0xcd4cf9e -> :sswitch_7
        0xe6a45af -> :sswitch_6
        0x3436a200 -> :sswitch_5
        0x4341194a -> :sswitch_4
        0x52e10221 -> :sswitch_3
        0x5a408fa8 -> :sswitch_2
        0x63cbfa4a -> :sswitch_1
        0x7e576127 -> :sswitch_0
    .end sparse-switch

    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
