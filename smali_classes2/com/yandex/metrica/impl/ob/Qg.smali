.class public Lcom/yandex/metrica/impl/ob/Qg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/networktasks/api/IParamsAppender;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Ng;

.field private final b:Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;

.field private c:Lcom/yandex/metrica/impl/ob/Ig;

.field private d:J


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Ng;Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Qg;->a:Lcom/yandex/metrica/impl/ob/Ng;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Qg;->b:Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ng;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ng;-><init>()V

    new-instance v1, Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;-><init>(Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;)V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/Qg;-><init>(Lcom/yandex/metrica/impl/ob/Ng;Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;)V

    return-void
.end method

.method private a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/Qg;->d:J

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/Ig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Qg;->c:Lcom/yandex/metrica/impl/ob/Ig;

    return-void
.end method

.method public appendParams(Landroid/net/Uri$Builder;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/yandex/metrica/impl/ob/Lg;

    .line 2
    .line 3
    const-string v0, "report"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->b:Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;->b(Landroid/net/Uri$Builder;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Qg;->b:Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;

    .line 18
    .line 19
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/Ig;->p:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Ig;->f:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, p1, v2, v0}, Lcom/yandex/metrica/networktasks/api/NetworkTaskForSendingDataParamsAppender;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Ig;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->g()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "deviceid"

    .line 39
    .line 40
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Ig;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->w()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "uuid"

    .line 56
    .line 57
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Ig;->c:Ljava/lang/String;

    .line 63
    .line 64
    const-string v1, "analytics_sdk_version"

    .line 65
    .line 66
    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/metrica/impl/ob/Qg;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Ig;->d:Ljava/lang/String;

    .line 72
    .line 73
    const-string v1, "analytics_sdk_version_name"

    .line 74
    .line 75
    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/metrica/impl/ob/Qg;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Ig;->g:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->f()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "app_version_name"

    .line 91
    .line 92
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Ig;->i:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->b()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v1, "app_build_number"

    .line 108
    .line 109
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Ig;->j:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->o()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v1, "os_version"

    .line 125
    .line 126
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Ig;->k:Ljava/lang/String;

    .line 132
    .line 133
    const-string v1, "os_api_level"

    .line 134
    .line 135
    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/metrica/impl/ob/Qg;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Ig;->e:Ljava/lang/String;

    .line 141
    .line 142
    const-string v1, "analytics_sdk_build_number"

    .line 143
    .line 144
    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/metrica/impl/ob/Qg;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 148
    .line 149
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Ig;->f:Ljava/lang/String;

    .line 150
    .line 151
    const-string v1, "analytics_sdk_build_type"

    .line 152
    .line 153
    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/metrica/impl/ob/Qg;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 157
    .line 158
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Ig;->h:Ljava/lang/String;

    .line 159
    .line 160
    const-string v1, "app_debuggable"

    .line 161
    .line 162
    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/metrica/impl/ob/Qg;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 166
    .line 167
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Ig;->l:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->k()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const-string v1, "locale"

    .line 178
    .line 179
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 183
    .line 184
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Ig;->m:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->h()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const-string v1, "is_rooted"

    .line 195
    .line 196
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 200
    .line 201
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Ig;->n:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->c()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    const-string v1, "app_framework"

    .line 212
    .line 213
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 217
    .line 218
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Ig;->o:Ljava/lang/String;

    .line 219
    .line 220
    const-string v1, "attribution_id"

    .line 221
    .line 222
    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/metrica/impl/ob/Qg;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_0
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Lg;->B()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    const-string v1, "api_key_128"

    .line 230
    .line 231
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->p()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    const-string v1, "app_id"

    .line 239
    .line 240
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 241
    .line 242
    .line 243
    const-string v0, "app_platform"

    .line 244
    .line 245
    const-string v1, "android"

    .line 246
    .line 247
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->m()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    const-string v1, "model"

    .line 255
    .line 256
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->l()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const-string v1, "manufacturer"

    .line 264
    .line 265
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->u()I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    const-string v1, "screen_width"

    .line 277
    .line 278
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->t()I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    const-string v1, "screen_height"

    .line 290
    .line 291
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->s()I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    const-string v1, "screen_dpi"

    .line 303
    .line 304
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->r()F

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    const-string v1, "scalefactor"

    .line 316
    .line 317
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->i()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    const-string v1, "device_type"

    .line 325
    .line 326
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Lg;->E()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    const-string v1, "clids_set"

    .line 334
    .line 335
    invoke-direct {p0, p1, v1, v0}, Lcom/yandex/metrica/impl/ob/Qg;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->d()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    const-string v1, "app_set_id"

    .line 343
    .line 344
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->e()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    const-string v1, "app_set_id_scope"

    .line 352
    .line 353
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 354
    .line 355
    .line 356
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->a:Lcom/yandex/metrica/impl/ob/Ng;

    .line 357
    .line 358
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/Eg;->a()Lcom/yandex/metrica/impl/ob/zb;

    .line 359
    .line 360
    .line 361
    move-result-object p2

    .line 362
    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Ng;->a(Landroid/net/Uri$Builder;Lcom/yandex/metrica/impl/ob/zb;)V

    .line 363
    .line 364
    .line 365
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/Qg;->d:J

    .line 366
    .line 367
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p2

    .line 371
    const-string v0, "request_id"

    .line 372
    .line 373
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 374
    .line 375
    .line 376
    return-void
.end method
