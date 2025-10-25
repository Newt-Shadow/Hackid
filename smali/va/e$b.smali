.class Lva/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lva/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/flutter/plugin/common/MethodCall;

.field private final b:Lio/flutter/plugin/common/MethodChannel$Result;

.field final synthetic c:Lva/e;


# direct methods
.method constructor <init>(Lva/e;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lva/e$b;->c:Lva/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lva/e$b;->a:Lio/flutter/plugin/common/MethodCall;

    .line 7
    .line 8
    iput-object p3, p0, Lva/e$b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 9
    .line 10
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/PrintWriter;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lva/e$b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 15
    .line 16
    iget-object v1, p0, Lva/e$b;->a:Lio/flutter/plugin/common/MethodCall;

    .line 17
    .line 18
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "Exception encountered"

    .line 25
    .line 26
    invoke-interface {p1, v2, v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lva/e$b;->c:Lva/e;

    .line 3
    .line 4
    invoke-static {v1}, Lva/e;->a(Lva/e;)Lva/a;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lva/e$b;->a:Lio/flutter/plugin/common/MethodCall;

    .line 9
    .line 10
    iget-object v2, v2, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Ljava/util/Map;

    .line 13
    .line 14
    const-string v3, "options"

    .line 15
    .line 16
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/util/Map;

    .line 21
    .line 22
    iput-object v2, v1, Lva/a;->e:Ljava/util/Map;

    .line 23
    .line 24
    iget-object v1, p0, Lva/e$b;->c:Lva/e;

    .line 25
    .line 26
    invoke-static {v1}, Lva/e;->a(Lva/e;)Lva/a;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lva/a;->g()Z

    .line 31
    .line 32
    .line 33
    move-result v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    :try_start_1
    iget-object v2, p0, Lva/e$b;->a:Lio/flutter/plugin/common/MethodCall;

    .line 35
    .line 36
    iget-object v2, v2, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x5

    .line 43
    const/4 v5, 0x4

    .line 44
    const/4 v6, 0x3

    .line 45
    const/4 v7, 0x2

    .line 46
    const/4 v8, 0x1

    .line 47
    sparse-switch v3, :sswitch_data_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :sswitch_0
    const-string v0, "readAll"

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    move v0, v7

    .line 60
    goto :goto_1

    .line 61
    :sswitch_1
    const-string v0, "containsKey"

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    move v0, v6

    .line 70
    goto :goto_1

    .line 71
    :sswitch_2
    const-string v3, "write"

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_0

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :sswitch_3
    const-string v0, "read"

    .line 81
    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    .line 88
    move v0, v8

    .line 89
    goto :goto_1

    .line 90
    :sswitch_4
    const-string v0, "deleteAll"

    .line 91
    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    move v0, v4

    .line 99
    goto :goto_1

    .line 100
    :sswitch_5
    const-string v0, "delete"

    .line 101
    .line 102
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    .line 108
    move v0, v5

    .line 109
    goto :goto_1

    .line 110
    :cond_0
    :goto_0
    const/4 v0, -0x1

    .line 111
    :goto_1
    const/4 v2, 0x0

    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    if-eq v0, v8, :cond_5

    .line 115
    .line 116
    if-eq v0, v7, :cond_4

    .line 117
    .line 118
    if-eq v0, v6, :cond_3

    .line 119
    .line 120
    if-eq v0, v5, :cond_2

    .line 121
    .line 122
    if-eq v0, v4, :cond_1

    .line 123
    .line 124
    iget-object v0, p0, Lva/e$b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 125
    .line 126
    invoke-interface {v0}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_3

    .line 130
    .line 131
    :cond_1
    iget-object v0, p0, Lva/e$b;->c:Lva/e;

    .line 132
    .line 133
    invoke-static {v0}, Lva/e;->a(Lva/e;)Lva/a;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lva/a;->e()V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lva/e$b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 141
    .line 142
    invoke-interface {v0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_3

    .line 146
    .line 147
    :cond_2
    iget-object v0, p0, Lva/e$b;->c:Lva/e;

    .line 148
    .line 149
    iget-object v3, p0, Lva/e$b;->a:Lio/flutter/plugin/common/MethodCall;

    .line 150
    .line 151
    invoke-static {v0, v3}, Lva/e;->b(Lva/e;Lio/flutter/plugin/common/MethodCall;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iget-object v3, p0, Lva/e$b;->c:Lva/e;

    .line 156
    .line 157
    invoke-static {v3}, Lva/e;->a(Lva/e;)Lva/a;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v3, v0}, Lva/a;->d(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lva/e$b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 165
    .line 166
    invoke-interface {v0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_3

    .line 170
    .line 171
    :cond_3
    iget-object v0, p0, Lva/e$b;->c:Lva/e;

    .line 172
    .line 173
    iget-object v2, p0, Lva/e$b;->a:Lio/flutter/plugin/common/MethodCall;

    .line 174
    .line 175
    invoke-static {v0, v2}, Lva/e;->b(Lva/e;Lio/flutter/plugin/common/MethodCall;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget-object v2, p0, Lva/e$b;->c:Lva/e;

    .line 180
    .line 181
    invoke-static {v2}, Lva/e;->a(Lva/e;)Lva/a;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v2, v0}, Lva/a;->b(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    iget-object v2, p0, Lva/e$b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 190
    .line 191
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_3

    .line 199
    .line 200
    :cond_4
    iget-object v0, p0, Lva/e$b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 201
    .line 202
    iget-object v2, p0, Lva/e$b;->c:Lva/e;

    .line 203
    .line 204
    invoke-static {v2}, Lva/e;->a(Lva/e;)Lva/a;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lva/a;->m()Ljava/util/Map;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-interface {v0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_3

    .line 216
    .line 217
    :cond_5
    iget-object v0, p0, Lva/e$b;->c:Lva/e;

    .line 218
    .line 219
    iget-object v3, p0, Lva/e$b;->a:Lio/flutter/plugin/common/MethodCall;

    .line 220
    .line 221
    invoke-static {v0, v3}, Lva/e;->b(Lva/e;Lio/flutter/plugin/common/MethodCall;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iget-object v3, p0, Lva/e$b;->c:Lva/e;

    .line 226
    .line 227
    invoke-static {v3}, Lva/e;->a(Lva/e;)Lva/a;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v3, v0}, Lva/a;->b(Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-eqz v3, :cond_6

    .line 236
    .line 237
    iget-object v2, p0, Lva/e$b;->c:Lva/e;

    .line 238
    .line 239
    invoke-static {v2}, Lva/e;->a(Lva/e;)Lva/a;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {v2, v0}, Lva/a;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iget-object v2, p0, Lva/e$b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 248
    .line 249
    invoke-interface {v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_6
    iget-object v0, p0, Lva/e$b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 254
    .line 255
    invoke-interface {v0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_7
    iget-object v0, p0, Lva/e$b;->c:Lva/e;

    .line 260
    .line 261
    iget-object v3, p0, Lva/e$b;->a:Lio/flutter/plugin/common/MethodCall;

    .line 262
    .line 263
    invoke-static {v0, v3}, Lva/e;->b(Lva/e;Lio/flutter/plugin/common/MethodCall;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iget-object v3, p0, Lva/e$b;->c:Lva/e;

    .line 268
    .line 269
    iget-object v4, p0, Lva/e$b;->a:Lio/flutter/plugin/common/MethodCall;

    .line 270
    .line 271
    invoke-static {v3, v4}, Lva/e;->c(Lva/e;Lio/flutter/plugin/common/MethodCall;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    if-eqz v3, :cond_8

    .line 276
    .line 277
    iget-object v4, p0, Lva/e$b;->c:Lva/e;

    .line 278
    .line 279
    invoke-static {v4}, Lva/e;->a(Lva/e;)Lva/a;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-virtual {v4, v0, v3}, Lva/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget-object v0, p0, Lva/e$b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 287
    .line 288
    invoke-interface {v0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_8
    iget-object v0, p0, Lva/e$b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 293
    .line 294
    const-string v3, "null"

    .line 295
    .line 296
    invoke-interface {v0, v3, v2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    .line 298
    .line 299
    goto :goto_3

    .line 300
    :catch_0
    move-exception v0

    .line 301
    goto :goto_2

    .line 302
    :catch_1
    move-exception v1

    .line 303
    move-object v9, v1

    .line 304
    move v1, v0

    .line 305
    move-object v0, v9

    .line 306
    :goto_2
    if-eqz v1, :cond_9

    .line 307
    .line 308
    :try_start_2
    iget-object v0, p0, Lva/e$b;->c:Lva/e;

    .line 309
    .line 310
    invoke-static {v0}, Lva/e;->a(Lva/e;)Lva/a;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lva/a;->e()V

    .line 315
    .line 316
    .line 317
    iget-object v0, p0, Lva/e$b;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 318
    .line 319
    const-string v1, "Data has been reset"

    .line 320
    .line 321
    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 322
    .line 323
    .line 324
    goto :goto_3

    .line 325
    :catch_2
    move-exception v0

    .line 326
    invoke-direct {p0, v0}, Lva/e$b;->a(Ljava/lang/Exception;)V

    .line 327
    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_9
    invoke-direct {p0, v0}, Lva/e$b;->a(Ljava/lang/Exception;)V

    .line 331
    .line 332
    .line 333
    goto :goto_3

    .line 334
    :catch_3
    move-exception v0

    .line 335
    const-string v1, "Creating sharedPrefs"

    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_5
        -0x1561e80a -> :sswitch_4
        0x355996 -> :sswitch_3
        0x6c257df -> :sswitch_2
        0xc6607c0 -> :sswitch_1
        0x4065382b -> :sswitch_0
    .end sparse-switch
.end method
