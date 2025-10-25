.class public final Lcom/google/android/gms/measurement/internal/cd;
.super Lcom/google/android/gms/measurement/internal/vc;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/pd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/vc;-><init>(Lcom/google/android/gms/measurement/internal/pd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->D0()Lcom/google/android/gms/measurement/internal/o6;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/o6;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/google/android/gms/measurement/internal/c5;->r:Lcom/google/android/gms/measurement/internal/b5;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b5;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    add-int/2addr v2, v3

    .line 59
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, "."

    .line 66
    .line 67
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    :cond_0
    sget-object p1, Lcom/google/android/gms/measurement/internal/c5;->r:Lcom/google/android/gms/measurement/internal/b5;

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/b5;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Ljava/lang/String;

    .line 96
    .line 97
    return-object p1
.end method

.method private static final l(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/c5;->t:Lcom/google/android/gms/measurement/internal/b5;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b5;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    const-string v1, ","

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    array-length v1, v0

    .line 25
    move v3, v2

    .line 26
    :goto_0
    if-ge v3, v1, :cond_2

    .line 27
    .line 28
    aget-object v4, v0, v3

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return v2
.end method


# virtual methods
.method public final i(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/bd;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->F0()Lcom/google/android/gms/measurement/internal/u;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/u;->J0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/v5;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_e

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/v5;->V()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    goto/16 :goto_5

    .line 21
    .line 22
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u7;->D()Lcom/google/android/gms/internal/measurement/n7;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x2

    .line 27
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/n7;->u(I)Lcom/google/android/gms/internal/measurement/n7;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/v5;->M()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/p7;->a(I)Lcom/google/android/gms/internal/measurement/p7;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-static {v5}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Lcom/google/android/gms/internal/measurement/p7;

    .line 43
    .line 44
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/n7;->t(Lcom/google/android/gms/internal/measurement/p7;)Lcom/google/android/gms/internal/measurement/n7;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/v5;->p0()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->D0()Lcom/google/android/gms/measurement/internal/o6;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v6, p1}, Lcom/google/android/gms/measurement/internal/o6;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l5;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const/4 v7, 0x3

    .line 60
    if-nez v6, :cond_1

    .line 61
    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->F0()Lcom/google/android/gms/measurement/internal/u;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v8, p1}, Lcom/google/android/gms/measurement/internal/u;->J0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/v5;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    if-eqz v8, :cond_d

    .line 73
    .line 74
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/l5;->Q()Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    const/16 v10, 0x64

    .line 79
    .line 80
    if-eqz v9, :cond_2

    .line 81
    .line 82
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/l5;->R()Lcom/google/android/gms/internal/measurement/v5;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/v5;->E()I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-eq v9, v10, :cond_4

    .line 91
    .line 92
    :cond_2
    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 93
    .line 94
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/v5;->l0()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v9, p1, v8}, Lcom/google/android/gms/measurement/internal/yd;->P(Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-eqz v8, :cond_3

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-nez v8, :cond_d

    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    rem-int/2addr v5, v10

    .line 120
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/l5;->R()Lcom/google/android/gms/internal/measurement/v5;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/v5;->E()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-lt v5, v6, :cond_4

    .line 133
    .line 134
    goto/16 :goto_4

    .line 135
    .line 136
    :cond_4
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/v5;->o0()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/n7;->u(I)Lcom/google/android/gms/internal/measurement/n7;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->D0()Lcom/google/android/gms/measurement/internal/o6;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/v5;->o0()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/o6;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l5;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    if-eqz v0, :cond_b

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l5;->Q()Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-nez v6, :cond_5

    .line 162
    .line 163
    goto/16 :goto_2

    .line 164
    .line 165
    :cond_5
    new-instance v6, Ljava/util/HashMap;

    .line 166
    .line 167
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/v5;->l0()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-nez v8, :cond_6

    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/v5;->l0()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    const-string v9, "x-gtm-server-preview"

    .line 185
    .line 186
    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l5;->R()Lcom/google/android/gms/internal/measurement/v5;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/v5;->F()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/v5;->M()I

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/p7;->a(I)Lcom/google/android/gms/internal/measurement/p7;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    if-eqz v9, :cond_7

    .line 206
    .line 207
    sget-object v10, Lcom/google/android/gms/internal/measurement/p7;->c:Lcom/google/android/gms/internal/measurement/p7;

    .line 208
    .line 209
    if-eq v9, v10, :cond_7

    .line 210
    .line 211
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/n7;->t(Lcom/google/android/gms/internal/measurement/p7;)Lcom/google/android/gms/internal/measurement/n7;

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/v5;->o0()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/cd;->l(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    if-eqz v9, :cond_8

    .line 224
    .line 225
    sget-object v7, Lcom/google/android/gms/internal/measurement/p7;->l:Lcom/google/android/gms/internal/measurement/p7;

    .line 226
    .line 227
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/n7;->t(Lcom/google/android/gms/internal/measurement/p7;)Lcom/google/android/gms/internal/measurement/n7;

    .line 228
    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    if-eqz v9, :cond_a

    .line 236
    .line 237
    sget-object v7, Lcom/google/android/gms/internal/measurement/p7;->m:Lcom/google/android/gms/internal/measurement/p7;

    .line 238
    .line 239
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/n7;->t(Lcom/google/android/gms/internal/measurement/p7;)Lcom/google/android/gms/internal/measurement/n7;

    .line 240
    .line 241
    .line 242
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l5;->R()Lcom/google/android/gms/internal/measurement/v5;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/v5;->C()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l5;->R()Lcom/google/android/gms/internal/measurement/v5;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v5;->D()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 257
    .line 258
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->c()Lcom/google/android/gms/measurement/internal/f;

    .line 259
    .line 260
    .line 261
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    if-nez v7, :cond_9

    .line 266
    .line 267
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    const-string v1, "[sgtm] Eligible for local service direct upload. appId"

    .line 276
    .line 277
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    const/4 v0, 0x5

    .line 281
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/n7;->u(I)Lcom/google/android/gms/internal/measurement/n7;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/n7;->v(I)Lcom/google/android/gms/internal/measurement/n7;

    .line 285
    .line 286
    .line 287
    new-instance v2, Lcom/google/android/gms/measurement/internal/bd;

    .line 288
    .line 289
    sget-object v0, Li6/d0;->d:Li6/d0;

    .line 290
    .line 291
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    check-cast v1, Lcom/google/android/gms/internal/measurement/u7;

    .line 296
    .line 297
    invoke-direct {v2, v8, v6, v0, v1}, Lcom/google/android/gms/measurement/internal/bd;-><init>(Ljava/lang/String;Ljava/util/Map;Li6/d0;Lcom/google/android/gms/internal/measurement/u7;)V

    .line 298
    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_9
    const/4 v4, 0x6

    .line 302
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/n7;->v(I)Lcom/google/android/gms/internal/measurement/n7;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/v5;->o0()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    const-string v4, "[sgtm] Local service, missing sgtm_server_url"

    .line 318
    .line 319
    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    goto :goto_3

    .line 323
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 324
    .line 325
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    const-string v1, "[sgtm] Eligible for client side upload. appId"

    .line 334
    .line 335
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/n7;->u(I)Lcom/google/android/gms/internal/measurement/n7;

    .line 339
    .line 340
    .line 341
    sget-object v0, Lcom/google/android/gms/internal/measurement/p7;->c:Lcom/google/android/gms/internal/measurement/p7;

    .line 342
    .line 343
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/n7;->t(Lcom/google/android/gms/internal/measurement/p7;)Lcom/google/android/gms/internal/measurement/n7;

    .line 344
    .line 345
    .line 346
    new-instance v2, Lcom/google/android/gms/measurement/internal/bd;

    .line 347
    .line 348
    sget-object v0, Li6/d0;->e:Li6/d0;

    .line 349
    .line 350
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    check-cast v1, Lcom/google/android/gms/internal/measurement/u7;

    .line 355
    .line 356
    invoke-direct {v2, v8, v6, v0, v1}, Lcom/google/android/gms/measurement/internal/bd;-><init>(Ljava/lang/String;Ljava/util/Map;Li6/d0;Lcom/google/android/gms/internal/measurement/u7;)V

    .line 357
    .line 358
    .line 359
    goto :goto_3

    .line 360
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 361
    .line 362
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    const-string v1, "[sgtm] Missing sgtm_setting in remote config. appId"

    .line 371
    .line 372
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    const/4 v0, 0x4

    .line 376
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/n7;->v(I)Lcom/google/android/gms/internal/measurement/n7;

    .line 377
    .line 378
    .line 379
    :goto_3
    if-eqz v2, :cond_c

    .line 380
    .line 381
    return-object v2

    .line 382
    :cond_c
    new-instance v0, Lcom/google/android/gms/measurement/internal/bd;

    .line 383
    .line 384
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/cd;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    sget-object v2, Li6/d0;->b:Li6/d0;

    .line 393
    .line 394
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    check-cast v3, Lcom/google/android/gms/internal/measurement/u7;

    .line 399
    .line 400
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/bd;-><init>(Ljava/lang/String;Ljava/util/Map;Li6/d0;Lcom/google/android/gms/internal/measurement/u7;)V

    .line 401
    .line 402
    .line 403
    return-object v0

    .line 404
    :cond_d
    :goto_4
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/n7;->v(I)Lcom/google/android/gms/internal/measurement/n7;

    .line 405
    .line 406
    .line 407
    new-instance v0, Lcom/google/android/gms/measurement/internal/bd;

    .line 408
    .line 409
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/cd;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    sget-object v2, Li6/d0;->b:Li6/d0;

    .line 418
    .line 419
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    check-cast v3, Lcom/google/android/gms/internal/measurement/u7;

    .line 424
    .line 425
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/bd;-><init>(Ljava/lang/String;Ljava/util/Map;Li6/d0;Lcom/google/android/gms/internal/measurement/u7;)V

    .line 426
    .line 427
    .line 428
    return-object v0

    .line 429
    :cond_e
    :goto_5
    new-instance v0, Lcom/google/android/gms/measurement/internal/bd;

    .line 430
    .line 431
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/cd;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    sget-object v1, Li6/d0;->b:Li6/d0;

    .line 436
    .line 437
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    invoke-direct {v0, p1, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/bd;-><init>(Ljava/lang/String;Ljava/util/Map;Li6/d0;Lcom/google/android/gms/internal/measurement/u7;)V

    .line 442
    .line 443
    .line 444
    return-object v0
.end method

.method final j(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/p7;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/p7;->c:Lcom/google/android/gms/internal/measurement/p7;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/cd;->l(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/pd;->D0()Lcom/google/android/gms/measurement/internal/o6;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/o6;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l5;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/l5;->Q()Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/l5;->R()Lcom/google/android/gms/internal/measurement/v5;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/v5;->F()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    return p1

    .line 50
    :cond_1
    :goto_0
    return v1
.end method
