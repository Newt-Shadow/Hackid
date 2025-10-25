.class final Lwd/v;
.super Lxd/b;
.source "SourceFile"

# interfaces
.implements Lwd/p;
.implements Lwd/d;
.implements Lxd/k;


# static fields
.field private static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Object;

    const-string v1, "_state$volatile"

    const-class v2, Lwd/v;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lwd/v;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxd/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwd/v;->_state$volatile:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method

.method private static final synthetic j()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lwd/v;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final k(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lwd/v;->j()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-static {v0, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return v1

    .line 21
    :cond_0
    :try_start_1
    invoke-static {v0, p2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    const/4 v0, 0x1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return v0

    .line 30
    :cond_1
    :try_start_2
    invoke-static {}, Lwd/v;->j()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget p1, p0, Lwd/v;->d:I

    .line 38
    .line 39
    and-int/lit8 p2, p1, 0x1

    .line 40
    .line 41
    if-nez p2, :cond_5

    .line 42
    .line 43
    add-int/2addr p1, v0

    .line 44
    iput p1, p0, Lwd/v;->d:I

    .line 45
    .line 46
    invoke-virtual {p0}, Lxd/b;->g()[Lxd/d;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    sget-object v2, Lxc/t;->a:Lxc/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    .line 52
    monitor-exit p0

    .line 53
    :goto_0
    check-cast p2, [Lwd/x;

    .line 54
    .line 55
    if-eqz p2, :cond_3

    .line 56
    .line 57
    array-length v2, p2

    .line 58
    move v3, v1

    .line 59
    :goto_1
    if-ge v3, v2, :cond_3

    .line 60
    .line 61
    aget-object v4, p2, v3

    .line 62
    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    invoke-virtual {v4}, Lwd/x;->g()V

    .line 66
    .line 67
    .line 68
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    monitor-enter p0

    .line 72
    :try_start_3
    iget p2, p0, Lwd/v;->d:I

    .line 73
    .line 74
    if-ne p2, p1, :cond_4

    .line 75
    .line 76
    add-int/2addr p1, v0

    .line 77
    iput p1, p0, Lwd/v;->d:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    .line 79
    monitor-exit p0

    .line 80
    return v0

    .line 81
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lxd/b;->g()[Lxd/d;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    sget-object v2, Lxc/t;->a:Lxc/t;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86
    .line 87
    monitor-exit p0

    .line 88
    move v5, p2

    .line 89
    move-object p2, p1

    .line 90
    move p1, v5

    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    monitor-exit p0

    .line 94
    throw p1

    .line 95
    :cond_5
    add-int/lit8 p1, p1, 0x2

    .line 96
    .line 97
    :try_start_5
    iput p1, p0, Lwd/v;->d:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 98
    .line 99
    monitor-exit p0

    .line 100
    return v0

    .line 101
    :catchall_1
    move-exception p1

    .line 102
    monitor-exit p0

    .line 103
    throw p1
.end method


# virtual methods
.method public a(Lad/i;ILvd/a;)Lwd/d;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lwd/w;->d(Lwd/u;Lad/i;ILvd/a;)Lwd/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lxd/m;->a:Lyd/f0;

    .line 4
    .line 5
    :cond_0
    if-nez p2, :cond_1

    .line 6
    .line 7
    sget-object p2, Lxd/m;->a:Lyd/f0;

    .line 8
    .line 9
    :cond_1
    invoke-direct {p0, p1, p2}, Lwd/v;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public collect(Lwd/e;Lad/e;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p2, Lwd/v$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lwd/v$a;

    .line 7
    .line 8
    iget v1, v0, Lwd/v$a;->h:I

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
    iput v1, v0, Lwd/v$a;->h:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lwd/v$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lwd/v$a;-><init>(Lwd/v;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lwd/v$a;->f:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lwd/v$a;->h:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x3

    .line 35
    const/4 v5, 0x2

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    if-eq v2, p1, :cond_3

    .line 40
    .line 41
    if-eq v2, v5, :cond_2

    .line 42
    .line 43
    if-ne v2, v4, :cond_1

    .line 44
    .line 45
    iget-object p1, v0, Lwd/v$a;->e:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v2, v0, Lwd/v$a;->d:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Ltd/t1;

    .line 50
    .line 51
    iget-object v6, v0, Lwd/v$a;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v6, Lwd/x;

    .line 54
    .line 55
    iget-object v7, v0, Lwd/v$a;->b:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v7, Lwd/e;

    .line 58
    .line 59
    iget-object v8, v0, Lwd/v$a;->a:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v8, Lwd/v;

    .line 62
    .line 63
    :try_start_0
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_2

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
    iget-object p1, v0, Lwd/v$a;->e:Ljava/lang/Object;

    .line 76
    .line 77
    iget-object v2, v0, Lwd/v$a;->d:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Ltd/t1;

    .line 80
    .line 81
    iget-object v6, v0, Lwd/v$a;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v6, Lwd/x;

    .line 84
    .line 85
    iget-object v7, v0, Lwd/v$a;->b:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v7, Lwd/e;

    .line 88
    .line 89
    iget-object v8, v0, Lwd/v$a;->a:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v8, Lwd/v;

    .line 92
    .line 93
    :try_start_1
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_3
    iget-object p1, v0, Lwd/v$a;->c:Ljava/lang/Object;

    .line 98
    .line 99
    move-object v6, p1

    .line 100
    check-cast v6, Lwd/x;

    .line 101
    .line 102
    iget-object p1, v0, Lwd/v$a;->b:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p1, Lwd/e;

    .line 105
    .line 106
    iget-object v2, v0, Lwd/v$a;->a:Ljava/lang/Object;

    .line 107
    .line 108
    move-object v8, v2

    .line 109
    check-cast v8, Lwd/v;

    .line 110
    .line 111
    :try_start_2
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :catchall_0
    move-exception p1

    .line 116
    goto :goto_5

    .line 117
    :cond_4
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lxd/b;->c()Lxd/d;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    check-cast p2, Lwd/x;

    .line 125
    .line 126
    move-object v8, p0

    .line 127
    move-object v6, p2

    .line 128
    :goto_1
    :try_start_3
    invoke-interface {v0}, Lad/e;->getContext()Lad/i;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    sget-object v2, Ltd/t1;->t0:Ltd/t1$b;

    .line 133
    .line 134
    invoke-interface {p2, v2}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    check-cast p2, Ltd/t1;

    .line 139
    .line 140
    move-object v7, p1

    .line 141
    move-object v2, p2

    .line 142
    move-object p1, v3

    .line 143
    :cond_5
    :goto_2
    invoke-static {}, Lwd/v;->j()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {p2, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    if-eqz v2, :cond_6

    .line 152
    .line 153
    invoke-static {v2}, Ltd/w1;->e(Ltd/t1;)V

    .line 154
    .line 155
    .line 156
    :cond_6
    if-eqz p1, :cond_7

    .line 157
    .line 158
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    if-nez v9, :cond_a

    .line 163
    .line 164
    :cond_7
    sget-object p1, Lxd/m;->a:Lyd/f0;

    .line 165
    .line 166
    if-ne p2, p1, :cond_8

    .line 167
    .line 168
    move-object p1, v3

    .line 169
    goto :goto_3

    .line 170
    :cond_8
    move-object p1, p2

    .line 171
    :goto_3
    iput-object v8, v0, Lwd/v$a;->a:Ljava/lang/Object;

    .line 172
    .line 173
    iput-object v7, v0, Lwd/v$a;->b:Ljava/lang/Object;

    .line 174
    .line 175
    iput-object v6, v0, Lwd/v$a;->c:Ljava/lang/Object;

    .line 176
    .line 177
    iput-object v2, v0, Lwd/v$a;->d:Ljava/lang/Object;

    .line 178
    .line 179
    iput-object p2, v0, Lwd/v$a;->e:Ljava/lang/Object;

    .line 180
    .line 181
    iput v5, v0, Lwd/v$a;->h:I

    .line 182
    .line 183
    invoke-interface {v7, p1, v0}, Lwd/e;->emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    if-ne p1, v1, :cond_9

    .line 188
    .line 189
    return-object v1

    .line 190
    :cond_9
    move-object p1, p2

    .line 191
    :cond_a
    :goto_4
    invoke-virtual {v6}, Lwd/x;->h()Z

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    if-nez p2, :cond_5

    .line 196
    .line 197
    iput-object v8, v0, Lwd/v$a;->a:Ljava/lang/Object;

    .line 198
    .line 199
    iput-object v7, v0, Lwd/v$a;->b:Ljava/lang/Object;

    .line 200
    .line 201
    iput-object v6, v0, Lwd/v$a;->c:Ljava/lang/Object;

    .line 202
    .line 203
    iput-object v2, v0, Lwd/v$a;->d:Ljava/lang/Object;

    .line 204
    .line 205
    iput-object p1, v0, Lwd/v$a;->e:Ljava/lang/Object;

    .line 206
    .line 207
    iput v4, v0, Lwd/v$a;->h:I

    .line 208
    .line 209
    invoke-virtual {v6, v0}, Lwd/x;->e(Lad/e;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    if-ne p2, v1, :cond_5

    .line 214
    .line 215
    return-object v1

    .line 216
    :goto_5
    invoke-virtual {v8, v6}, Lxd/b;->f(Lxd/d;)V

    .line 217
    .line 218
    .line 219
    throw p1
.end method

.method public bridge synthetic d()Lxd/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lwd/v;->h()Lwd/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic e(I)[Lxd/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lwd/v;->i(I)[Lwd/x;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lwd/v;->setValue(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 5
    .line 6
    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lxd/m;->a:Lyd/f0;

    .line 2
    .line 3
    invoke-static {}, Lwd/v;->j()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne v1, v0, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :cond_0
    return-object v1
.end method

.method protected h()Lwd/x;
    .locals 1

    .line 1
    new-instance v0, Lwd/x;

    .line 2
    .line 3
    invoke-direct {v0}, Lwd/x;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected i(I)[Lwd/x;
    .locals 0

    .line 1
    new-array p1, p1, [Lwd/x;

    .line 2
    .line 3
    return-object p1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lxd/m;->a:Lyd/f0;

    .line 4
    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0, p1}, Lwd/v;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
