.class public Lce/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _availablePermits$volatile:I

.field private final a:I

.field private final b:Lid/p;

.field private volatile synthetic deqIdx$volatile:J

.field private volatile synthetic enqIdx$volatile:J

.field private volatile synthetic head$volatile:Ljava/lang/Object;

.field private volatile synthetic tail$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "head$volatile"

    const-class v1, Lce/i;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lce/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "deqIdx$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lce/i;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "tail$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lce/i;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "enqIdx$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lce/i;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_availablePermits$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lce/i;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lce/i;->a:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez p1, :cond_0

    .line 9
    .line 10
    move v2, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v1

    .line 13
    :goto_0
    if-eqz v2, :cond_3

    .line 14
    .line 15
    if-ltz p2, :cond_1

    .line 16
    .line 17
    if-gt p2, p1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v0, v1

    .line 21
    :goto_1
    if-eqz v0, :cond_2

    .line 22
    .line 23
    new-instance v0, Lce/k;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x2

    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    invoke-direct {v0, v3, v4, v1, v2}, Lce/k;-><init>(JLce/k;I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lce/i;->head$volatile:Ljava/lang/Object;

    .line 33
    .line 34
    iput-object v0, p0, Lce/i;->tail$volatile:Ljava/lang/Object;

    .line 35
    .line 36
    sub-int/2addr p1, p2

    .line 37
    iput p1, p0, Lce/i;->_availablePermits$volatile:I

    .line 38
    .line 39
    new-instance p1, Lce/h;

    .line 40
    .line 41
    invoke-direct {p1, p0}, Lce/h;-><init>(Lce/i;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lce/i;->b:Lid/p;

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v0, "The number of acquired permits should be in 0.."

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p2

    .line 74
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v0, "Semaphore should have at least 1 permit, but had "

    .line 80
    .line 81
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p2
.end method

.method public static synthetic e(Lce/i;Ljava/lang/Throwable;Lxc/t;Lad/i;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lce/i;->p(Lce/i;Ljava/lang/Throwable;Lxc/t;Lad/i;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method private final g(Ltd/s2;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {}, Lce/i;->n()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lce/k;

    .line 14
    .line 15
    invoke-static {}, Lce/i;->l()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    sget-object v5, Lce/i$a;->a:Lce/i$a;

    .line 24
    .line 25
    invoke-static {}, Lce/i;->n()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-static {}, Lce/j;->f()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    int-to-long v7, v7

    .line 34
    div-long v7, v3, v7

    .line 35
    .line 36
    :cond_0
    invoke-static {v2, v7, v8, v5}, Lyd/a;->c(Lyd/c0;JLid/Function2;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-static {v9}, Lyd/d0;->c(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    if-nez v10, :cond_6

    .line 45
    .line 46
    invoke-static {v9}, Lyd/d0;->b(Ljava/lang/Object;)Lyd/c0;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    :cond_1
    :goto_0
    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v13

    .line 54
    check-cast v13, Lyd/c0;

    .line 55
    .line 56
    iget-wide v14, v13, Lyd/c0;->c:J

    .line 57
    .line 58
    iget-wide v11, v10, Lyd/c0;->c:J

    .line 59
    .line 60
    cmp-long v11, v14, v11

    .line 61
    .line 62
    if-ltz v11, :cond_3

    .line 63
    .line 64
    :cond_2
    :goto_1
    const/4 v10, 0x1

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    invoke-virtual {v10}, Lyd/c0;->u()Z

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    if-nez v11, :cond_4

    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    invoke-static {v6, v0, v13, v10}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    if-eqz v11, :cond_5

    .line 79
    .line 80
    invoke-virtual {v13}, Lyd/c0;->p()Z

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    if-eqz v10, :cond_2

    .line 85
    .line 86
    invoke-virtual {v13}, Lyd/b;->n()V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :goto_2
    if-eqz v10, :cond_0

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    invoke-virtual {v10}, Lyd/c0;->p()Z

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    if-eqz v11, :cond_1

    .line 98
    .line 99
    invoke-virtual {v10}, Lyd/b;->n()V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    :goto_3
    invoke-static {v9}, Lyd/d0;->b(Ljava/lang/Object;)Lyd/c0;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Lce/k;

    .line 108
    .line 109
    invoke-static {}, Lce/j;->f()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    int-to-long v5, v5

    .line 114
    rem-long/2addr v3, v5

    .line 115
    long-to-int v3, v3

    .line 116
    invoke-virtual {v2}, Lce/k;->v()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    const/4 v5, 0x0

    .line 121
    invoke-static {v4, v3, v5, v1}, Lvd/l;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_7

    .line 126
    .line 127
    invoke-interface {v1, v2, v3}, Ltd/s2;->b(Lyd/c0;I)V

    .line 128
    .line 129
    .line 130
    const/4 v1, 0x1

    .line 131
    return v1

    .line 132
    :cond_7
    invoke-static {}, Lce/j;->e()Lyd/f0;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-static {}, Lce/j;->g()Lyd/f0;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v2}, Lce/k;->v()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v2, v3, v4, v5}, Lvd/l;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_9

    .line 149
    .line 150
    instance-of v2, v1, Ltd/l;

    .line 151
    .line 152
    if-eqz v2, :cond_8

    .line 153
    .line 154
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    .line 155
    .line 156
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    check-cast v1, Ltd/l;

    .line 160
    .line 161
    sget-object v2, Lxc/t;->a:Lxc/t;

    .line 162
    .line 163
    iget-object v3, v0, Lce/i;->b:Lid/p;

    .line 164
    .line 165
    invoke-interface {v1, v2, v3}, Ltd/l;->r(Ljava/lang/Object;Lid/p;)V

    .line 166
    .line 167
    .line 168
    const/4 v1, 0x1

    .line 169
    return v1

    .line 170
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 171
    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v4, "unexpected: "

    .line 178
    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw v2

    .line 197
    :cond_9
    const/4 v1, 0x0

    .line 198
    return v1
.end method

.method private final h()V
    .locals 3

    .line 1
    :cond_0
    invoke-static {}, Lce/i;->o()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lce/i;->a:I

    .line 10
    .line 11
    if-le v0, v1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lce/i;->o()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v2, p0, Lce/i;->a:I

    .line 18
    .line 19
    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method private final i()I
    .locals 2

    .line 1
    :cond_0
    invoke-static {}, Lce/i;->o()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lce/i;->a:I

    .line 10
    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    return v0
.end method

.method private static final synthetic k()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lce/i;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private static final synthetic l()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lce/i;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private static final synthetic m()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lce/i;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private static final synthetic n()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lce/i;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private static final synthetic o()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lce/i;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private static final p(Lce/i;Ljava/lang/Throwable;Lxc/t;Lad/i;)Lxc/t;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lce/i;->q()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 5
    .line 6
    return-object p0
.end method

.method private final s(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ltd/l;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p1, Ltd/l;

    .line 11
    .line 12
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iget-object v2, p0, Lce/i;->b:Lid/p;

    .line 16
    .line 17
    invoke-interface {p1, v0, v1, v2}, Ltd/l;->d(Ljava/lang/Object;Ljava/lang/Object;Lid/p;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p1, v0}, Ltd/l;->A(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    return p1

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "unexpected: "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method private final t()Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-static {}, Lce/i;->m()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lce/k;

    .line 11
    .line 12
    invoke-static {}, Lce/i;->k()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-static {}, Lce/j;->f()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    int-to-long v4, v4

    .line 25
    div-long v4, v2, v4

    .line 26
    .line 27
    sget-object v6, Lce/i$b;->a:Lce/i$b;

    .line 28
    .line 29
    invoke-static {}, Lce/i;->m()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    :cond_0
    invoke-static {v1, v4, v5, v6}, Lyd/a;->c(Lyd/c0;JLid/Function2;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-static {v8}, Lyd/d0;->c(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    if-nez v9, :cond_6

    .line 42
    .line 43
    invoke-static {v8}, Lyd/d0;->b(Ljava/lang/Object;)Lyd/c0;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    :cond_1
    :goto_0
    invoke-virtual {v7, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    check-cast v12, Lyd/c0;

    .line 52
    .line 53
    iget-wide v13, v12, Lyd/c0;->c:J

    .line 54
    .line 55
    iget-wide v10, v9, Lyd/c0;->c:J

    .line 56
    .line 57
    cmp-long v10, v13, v10

    .line 58
    .line 59
    if-ltz v10, :cond_3

    .line 60
    .line 61
    :cond_2
    :goto_1
    const/4 v9, 0x1

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    invoke-virtual {v9}, Lyd/c0;->u()Z

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-nez v10, :cond_4

    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    invoke-static {v7, p0, v12, v9}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    if-eqz v10, :cond_5

    .line 76
    .line 77
    invoke-virtual {v12}, Lyd/c0;->p()Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_2

    .line 82
    .line 83
    invoke-virtual {v12}, Lyd/b;->n()V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :goto_2
    if-eqz v9, :cond_0

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_5
    invoke-virtual {v9}, Lyd/c0;->p()Z

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    if-eqz v10, :cond_1

    .line 95
    .line 96
    invoke-virtual {v9}, Lyd/b;->n()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    :goto_3
    invoke-static {v8}, Lyd/d0;->b(Ljava/lang/Object;)Lyd/c0;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Lce/k;

    .line 105
    .line 106
    invoke-virtual {v1}, Lyd/b;->c()V

    .line 107
    .line 108
    .line 109
    iget-wide v6, v1, Lyd/c0;->c:J

    .line 110
    .line 111
    cmp-long v4, v6, v4

    .line 112
    .line 113
    if-lez v4, :cond_7

    .line 114
    .line 115
    const/4 v4, 0x0

    .line 116
    return v4

    .line 117
    :cond_7
    invoke-static {}, Lce/j;->f()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    int-to-long v4, v4

    .line 122
    rem-long/2addr v2, v4

    .line 123
    long-to-int v2, v2

    .line 124
    invoke-static {}, Lce/j;->e()Lyd/f0;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v1}, Lce/k;->v()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    if-nez v3, :cond_a

    .line 137
    .line 138
    invoke-static {}, Lce/j;->d()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    const/4 v10, 0x0

    .line 143
    :goto_4
    if-ge v10, v3, :cond_9

    .line 144
    .line 145
    invoke-virtual {v1}, Lce/k;->v()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-static {}, Lce/j;->g()Lyd/f0;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    if-ne v4, v5, :cond_8

    .line 158
    .line 159
    const/4 v4, 0x1

    .line 160
    return v4

    .line 161
    :cond_8
    const/4 v4, 0x1

    .line 162
    add-int/lit8 v10, v10, 0x1

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_9
    const/4 v4, 0x1

    .line 166
    invoke-static {}, Lce/j;->e()Lyd/f0;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-static {}, Lce/j;->b()Lyd/f0;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {v1}, Lce/k;->v()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v1, v2, v3, v5}, Lvd/l;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    xor-int/2addr v1, v4

    .line 183
    return v1

    .line 184
    :cond_a
    invoke-static {}, Lce/j;->c()Lyd/f0;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    if-ne v3, v1, :cond_b

    .line 189
    .line 190
    const/4 v1, 0x0

    .line 191
    return v1

    .line 192
    :cond_b
    invoke-direct {p0, v3}, Lce/i;->s(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    return v1
.end method


# virtual methods
.method protected final f(Ltd/l;)V
    .locals 2

    .line 1
    :cond_0
    invoke-direct {p0}, Lce/i;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 8
    .line 9
    iget-object v1, p0, Lce/i;->b:Lid/p;

    .line 10
    .line 11
    invoke-interface {p1, v0, v1}, Ltd/l;->r(Ljava/lang/Object;Lid/p;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.Waiter"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    move-object v0, p1

    .line 21
    check-cast v0, Ltd/s2;

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lce/i;->g(Ltd/s2;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public final j()I
    .locals 2

    .line 1
    invoke-static {}, Lce/i;->o()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public final q()V
    .locals 3

    .line 1
    :cond_0
    invoke-static {}, Lce/i;->o()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lce/i;->a:I

    .line 10
    .line 11
    if-ge v0, v1, :cond_2

    .line 12
    .line 13
    if-ltz v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-direct {p0}, Lce/i;->t()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    invoke-direct {p0}, Lce/i;->h()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "The number of released permits cannot be greater than "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lce/i;->a:I

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method

.method public final r()Z
    .locals 3

    .line 1
    :cond_0
    :goto_0
    invoke-static {}, Lce/i;->o()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lce/i;->a:I

    .line 10
    .line 11
    if-le v0, v1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lce/i;->h()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    if-gtz v0, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return v0

    .line 21
    :cond_2
    invoke-static {}, Lce/i;->o()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    add-int/lit8 v2, v0, -0x1

    .line 26
    .line 27
    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    return v0
.end method
