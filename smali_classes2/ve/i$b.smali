.class public final Lve/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laf/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private final b:Laf/d;

.field private c:Lne/s;

.field private d:Z

.field final synthetic e:Lve/i;


# direct methods
.method public constructor <init>(Lve/i;Z)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lve/i$b;->e:Lve/i;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-boolean p2, p0, Lve/i$b;->a:Z

    .line 12
    .line 13
    new-instance p1, Laf/d;

    .line 14
    .line 15
    invoke-direct {p1}, Laf/d;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lve/i$b;->b:Laf/d;

    .line 19
    .line 20
    return-void
.end method

.method private final a(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lve/i$b;->e:Lve/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lve/i;->s()Lve/i$d;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Laf/c;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    .line 10
    .line 11
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lve/i;->r()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {v0}, Lve/i;->q()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    cmp-long v1, v1, v3

    .line 20
    .line 21
    if-ltz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lve/i$b;->c()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Lve/i$b;->b()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lve/i;->h()Lve/b;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lve/i;->F()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lve/i;->s()Lve/i$d;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lve/i$d;->C()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lve/i;->c()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lve/i;->q()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    invoke-virtual {v0}, Lve/i;->r()J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    sub-long/2addr v1, v3

    .line 64
    iget-object v3, p0, Lve/i$b;->b:Laf/d;

    .line 65
    .line 66
    invoke-virtual {v3}, Laf/d;->k0()J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 71
    .line 72
    .line 73
    move-result-wide v9

    .line 74
    invoke-virtual {v0}, Lve/i;->r()J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    add-long/2addr v1, v9

    .line 79
    invoke-virtual {v0, v1, v2}, Lve/i;->D(J)V

    .line 80
    .line 81
    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    iget-object p1, p0, Lve/i$b;->b:Laf/d;

    .line 85
    .line 86
    invoke-virtual {p1}, Laf/d;->k0()J

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    cmp-long p1, v9, v1

    .line 91
    .line 92
    if-nez p1, :cond_1

    .line 93
    .line 94
    const/4 p1, 0x1

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    const/4 p1, 0x0

    .line 97
    :goto_1
    move v7, p1

    .line 98
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 99
    .line 100
    monitor-exit v0

    .line 101
    iget-object p1, p0, Lve/i$b;->e:Lve/i;

    .line 102
    .line 103
    invoke-virtual {p1}, Lve/i;->s()Lve/i$d;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Laf/c;->v()V

    .line 108
    .line 109
    .line 110
    :try_start_3
    iget-object p1, p0, Lve/i$b;->e:Lve/i;

    .line 111
    .line 112
    invoke-virtual {p1}, Lve/i;->g()Lve/f;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    iget-object p1, p0, Lve/i$b;->e:Lve/i;

    .line 117
    .line 118
    invoke-virtual {p1}, Lve/i;->j()I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    iget-object v8, p0, Lve/i$b;->b:Laf/d;

    .line 123
    .line 124
    invoke-virtual/range {v5 .. v10}, Lve/f;->o1(IZLaf/d;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lve/i$b;->e:Lve/i;

    .line 128
    .line 129
    invoke-virtual {p1}, Lve/i;->s()Lve/i$d;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lve/i$d;->C()V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :catchall_0
    move-exception p1

    .line 138
    iget-object v0, p0, Lve/i$b;->e:Lve/i;

    .line 139
    .line 140
    invoke-virtual {v0}, Lve/i;->s()Lve/i$d;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lve/i$d;->C()V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :catchall_1
    move-exception p1

    .line 149
    :try_start_4
    invoke-virtual {v0}, Lve/i;->s()Lve/i$d;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lve/i$d;->C()V

    .line 154
    .line 155
    .line 156
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 157
    :catchall_2
    move-exception p1

    .line 158
    monitor-exit v0

    .line 159
    throw p1
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lve/i$b;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lve/i$b;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public c0(Laf/d;J)V
    .locals 2

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lve/i$b;->e:Lve/i;

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
    iget-object v0, p0, Lve/i$b;->b:Laf/d;

    .line 59
    .line 60
    invoke-virtual {v0, p1, p2, p3}, Laf/d;->c0(Laf/d;J)V

    .line 61
    .line 62
    .line 63
    :goto_1
    iget-object p1, p0, Lve/i$b;->b:Laf/d;

    .line 64
    .line 65
    invoke-virtual {p1}, Laf/d;->k0()J

    .line 66
    .line 67
    .line 68
    move-result-wide p1

    .line 69
    const-wide/16 v0, 0x4000

    .line 70
    .line 71
    cmp-long p1, p1, v0

    .line 72
    .line 73
    if-ltz p1, :cond_2

    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    invoke-direct {p0, p1}, Lve/i$b;->a(Z)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    return-void
.end method

.method public close()V
    .locals 10

    .line 1
    iget-object v0, p0, Lve/i$b;->e:Lve/i;

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
    new-instance v1, Ljava/lang/AssertionError;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "Thread "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, " MUST NOT hold lock on "

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    throw v1

    .line 53
    :cond_1
    :goto_0
    iget-object v0, p0, Lve/i$b;->e:Lve/i;

    .line 54
    .line 55
    monitor-enter v0

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lve/i$b;->b()Z

    .line 57
    .line 58
    .line 59
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lve/i;->h()Lve/b;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/4 v2, 0x0

    .line 69
    const/4 v3, 0x1

    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    move v1, v3

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v1, v2

    .line 75
    :goto_1
    sget-object v4, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    .line 77
    monitor-exit v0

    .line 78
    iget-object v0, p0, Lve/i$b;->e:Lve/i;

    .line 79
    .line 80
    invoke-virtual {v0}, Lve/i;->o()Lve/i$b;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-boolean v0, v0, Lve/i$b;->a:Z

    .line 85
    .line 86
    if-nez v0, :cond_9

    .line 87
    .line 88
    iget-object v0, p0, Lve/i$b;->b:Laf/d;

    .line 89
    .line 90
    invoke-virtual {v0}, Laf/d;->k0()J

    .line 91
    .line 92
    .line 93
    move-result-wide v4

    .line 94
    const-wide/16 v6, 0x0

    .line 95
    .line 96
    cmp-long v0, v4, v6

    .line 97
    .line 98
    if-lez v0, :cond_4

    .line 99
    .line 100
    move v0, v3

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    move v0, v2

    .line 103
    :goto_2
    iget-object v4, p0, Lve/i$b;->c:Lne/s;

    .line 104
    .line 105
    if-eqz v4, :cond_5

    .line 106
    .line 107
    move v4, v3

    .line 108
    goto :goto_3

    .line 109
    :cond_5
    move v4, v2

    .line 110
    :goto_3
    if-eqz v4, :cond_7

    .line 111
    .line 112
    :goto_4
    iget-object v0, p0, Lve/i$b;->b:Laf/d;

    .line 113
    .line 114
    invoke-virtual {v0}, Laf/d;->k0()J

    .line 115
    .line 116
    .line 117
    move-result-wide v4

    .line 118
    cmp-long v0, v4, v6

    .line 119
    .line 120
    if-lez v0, :cond_6

    .line 121
    .line 122
    invoke-direct {p0, v2}, Lve/i$b;->a(Z)V

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_6
    iget-object v0, p0, Lve/i$b;->e:Lve/i;

    .line 127
    .line 128
    invoke-virtual {v0}, Lve/i;->g()Lve/f;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-object v2, p0, Lve/i$b;->e:Lve/i;

    .line 133
    .line 134
    invoke-virtual {v2}, Lve/i;->j()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    iget-object v4, p0, Lve/i$b;->c:Lne/s;

    .line 139
    .line 140
    invoke-static {v4}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v4}, Loe/d;->N(Lne/s;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v0, v2, v1, v4}, Lve/f;->p1(IZLjava/util/List;)V

    .line 148
    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_7
    if-eqz v0, :cond_8

    .line 152
    .line 153
    :goto_5
    iget-object v0, p0, Lve/i$b;->b:Laf/d;

    .line 154
    .line 155
    invoke-virtual {v0}, Laf/d;->k0()J

    .line 156
    .line 157
    .line 158
    move-result-wide v0

    .line 159
    cmp-long v0, v0, v6

    .line 160
    .line 161
    if-lez v0, :cond_9

    .line 162
    .line 163
    invoke-direct {p0, v3}, Lve/i$b;->a(Z)V

    .line 164
    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_8
    if-eqz v1, :cond_9

    .line 168
    .line 169
    iget-object v0, p0, Lve/i$b;->e:Lve/i;

    .line 170
    .line 171
    invoke-virtual {v0}, Lve/i;->g()Lve/f;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    iget-object v0, p0, Lve/i$b;->e:Lve/i;

    .line 176
    .line 177
    invoke-virtual {v0}, Lve/i;->j()I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    const/4 v6, 0x1

    .line 182
    const/4 v7, 0x0

    .line 183
    const-wide/16 v8, 0x0

    .line 184
    .line 185
    invoke-virtual/range {v4 .. v9}, Lve/f;->o1(IZLaf/d;J)V

    .line 186
    .line 187
    .line 188
    :cond_9
    :goto_6
    iget-object v0, p0, Lve/i$b;->e:Lve/i;

    .line 189
    .line 190
    monitor-enter v0

    .line 191
    :try_start_2
    invoke-virtual {p0, v3}, Lve/i$b;->e(Z)V

    .line 192
    .line 193
    .line 194
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    .line 196
    monitor-exit v0

    .line 197
    iget-object v0, p0, Lve/i$b;->e:Lve/i;

    .line 198
    .line 199
    invoke-virtual {v0}, Lve/i;->g()Lve/f;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lve/f;->flush()V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lve/i$b;->e:Lve/i;

    .line 207
    .line 208
    invoke-virtual {v0}, Lve/i;->b()V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :catchall_0
    move-exception v1

    .line 213
    monitor-exit v0

    .line 214
    throw v1

    .line 215
    :catchall_1
    move-exception v1

    .line 216
    monitor-exit v0

    .line 217
    throw v1
.end method

.method public final e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lve/i$b;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public flush()V
    .locals 4

    .line 1
    iget-object v0, p0, Lve/i$b;->e:Lve/i;

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
    new-instance v1, Ljava/lang/AssertionError;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "Thread "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, " MUST NOT hold lock on "

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    throw v1

    .line 53
    :cond_1
    :goto_0
    iget-object v0, p0, Lve/i$b;->e:Lve/i;

    .line 54
    .line 55
    monitor-enter v0

    .line 56
    :try_start_0
    invoke-virtual {v0}, Lve/i;->c()V

    .line 57
    .line 58
    .line 59
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    monitor-exit v0

    .line 62
    :goto_1
    iget-object v0, p0, Lve/i$b;->b:Laf/d;

    .line 63
    .line 64
    invoke-virtual {v0}, Laf/d;->k0()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    const-wide/16 v2, 0x0

    .line 69
    .line 70
    cmp-long v0, v0, v2

    .line 71
    .line 72
    if-lez v0, :cond_2

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0}, Lve/i$b;->a(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lve/i$b;->e:Lve/i;

    .line 79
    .line 80
    invoke-virtual {v0}, Lve/i;->g()Lve/f;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lve/f;->flush()V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    return-void

    .line 89
    :catchall_0
    move-exception v1

    .line 90
    monitor-exit v0

    .line 91
    throw v1
.end method

.method public n()Laf/b1;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/i$b;->e:Lve/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lve/i;->s()Lve/i$d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
