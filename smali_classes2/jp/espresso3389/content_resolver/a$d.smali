.class final Ljp/espresso3389/content_resolver/a$d;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/espresso3389/content_resolver/a;->m(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:I

.field g:I

.field h:I

.field final synthetic i:I

.field final synthetic j:Ljp/espresso3389/content_resolver/a;

.field final synthetic k:Landroid/net/Uri;

.field final synthetic l:I


# direct methods
.method constructor <init>(ILjp/espresso3389/content_resolver/a;Landroid/net/Uri;ILad/e;)V
    .locals 0

    .line 1
    iput p1, p0, Ljp/espresso3389/content_resolver/a$d;->i:I

    iput-object p2, p0, Ljp/espresso3389/content_resolver/a$d;->j:Ljp/espresso3389/content_resolver/a;

    iput-object p3, p0, Ljp/espresso3389/content_resolver/a$d;->k:Landroid/net/Uri;

    iput p4, p0, Ljp/espresso3389/content_resolver/a$d;->l:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 6

    .line 1
    new-instance p1, Ljp/espresso3389/content_resolver/a$d;

    iget v1, p0, Ljp/espresso3389/content_resolver/a$d;->i:I

    iget-object v2, p0, Ljp/espresso3389/content_resolver/a$d;->j:Ljp/espresso3389/content_resolver/a;

    iget-object v3, p0, Ljp/espresso3389/content_resolver/a$d;->k:Landroid/net/Uri;

    iget v4, p0, Ljp/espresso3389/content_resolver/a$d;->l:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ljp/espresso3389/content_resolver/a$d;-><init>(ILjp/espresso3389/content_resolver/a;Landroid/net/Uri;ILad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Ljp/espresso3389/content_resolver/a$d;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Ljp/espresso3389/content_resolver/a$d;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Ljp/espresso3389/content_resolver/a$d;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Ljp/espresso3389/content_resolver/a$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "data"

    .line 4
    .line 5
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget v3, v1, Ljp/espresso3389/content_resolver/a$d;->h:I

    .line 10
    .line 11
    const-string v4, "id"

    .line 12
    .line 13
    const/4 v5, 0x3

    .line 14
    const/4 v6, 0x2

    .line 15
    const/4 v7, 0x1

    .line 16
    const/4 v8, 0x0

    .line 17
    if-eqz v3, :cond_3

    .line 18
    .line 19
    if-eq v3, v7, :cond_2

    .line 20
    .line 21
    if-eq v3, v6, :cond_1

    .line 22
    .line 23
    if-ne v3, v5, :cond_0

    .line 24
    .line 25
    invoke-static/range {p1 .. p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_1
    iget v3, v1, Ljp/espresso3389/content_resolver/a$d;->g:I

    .line 39
    .line 40
    iget v9, v1, Ljp/espresso3389/content_resolver/a$d;->f:I

    .line 41
    .line 42
    iget-object v10, v1, Ljp/espresso3389/content_resolver/a$d;->e:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v10, Ljava/io/InputStream;

    .line 45
    .line 46
    iget-object v11, v1, Ljp/espresso3389/content_resolver/a$d;->d:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v11, Ljp/espresso3389/content_resolver/a;

    .line 49
    .line 50
    iget-object v12, v1, Ljp/espresso3389/content_resolver/a$d;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v12, Ljava/io/Closeable;

    .line 53
    .line 54
    iget-object v13, v1, Ljp/espresso3389/content_resolver/a$d;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v13, Lkotlin/jvm/internal/a0;

    .line 57
    .line 58
    iget-object v14, v1, Ljp/espresso3389/content_resolver/a$d;->a:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v14, [B

    .line 61
    .line 62
    :try_start_0
    invoke-static/range {p1 .. p1}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    move-object v5, v1

    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_2
    iget-object v0, v1, Ljp/espresso3389/content_resolver/a$d;->a:Ljava/lang/Object;

    .line 69
    .line 70
    move-object v12, v0

    .line 71
    check-cast v12, Ljava/io/Closeable;

    .line 72
    .line 73
    :try_start_1
    invoke-static/range {p1 .. p1}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    move-object v3, v1

    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    move-object v5, v0

    .line 80
    move-object v3, v1

    .line 81
    goto/16 :goto_4

    .line 82
    .line 83
    :cond_3
    invoke-static/range {p1 .. p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :try_start_2
    iget v3, v1, Ljp/espresso3389/content_resolver/a$d;->i:I

    .line 87
    .line 88
    new-array v3, v3, [B

    .line 89
    .line 90
    new-instance v9, Lkotlin/jvm/internal/a0;

    .line 91
    .line 92
    invoke-direct {v9}, Lkotlin/jvm/internal/a0;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v10, v1, Ljp/espresso3389/content_resolver/a$d;->j:Ljp/espresso3389/content_resolver/a;

    .line 96
    .line 97
    iget-object v11, v1, Ljp/espresso3389/content_resolver/a$d;->k:Landroid/net/Uri;

    .line 98
    .line 99
    invoke-static {v11}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v10, v11}, Ljp/espresso3389/content_resolver/a;->b(Ljp/espresso3389/content_resolver/a;Landroid/net/Uri;)Ljava/io/InputStream;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    iget-object v11, v1, Ljp/espresso3389/content_resolver/a$d;->j:Ljp/espresso3389/content_resolver/a;

    .line 107
    .line 108
    iget v12, v1, Ljp/espresso3389/content_resolver/a$d;->l:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 109
    .line 110
    move-object v14, v3

    .line 111
    move-object v13, v9

    .line 112
    move v9, v12

    .line 113
    move-object v3, v1

    .line 114
    move-object v12, v10

    .line 115
    :goto_0
    :try_start_3
    invoke-virtual {v10, v14}, Ljava/io/InputStream;->read([B)I

    .line 116
    .line 117
    .line 118
    move-result v15

    .line 119
    const/4 v5, 0x0

    .line 120
    if-gez v15, :cond_5

    .line 121
    .line 122
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 123
    .line 124
    .line 125
    const-string v0, "close"

    .line 126
    .line 127
    new-array v6, v6, [Lxc/k;

    .line 128
    .line 129
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-static {v4, v9}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    aput-object v9, v6, v5

    .line 138
    .line 139
    const-string v5, "totalSize"

    .line 140
    .line 141
    iget v9, v13, Lkotlin/jvm/internal/a0;->a:I

    .line 142
    .line 143
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-static {v5, v9}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    aput-object v5, v6, v7

    .line 152
    .line 153
    invoke-static {v6}, Lyc/e0;->g([Lxc/k;)Ljava/util/HashMap;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    iput-object v12, v3, Ljp/espresso3389/content_resolver/a$d;->a:Ljava/lang/Object;

    .line 158
    .line 159
    iput-object v8, v3, Ljp/espresso3389/content_resolver/a$d;->b:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v8, v3, Ljp/espresso3389/content_resolver/a$d;->c:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v8, v3, Ljp/espresso3389/content_resolver/a$d;->d:Ljava/lang/Object;

    .line 164
    .line 165
    iput-object v8, v3, Ljp/espresso3389/content_resolver/a$d;->e:Ljava/lang/Object;

    .line 166
    .line 167
    iput v7, v3, Ljp/espresso3389/content_resolver/a$d;->h:I

    .line 168
    .line 169
    invoke-static {v11, v0, v5, v3}, Ljp/espresso3389/content_resolver/a;->c(Ljp/espresso3389/content_resolver/a;Ljava/lang/String;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-ne v0, v2, :cond_4

    .line 174
    .line 175
    return-object v2

    .line 176
    :cond_4
    :goto_1
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 177
    .line 178
    :try_start_4
    invoke-static {v12, v8}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 179
    .line 180
    .line 181
    return-object v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    goto/16 :goto_5

    .line 184
    .line 185
    :catchall_1
    move-exception v0

    .line 186
    :goto_2
    move-object v5, v0

    .line 187
    goto :goto_4

    .line 188
    :cond_5
    if-nez v15, :cond_6

    .line 189
    .line 190
    const/4 v5, 0x3

    .line 191
    goto :goto_0

    .line 192
    :cond_6
    const/4 v8, 0x3

    .line 193
    :try_start_5
    new-array v6, v8, [Lxc/k;

    .line 194
    .line 195
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    invoke-static {v4, v8}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    aput-object v8, v6, v5

    .line 204
    .line 205
    const-string v8, "offset"

    .line 206
    .line 207
    iget v5, v13, Lkotlin/jvm/internal/a0;->a:I

    .line 208
    .line 209
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-static {v8, v5}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    aput-object v5, v6, v7

    .line 218
    .line 219
    const/4 v5, 0x0

    .line 220
    invoke-static {v5, v15}, Lod/g;->k(II)Lod/c;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-static {v14, v5}, Lyc/g;->J([BLod/c;)[B

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-static {v0, v5}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    const/4 v8, 0x2

    .line 233
    aput-object v5, v6, v8

    .line 234
    .line 235
    invoke-static {v6}, Lyc/e0;->g([Lxc/k;)Ljava/util/HashMap;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    iput-object v14, v3, Ljp/espresso3389/content_resolver/a$d;->a:Ljava/lang/Object;

    .line 240
    .line 241
    iput-object v13, v3, Ljp/espresso3389/content_resolver/a$d;->b:Ljava/lang/Object;

    .line 242
    .line 243
    iput-object v12, v3, Ljp/espresso3389/content_resolver/a$d;->c:Ljava/lang/Object;

    .line 244
    .line 245
    iput-object v11, v3, Ljp/espresso3389/content_resolver/a$d;->d:Ljava/lang/Object;

    .line 246
    .line 247
    iput-object v10, v3, Ljp/espresso3389/content_resolver/a$d;->e:Ljava/lang/Object;

    .line 248
    .line 249
    iput v9, v3, Ljp/espresso3389/content_resolver/a$d;->f:I

    .line 250
    .line 251
    iput v15, v3, Ljp/espresso3389/content_resolver/a$d;->g:I

    .line 252
    .line 253
    const/4 v6, 0x2

    .line 254
    iput v6, v3, Ljp/espresso3389/content_resolver/a$d;->h:I

    .line 255
    .line 256
    invoke-static {v11, v0, v5, v3}, Ljp/espresso3389/content_resolver/a;->d(Ljp/espresso3389/content_resolver/a;Ljava/lang/String;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 260
    if-ne v5, v2, :cond_7

    .line 261
    .line 262
    return-object v2

    .line 263
    :cond_7
    move-object v5, v3

    .line 264
    move v3, v15

    .line 265
    :goto_3
    :try_start_6
    iget v8, v13, Lkotlin/jvm/internal/a0;->a:I

    .line 266
    .line 267
    add-int/2addr v8, v3

    .line 268
    iput v8, v13, Lkotlin/jvm/internal/a0;->a:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 269
    .line 270
    move-object v3, v5

    .line 271
    const/4 v5, 0x3

    .line 272
    const/4 v8, 0x0

    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :catchall_2
    move-exception v0

    .line 276
    move-object v3, v5

    .line 277
    goto :goto_2

    .line 278
    :goto_4
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 279
    :catchall_3
    move-exception v0

    .line 280
    move-object v6, v0

    .line 281
    :try_start_8
    invoke-static {v12, v5}, Lgd/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 282
    .line 283
    .line 284
    throw v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 285
    :catch_1
    move-exception v0

    .line 286
    move-object v3, v1

    .line 287
    :goto_5
    iget-object v5, v3, Ljp/espresso3389/content_resolver/a$d;->j:Ljp/espresso3389/content_resolver/a;

    .line 288
    .line 289
    iget v6, v3, Ljp/espresso3389/content_resolver/a$d;->l:I

    .line 290
    .line 291
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    invoke-static {v4, v6}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    const-string v6, "errorMessage"

    .line 300
    .line 301
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-static {v6, v0}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    filled-new-array {v4, v0}, [Lxc/k;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-static {v0}, Lyc/e0;->g([Lxc/k;)Ljava/util/HashMap;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    const/4 v4, 0x0

    .line 318
    iput-object v4, v3, Ljp/espresso3389/content_resolver/a$d;->a:Ljava/lang/Object;

    .line 319
    .line 320
    iput-object v4, v3, Ljp/espresso3389/content_resolver/a$d;->b:Ljava/lang/Object;

    .line 321
    .line 322
    iput-object v4, v3, Ljp/espresso3389/content_resolver/a$d;->c:Ljava/lang/Object;

    .line 323
    .line 324
    iput-object v4, v3, Ljp/espresso3389/content_resolver/a$d;->d:Ljava/lang/Object;

    .line 325
    .line 326
    iput-object v4, v3, Ljp/espresso3389/content_resolver/a$d;->e:Ljava/lang/Object;

    .line 327
    .line 328
    const/4 v4, 0x3

    .line 329
    iput v4, v3, Ljp/espresso3389/content_resolver/a$d;->h:I

    .line 330
    .line 331
    const-string v4, "error"

    .line 332
    .line 333
    invoke-static {v5, v4, v0, v3}, Ljp/espresso3389/content_resolver/a;->c(Ljp/espresso3389/content_resolver/a;Ljava/lang/String;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    if-ne v0, v2, :cond_8

    .line 338
    .line 339
    return-object v2

    .line 340
    :cond_8
    :goto_6
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 341
    .line 342
    return-object v0
.end method
