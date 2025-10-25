.class final Lcom/google/android/gms/measurement/internal/e6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/measurement/s0;

.field final synthetic b:Landroid/content/ServiceConnection;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/f6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/f6;Lcom/google/android/gms/internal/measurement/s0;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/e6;->a:Lcom/google/android/gms/internal/measurement/s0;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/e6;->b:Landroid/content/ServiceConnection;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e6;->c:Lcom/google/android/gms/measurement/internal/f6;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e6;->c:Lcom/google/android/gms/measurement/internal/f6;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/f6;->b:Lcom/google/android/gms/measurement/internal/g6;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/g6;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 12
    .line 13
    .line 14
    new-instance v3, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f6;->a()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v4, "package_name"

    .line 24
    .line 25
    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/e6;->a:Lcom/google/android/gms/internal/measurement/s0;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    :try_start_0
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/measurement/s0;->Q(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "Install Referrer Service returned a null response"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v2

    .line 52
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/g6;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const-string v4, "Exception occurred while retrieving the Install Referrer"

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    move-object v3, v5

    .line 72
    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/g6;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/google/android/gms/measurement/internal/w6;->q()V

    .line 82
    .line 83
    .line 84
    if-nez v3, :cond_1

    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :cond_1
    const-string v2, "install_begin_timestamp_seconds"

    .line 89
    .line 90
    const-wide/16 v6, 0x0

    .line 91
    .line 92
    invoke-virtual {v3, v2, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v8

    .line 96
    const-wide/16 v10, 0x3e8

    .line 97
    .line 98
    mul-long/2addr v8, v10

    .line 99
    cmp-long v2, v8, v6

    .line 100
    .line 101
    if-nez v2, :cond_2

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v2, "Service response is missing Install Referrer install timestamp"

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    :cond_2
    const-string v2, "install_referrer"

    .line 119
    .line 120
    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    if-eqz v2, :cond_8

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_3

    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    const-string v12, "InstallReferrer API result"

    .line 143
    .line 144
    invoke-virtual {v4, v12, v2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    const-string v12, "?"

    .line 152
    .line 153
    invoke-virtual {v12, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/yd;->s0(Landroid/net/Uri;)Landroid/os/Bundle;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    if-nez v2, :cond_4

    .line 166
    .line 167
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const-string v2, "No campaign params defined in Install Referrer result"

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_2

    .line 181
    .line 182
    :cond_4
    sget-object v4, Lcom/google/android/gms/measurement/internal/c5;->h1:Lcom/google/android/gms/measurement/internal/b5;

    .line 183
    .line 184
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/b5;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    check-cast v4, Ljava/lang/String;

    .line 189
    .line 190
    const-string v5, ","

    .line 191
    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    if-eqz v12, :cond_6

    .line 213
    .line 214
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    check-cast v12, Ljava/lang/String;

    .line 219
    .line 220
    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    if-eqz v12, :cond_5

    .line 225
    .line 226
    const-string v4, "referrer_click_timestamp_server_seconds"

    .line 227
    .line 228
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 229
    .line 230
    .line 231
    move-result-wide v3

    .line 232
    mul-long/2addr v3, v10

    .line 233
    cmp-long v5, v3, v6

    .line 234
    .line 235
    if-lez v5, :cond_6

    .line 236
    .line 237
    const-string v5, "click_timestamp"

    .line 238
    .line 239
    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 240
    .line 241
    .line 242
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d6;->g:Lcom/google/android/gms/measurement/internal/a6;

    .line 247
    .line 248
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/a6;->a()J

    .line 249
    .line 250
    .line 251
    move-result-wide v3

    .line 252
    cmp-long v3, v8, v3

    .line 253
    .line 254
    if-nez v3, :cond_7

    .line 255
    .line 256
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    const-string v4, "Logging Install Referrer campaign from module while it may have already been logged."

    .line 265
    .line 266
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->g()Z

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    if-eqz v3, :cond_9

    .line 274
    .line 275
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d6;->g:Lcom/google/android/gms/measurement/internal/a6;

    .line 280
    .line 281
    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/measurement/internal/a6;->b(J)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    const-string v4, "Logging Install Referrer campaign from gmscore with "

    .line 293
    .line 294
    const-string v5, "referrer API v2"

    .line 295
    .line 296
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    const-string v3, "_cis"

    .line 300
    .line 301
    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->B()Lcom/google/android/gms/measurement/internal/w9;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    const-string v4, "auto"

    .line 309
    .line 310
    const-string v5, "_cmp"

    .line 311
    .line 312
    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/google/android/gms/measurement/internal/w9;->w(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    goto :goto_2

    .line 316
    :cond_8
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    const-string v2, "No referrer defined in Install Referrer response"

    .line 325
    .line 326
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e6;->b:Landroid/content/ServiceConnection;

    .line 330
    .line 331
    invoke-static {}, Lr5/b;->b()Lr5/b;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v2, v1, v0}, Lr5/b;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 340
    .line 341
    .line 342
    return-void
.end method
