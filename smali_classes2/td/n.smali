.class public Ltd/n;
.super Ltd/x0;
.source "SourceFile"

# interfaces
.implements Ltd/l;
.implements Lkotlin/coroutines/jvm/internal/e;
.implements Ltd/s2;


# static fields
.field private static final synthetic f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decisionAndIndex$volatile:I

.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field private final d:Lad/e;

.field private final e:Lad/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "_decisionAndIndex$volatile"

    const-class v1, Ltd/n;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Ltd/n;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "_state$volatile"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ltd/n;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ltd/n;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lad/e;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ltd/x0;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltd/n;->d:Lad/e;

    .line 5
    .line 6
    invoke-interface {p1}, Lad/e;->getContext()Lad/i;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Ltd/n;->e:Lad/i;

    .line 11
    .line 12
    const p1, 0x1fffffff

    .line 13
    .line 14
    .line 15
    iput p1, p0, Ltd/n;->_decisionAndIndex$volatile:I

    .line 16
    .line 17
    sget-object p1, Ltd/d;->a:Ltd/d;

    .line 18
    .line 19
    iput-object p1, p0, Ltd/n;->_state$volatile:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method private static final synthetic B()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Ltd/n;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private static final synthetic C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Ltd/n;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private static final synthetic D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Ltd/n;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final F()Ltd/a1;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ltd/n;->getContext()Lad/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ltd/t1;->t0:Ltd/t1$b;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ltd/t1;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    new-instance v2, Ltd/r;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Ltd/r;-><init>(Ltd/n;)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static {v0, v4, v2, v3, v1}, Ltd/w1;->g(Ltd/t1;ZLtd/y1;ILjava/lang/Object;)Ltd/a1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {}, Ltd/n;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2, p0, v1, v0}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method private final G(Ljava/lang/Object;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {}, Ltd/n;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v11

    .line 13
    instance-of v3, v11, Ltd/d;

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-static {}, Ltd/n;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3, v0, v11, v1}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    instance-of v3, v11, Ltd/k;

    .line 29
    .line 30
    if-nez v3, :cond_e

    .line 31
    .line 32
    instance-of v3, v11, Lyd/c0;

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_2
    instance-of v3, v11, Ltd/a0;

    .line 39
    .line 40
    if-eqz v3, :cond_8

    .line 41
    .line 42
    move-object v2, v11

    .line 43
    check-cast v2, Ltd/a0;

    .line 44
    .line 45
    invoke-virtual {v2}, Ltd/a0;->c()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_3

    .line 50
    .line 51
    invoke-direct {v0, v1, v11}, Ltd/n;->K(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    instance-of v4, v11, Ltd/q;

    .line 55
    .line 56
    if-eqz v4, :cond_7

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    move-object v2, v4

    .line 63
    :goto_1
    if-eqz v2, :cond_5

    .line 64
    .line 65
    iget-object v4, v2, Ltd/a0;->a:Ljava/lang/Throwable;

    .line 66
    .line 67
    :cond_5
    instance-of v2, v1, Ltd/k;

    .line 68
    .line 69
    if-eqz v2, :cond_6

    .line 70
    .line 71
    check-cast v1, Ltd/k;

    .line 72
    .line 73
    invoke-virtual {v0, v1, v4}, Ltd/n;->m(Ltd/k;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_6
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>"

    .line 78
    .line 79
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    check-cast v1, Lyd/c0;

    .line 83
    .line 84
    invoke-direct {v0, v1, v4}, Ltd/n;->p(Lyd/c0;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :cond_7
    :goto_2
    return-void

    .line 88
    :cond_8
    instance-of v3, v11, Ltd/z;

    .line 89
    .line 90
    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler"

    .line 91
    .line 92
    if-eqz v3, :cond_c

    .line 93
    .line 94
    move-object v12, v11

    .line 95
    check-cast v12, Ltd/z;

    .line 96
    .line 97
    iget-object v3, v12, Ltd/z;->b:Ltd/k;

    .line 98
    .line 99
    if-eqz v3, :cond_9

    .line 100
    .line 101
    invoke-direct {v0, v1, v11}, Ltd/n;->K(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_9
    instance-of v3, v1, Lyd/c0;

    .line 105
    .line 106
    if-eqz v3, :cond_a

    .line 107
    .line 108
    return-void

    .line 109
    :cond_a
    invoke-static {v1, v4}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    move-object v14, v1

    .line 113
    check-cast v14, Ltd/k;

    .line 114
    .line 115
    invoke-virtual {v12}, Ltd/z;->c()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_b

    .line 120
    .line 121
    iget-object v1, v12, Ltd/z;->e:Ljava/lang/Throwable;

    .line 122
    .line 123
    invoke-virtual {v0, v14, v1}, Ltd/n;->m(Ltd/k;Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_b
    const/4 v13, 0x0

    .line 128
    const/4 v15, 0x0

    .line 129
    const/16 v16, 0x0

    .line 130
    .line 131
    const/16 v17, 0x0

    .line 132
    .line 133
    const/16 v18, 0x1d

    .line 134
    .line 135
    const/16 v19, 0x0

    .line 136
    .line 137
    invoke-static/range {v12 .. v19}, Ltd/z;->b(Ltd/z;Ljava/lang/Object;Ltd/k;Lid/p;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Ltd/z;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-static {}, Ltd/n;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-static {v4, v0, v11, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_0

    .line 150
    .line 151
    return-void

    .line 152
    :cond_c
    instance-of v3, v1, Lyd/c0;

    .line 153
    .line 154
    if-eqz v3, :cond_d

    .line 155
    .line 156
    return-void

    .line 157
    :cond_d
    invoke-static {v1, v4}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    move-object v5, v1

    .line 161
    check-cast v5, Ltd/k;

    .line 162
    .line 163
    new-instance v12, Ltd/z;

    .line 164
    .line 165
    const/4 v6, 0x0

    .line 166
    const/4 v7, 0x0

    .line 167
    const/4 v8, 0x0

    .line 168
    const/16 v9, 0x1c

    .line 169
    .line 170
    const/4 v10, 0x0

    .line 171
    move-object v3, v12

    .line 172
    move-object v4, v11

    .line 173
    invoke-direct/range {v3 .. v10}, Ltd/z;-><init>(Ljava/lang/Object;Ltd/k;Lid/p;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 174
    .line 175
    .line 176
    invoke-static {}, Ltd/n;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-static {v3, v0, v11, v12}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_0

    .line 185
    .line 186
    return-void

    .line 187
    :cond_e
    :goto_3
    invoke-direct {v0, v1, v11}, Ltd/n;->K(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_0
.end method

.method private final J()Z
    .locals 2

    .line 1
    iget v0, p0, Ltd/x0;->c:I

    .line 2
    .line 3
    invoke-static {v0}, Ltd/y0;->c(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ltd/n;->d:Lad/e;

    .line 10
    .line 11
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Lyd/h;

    .line 17
    .line 18
    invoke-virtual {v0}, Lyd/h;->p()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method private final K(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ", already has "

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method private static final Q(Lid/l;Ljava/lang/Throwable;Ljava/lang/Object;Lad/i;)Lxc/t;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic S(Ltd/n;Ljava/lang/Object;ILid/p;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ltd/n;->R(Ljava/lang/Object;ILid/p;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: resumeImpl"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method private final T(Ltd/g2;Ljava/lang/Object;ILid/p;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Ltd/a0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-static {p3}, Ltd/y0;->b(I)Z

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    if-nez p3, :cond_1

    .line 11
    .line 12
    if-nez p5, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    if-nez p4, :cond_2

    .line 16
    .line 17
    instance-of p3, p1, Ltd/k;

    .line 18
    .line 19
    if-nez p3, :cond_2

    .line 20
    .line 21
    if-eqz p5, :cond_4

    .line 22
    .line 23
    :cond_2
    new-instance p3, Ltd/z;

    .line 24
    .line 25
    instance-of v0, p1, Ltd/k;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    check-cast p1, Ltd/k;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    const/4 p1, 0x0

    .line 33
    :goto_0
    move-object v2, p1

    .line 34
    const/4 v5, 0x0

    .line 35
    const/16 v6, 0x10

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    move-object v0, p3

    .line 39
    move-object v1, p2

    .line 40
    move-object v3, p4

    .line 41
    move-object v4, p5

    .line 42
    invoke-direct/range {v0 .. v7}, Ltd/z;-><init>(Ljava/lang/Object;Ltd/k;Lid/p;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    move-object p2, p3

    .line 46
    :cond_4
    :goto_1
    return-object p2
.end method

.method private final U()Z
    .locals 6

    .line 1
    invoke-static {}, Ltd/n;->B()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    shr-int/lit8 v2, v1, 0x1d

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    if-ne v2, v3, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v1, "Already resumed"

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_2
    invoke-static {}, Ltd/n;->B()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const v4, 0x1fffffff

    .line 35
    .line 36
    .line 37
    and-int/2addr v4, v1

    .line 38
    const/high16 v5, 0x40000000    # 2.0f

    .line 39
    .line 40
    add-int/2addr v5, v4

    .line 41
    invoke-virtual {v2, p0, v1, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    return v3
.end method

.method private final V(Ljava/lang/Object;Ljava/lang/Object;Lid/p;)Lyd/f0;
    .locals 9

    .line 1
    invoke-static {}, Ltd/n;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    instance-of v2, v1, Ltd/g2;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    move-object v4, v1

    .line 14
    check-cast v4, Ltd/g2;

    .line 15
    .line 16
    iget v6, p0, Ltd/x0;->c:I

    .line 17
    .line 18
    move-object v3, p0

    .line 19
    move-object v5, p1

    .line 20
    move-object v7, p3

    .line 21
    move-object v8, p2

    .line 22
    invoke-direct/range {v3 .. v8}, Ltd/n;->T(Ltd/g2;Ljava/lang/Object;ILid/p;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {}, Ltd/n;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-direct {p0}, Ltd/n;->t()V

    .line 37
    .line 38
    .line 39
    sget-object p1, Ltd/o;->a:Lyd/f0;

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_1
    instance-of p1, v1, Ltd/z;

    .line 43
    .line 44
    const/4 p3, 0x0

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    check-cast v1, Ltd/z;

    .line 50
    .line 51
    iget-object p1, v1, Ltd/z;->d:Ljava/lang/Object;

    .line 52
    .line 53
    if-ne p1, p2, :cond_2

    .line 54
    .line 55
    sget-object p3, Ltd/o;->a:Lyd/f0;

    .line 56
    .line 57
    :cond_2
    return-object p3
.end method

.method private final W()Z
    .locals 5

    .line 1
    invoke-static {}, Ltd/n;->B()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    shr-int/lit8 v2, v1, 0x1d

    .line 10
    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-ne v2, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v1, "Already suspended"

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_2
    invoke-static {}, Ltd/n;->B()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const v3, 0x1fffffff

    .line 35
    .line 36
    .line 37
    and-int/2addr v3, v1

    .line 38
    const/high16 v4, 0x20000000

    .line 39
    .line 40
    add-int/2addr v4, v3

    .line 41
    invoke-virtual {v2, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    return v0
.end method

.method public static synthetic j(Lid/l;Ljava/lang/Throwable;Ljava/lang/Object;Lad/i;)Lxc/t;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Ltd/n;->Q(Lid/l;Ljava/lang/Throwable;Ljava/lang/Object;Lad/i;)Lxc/t;

    move-result-object p0

    return-object p0
.end method

.method private final k(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Already resumed, but proposed with update "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method private final p(Lyd/c0;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-static {}, Ltd/n;->B()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

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
    const v1, 0x1fffffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v0, v1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p0}, Ltd/n;->getContext()Lad/i;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v0, p2, v1}, Lyd/c0;->s(ILjava/lang/Throwable;Lad/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    invoke-virtual {p0}, Ltd/n;->getContext()Lad/i;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    new-instance v0, Ltd/b0;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "Exception in invokeOnCancellation handler for "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, v1, p1}, Ltd/b0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p2, v0}, Ltd/k0;->a(Lad/i;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    return-void

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string p2, "The index for Segment.onCancellation(..) is broken"

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1
.end method

.method private final q(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Ltd/n;->J()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Ltd/n;->d:Lad/e;

    .line 10
    .line 11
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Lyd/h;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lyd/h;->q(Ljava/lang/Throwable;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method private final t()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ltd/n;->J()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ltd/n;->s()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final u(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ltd/n;->U()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p0, p1}, Ltd/y0;->a(Ltd/x0;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final w()Ltd/a1;
    .locals 1

    .line 1
    invoke-static {}, Ltd/n;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ltd/a1;

    .line 10
    .line 11
    return-object v0
.end method

.method private final z()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltd/n;->y()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ltd/g2;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v0, "Active"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, v0, Ltd/q;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v0, "Cancelled"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string v0, "Completed"

    .line 20
    .line 21
    :goto_0
    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p1, p0, Ltd/x0;->c:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Ltd/n;->u(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public E()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ltd/n;->F()Ltd/a1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Ltd/n;->I()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ltd/a1;->dispose()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ltd/n;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Ltd/f2;->a:Ltd/f2;

    .line 22
    .line 23
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final H(Ltd/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ltd/n;->G(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public I()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ltd/n;->y()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Ltd/g2;

    .line 6
    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method protected L()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public final M(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ltd/n;->q(Ljava/lang/Throwable;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Ltd/n;->o(Ljava/lang/Throwable;)Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ltd/n;->t()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final N()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltd/n;->d:Lad/e;

    .line 2
    .line 3
    instance-of v1, v0, Lyd/h;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lyd/h;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lyd/h;->t(Ltd/l;)Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0}, Ltd/n;->s()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ltd/n;->o(Ljava/lang/Throwable;)Z

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_1
    return-void
.end method

.method public final O()Z
    .locals 2

    .line 1
    invoke-static {}, Ltd/n;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Ltd/z;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Ltd/z;

    .line 14
    .line 15
    iget-object v0, v0, Ltd/z;->d:Ljava/lang/Object;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Ltd/n;->s()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    return v0

    .line 24
    :cond_0
    invoke-static {}, Ltd/n;->B()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const v1, 0x1fffffff

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ltd/n;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget-object v1, Ltd/d;->a:Ltd/d;

    .line 39
    .line 40
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    return v0
.end method

.method public P(Ljava/lang/Object;Lid/l;)V
    .locals 2

    .line 1
    iget v0, p0, Ltd/x0;->c:I

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance v1, Ltd/m;

    .line 6
    .line 7
    invoke-direct {v1, p2}, Ltd/m;-><init>(Lid/l;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Ltd/n;->R(Ljava/lang/Object;ILid/p;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final R(Ljava/lang/Object;ILid/p;)V
    .locals 9

    .line 1
    invoke-static {}, Ltd/n;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    instance-of v2, v1, Ltd/g2;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    move-object v4, v1

    .line 14
    check-cast v4, Ltd/g2;

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    move-object v3, p0

    .line 18
    move-object v5, p1

    .line 19
    move v6, p2

    .line 20
    move-object v7, p3

    .line 21
    invoke-direct/range {v3 .. v8}, Ltd/n;->T(Ltd/g2;Ljava/lang/Object;ILid/p;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {}, Ltd/n;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-direct {p0}, Ltd/n;->t()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p2}, Ltd/n;->u(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    instance-of p2, v1, Ltd/q;

    .line 43
    .line 44
    if-eqz p2, :cond_3

    .line 45
    .line 46
    check-cast v1, Ltd/q;

    .line 47
    .line 48
    invoke-virtual {v1}, Ltd/q;->e()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    if-eqz p3, :cond_2

    .line 55
    .line 56
    iget-object p2, v1, Ltd/a0;->a:Ljava/lang/Throwable;

    .line 57
    .line 58
    invoke-virtual {p0, p3, p2, p1}, Ltd/n;->n(Lid/p;Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void

    .line 62
    :cond_3
    invoke-direct {p0, p1}, Ltd/n;->k(Ljava/lang/Object;)Ljava/lang/Void;

    .line 63
    .line 64
    .line 65
    new-instance p1, Lxc/c;

    .line 66
    .line 67
    invoke-direct {p1}, Lxc/c;-><init>()V

    .line 68
    .line 69
    .line 70
    throw p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Ltd/n;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v10

    .line 11
    instance-of v2, v10, Ltd/g2;

    .line 12
    .line 13
    if-nez v2, :cond_4

    .line 14
    .line 15
    instance-of v2, v10, Ltd/a0;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    instance-of v2, v10, Ltd/z;

    .line 21
    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    move-object v2, v10

    .line 25
    check-cast v2, Ltd/z;

    .line 26
    .line 27
    invoke-virtual {v2}, Ltd/z;->c()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    xor-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    const/4 v12, 0x0

    .line 36
    const/4 v13, 0x0

    .line 37
    const/4 v14, 0x0

    .line 38
    const/4 v15, 0x0

    .line 39
    const/16 v17, 0xf

    .line 40
    .line 41
    const/16 v18, 0x0

    .line 42
    .line 43
    move-object v11, v2

    .line 44
    move-object/from16 v16, p2

    .line 45
    .line 46
    invoke-static/range {v11 .. v18}, Ltd/z;->b(Ltd/z;Ljava/lang/Object;Ltd/k;Lid/p;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Ltd/z;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {}, Ltd/n;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {v4, v0, v10, v3}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    move-object/from16 v11, p2

    .line 59
    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    invoke-virtual {v2, v0, v11}, Ltd/z;->d(Ltd/n;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v2, "Must be called at most once"

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v1

    .line 78
    :cond_3
    move-object/from16 v11, p2

    .line 79
    .line 80
    invoke-static {}, Ltd/n;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    new-instance v13, Ltd/z;

    .line 85
    .line 86
    const/4 v4, 0x0

    .line 87
    const/4 v5, 0x0

    .line 88
    const/4 v6, 0x0

    .line 89
    const/16 v8, 0xe

    .line 90
    .line 91
    const/4 v9, 0x0

    .line 92
    move-object v2, v13

    .line 93
    move-object v3, v10

    .line 94
    move-object/from16 v7, p2

    .line 95
    .line 96
    invoke-direct/range {v2 .. v9}, Ltd/z;-><init>(Ljava/lang/Object;Ltd/k;Lid/p;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v12, v0, v10, v13}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_0

    .line 104
    .line 105
    return-void

    .line 106
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    const-string v2, "Not completed"

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v1
.end method

.method public b(Lyd/c0;I)V
    .locals 4

    .line 1
    invoke-static {}, Ltd/n;->B()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0x1fffffff

    .line 10
    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-ne v3, v2, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-eqz v2, :cond_2

    .line 20
    .line 21
    shr-int/lit8 v2, v1, 0x1d

    .line 22
    .line 23
    shl-int/lit8 v2, v2, 0x1d

    .line 24
    .line 25
    add-int/2addr v2, p2

    .line 26
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-direct {p0, p1}, Ltd/n;->G(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string p2, "invokeOnCancellation should be called at most once"

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public final c()Lad/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ltd/n;->d:Lad/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;Lid/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ltd/n;->V(Ljava/lang/Object;Ljava/lang/Object;Lid/p;)Lyd/f0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ltd/x0;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return-object p1
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Ltd/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ltd/z;

    .line 6
    .line 7
    iget-object p1, p1, Ltd/z;->a:Ljava/lang/Object;

    .line 8
    .line 9
    :cond_0
    return-object p1
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/e;
    .locals 2

    .line 1
    iget-object v0, p0, Ltd/n;->d:Lad/e;

    .line 2
    .line 3
    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/e;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lkotlin/coroutines/jvm/internal/e;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getContext()Lad/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ltd/n;->e:Lad/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ltd/n;->y()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public i(Ltd/i0;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ltd/n;->d:Lad/e;

    .line 2
    .line 3
    instance-of v1, v0, Lyd/h;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lyd/h;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v2

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v2, v0, Lyd/h;->d:Ltd/i0;

    .line 15
    .line 16
    :cond_1
    if-ne v2, p1, :cond_2

    .line 17
    .line 18
    const/4 p1, 0x4

    .line 19
    goto :goto_1

    .line 20
    :cond_2
    iget p1, p0, Ltd/x0;->c:I

    .line 21
    .line 22
    :goto_1
    move v2, p1

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v0, p0

    .line 27
    move-object v1, p2

    .line 28
    invoke-static/range {v0 .. v5}, Ltd/n;->S(Ltd/n;Ljava/lang/Object;ILid/p;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public l(Lid/l;)V
    .locals 1

    .line 1
    new-instance v0, Ltd/k$a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ltd/k$a;-><init>(Lid/l;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Ltd/p;->c(Ltd/l;Ltd/k;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final m(Ltd/k;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Ltd/k;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p0}, Ltd/n;->getContext()Lad/i;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    new-instance v0, Ltd/b0;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "Exception in invokeOnCancellation handler for "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1, p1}, Ltd/b0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p2, v0}, Ltd/k0;->a(Lad/i;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public final n(Lid/p;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ltd/n;->getContext()Lad/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, p2, p3, v0}, Lid/p;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p0}, Ltd/n;->getContext()Lad/i;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance p3, Ltd/b0;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "Exception in resume onCancellation handler for "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p3, v0, p1}, Ltd/b0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p2, p3}, Ltd/k0;->a(Lad/i;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public o(Ljava/lang/Throwable;)Z
    .locals 6

    .line 1
    invoke-static {}, Ltd/n;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    instance-of v2, v1, Ltd/g2;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    return v3

    .line 15
    :cond_1
    new-instance v2, Ltd/q;

    .line 16
    .line 17
    instance-of v4, v1, Ltd/k;

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    if-nez v4, :cond_2

    .line 21
    .line 22
    instance-of v4, v1, Lyd/c0;

    .line 23
    .line 24
    if-eqz v4, :cond_3

    .line 25
    .line 26
    :cond_2
    move v3, v5

    .line 27
    :cond_3
    invoke-direct {v2, p0, p1, v3}, Ltd/q;-><init>(Lad/e;Ljava/lang/Throwable;Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ltd/n;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    move-object v0, v1

    .line 41
    check-cast v0, Ltd/g2;

    .line 42
    .line 43
    instance-of v2, v0, Ltd/k;

    .line 44
    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    check-cast v1, Ltd/k;

    .line 48
    .line 49
    invoke-virtual {p0, v1, p1}, Ltd/n;->m(Ltd/k;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    instance-of v0, v0, Lyd/c0;

    .line 54
    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    check-cast v1, Lyd/c0;

    .line 58
    .line 59
    invoke-direct {p0, v1, p1}, Ltd/n;->p(Lyd/c0;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :cond_5
    :goto_0
    invoke-direct {p0}, Ltd/n;->t()V

    .line 63
    .line 64
    .line 65
    iget p1, p0, Ltd/x0;->c:I

    .line 66
    .line 67
    invoke-direct {p0, p1}, Ltd/n;->u(I)V

    .line 68
    .line 69
    .line 70
    return v5
.end method

.method public r(Ljava/lang/Object;Lid/p;)V
    .locals 1

    .line 1
    iget v0, p0, Ltd/x0;->c:I

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, Ltd/n;->R(Ljava/lang/Object;ILid/p;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {p1, p0}, Ltd/c0;->c(Ljava/lang/Object;Ltd/l;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    iget v2, p0, Ltd/x0;->c:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v0, p0

    .line 11
    invoke-static/range {v0 .. v5}, Ltd/n;->S(Ltd/n;Ljava/lang/Object;ILid/p;ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ltd/n;->w()Ltd/a1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {v0}, Ltd/a1;->dispose()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ltd/n;->C()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Ltd/f2;->a:Ltd/f2;

    .line 16
    .line 17
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ltd/n;->L()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x28

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ltd/n;->d:Lad/e;

    .line 19
    .line 20
    invoke-static {v1}, Ltd/p0;->c(Lad/e;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "){"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Ltd/n;->z()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "}@"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Ltd/p0;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method

.method public v(Ltd/t1;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-interface {p1}, Ltd/t1;->u()Ljava/util/concurrent/CancellationException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final x()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0}, Ltd/n;->J()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Ltd/n;->W()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-direct {p0}, Ltd/n;->w()Ltd/a1;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Ltd/n;->F()Ltd/a1;

    .line 18
    .line 19
    .line 20
    :cond_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Ltd/n;->N()V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_2
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0}, Ltd/n;->N()V

    .line 33
    .line 34
    .line 35
    :cond_3
    invoke-virtual {p0}, Ltd/n;->y()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    instance-of v1, v0, Ltd/a0;

    .line 40
    .line 41
    if-nez v1, :cond_6

    .line 42
    .line 43
    iget v1, p0, Ltd/x0;->c:I

    .line 44
    .line 45
    invoke-static {v1}, Ltd/y0;->b(I)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    invoke-virtual {p0}, Ltd/n;->getContext()Lad/i;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    sget-object v2, Ltd/t1;->t0:Ltd/t1$b;

    .line 56
    .line 57
    invoke-interface {v1, v2}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ltd/t1;

    .line 62
    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    invoke-interface {v1}, Ltd/t1;->isActive()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    invoke-interface {v1}, Ltd/t1;->u()Ljava/util/concurrent/CancellationException;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p0, v0, v1}, Ltd/n;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    throw v1

    .line 80
    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Ltd/n;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0

    .line 85
    :cond_6
    check-cast v0, Ltd/a0;

    .line 86
    .line 87
    iget-object v0, v0, Ltd/a0;->a:Ljava/lang/Throwable;

    .line 88
    .line 89
    throw v0
.end method

.method public final y()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Ltd/n;->D()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
