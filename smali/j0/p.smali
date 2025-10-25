.class public final Lj0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/k0;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lj0/e0;

.field private final c:Lj0/t;

.field private final d:Lid/a;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Lce/a;


# direct methods
.method public constructor <init>(Ljava/io/File;Lj0/e0;Lj0/t;Lid/a;)V
    .locals 1

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "serializer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "coordinator"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "onClose"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lj0/p;->a:Ljava/io/File;

    .line 25
    .line 26
    iput-object p2, p0, Lj0/p;->b:Lj0/e0;

    .line 27
    .line 28
    iput-object p3, p0, Lj0/p;->c:Lj0/t;

    .line 29
    .line 30
    iput-object p4, p0, Lj0/p;->d:Lid/a;

    .line 31
    .line 32
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lj0/p;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    const/4 p3, 0x0

    .line 42
    invoke-static {p2, p1, p3}, Lce/g;->b(ZILjava/lang/Object;)Lce/a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lj0/p;->f:Lce/a;

    .line 47
    .line 48
    return-void
.end method

.method private final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj0/p;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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

.method private final g(Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "Unable to create parent directories of "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lid/Function2;Lad/e;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Lj0/p$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lj0/p$b;

    .line 7
    .line 8
    iget v1, v0, Lj0/p$b;->g:I

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
    iput v1, v0, Lj0/p$b;->g:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lj0/p$b;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lj0/p$b;-><init>(Lj0/p;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lj0/p$b;->e:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lj0/p$b;->g:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    iget-object p1, v0, Lj0/p$b;->d:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lj0/c;

    .line 45
    .line 46
    iget-object v1, v0, Lj0/p$b;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Ljava/io/File;

    .line 49
    .line 50
    iget-object v2, v0, Lj0/p$b;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Lce/a;

    .line 53
    .line 54
    iget-object v0, v0, Lj0/p$b;->a:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lj0/p;

    .line 57
    .line 58
    :try_start_0
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :catchall_0
    move-exception p2

    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_2
    iget-object p1, v0, Lj0/p$b;->c:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p1, Lce/a;

    .line 77
    .line 78
    iget-object v2, v0, Lj0/p$b;->b:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v2, Lid/Function2;

    .line 81
    .line 82
    iget-object v4, v0, Lj0/p$b;->a:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v4, Lj0/p;

    .line 85
    .line 86
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move-object v8, v2

    .line 90
    move-object v2, p1

    .line 91
    move-object p1, v8

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0}, Lj0/p;->f()V

    .line 97
    .line 98
    .line 99
    iget-object p2, p0, Lj0/p;->a:Ljava/io/File;

    .line 100
    .line 101
    invoke-direct {p0, p2}, Lj0/p;->g(Ljava/io/File;)V

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Lj0/p;->f:Lce/a;

    .line 105
    .line 106
    iput-object p0, v0, Lj0/p$b;->a:Ljava/lang/Object;

    .line 107
    .line 108
    iput-object p1, v0, Lj0/p$b;->b:Ljava/lang/Object;

    .line 109
    .line 110
    iput-object p2, v0, Lj0/p$b;->c:Ljava/lang/Object;

    .line 111
    .line 112
    iput v4, v0, Lj0/p$b;->g:I

    .line 113
    .line 114
    invoke-interface {p2, v5, v0}, Lce/a;->b(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-ne v2, v1, :cond_4

    .line 119
    .line 120
    return-object v1

    .line 121
    :cond_4
    move-object v4, p0

    .line 122
    move-object v2, p2

    .line 123
    :goto_1
    :try_start_1
    new-instance p2, Ljava/io/File;

    .line 124
    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    iget-object v7, v4, Lj0/p;->a:Ljava/io/File;

    .line 131
    .line 132
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v7, ".tmp"

    .line 140
    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-direct {p2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 149
    .line 150
    .line 151
    :try_start_2
    new-instance v6, Lj0/q;

    .line 152
    .line 153
    iget-object v7, v4, Lj0/p;->b:Lj0/e0;

    .line 154
    .line 155
    invoke-direct {v6, p2, v7}, Lj0/q;-><init>(Ljava/io/File;Lj0/e0;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 156
    .line 157
    .line 158
    :try_start_3
    iput-object v4, v0, Lj0/p$b;->a:Ljava/lang/Object;

    .line 159
    .line 160
    iput-object v2, v0, Lj0/p$b;->b:Ljava/lang/Object;

    .line 161
    .line 162
    iput-object p2, v0, Lj0/p$b;->c:Ljava/lang/Object;

    .line 163
    .line 164
    iput-object v6, v0, Lj0/p$b;->d:Ljava/lang/Object;

    .line 165
    .line 166
    iput v3, v0, Lj0/p$b;->g:I

    .line 167
    .line 168
    invoke-interface {p1, v6, v0}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 172
    if-ne p1, v1, :cond_5

    .line 173
    .line 174
    return-object v1

    .line 175
    :cond_5
    move-object v1, p2

    .line 176
    move-object v0, v4

    .line 177
    move-object p1, v6

    .line 178
    :goto_2
    :try_start_4
    sget-object p2, Lxc/t;->a:Lxc/t;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    .line 180
    :try_start_5
    invoke-interface {p1}, Lj0/c;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 181
    .line 182
    .line 183
    move-object p1, v5

    .line 184
    goto :goto_3

    .line 185
    :catchall_1
    move-exception p1

    .line 186
    :goto_3
    if-nez p1, :cond_8

    .line 187
    .line 188
    :try_start_6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_7

    .line 193
    .line 194
    iget-object p1, v0, Lj0/p;->a:Ljava/io/File;

    .line 195
    .line 196
    invoke-static {v1, p1}, Lj0/m;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_6

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 204
    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v3, "Unable to rename "

    .line 211
    .line 212
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v3, " to "

    .line 219
    .line 220
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget-object v0, v0, Lj0/p;->a:Ljava/io/File;

    .line 224
    .line 225
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v0, ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file."

    .line 229
    .line 230
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 241
    :cond_7
    :goto_4
    :try_start_7
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 242
    .line 243
    invoke-interface {v2, v5}, Lce/a;->d(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 247
    .line 248
    return-object p1

    .line 249
    :cond_8
    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 250
    :catchall_2
    move-exception p1

    .line 251
    move-object v1, p2

    .line 252
    move-object p2, p1

    .line 253
    move-object p1, v6

    .line 254
    :goto_5
    :try_start_9
    invoke-interface {p1}, Lj0/c;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 255
    .line 256
    .line 257
    goto :goto_6

    .line 258
    :catchall_3
    move-exception p1

    .line 259
    :try_start_a
    invoke-static {p2, p1}, Lxc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 260
    .line 261
    .line 262
    :goto_6
    throw p2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 263
    :catch_0
    move-exception p1

    .line 264
    move-object p2, v1

    .line 265
    goto :goto_7

    .line 266
    :catch_1
    move-exception p1

    .line 267
    :goto_7
    :try_start_b
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_9

    .line 272
    .line 273
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 274
    .line 275
    .line 276
    :cond_9
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 277
    :catchall_4
    move-exception p1

    .line 278
    invoke-interface {v2, v5}, Lce/a;->d(Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    throw p1
.end method

.method public c()Lj0/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/p;->c:Lj0/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj0/p;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lj0/p;->d:Lid/a;

    .line 8
    .line 9
    invoke-interface {v0}, Lid/a;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public e(Lid/p;Lad/e;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lj0/p$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lj0/p$a;

    .line 7
    .line 8
    iget v1, v0, Lj0/p$a;->f:I

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
    iput v1, v0, Lj0/p$a;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lj0/p$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lj0/p$a;-><init>(Lj0/p;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lj0/p$a;->d:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lj0/p$a;->f:I

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
    iget-boolean p1, v0, Lj0/p$a;->c:Z

    .line 40
    .line 41
    iget-object v1, v0, Lj0/p$a;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Lj0/c;

    .line 44
    .line 45
    iget-object v0, v0, Lj0/p$a;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lj0/p;

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
    invoke-direct {p0}, Lj0/p;->f()V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lj0/p;->f:Lce/a;

    .line 70
    .line 71
    invoke-static {p2, v4, v3, v4}, Lce/a$a;->a(Lce/a;Ljava/lang/Object;ILjava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    :try_start_1
    new-instance v2, Lj0/n;

    .line 76
    .line 77
    iget-object v5, p0, Lj0/p;->a:Ljava/io/File;

    .line 78
    .line 79
    iget-object v6, p0, Lj0/p;->b:Lj0/e0;

    .line 80
    .line 81
    invoke-direct {v2, v5, v6}, Lj0/n;-><init>(Ljava/io/File;Lj0/e0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 82
    .line 83
    .line 84
    if-eqz p2, :cond_3

    .line 85
    .line 86
    move v5, v3

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const/4 v5, 0x0

    .line 89
    :goto_1
    :try_start_2
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    iput-object p0, v0, Lj0/p$a;->a:Ljava/lang/Object;

    .line 94
    .line 95
    iput-object v2, v0, Lj0/p$a;->b:Ljava/lang/Object;

    .line 96
    .line 97
    iput-boolean p2, v0, Lj0/p$a;->c:Z

    .line 98
    .line 99
    iput v3, v0, Lj0/p$a;->f:I

    .line 100
    .line 101
    invoke-interface {p1, v2, v5, v0}, Lid/p;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 105
    if-ne p1, v1, :cond_4

    .line 106
    .line 107
    return-object v1

    .line 108
    :cond_4
    move-object v0, p0

    .line 109
    move-object v1, v2

    .line 110
    move v7, p2

    .line 111
    move-object p2, p1

    .line 112
    move p1, v7

    .line 113
    :goto_2
    :try_start_3
    invoke-interface {v1}, Lj0/c;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    .line 115
    .line 116
    move-object v1, v4

    .line 117
    goto :goto_3

    .line 118
    :catchall_1
    move-exception v1

    .line 119
    :goto_3
    if-nez v1, :cond_6

    .line 120
    .line 121
    if-eqz p1, :cond_5

    .line 122
    .line 123
    iget-object p1, v0, Lj0/p;->f:Lce/a;

    .line 124
    .line 125
    invoke-static {p1, v4, v3, v4}, Lce/a$a;->b(Lce/a;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    return-object p2

    .line 129
    :cond_6
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 130
    :catchall_2
    move-exception p1

    .line 131
    move-object v0, p0

    .line 132
    move-object v1, v2

    .line 133
    move v7, p2

    .line 134
    move-object p2, p1

    .line 135
    move p1, v7

    .line 136
    :goto_4
    :try_start_5
    invoke-interface {v1}, Lj0/c;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :catchall_3
    move-exception v1

    .line 141
    :try_start_6
    invoke-static {p2, v1}, Lxc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    :goto_5
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 145
    :catchall_4
    move-exception p2

    .line 146
    goto :goto_6

    .line 147
    :catchall_5
    move-exception p1

    .line 148
    move-object v0, p0

    .line 149
    move v7, p2

    .line 150
    move-object p2, p1

    .line 151
    move p1, v7

    .line 152
    :goto_6
    if-eqz p1, :cond_7

    .line 153
    .line 154
    iget-object p1, v0, Lj0/p;->f:Lce/a;

    .line 155
    .line 156
    invoke-static {p1, v4, v3, v4}, Lce/a$a;->b(Lce/a;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_7
    throw p2
.end method
