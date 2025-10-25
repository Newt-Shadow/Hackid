.class public final Lve/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laf/a1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final a:J

.field private b:Z

.field private final c:Laf/d;

.field private final d:Laf/d;

.field private e:Lne/s;

.field private f:Z

.field final synthetic g:Lve/i;


# direct methods
.method public constructor <init>(Lve/i;JZ)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lve/i$c;->g:Lve/i;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-wide p2, p0, Lve/i$c;->a:J

    .line 12
    .line 13
    iput-boolean p4, p0, Lve/i$c;->b:Z

    .line 14
    .line 15
    new-instance p1, Laf/d;

    .line 16
    .line 17
    invoke-direct {p1}, Laf/d;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lve/i$c;->c:Laf/d;

    .line 21
    .line 22
    new-instance p1, Laf/d;

    .line 23
    .line 24
    invoke-direct {p1}, Laf/d;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lve/i$c;->d:Laf/d;

    .line 28
    .line 29
    return-void
.end method

.method private final k(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lve/i$c;->g:Lve/i;

    .line 2
    .line 3
    sget-boolean v1, Loe/d;->h:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "Thread "

    .line 22
    .line 23
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, " MUST NOT hold lock on "

    .line 38
    .line 39
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_1
    :goto_0
    iget-object v0, p0, Lve/i$c;->g:Lve/i;

    .line 54
    .line 55
    invoke-virtual {v0}, Lve/i;->g()Lve/f;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, p1, p2}, Lve/f;->n1(J)V

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public L0(Laf/d;J)J
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    const-string v4, "sink"

    .line 8
    .line 9
    invoke-static {v0, v4}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v6, v2, v4

    .line 15
    .line 16
    if-ltz v6, :cond_0

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v6, 0x0

    .line 21
    :goto_0
    if-eqz v6, :cond_a

    .line 22
    .line 23
    :goto_1
    iget-object v6, v1, Lve/i$c;->g:Lve/i;

    .line 24
    .line 25
    monitor-enter v6

    .line 26
    :try_start_0
    invoke-virtual {v6}, Lve/i;->m()Lve/i$d;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    invoke-virtual {v9}, Laf/c;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_1
    invoke-virtual {v6}, Lve/i;->h()Lve/b;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    if-eqz v9, :cond_1

    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Lve/i$c;->b()Z

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    if-nez v9, :cond_1

    .line 44
    .line 45
    invoke-virtual {v6}, Lve/i;->i()Ljava/io/IOException;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    if-nez v9, :cond_2

    .line 50
    .line 51
    new-instance v9, Lve/n;

    .line 52
    .line 53
    invoke-virtual {v6}, Lve/i;->h()Lve/b;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    invoke-static {v10}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v9, v10}, Lve/n;-><init>(Lve/b;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    const/4 v9, 0x0

    .line 65
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lve/i$c;->a()Z

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    if-nez v10, :cond_9

    .line 70
    .line 71
    invoke-virtual/range {p0 .. p0}, Lve/i$c;->c()Laf/d;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    invoke-virtual {v10}, Laf/d;->k0()J

    .line 76
    .line 77
    .line 78
    move-result-wide v10

    .line 79
    cmp-long v10, v10, v4

    .line 80
    .line 81
    const-wide/16 v11, -0x1

    .line 82
    .line 83
    if-lez v10, :cond_3

    .line 84
    .line 85
    invoke-virtual/range {p0 .. p0}, Lve/i$c;->c()Laf/d;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    invoke-virtual/range {p0 .. p0}, Lve/i$c;->c()Laf/d;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    invoke-virtual {v13}, Laf/d;->k0()J

    .line 94
    .line 95
    .line 96
    move-result-wide v13

    .line 97
    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 98
    .line 99
    .line 100
    move-result-wide v13

    .line 101
    invoke-virtual {v10, v0, v13, v14}, Laf/d;->L0(Laf/d;J)J

    .line 102
    .line 103
    .line 104
    move-result-wide v13

    .line 105
    invoke-virtual {v6}, Lve/i;->l()J

    .line 106
    .line 107
    .line 108
    move-result-wide v15

    .line 109
    add-long v4, v15, v13

    .line 110
    .line 111
    invoke-virtual {v6, v4, v5}, Lve/i;->C(J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6}, Lve/i;->l()J

    .line 115
    .line 116
    .line 117
    move-result-wide v4

    .line 118
    invoke-virtual {v6}, Lve/i;->k()J

    .line 119
    .line 120
    .line 121
    move-result-wide v15

    .line 122
    sub-long/2addr v4, v15

    .line 123
    if-nez v9, :cond_5

    .line 124
    .line 125
    invoke-virtual {v6}, Lve/i;->g()Lve/f;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    invoke-virtual {v10}, Lve/f;->t0()Lve/m;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-virtual {v10}, Lve/m;->c()I

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    div-int/lit8 v10, v10, 0x2

    .line 138
    .line 139
    int-to-long v7, v10

    .line 140
    cmp-long v7, v4, v7

    .line 141
    .line 142
    if-ltz v7, :cond_5

    .line 143
    .line 144
    invoke-virtual {v6}, Lve/i;->g()Lve/f;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-virtual {v6}, Lve/i;->j()I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    invoke-virtual {v7, v8, v4, v5}, Lve/f;->t1(IJ)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6}, Lve/i;->l()J

    .line 156
    .line 157
    .line 158
    move-result-wide v4

    .line 159
    invoke-virtual {v6, v4, v5}, Lve/i;->B(J)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lve/i$c;->b()Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-nez v4, :cond_4

    .line 168
    .line 169
    if-nez v9, :cond_4

    .line 170
    .line 171
    invoke-virtual {v6}, Lve/i;->F()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .line 173
    .line 174
    move-wide v13, v11

    .line 175
    const/4 v4, 0x1

    .line 176
    goto :goto_4

    .line 177
    :cond_4
    move-wide v13, v11

    .line 178
    :cond_5
    :goto_3
    const/4 v4, 0x0

    .line 179
    :goto_4
    :try_start_2
    invoke-virtual {v6}, Lve/i;->m()Lve/i$d;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v5}, Lve/i$d;->C()V

    .line 184
    .line 185
    .line 186
    sget-object v5, Lxc/t;->a:Lxc/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 187
    .line 188
    monitor-exit v6

    .line 189
    if-eqz v4, :cond_6

    .line 190
    .line 191
    const-wide/16 v4, 0x0

    .line 192
    .line 193
    goto/16 :goto_1

    .line 194
    .line 195
    :cond_6
    cmp-long v0, v13, v11

    .line 196
    .line 197
    if-eqz v0, :cond_7

    .line 198
    .line 199
    invoke-direct {v1, v13, v14}, Lve/i$c;->k(J)V

    .line 200
    .line 201
    .line 202
    return-wide v13

    .line 203
    :cond_7
    if-nez v9, :cond_8

    .line 204
    .line 205
    return-wide v11

    .line 206
    :cond_8
    throw v9

    .line 207
    :cond_9
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    .line 208
    .line 209
    const-string v2, "stream closed"

    .line 210
    .line 211
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    :catchall_0
    move-exception v0

    .line 216
    :try_start_4
    invoke-virtual {v6}, Lve/i;->m()Lve/i$d;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v2}, Lve/i$d;->C()V

    .line 221
    .line 222
    .line 223
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 224
    :catchall_1
    move-exception v0

    .line 225
    monitor-exit v6

    .line 226
    throw v0

    .line 227
    :cond_a
    const-string v0, "byteCount < 0: "

    .line 228
    .line 229
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v2
.end method

.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lve/i$c;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lve/i$c;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()Laf/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/i$c;->d:Laf/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lve/i$c;->g:Lve/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    invoke-virtual {p0, v1}, Lve/i$c;->g(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lve/i$c;->c()Laf/d;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Laf/d;->k0()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {p0}, Lve/i$c;->c()Laf/d;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Laf/d;->a()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 24
    .line 25
    .line 26
    sget-object v3, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    cmp-long v0, v1, v3

    .line 32
    .line 33
    if-lez v0, :cond_0

    .line 34
    .line 35
    invoke-direct {p0, v1, v2}, Lve/i$c;->k(J)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lve/i$c;->g:Lve/i;

    .line 39
    .line 40
    invoke-virtual {v0}, Lve/i;->b()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    monitor-exit v0

    .line 46
    throw v1
.end method

.method public final e()Laf/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/i$c;->c:Laf/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f(Laf/f;J)V
    .locals 9

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lve/i$c;->g:Lve/i;

    .line 7
    .line 8
    sget-boolean v1, Loe/d;->h:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string p3, "Thread "

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p3, " MUST NOT hold lock on "

    .line 43
    .line 44
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 59
    .line 60
    cmp-long v2, p2, v0

    .line 61
    .line 62
    if-lez v2, :cond_9

    .line 63
    .line 64
    iget-object v2, p0, Lve/i$c;->g:Lve/i;

    .line 65
    .line 66
    monitor-enter v2

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lve/i$c;->b()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-virtual {p0}, Lve/i$c;->c()Laf/d;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v4}, Laf/d;->k0()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    add-long/2addr v4, p2

    .line 80
    iget-wide v6, p0, Lve/i$c;->a:J

    .line 81
    .line 82
    cmp-long v4, v4, v6

    .line 83
    .line 84
    const/4 v5, 0x1

    .line 85
    const/4 v6, 0x0

    .line 86
    if-lez v4, :cond_2

    .line 87
    .line 88
    move v4, v5

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    move v4, v6

    .line 91
    :goto_1
    sget-object v7, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    .line 93
    monitor-exit v2

    .line 94
    if-eqz v4, :cond_3

    .line 95
    .line 96
    invoke-interface {p1, p2, p3}, Laf/f;->skip(J)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lve/i$c;->g:Lve/i;

    .line 100
    .line 101
    sget-object p2, Lve/b;->f:Lve/b;

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Lve/i;->f(Lve/b;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_3
    if-eqz v3, :cond_4

    .line 108
    .line 109
    invoke-interface {p1, p2, p3}, Laf/f;->skip(J)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_4
    iget-object v2, p0, Lve/i$c;->c:Laf/d;

    .line 114
    .line 115
    invoke-interface {p1, v2, p2, p3}, Laf/a1;->L0(Laf/d;J)J

    .line 116
    .line 117
    .line 118
    move-result-wide v2

    .line 119
    const-wide/16 v7, -0x1

    .line 120
    .line 121
    cmp-long v4, v2, v7

    .line 122
    .line 123
    if-eqz v4, :cond_8

    .line 124
    .line 125
    sub-long/2addr p2, v2

    .line 126
    iget-object v2, p0, Lve/i$c;->g:Lve/i;

    .line 127
    .line 128
    monitor-enter v2

    .line 129
    :try_start_1
    invoke-virtual {p0}, Lve/i$c;->a()Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_5

    .line 134
    .line 135
    invoke-virtual {p0}, Lve/i$c;->e()Laf/d;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v3}, Laf/d;->k0()J

    .line 140
    .line 141
    .line 142
    move-result-wide v3

    .line 143
    invoke-virtual {p0}, Lve/i$c;->e()Laf/d;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v5}, Laf/d;->a()V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_5
    invoke-virtual {p0}, Lve/i$c;->c()Laf/d;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v3}, Laf/d;->k0()J

    .line 156
    .line 157
    .line 158
    move-result-wide v3

    .line 159
    cmp-long v3, v3, v0

    .line 160
    .line 161
    if-nez v3, :cond_6

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_6
    move v5, v6

    .line 165
    :goto_2
    invoke-virtual {p0}, Lve/i$c;->c()Laf/d;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {p0}, Lve/i$c;->e()Laf/d;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v3, v4}, Laf/d;->W0(Laf/a1;)J

    .line 174
    .line 175
    .line 176
    if-eqz v5, :cond_7

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    .line 180
    .line 181
    :cond_7
    move-wide v3, v0

    .line 182
    :goto_3
    monitor-exit v2

    .line 183
    cmp-long v0, v3, v0

    .line 184
    .line 185
    if-lez v0, :cond_1

    .line 186
    .line 187
    invoke-direct {p0, v3, v4}, Lve/i$c;->k(J)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :catchall_0
    move-exception p1

    .line 193
    monitor-exit v2

    .line 194
    throw p1

    .line 195
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    .line 196
    .line 197
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 198
    .line 199
    .line 200
    throw p1

    .line 201
    :catchall_1
    move-exception p1

    .line 202
    monitor-exit v2

    .line 203
    throw p1

    .line 204
    :cond_9
    return-void
.end method

.method public final g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lve/i$c;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public final h(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lve/i$c;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public final j(Lne/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lve/i$c;->e:Lne/s;

    .line 2
    .line 3
    return-void
.end method

.method public n()Laf/b1;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/i$c;->g:Lve/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lve/i;->m()Lve/i$d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
