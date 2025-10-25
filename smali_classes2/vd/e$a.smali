.class final Lvd/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvd/i;
.implements Ltd/s2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvd/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ltd/n;

.field final synthetic c:Lvd/e;


# direct methods
.method public constructor <init>(Lvd/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvd/e$a;->c:Lvd/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lvd/f;->m()Lyd/f0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lvd/e$a;->a:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method public static final synthetic c(Lvd/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvd/e$a;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Lvd/e$a;Ltd/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvd/e$a;->b:Ltd/n;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic e(Lvd/e$a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvd/e$a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method private final f(Lvd/m;IJLad/e;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v6, p0, Lvd/e$a;->c:Lvd/e;

    .line 2
    .line 3
    invoke-static {p5}, Lbd/b;->c(Lad/e;)Lad/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ltd/p;->b(Lad/e;)Ltd/n;

    .line 8
    .line 9
    .line 10
    move-result-object v7

    .line 11
    :try_start_0
    invoke-static {p0, v7}, Lvd/e$a;->d(Lvd/e$a;Ltd/n;)V

    .line 12
    .line 13
    .line 14
    move-object v0, v6

    .line 15
    move-object v1, p1

    .line 16
    move v2, p2

    .line 17
    move-wide v3, p3

    .line 18
    move-object v5, p0

    .line 19
    invoke-static/range {v0 .. v5}, Lvd/e;->A(Lvd/e;Lvd/m;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Lvd/f;->r()Lyd/f0;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    invoke-static {v6, p0, p1, p2}, Lvd/e;->w(Lvd/e;Ltd/s2;Lvd/m;I)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_0
    invoke-static {}, Lvd/f;->h()Lyd/f0;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const/4 v8, 0x1

    .line 39
    const/4 v9, 0x0

    .line 40
    if-ne v0, p2, :cond_a

    .line 41
    .line 42
    invoke-virtual {v6}, Lvd/e;->f0()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    cmp-long p2, p3, v0

    .line 47
    .line 48
    if-gez p2, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Lyd/b;->c()V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-static {}, Lvd/e;->l()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lvd/m;

    .line 62
    .line 63
    :cond_2
    :goto_0
    invoke-virtual {v6}, Lvd/e;->n0()Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_3

    .line 68
    .line 69
    invoke-static {p0}, Lvd/e$a;->c(Lvd/e$a;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_3
    invoke-static {}, Lvd/e;->n()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p2, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 79
    .line 80
    .line 81
    move-result-wide p2

    .line 82
    sget p4, Lvd/f;->b:I

    .line 83
    .line 84
    int-to-long v0, p4

    .line 85
    div-long v0, p2, v0

    .line 86
    .line 87
    int-to-long v2, p4

    .line 88
    rem-long v2, p2, v2

    .line 89
    .line 90
    long-to-int p4, v2

    .line 91
    iget-wide v2, p1, Lyd/c0;->c:J

    .line 92
    .line 93
    cmp-long v2, v2, v0

    .line 94
    .line 95
    if-eqz v2, :cond_5

    .line 96
    .line 97
    invoke-static {v6, v0, v1, p1}, Lvd/e;->i(Lvd/e;JLvd/m;)Lvd/m;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-nez v0, :cond_4

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    move-object p1, v0

    .line 105
    :cond_5
    move-object v0, v6

    .line 106
    move-object v1, p1

    .line 107
    move v2, p4

    .line 108
    move-wide v3, p2

    .line 109
    move-object v5, p0

    .line 110
    invoke-static/range {v0 .. v5}, Lvd/e;->A(Lvd/e;Lvd/m;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {}, Lvd/f;->r()Lyd/f0;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-ne v0, v1, :cond_6

    .line 119
    .line 120
    invoke-static {v6, p0, p1, p4}, Lvd/e;->w(Lvd/e;Ltd/s2;Lvd/m;I)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_6
    invoke-static {}, Lvd/f;->h()Lyd/f0;

    .line 125
    .line 126
    .line 127
    move-result-object p4

    .line 128
    if-ne v0, p4, :cond_7

    .line 129
    .line 130
    invoke-virtual {v6}, Lvd/e;->f0()J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    cmp-long p2, p2, v0

    .line 135
    .line 136
    if-gez p2, :cond_2

    .line 137
    .line 138
    invoke-virtual {p1}, Lyd/b;->c()V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_7
    invoke-static {}, Lvd/f;->s()Lyd/f0;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    if-eq v0, p2, :cond_9

    .line 147
    .line 148
    invoke-virtual {p1}, Lyd/b;->c()V

    .line 149
    .line 150
    .line 151
    invoke-static {p0, v0}, Lvd/e$a;->e(Lvd/e$a;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-static {p0, v9}, Lvd/e$a;->d(Lvd/e$a;Ltd/n;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iget-object p2, v6, Lvd/e;->b:Lid/l;

    .line 162
    .line 163
    if-eqz p2, :cond_8

    .line 164
    .line 165
    invoke-static {v6, p2, v0}, Lvd/e;->e(Lvd/e;Lid/l;Ljava/lang/Object;)Lid/p;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    :cond_8
    :goto_1
    invoke-virtual {v7, p1, v9}, Ltd/n;->r(Ljava/lang/Object;Lid/p;)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 174
    .line 175
    const-string p2, "unexpected"

    .line 176
    .line 177
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p1

    .line 185
    :cond_a
    invoke-virtual {p1}, Lyd/b;->c()V

    .line 186
    .line 187
    .line 188
    invoke-static {p0, v0}, Lvd/e$a;->e(Lvd/e$a;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-static {p0, v9}, Lvd/e$a;->d(Lvd/e$a;Ltd/n;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    iget-object p2, v6, Lvd/e;->b:Lid/l;

    .line 199
    .line 200
    if-eqz p2, :cond_8

    .line 201
    .line 202
    invoke-static {v6, p2, v0}, Lvd/e;->e(Lvd/e;Lid/l;Ljava/lang/Object;)Lid/p;

    .line 203
    .line 204
    .line 205
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    goto :goto_1

    .line 207
    :goto_2
    invoke-virtual {v7}, Ltd/n;->x()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    if-ne p1, p2, :cond_b

    .line 216
    .line 217
    invoke-static {p5}, Lkotlin/coroutines/jvm/internal/h;->c(Lad/e;)V

    .line 218
    .line 219
    .line 220
    :cond_b
    return-object p1

    .line 221
    :catchall_0
    move-exception p1

    .line 222
    invoke-virtual {v7}, Ltd/n;->N()V

    .line 223
    .line 224
    .line 225
    throw p1
.end method

.method private final g()Z
    .locals 1

    .line 1
    invoke-static {}, Lvd/f;->z()Lyd/f0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lvd/e$a;->a:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lvd/e$a;->c:Lvd/e;

    .line 8
    .line 9
    invoke-virtual {v0}, Lvd/e;->V()Ljava/lang/Throwable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_0
    invoke-static {v0}, Lyd/e0;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    throw v0
.end method

.method private final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lvd/e$a;->b:Ltd/n;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lvd/e$a;->b:Ltd/n;

    .line 8
    .line 9
    invoke-static {}, Lvd/f;->z()Lyd/f0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lvd/e$a;->a:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v1, p0, Lvd/e$a;->c:Lvd/e;

    .line 16
    .line 17
    invoke-virtual {v1}, Lvd/e;->V()Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    sget-object v1, Lxc/l;->b:Lxc/l$a;

    .line 24
    .line 25
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-static {v1}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v0, v1}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object v2, Lxc/l;->b:Lxc/l$a;

    .line 36
    .line 37
    invoke-static {v1}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v0, v1}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lad/e;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lvd/e$a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {}, Lvd/f;->m()Lyd/f0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lvd/e$a;->a:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {}, Lvd/f;->z()Lyd/f0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lvd/e$a;->c:Lvd/e;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {}, Lvd/e;->l()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lvd/m;

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0}, Lvd/e;->n0()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-direct {p0}, Lvd/e$a;->g()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_1
    invoke-static {}, Lvd/e;->n()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v9

    .line 53
    sget v4, Lvd/f;->b:I

    .line 54
    .line 55
    int-to-long v5, v4

    .line 56
    div-long v5, v9, v5

    .line 57
    .line 58
    int-to-long v7, v4

    .line 59
    rem-long v7, v9, v7

    .line 60
    .line 61
    long-to-int v11, v7

    .line 62
    iget-wide v7, v3, Lyd/c0;->c:J

    .line 63
    .line 64
    cmp-long v4, v7, v5

    .line 65
    .line 66
    if-eqz v4, :cond_3

    .line 67
    .line 68
    invoke-static {v0, v5, v6, v3}, Lvd/e;->i(Lvd/e;JLvd/m;)Lvd/m;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    if-nez v4, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move-object v12, v4

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    move-object v12, v3

    .line 78
    :goto_1
    move-object v3, v0

    .line 79
    move-object v4, v12

    .line 80
    move v5, v11

    .line 81
    move-wide v6, v9

    .line 82
    move-object v8, v1

    .line 83
    invoke-static/range {v3 .. v8}, Lvd/e;->A(Lvd/e;Lvd/m;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {}, Lvd/f;->r()Lyd/f0;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    if-eq v3, v4, :cond_7

    .line 92
    .line 93
    invoke-static {}, Lvd/f;->h()Lyd/f0;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    if-ne v3, v4, :cond_5

    .line 98
    .line 99
    invoke-virtual {v0}, Lvd/e;->f0()J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    cmp-long v3, v9, v3

    .line 104
    .line 105
    if-gez v3, :cond_4

    .line 106
    .line 107
    invoke-virtual {v12}, Lyd/b;->c()V

    .line 108
    .line 109
    .line 110
    :cond_4
    move-object v3, v12

    .line 111
    goto :goto_0

    .line 112
    :cond_5
    invoke-static {}, Lvd/f;->s()Lyd/f0;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-ne v3, v0, :cond_6

    .line 117
    .line 118
    move-object v5, p0

    .line 119
    move-object v6, v12

    .line 120
    move v7, v11

    .line 121
    move-wide v8, v9

    .line 122
    move-object v10, p1

    .line 123
    invoke-direct/range {v5 .. v10}, Lvd/e$a;->f(Lvd/m;IJLad/e;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    return-object p1

    .line 128
    :cond_6
    invoke-virtual {v12}, Lyd/b;->c()V

    .line 129
    .line 130
    .line 131
    iput-object v3, p0, Lvd/e$a;->a:Ljava/lang/Object;

    .line 132
    .line 133
    :goto_2
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    return-object p1

    .line 138
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 139
    .line 140
    const-string v0, "unreachable"

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1
.end method

.method public b(Lyd/c0;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/e$a;->b:Ltd/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ltd/n;->b(Lyd/c0;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lvd/e$a;->b:Ltd/n;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lvd/e$a;->b:Ltd/n;

    .line 8
    .line 9
    iput-object p1, p0, Lvd/e$a;->a:Ljava/lang/Object;

    .line 10
    .line 11
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    iget-object v3, p0, Lvd/e$a;->c:Lvd/e;

    .line 14
    .line 15
    iget-object v4, v3, Lvd/e;->b:Lid/l;

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    invoke-static {v3, v4, p1}, Lvd/e;->e(Lvd/e;Lid/l;Ljava/lang/Object;)Lid/p;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    invoke-static {v0, v2, v1}, Lvd/f;->u(Ltd/l;Ljava/lang/Object;Lid/p;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lvd/e$a;->b:Ltd/n;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lvd/e$a;->b:Ltd/n;

    .line 8
    .line 9
    invoke-static {}, Lvd/f;->z()Lyd/f0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lvd/e$a;->a:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v1, p0, Lvd/e$a;->c:Lvd/e;

    .line 16
    .line 17
    invoke-virtual {v1}, Lvd/e;->V()Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    sget-object v1, Lxc/l;->b:Lxc/l$a;

    .line 24
    .line 25
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-static {v1}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v0, v1}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object v2, Lxc/l;->b:Lxc/l$a;

    .line 36
    .line 37
    invoke-static {v1}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v0, v1}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lvd/e$a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {}, Lvd/f;->m()Lyd/f0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-static {}, Lvd/f;->m()Lyd/f0;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lvd/e$a;->a:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {}, Lvd/f;->z()Lyd/f0;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    iget-object v0, p0, Lvd/e$a;->c:Lvd/e;

    .line 28
    .line 29
    invoke-static {v0}, Lvd/e;->k(Lvd/e;)Ljava/lang/Throwable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lyd/e0;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    throw v0

    .line 38
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v1, "`hasNext()` has not been invoked"

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method
