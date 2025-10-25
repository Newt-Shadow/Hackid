.class public Lcom/yandex/metrica/impl/ob/Rg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/networktasks/api/IParamsAppender;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Kg;

.field private final b:Lcom/yandex/metrica/impl/ob/kd;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Kg;Lcom/yandex/metrica/impl/ob/kd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Rg;->b:Lcom/yandex/metrica/impl/ob/kd;

    .line 7
    .line 8
    return-void
.end method

.method private a(Landroid/net/Uri$Builder;Lcom/yandex/metrica/impl/ob/ub;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/ub;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 8
    .line 9
    invoke-virtual {p2, p3}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const-string p3, ""

    .line 14
    .line 15
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 20
    .line 21
    invoke-virtual {v0, p3}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/ub;->a:Lcom/yandex/metrica/impl/ob/tb;

    .line 26
    .line 27
    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/tb;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method


# virtual methods
.method public appendParams(Landroid/net/Uri$Builder;Ljava/lang/Object;)V
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    check-cast v2, Lcom/yandex/metrica/impl/ob/Mg;

    .line 8
    .line 9
    const-string v3, "analytics/startup"

    .line 10
    .line 11
    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 12
    .line 13
    .line 14
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 15
    .line 16
    const-string v4, "deviceid"

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Eg;->g()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/F0;->u()Lcom/yandex/metrica/impl/ob/s2;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Eg;->a()Lcom/yandex/metrica/impl/ob/zb;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/s2;->c()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const-string v5, "yandex_adv_id"

    .line 46
    .line 47
    const-string v6, "oaid"

    .line 48
    .line 49
    const-string v7, "adv_id"

    .line 50
    .line 51
    const-string v8, ""

    .line 52
    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 56
    .line 57
    invoke-virtual {v3, v7}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v1, v3, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 62
    .line 63
    .line 64
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 65
    .line 66
    invoke-virtual {v3, v6}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v1, v3, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 71
    .line 72
    .line 73
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 74
    .line 75
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v1, v3, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/zb;->a()Lcom/yandex/metrica/impl/ob/ub;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-direct {v0, v1, v3, v7}, Lcom/yandex/metrica/impl/ob/Rg;->a(Landroid/net/Uri$Builder;Lcom/yandex/metrica/impl/ob/ub;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/zb;->b()Lcom/yandex/metrica/impl/ob/ub;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-direct {v0, v1, v3, v6}, Lcom/yandex/metrica/impl/ob/Rg;->a(Landroid/net/Uri$Builder;Lcom/yandex/metrica/impl/ob/ub;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/zb;->c()Lcom/yandex/metrica/impl/ob/ub;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-direct {v0, v1, v3, v5}, Lcom/yandex/metrica/impl/ob/Rg;->a(Landroid/net/Uri$Builder;Lcom/yandex/metrica/impl/ob/ub;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :goto_0
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 105
    .line 106
    const-string v4, "app_set_id"

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Eg;->d()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 117
    .line 118
    .line 119
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 120
    .line 121
    const-string v4, "app_set_id_scope"

    .line 122
    .line 123
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Eg;->e()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 132
    .line 133
    .line 134
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 135
    .line 136
    const-string v4, "app_platform"

    .line 137
    .line 138
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    const-string v4, "android"

    .line 143
    .line 144
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 145
    .line 146
    .line 147
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 148
    .line 149
    const-string v4, "protocol_version"

    .line 150
    .line 151
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    const-string v4, "2"

    .line 156
    .line 157
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 158
    .line 159
    .line 160
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 161
    .line 162
    const-string v4, "analytics_sdk_version_name"

    .line 163
    .line 164
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    const-string v4, "5.3.0"

    .line 169
    .line 170
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 171
    .line 172
    .line 173
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 174
    .line 175
    const-string v4, "model"

    .line 176
    .line 177
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Eg;->m()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 186
    .line 187
    .line 188
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 189
    .line 190
    const-string v4, "manufacturer"

    .line 191
    .line 192
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Eg;->l()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 201
    .line 202
    .line 203
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 204
    .line 205
    const-string v4, "os_version"

    .line 206
    .line 207
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Eg;->o()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 216
    .line 217
    .line 218
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 219
    .line 220
    const-string v4, "screen_width"

    .line 221
    .line 222
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Eg;->u()I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 235
    .line 236
    .line 237
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 238
    .line 239
    const-string v4, "screen_height"

    .line 240
    .line 241
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Eg;->t()I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 254
    .line 255
    .line 256
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 257
    .line 258
    const-string v4, "screen_dpi"

    .line 259
    .line 260
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Eg;->s()I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 273
    .line 274
    .line 275
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 276
    .line 277
    const-string v4, "scalefactor"

    .line 278
    .line 279
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Eg;->r()F

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 292
    .line 293
    .line 294
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 295
    .line 296
    const-string v4, "locale"

    .line 297
    .line 298
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Eg;->k()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 307
    .line 308
    .line 309
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 310
    .line 311
    const-string v4, "device_type"

    .line 312
    .line 313
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Eg;->i()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 322
    .line 323
    .line 324
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 325
    .line 326
    const-string v4, "queries"

    .line 327
    .line 328
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    const/4 v4, 0x1

    .line 333
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 338
    .line 339
    .line 340
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 341
    .line 342
    const-string v5, "query_hosts"

    .line 343
    .line 344
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    const/4 v5, 0x2

    .line 349
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    invoke-virtual {v1, v3, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 354
    .line 355
    .line 356
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 357
    .line 358
    const-string v6, "features"

    .line 359
    .line 360
    invoke-virtual {v3, v6}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    iget-object v6, v0, Lcom/yandex/metrica/impl/ob/Rg;->b:Lcom/yandex/metrica/impl/ob/kd;

    .line 365
    .line 366
    invoke-interface {v6}, Lcom/yandex/metrica/impl/ob/kd;->b()Ljava/util/List;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    iget-object v7, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 371
    .line 372
    const-string v9, "easy_collecting"

    .line 373
    .line 374
    invoke-virtual {v7, v9}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v10

    .line 378
    iget-object v7, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 379
    .line 380
    const-string v15, "egress"

    .line 381
    .line 382
    invoke-virtual {v7, v15}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v11

    .line 386
    iget-object v7, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 387
    .line 388
    const-string v12, "package_info"

    .line 389
    .line 390
    invoke-virtual {v7, v12}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v12

    .line 394
    iget-object v7, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 395
    .line 396
    const-string v14, "socket"

    .line 397
    .line 398
    invoke-virtual {v7, v14}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v13

    .line 402
    iget-object v7, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 403
    .line 404
    const-string v5, "permissions_collecting"

    .line 405
    .line 406
    invoke-virtual {v7, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    move-object v4, v14

    .line 411
    move-object v14, v7

    .line 412
    iget-object v7, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 413
    .line 414
    move-object/from16 v35, v8

    .line 415
    .line 416
    const-string v8, "features_collecting"

    .line 417
    .line 418
    invoke-virtual {v7, v8}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v7

    .line 422
    move-object v8, v15

    .line 423
    move-object v15, v7

    .line 424
    iget-object v7, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 425
    .line 426
    move-object/from16 v36, v8

    .line 427
    .line 428
    const-string v8, "location_collecting"

    .line 429
    .line 430
    invoke-virtual {v7, v8}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v16

    .line 434
    iget-object v7, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 435
    .line 436
    move-object/from16 v37, v9

    .line 437
    .line 438
    const-string v9, "lbs_collecting"

    .line 439
    .line 440
    invoke-virtual {v7, v9}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v17

    .line 444
    iget-object v7, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 445
    .line 446
    const-string v9, "google_aid"

    .line 447
    .line 448
    invoke-virtual {v7, v9}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v18

    .line 452
    iget-object v7, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 453
    .line 454
    const-string v9, "huawei_oaid"

    .line 455
    .line 456
    invoke-virtual {v7, v9}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v19

    .line 460
    iget-object v7, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 461
    .line 462
    const-string v9, "throttling"

    .line 463
    .line 464
    invoke-virtual {v7, v9}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v20

    .line 468
    iget-object v7, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 469
    .line 470
    move-object/from16 v38, v5

    .line 471
    .line 472
    const-string v5, "wifi_around"

    .line 473
    .line 474
    invoke-virtual {v7, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v21

    .line 478
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 479
    .line 480
    const-string v7, "wifi_connected"

    .line 481
    .line 482
    invoke-virtual {v5, v7}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v22

    .line 486
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 487
    .line 488
    const-string v7, "cells_around"

    .line 489
    .line 490
    invoke-virtual {v5, v7}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v23

    .line 494
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 495
    .line 496
    const-string v7, "sim_info"

    .line 497
    .line 498
    invoke-virtual {v5, v7}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v24

    .line 502
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 503
    .line 504
    const-string v7, "sdk_list"

    .line 505
    .line 506
    invoke-virtual {v5, v7}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v25

    .line 510
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 511
    .line 512
    move-object/from16 v39, v9

    .line 513
    .line 514
    const-string v9, "identity_light_collecting"

    .line 515
    .line 516
    invoke-virtual {v5, v9}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v26

    .line 520
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 521
    .line 522
    move-object/from16 v40, v9

    .line 523
    .line 524
    const-string v9, "gpl_collecting"

    .line 525
    .line 526
    invoke-virtual {v5, v9}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v27

    .line 530
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 531
    .line 532
    const-string v9, "ui_parsing"

    .line 533
    .line 534
    invoke-virtual {v5, v9}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v28

    .line 538
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 539
    .line 540
    move-object/from16 v41, v9

    .line 541
    .line 542
    const-string v9, "ui_collecting_for_bridge"

    .line 543
    .line 544
    invoke-virtual {v5, v9}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v29

    .line 548
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 549
    .line 550
    move-object/from16 v42, v9

    .line 551
    .line 552
    const-string v9, "ui_event_sending"

    .line 553
    .line 554
    invoke-virtual {v5, v9}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v30

    .line 558
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 559
    .line 560
    move-object/from16 v43, v9

    .line 561
    .line 562
    const-string v9, "ui_raw_event_sending"

    .line 563
    .line 564
    invoke-virtual {v5, v9}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v31

    .line 568
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 569
    .line 570
    move-object/from16 v44, v9

    .line 571
    .line 572
    const-string v9, "cell_additional_info"

    .line 573
    .line 574
    invoke-virtual {v5, v9}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v32

    .line 578
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 579
    .line 580
    const-string v9, "cell_additional_info_connected_only"

    .line 581
    .line 582
    invoke-virtual {v5, v9}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v33

    .line 586
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 587
    .line 588
    const-string v9, "ssl_pinning"

    .line 589
    .line 590
    invoke-virtual {v5, v9}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v34

    .line 594
    filled-new-array/range {v10 .. v34}, [Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v5

    .line 598
    new-instance v9, Ljava/util/ArrayList;

    .line 599
    .line 600
    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 601
    .line 602
    .line 603
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 604
    .line 605
    .line 606
    move-result-object v5

    .line 607
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 608
    .line 609
    .line 610
    const/4 v5, 0x0

    .line 611
    new-array v5, v5, [Ljava/lang/String;

    .line 612
    .line 613
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v5

    .line 617
    check-cast v5, [Ljava/lang/String;

    .line 618
    .line 619
    const-string v6, ","

    .line 620
    .line 621
    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v5

    .line 625
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 626
    .line 627
    .line 628
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 629
    .line 630
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v3

    .line 634
    const/4 v4, 0x1

    .line 635
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v5

    .line 639
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 640
    .line 641
    .line 642
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 643
    .line 644
    const-string v5, "app_id"

    .line 645
    .line 646
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v3

    .line 650
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Eg;->p()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v5

    .line 654
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 655
    .line 656
    .line 657
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 658
    .line 659
    invoke-virtual {v3, v8}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v3

    .line 663
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v5

    .line 667
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 668
    .line 669
    .line 670
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 671
    .line 672
    const-string v5, "app_debuggable"

    .line 673
    .line 674
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v3

    .line 678
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Hg;->z()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v5

    .line 682
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 683
    .line 684
    .line 685
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 686
    .line 687
    invoke-virtual {v3, v7}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v3

    .line 691
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v5

    .line 695
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Mg;->L()Z

    .line 699
    .line 700
    .line 701
    move-result v3

    .line 702
    if-eqz v3, :cond_2

    .line 703
    .line 704
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Mg;->D()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v3

    .line 708
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 709
    .line 710
    .line 711
    move-result v4

    .line 712
    if-nez v4, :cond_1

    .line 713
    .line 714
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 715
    .line 716
    const-string v5, "country_init"

    .line 717
    .line 718
    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v4

    .line 722
    invoke-virtual {v1, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 723
    .line 724
    .line 725
    :cond_1
    const/4 v4, 0x1

    .line 726
    goto :goto_1

    .line 727
    :cond_2
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 728
    .line 729
    const-string v4, "detect_locale"

    .line 730
    .line 731
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v3

    .line 735
    const/4 v4, 0x1

    .line 736
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v5

    .line 740
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 741
    .line 742
    .line 743
    :goto_1
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Mg;->B()Lcom/yandex/metrica/impl/ob/v3$a;

    .line 744
    .line 745
    .line 746
    move-result-object v3

    .line 747
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/v3$a;->b()Ljava/util/Map;

    .line 748
    .line 749
    .line 750
    move-result-object v5

    .line 751
    invoke-static {v5}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    .line 752
    .line 753
    .line 754
    move-result v5

    .line 755
    if-nez v5, :cond_8

    .line 756
    .line 757
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 758
    .line 759
    const-string v6, "distribution_customization"

    .line 760
    .line 761
    invoke-virtual {v5, v6}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v5

    .line 765
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v6

    .line 769
    invoke-virtual {v1, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/v3$a;->b()Ljava/util/Map;

    .line 773
    .line 774
    .line 775
    move-result-object v5

    .line 776
    invoke-static {v5}, Lcom/yandex/metrica/impl/ob/Tl;->c(Ljava/util/Map;)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v5

    .line 780
    iget-object v6, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 781
    .line 782
    const-string v7, "clids_set"

    .line 783
    .line 784
    invoke-virtual {v6, v7}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v6

    .line 788
    invoke-virtual {v1, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 789
    .line 790
    .line 791
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/v3$a;->a()Lcom/yandex/metrica/impl/ob/u0;

    .line 792
    .line 793
    .line 794
    move-result-object v3

    .line 795
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 796
    .line 797
    .line 798
    move-result v3

    .line 799
    if-eq v3, v4, :cond_5

    .line 800
    .line 801
    const/4 v4, 0x2

    .line 802
    if-eq v3, v4, :cond_4

    .line 803
    .line 804
    const/4 v4, 0x3

    .line 805
    if-eq v3, v4, :cond_3

    .line 806
    .line 807
    move-object/from16 v8, v35

    .line 808
    .line 809
    goto :goto_2

    .line 810
    :cond_3
    const-string v8, "retail"

    .line 811
    .line 812
    goto :goto_2

    .line 813
    :cond_4
    const-string v8, "satellite"

    .line 814
    .line 815
    goto :goto_2

    .line 816
    :cond_5
    const-string v8, "api"

    .line 817
    .line 818
    :goto_2
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 819
    .line 820
    const-string v4, "clids_set_source"

    .line 821
    .line 822
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v3

    .line 826
    invoke-virtual {v1, v3, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 827
    .line 828
    .line 829
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Mg;->E()Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v3

    .line 833
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Mg;->F()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v4

    .line 837
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 838
    .line 839
    .line 840
    move-result v5

    .line 841
    if-eqz v5, :cond_6

    .line 842
    .line 843
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Mg;->H()Lcom/yandex/metrica/impl/ob/sg;

    .line 844
    .line 845
    .line 846
    move-result-object v5

    .line 847
    invoke-virtual {v5}, Lcom/yandex/metrica/impl/ob/sg;->a()Lcom/yandex/metrica/impl/ob/dg;

    .line 848
    .line 849
    .line 850
    move-result-object v5

    .line 851
    if-eqz v5, :cond_6

    .line 852
    .line 853
    iget-object v3, v5, Lcom/yandex/metrica/impl/ob/dg;->a:Ljava/lang/String;

    .line 854
    .line 855
    iget-object v4, v5, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/dg$a;

    .line 856
    .line 857
    iget-object v4, v4, Lcom/yandex/metrica/impl/ob/dg$a;->a:Ljava/lang/String;

    .line 858
    .line 859
    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 860
    .line 861
    .line 862
    move-result v5

    .line 863
    if-nez v5, :cond_8

    .line 864
    .line 865
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 866
    .line 867
    const-string v6, "install_referrer"

    .line 868
    .line 869
    invoke-virtual {v5, v6}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v5

    .line 873
    invoke-virtual {v1, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 874
    .line 875
    .line 876
    if-nez v4, :cond_7

    .line 877
    .line 878
    const-string v4, "null"

    .line 879
    .line 880
    :cond_7
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 881
    .line 882
    const-string v5, "install_referrer_source"

    .line 883
    .line 884
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v3

    .line 888
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 889
    .line 890
    .line 891
    :cond_8
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Eg;->w()Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v3

    .line 895
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 896
    .line 897
    .line 898
    move-result v4

    .line 899
    if-nez v4, :cond_9

    .line 900
    .line 901
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 902
    .line 903
    const-string v5, "uuid"

    .line 904
    .line 905
    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v4

    .line 909
    invoke-virtual {v1, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 910
    .line 911
    .line 912
    :cond_9
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 913
    .line 914
    const-string v4, "time"

    .line 915
    .line 916
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v3

    .line 920
    const/4 v4, 0x1

    .line 921
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 922
    .line 923
    .line 924
    move-result-object v5

    .line 925
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 926
    .line 927
    .line 928
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 929
    .line 930
    const-string v5, "requests"

    .line 931
    .line 932
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v3

    .line 936
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 937
    .line 938
    .line 939
    move-result-object v5

    .line 940
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 941
    .line 942
    .line 943
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 944
    .line 945
    const-string v5, "stat_sending"

    .line 946
    .line 947
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v3

    .line 951
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v5

    .line 955
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 956
    .line 957
    .line 958
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 959
    .line 960
    const-string v5, "permissions"

    .line 961
    .line 962
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v3

    .line 966
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object v5

    .line 970
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 971
    .line 972
    .line 973
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 974
    .line 975
    move-object/from16 v5, v40

    .line 976
    .line 977
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v3

    .line 981
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v5

    .line 985
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 986
    .line 987
    .line 988
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 989
    .line 990
    move-object/from16 v5, v41

    .line 991
    .line 992
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v3

    .line 996
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v5

    .line 1000
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1001
    .line 1002
    .line 1003
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 1004
    .line 1005
    move-object/from16 v5, v42

    .line 1006
    .line 1007
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v3

    .line 1011
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v5

    .line 1015
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1016
    .line 1017
    .line 1018
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 1019
    .line 1020
    move-object/from16 v5, v43

    .line 1021
    .line 1022
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v3

    .line 1026
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v5

    .line 1030
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1031
    .line 1032
    .line 1033
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 1034
    .line 1035
    move-object/from16 v5, v44

    .line 1036
    .line 1037
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v3

    .line 1041
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v5

    .line 1045
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1046
    .line 1047
    .line 1048
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 1049
    .line 1050
    const-string v5, "retry_policy"

    .line 1051
    .line 1052
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v3

    .line 1056
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v5

    .line 1060
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1061
    .line 1062
    .line 1063
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 1064
    .line 1065
    move-object/from16 v5, v39

    .line 1066
    .line 1067
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v3

    .line 1071
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v5

    .line 1075
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1076
    .line 1077
    .line 1078
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 1079
    .line 1080
    const-string v5, "cache_control"

    .line 1081
    .line 1082
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v3

    .line 1086
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v5

    .line 1090
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1091
    .line 1092
    .line 1093
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 1094
    .line 1095
    const-string v5, "mediascope_api_keys"

    .line 1096
    .line 1097
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v3

    .line 1101
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v5

    .line 1105
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1106
    .line 1107
    .line 1108
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 1109
    .line 1110
    const-string v5, "diagnostics"

    .line 1111
    .line 1112
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v3

    .line 1116
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v5

    .line 1120
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1121
    .line 1122
    .line 1123
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 1124
    .line 1125
    move-object/from16 v5, v38

    .line 1126
    .line 1127
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v3

    .line 1131
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v5

    .line 1135
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1136
    .line 1137
    .line 1138
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 1139
    .line 1140
    const-string v5, "app_system_flag"

    .line 1141
    .line 1142
    invoke-virtual {v3, v5}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v3

    .line 1146
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Hg;->A()Ljava/lang/String;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v2

    .line 1150
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1151
    .line 1152
    .line 1153
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 1154
    .line 1155
    const-string v3, "auto_inapp_collecting"

    .line 1156
    .line 1157
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v2

    .line 1161
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v3

    .line 1165
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1166
    .line 1167
    .line 1168
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 1169
    .line 1170
    const-string v3, "attribution"

    .line 1171
    .line 1172
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v2

    .line 1176
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v3

    .line 1180
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1181
    .line 1182
    .line 1183
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 1184
    .line 1185
    move-object/from16 v3, v37

    .line 1186
    .line 1187
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v2

    .line 1191
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v3

    .line 1195
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1196
    .line 1197
    .line 1198
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 1199
    .line 1200
    move-object/from16 v3, v36

    .line 1201
    .line 1202
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v2

    .line 1206
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v3

    .line 1210
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1211
    .line 1212
    .line 1213
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/Rg;->a:Lcom/yandex/metrica/impl/ob/Kg;

    .line 1214
    .line 1215
    const-string v3, "startup_update"

    .line 1216
    .line 1217
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/Kg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v2

    .line 1221
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v3

    .line 1225
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1226
    .line 1227
    .line 1228
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/Rg;->b:Lcom/yandex/metrica/impl/ob/kd;

    .line 1229
    .line 1230
    invoke-interface {v2}, Lcom/yandex/metrica/impl/ob/kd;->a()Ljava/util/Map;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v2

    .line 1234
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v3

    .line 1238
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v3

    .line 1242
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1243
    .line 1244
    .line 1245
    move-result v4

    .line 1246
    if-eqz v4, :cond_a

    .line 1247
    .line 1248
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v4

    .line 1252
    check-cast v4, Ljava/lang/String;

    .line 1253
    .line 1254
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v5

    .line 1258
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v5

    .line 1262
    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1263
    .line 1264
    .line 1265
    goto :goto_3

    .line 1266
    :cond_a
    return-void
.end method
