.class Lcom/yandex/metrica/impl/ob/K3$i;
.super Lcom/yandex/metrica/impl/ob/K3$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/K3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ob/a9;

.field private final c:Lcom/yandex/metrica/impl/ob/c9;

.field private final d:Lcom/yandex/metrica/impl/ob/b8;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/L3;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/K3$j;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 5
    .line 6
    const-string v1, "LAST_REQUEST_ID"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$i;->e:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 18
    .line 19
    const-string v1, "NEXT_EVENT_GLOBAL_NUMBER"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$i;->f:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 31
    .line 32
    const-string v1, "CURRENT_SESSION_ID"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$i;->g:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 44
    .line 45
    const-string v1, "ATTRIBUTION_ID"

    .line 46
    .line 47
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$i;->h:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v0, Lcom/yandex/metrica/impl/ob/Rd;

    .line 57
    .line 58
    const-string v1, "OPEN_ID"

    .line 59
    .line 60
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$i;->i:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->o()Lcom/yandex/metrica/impl/ob/a9;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$i;->b:Lcom/yandex/metrica/impl/ob/a9;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->f()Lcom/yandex/metrica/impl/ob/c9;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$i;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->x()Lcom/yandex/metrica/impl/ob/b8;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/K3$i;->d:Lcom/yandex/metrica/impl/ob/b8;

    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 13

    .line 1
    new-instance v7, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$i;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/d9;->e()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :catchall_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    const-string v3, "EVENT_NUMBER_OF_TYPE_"

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    const/16 v3, 0x15

    .line 38
    .line 39
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/K3$i;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 48
    .line 49
    invoke-virtual {v4, v1, v2}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v7, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/K3$i;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/ob/d9;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$i;->d:Lcom/yandex/metrica/impl/ob/b8;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$i;->b:Lcom/yandex/metrica/impl/ob/a9;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a9;->f()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/K3$i;->b:Lcom/yandex/metrica/impl/ob/a9;

    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/a9;->g()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/K3$i;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 81
    .line 82
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/K3$i;->e:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ob/d9;->c(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    const/4 v5, 0x0

    .line 89
    if-eqz v4, :cond_2

    .line 90
    .line 91
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/K3$i;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 92
    .line 93
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/K3$i;->e:Ljava/lang/String;

    .line 94
    .line 95
    const/4 v8, -0x1

    .line 96
    invoke-virtual {v4, v6, v8}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    move-object v4, v5

    .line 106
    :goto_1
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/K3$i;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 107
    .line 108
    iget-object v8, p0, Lcom/yandex/metrica/impl/ob/K3$i;->f:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v6, v8}, Lcom/yandex/metrica/impl/ob/d9;->c(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_3

    .line 115
    .line 116
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/K3$i;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 117
    .line 118
    iget-object v8, p0, Lcom/yandex/metrica/impl/ob/K3$i;->f:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v6, v8, v2}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;I)I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    move-object v6, v2

    .line 129
    goto :goto_2

    .line 130
    :cond_3
    move-object v6, v5

    .line 131
    :goto_2
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/K3$i;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 132
    .line 133
    iget-object v8, p0, Lcom/yandex/metrica/impl/ob/K3$i;->g:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v2, v8}, Lcom/yandex/metrica/impl/ob/d9;->c(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_4

    .line 140
    .line 141
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/K3$i;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 142
    .line 143
    iget-object v8, p0, Lcom/yandex/metrica/impl/ob/K3$i;->g:Ljava/lang/String;

    .line 144
    .line 145
    const-wide/16 v9, -0x1

    .line 146
    .line 147
    invoke-virtual {v2, v8, v9, v10}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;J)J

    .line 148
    .line 149
    .line 150
    move-result-wide v8

    .line 151
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    move-object v8, v2

    .line 156
    goto :goto_3

    .line 157
    :cond_4
    move-object v8, v5

    .line 158
    :goto_3
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/K3$i;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 159
    .line 160
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/c9;->t()Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/K3$i;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 165
    .line 166
    iget-object v10, p0, Lcom/yandex/metrica/impl/ob/K3$i;->i:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v2, v10}, Lcom/yandex/metrica/impl/ob/d9;->c(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    const/4 v10, 0x1

    .line 173
    if-eqz v2, :cond_5

    .line 174
    .line 175
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/K3$i;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 176
    .line 177
    iget-object v11, p0, Lcom/yandex/metrica/impl/ob/K3$i;->i:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v2, v11, v10}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;I)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    move-object v11, v2

    .line 188
    goto :goto_4

    .line 189
    :cond_5
    move-object v11, v5

    .line 190
    :goto_4
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/K3$i;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 191
    .line 192
    iget-object v12, p0, Lcom/yandex/metrica/impl/ob/K3$i;->h:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v2, v12}, Lcom/yandex/metrica/impl/ob/d9;->c(Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_6

    .line 199
    .line 200
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/K3$i;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 201
    .line 202
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/K3$i;->h:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v2, v5, v10}, Lcom/yandex/metrica/impl/ob/d9;->a(Ljava/lang/String;I)I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    move-object v10, v2

    .line 213
    goto :goto_5

    .line 214
    :cond_6
    move-object v10, v5

    .line 215
    :goto_5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/K3$i;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 216
    .line 217
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/c9;->j()Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    move v2, v3

    .line 222
    move-object v3, v4

    .line 223
    move-object v4, v6

    .line 224
    move-object v5, v8

    .line 225
    move-object v6, v9

    .line 226
    move-object v8, v11

    .line 227
    move-object v9, v10

    .line 228
    move-object v10, v12

    .line 229
    invoke-virtual/range {v0 .. v10}, Lcom/yandex/metrica/impl/ob/b8;->a(ZZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Lorg/json/JSONObject;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$i;->b:Lcom/yandex/metrica/impl/ob/a9;

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/a9;->h()Lcom/yandex/metrica/impl/ob/a9;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/a9;->i()Lcom/yandex/metrica/impl/ob/a9;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/K3$i;->c:Lcom/yandex/metrica/impl/ob/c9;

    .line 246
    .line 247
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/c9;->s()Lcom/yandex/metrica/impl/ob/c9;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/c9;->r()Lcom/yandex/metrica/impl/ob/c9;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$i;->e:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$i;->f:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$i;->g:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$i;->h:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/K3$i;->i:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/d9;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    .line 286
    .line 287
    .line 288
    return-void
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
