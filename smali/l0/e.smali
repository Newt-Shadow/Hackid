.class public final Ll0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/k0;


# instance fields
.field private final a:Laf/k;

.field private final b:Laf/s0;

.field private final c:Ll0/c;

.field private final d:Lj0/t;

.field private final e:Lid/a;

.field private final f:Ll0/a;

.field private final g:Lce/a;


# direct methods
.method public constructor <init>(Laf/k;Laf/s0;Ll0/c;Lj0/t;Lid/a;)V
    .locals 1

    .line 1
    const-string v0, "fileSystem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "path"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "serializer"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "coordinator"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "onClose"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Ll0/e;->a:Laf/k;

    .line 30
    .line 31
    iput-object p2, p0, Ll0/e;->b:Laf/s0;

    .line 32
    .line 33
    iput-object p3, p0, Ll0/e;->c:Ll0/c;

    .line 34
    .line 35
    iput-object p4, p0, Ll0/e;->d:Lj0/t;

    .line 36
    .line 37
    iput-object p5, p0, Ll0/e;->e:Lid/a;

    .line 38
    .line 39
    new-instance p1, Ll0/a;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-direct {p1, p2}, Ll0/a;-><init>(Z)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Ll0/e;->f:Ll0/a;

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    const/4 p3, 0x0

    .line 49
    invoke-static {p2, p1, p3}, Lce/g;->b(ZILjava/lang/Object;)Lce/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Ll0/e;->g:Lce/a;

    .line 54
    .line 55
    return-void
.end method

.method private final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll0/e;->f:Ll0/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll0/a;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v1, "StorageConnection has already been disposed."

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method


# virtual methods
.method public a(Lid/Function2;Lad/e;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Ll0/e$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Ll0/e$b;

    .line 7
    .line 8
    iget v1, v0, Ll0/e$b;->g:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Ll0/e$b;->g:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ll0/e$b;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Ll0/e$b;-><init>(Ll0/e;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Ll0/e$b;->e:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Ll0/e$b;->g:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    if-eq v2, v5, :cond_2

    .line 40
    .line 41
    if-ne v2, v4, :cond_1

    .line 42
    .line 43
    iget-object p1, v0, Ll0/e$b;->d:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lj0/c;

    .line 46
    .line 47
    iget-object v1, v0, Ll0/e$b;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Laf/s0;

    .line 50
    .line 51
    iget-object v2, v0, Ll0/e$b;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Lce/a;

    .line 54
    .line 55
    iget-object v0, v0, Ll0/e$b;->a:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Ll0/e;

    .line 58
    .line 59
    :try_start_0
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :catchall_0
    move-exception p2

    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 70
    .line 71
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_2
    iget-object p1, v0, Ll0/e$b;->d:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p1, Lce/a;

    .line 78
    .line 79
    iget-object v2, v0, Ll0/e$b;->c:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v2, Laf/s0;

    .line 82
    .line 83
    iget-object v5, v0, Ll0/e$b;->b:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v5, Lid/Function2;

    .line 86
    .line 87
    iget-object v7, v0, Ll0/e$b;->a:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v7, Ll0/e;

    .line 90
    .line 91
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    move-object p2, p1

    .line 95
    move-object p1, v5

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Ll0/e;->f()V

    .line 101
    .line 102
    .line 103
    iget-object p2, p0, Ll0/e;->b:Laf/s0;

    .line 104
    .line 105
    invoke-virtual {p2}, Laf/s0;->o()Laf/s0;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-eqz v2, :cond_9

    .line 110
    .line 111
    iget-object p2, p0, Ll0/e;->a:Laf/k;

    .line 112
    .line 113
    invoke-virtual {p2, v2, v3}, Laf/k;->b(Laf/s0;Z)V

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Ll0/e;->g:Lce/a;

    .line 117
    .line 118
    iput-object p0, v0, Ll0/e$b;->a:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object p1, v0, Ll0/e$b;->b:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object v2, v0, Ll0/e$b;->c:Ljava/lang/Object;

    .line 123
    .line 124
    iput-object p2, v0, Ll0/e$b;->d:Ljava/lang/Object;

    .line 125
    .line 126
    iput v5, v0, Ll0/e$b;->g:I

    .line 127
    .line 128
    invoke-interface {p2, v6, v0}, Lce/a;->b(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    if-ne v5, v1, :cond_4

    .line 133
    .line 134
    return-object v1

    .line 135
    :cond_4
    move-object v7, p0

    .line 136
    :goto_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    iget-object v8, v7, Ll0/e;->b:Laf/s0;

    .line 142
    .line 143
    invoke-virtual {v8}, Laf/s0;->l()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v8, ".tmp"

    .line 151
    .line 152
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v2, v5}, Laf/s0;->r(Ljava/lang/String;)Laf/s0;

    .line 160
    .line 161
    .line 162
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 163
    :try_start_2
    iget-object v5, v7, Ll0/e;->a:Laf/k;

    .line 164
    .line 165
    invoke-virtual {v5, v2, v3}, Laf/k;->f(Laf/s0;Z)V

    .line 166
    .line 167
    .line 168
    new-instance v3, Ll0/g;

    .line 169
    .line 170
    iget-object v5, v7, Ll0/e;->a:Laf/k;

    .line 171
    .line 172
    iget-object v8, v7, Ll0/e;->c:Ll0/c;

    .line 173
    .line 174
    invoke-direct {v3, v5, v2, v8}, Ll0/g;-><init>(Laf/k;Laf/s0;Ll0/c;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 175
    .line 176
    .line 177
    :try_start_3
    iput-object v7, v0, Ll0/e$b;->a:Ljava/lang/Object;

    .line 178
    .line 179
    iput-object p2, v0, Ll0/e$b;->b:Ljava/lang/Object;

    .line 180
    .line 181
    iput-object v2, v0, Ll0/e$b;->c:Ljava/lang/Object;

    .line 182
    .line 183
    iput-object v3, v0, Ll0/e$b;->d:Ljava/lang/Object;

    .line 184
    .line 185
    iput v4, v0, Ll0/e$b;->g:I

    .line 186
    .line 187
    invoke-interface {p1, v3, v0}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 191
    if-ne p1, v1, :cond_5

    .line 192
    .line 193
    return-object v1

    .line 194
    :cond_5
    move-object v1, v2

    .line 195
    move-object p1, v3

    .line 196
    move-object v0, v7

    .line 197
    move-object v2, p2

    .line 198
    :goto_2
    :try_start_4
    sget-object p2, Lxc/t;->a:Lxc/t;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    .line 200
    :try_start_5
    invoke-interface {p1}, Lj0/c;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 201
    .line 202
    .line 203
    move-object p1, v6

    .line 204
    goto :goto_3

    .line 205
    :catchall_1
    move-exception p1

    .line 206
    :goto_3
    if-nez p1, :cond_7

    .line 207
    .line 208
    :try_start_6
    iget-object p1, v0, Ll0/e;->a:Laf/k;

    .line 209
    .line 210
    invoke-virtual {p1, v1}, Laf/k;->g(Laf/s0;)Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_6

    .line 215
    .line 216
    iget-object p1, v0, Ll0/e;->a:Laf/k;

    .line 217
    .line 218
    iget-object p2, v0, Ll0/e;->b:Laf/s0;

    .line 219
    .line 220
    invoke-virtual {p1, v1, p2}, Laf/k;->a(Laf/s0;Laf/s0;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 221
    .line 222
    .line 223
    :cond_6
    :try_start_7
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 224
    .line 225
    invoke-interface {v2, v6}, Lce/a;->d(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 229
    .line 230
    return-object p1

    .line 231
    :cond_7
    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 232
    :catchall_2
    move-exception p1

    .line 233
    move-object v1, v2

    .line 234
    move-object v0, v7

    .line 235
    move-object v2, p2

    .line 236
    move-object p2, p1

    .line 237
    move-object p1, v3

    .line 238
    :goto_4
    :try_start_9
    invoke-interface {p1}, Lj0/c;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 239
    .line 240
    .line 241
    goto :goto_5

    .line 242
    :catchall_3
    move-exception p1

    .line 243
    :try_start_a
    invoke-static {p2, p1}, Lxc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 244
    .line 245
    .line 246
    :goto_5
    throw p2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 247
    :catchall_4
    move-exception p1

    .line 248
    move-object p2, v2

    .line 249
    goto :goto_7

    .line 250
    :catch_0
    move-exception p1

    .line 251
    move-object v7, v0

    .line 252
    move-object p2, v2

    .line 253
    move-object v2, v1

    .line 254
    goto :goto_6

    .line 255
    :catch_1
    move-exception p1

    .line 256
    :goto_6
    :try_start_b
    iget-object v0, v7, Ll0/e;->a:Laf/k;

    .line 257
    .line 258
    invoke-virtual {v0, v2}, Laf/k;->g(Laf/s0;)Z

    .line 259
    .line 260
    .line 261
    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 262
    if-eqz v0, :cond_8

    .line 263
    .line 264
    :try_start_c
    iget-object v0, v7, Ll0/e;->a:Laf/k;

    .line 265
    .line 266
    invoke-virtual {v0, v2}, Laf/k;->e(Laf/s0;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 267
    .line 268
    .line 269
    :catch_2
    :cond_8
    :try_start_d
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 270
    :catchall_5
    move-exception p1

    .line 271
    :goto_7
    invoke-interface {p2, v6}, Lce/a;->d(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    throw p1

    .line 275
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 276
    .line 277
    const-string p2, "must have a parent path"

    .line 278
    .line 279
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw p1
.end method

.method public c()Lj0/t;
    .locals 1

    .line 1
    iget-object v0, p0, Ll0/e;->d:Lj0/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll0/e;->f:Ll0/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ll0/a;->b(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ll0/e;->e:Lid/a;

    .line 8
    .line 9
    invoke-interface {v0}, Lid/a;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public e(Lid/p;Lad/e;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Ll0/e$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Ll0/e$a;

    .line 7
    .line 8
    iget v1, v0, Ll0/e$a;->f:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Ll0/e$a;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ll0/e$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Ll0/e$a;-><init>(Ll0/e;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Ll0/e$a;->d:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Ll0/e$a;->f:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-boolean p1, v0, Ll0/e$a;->c:Z

    .line 40
    .line 41
    iget-object v1, v0, Ll0/e$a;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Lj0/c;

    .line 44
    .line 45
    iget-object v0, v0, Ll0/e$a;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Ll0/e;

    .line 48
    .line 49
    :try_start_0
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catchall_0
    move-exception p2

    .line 54
    goto :goto_4

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Ll0/e;->f()V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Ll0/e;->g:Lce/a;

    .line 70
    .line 71
    invoke-static {p2, v4, v3, v4}, Lce/a$a;->a(Lce/a;Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    :try_start_1
    new-instance v2, Ll0/b;

    .line 76
    .line 77
    iget-object v5, p0, Ll0/e;->a:Laf/k;

    .line 78
    .line 79
    iget-object v6, p0, Ll0/e;->b:Laf/s0;

    .line 80
    .line 81
    iget-object v7, p0, Ll0/e;->c:Ll0/c;

    .line 82
    .line 83
    invoke-direct {v2, v5, v6, v7}, Ll0/b;-><init>(Laf/k;Laf/s0;Ll0/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 84
    .line 85
    .line 86
    if-eqz p2, :cond_3

    .line 87
    .line 88
    move v5, v3

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const/4 v5, 0x0

    .line 91
    :goto_1
    :try_start_2
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    iput-object p0, v0, Ll0/e$a;->a:Ljava/lang/Object;

    .line 96
    .line 97
    iput-object v2, v0, Ll0/e$a;->b:Ljava/lang/Object;

    .line 98
    .line 99
    iput-boolean p2, v0, Ll0/e$a;->c:Z

    .line 100
    .line 101
    iput v3, v0, Ll0/e$a;->f:I

    .line 102
    .line 103
    invoke-interface {p1, v2, v5, v0}, Lid/p;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 107
    if-ne p1, v1, :cond_4

    .line 108
    .line 109
    return-object v1

    .line 110
    :cond_4
    move-object v0, p0

    .line 111
    move-object v1, v2

    .line 112
    move v8, p2

    .line 113
    move-object p2, p1

    .line 114
    move p1, v8

    .line 115
    :goto_2
    :try_start_3
    invoke-interface {v1}, Lj0/c;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    .line 117
    .line 118
    move-object v1, v4

    .line 119
    goto :goto_3

    .line 120
    :catchall_1
    move-exception v1

    .line 121
    :goto_3
    if-nez v1, :cond_6

    .line 122
    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    iget-object p1, v0, Ll0/e;->g:Lce/a;

    .line 126
    .line 127
    invoke-static {p1, v4, v3, v4}, Lce/a$a;->b(Lce/a;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_5
    return-object p2

    .line 131
    :cond_6
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 132
    :catchall_2
    move-exception p1

    .line 133
    move-object v0, p0

    .line 134
    move-object v1, v2

    .line 135
    move v8, p2

    .line 136
    move-object p2, p1

    .line 137
    move p1, v8

    .line 138
    :goto_4
    :try_start_5
    invoke-interface {v1}, Lj0/c;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 139
    .line 140
    .line 141
    goto :goto_5

    .line 142
    :catchall_3
    move-exception v1

    .line 143
    :try_start_6
    invoke-static {p2, v1}, Lxc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    :goto_5
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 147
    :catchall_4
    move-exception p2

    .line 148
    goto :goto_6

    .line 149
    :catchall_5
    move-exception p1

    .line 150
    move-object v0, p0

    .line 151
    move v8, p2

    .line 152
    move-object p2, p1

    .line 153
    move p1, v8

    .line 154
    :goto_6
    if-eqz p1, :cond_7

    .line 155
    .line 156
    iget-object p1, v0, Ll0/e;->g:Lce/a;

    .line 157
    .line 158
    invoke-static {p1, v4, v3, v4}, Lce/a$a;->b(Lce/a;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_7
    throw p2
.end method
