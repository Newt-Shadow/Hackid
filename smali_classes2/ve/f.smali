.class public final Lve/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lve/f$a;,
        Lve/f$d;,
        Lve/f$c;,
        Lve/f$b;
    }
.end annotation


# static fields
.field public static final C:Lve/f$b;

.field private static final D:Lve/m;


# instance fields
.field private final A:Lve/f$d;

.field private final B:Ljava/util/Set;

.field private final a:Z

.field private final b:Lve/f$c;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Z

.field private final h:Lre/e;

.field private final i:Lre/d;

.field private final j:Lre/d;

.field private final k:Lre/d;

.field private final l:Lve/l;

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private final s:Lve/m;

.field private t:Lve/m;

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private final y:Ljava/net/Socket;

.field private final z:Lve/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lve/f$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lve/f$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lve/f;->C:Lve/f$b;

    .line 8
    .line 9
    new-instance v0, Lve/m;

    .line 10
    .line 11
    invoke-direct {v0}, Lve/m;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x7

    .line 15
    const v2, 0xffff

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lve/m;->h(II)Lve/m;

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x5

    .line 22
    const/16 v2, 0x4000

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lve/m;->h(II)Lve/m;

    .line 25
    .line 26
    .line 27
    sput-object v0, Lve/f;->D:Lve/m;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Lve/f$a;)V
    .locals 6

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lve/f$a;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lve/f;->a:Z

    .line 14
    .line 15
    invoke-virtual {p1}, Lve/f$a;->d()Lve/f$c;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lve/f;->b:Lve/f$c;

    .line 20
    .line 21
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lve/f;->c:Ljava/util/Map;

    .line 27
    .line 28
    invoke-virtual {p1}, Lve/f$a;->c()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lve/f;->d:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1}, Lve/f$a;->b()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    const/4 v2, 0x3

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v2, 0x2

    .line 43
    :goto_0
    iput v2, p0, Lve/f;->f:I

    .line 44
    .line 45
    invoke-virtual {p1}, Lve/f$a;->j()Lre/e;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iput-object v2, p0, Lve/f;->h:Lre/e;

    .line 50
    .line 51
    invoke-virtual {v2}, Lre/e;->i()Lre/d;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iput-object v3, p0, Lve/f;->i:Lre/d;

    .line 56
    .line 57
    invoke-virtual {v2}, Lre/e;->i()Lre/d;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iput-object v4, p0, Lve/f;->j:Lre/d;

    .line 62
    .line 63
    invoke-virtual {v2}, Lre/e;->i()Lre/d;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iput-object v2, p0, Lve/f;->k:Lre/d;

    .line 68
    .line 69
    invoke-virtual {p1}, Lve/f$a;->f()Lve/l;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iput-object v2, p0, Lve/f;->l:Lve/l;

    .line 74
    .line 75
    new-instance v2, Lve/m;

    .line 76
    .line 77
    invoke-direct {v2}, Lve/m;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lve/f$a;->b()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_1

    .line 85
    .line 86
    const/4 v4, 0x7

    .line 87
    const/high16 v5, 0x1000000

    .line 88
    .line 89
    invoke-virtual {v2, v4, v5}, Lve/m;->h(II)Lve/m;

    .line 90
    .line 91
    .line 92
    :cond_1
    iput-object v2, p0, Lve/f;->s:Lve/m;

    .line 93
    .line 94
    sget-object v2, Lve/f;->D:Lve/m;

    .line 95
    .line 96
    iput-object v2, p0, Lve/f;->t:Lve/m;

    .line 97
    .line 98
    invoke-virtual {v2}, Lve/m;->c()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    int-to-long v4, v2

    .line 103
    iput-wide v4, p0, Lve/f;->x:J

    .line 104
    .line 105
    invoke-virtual {p1}, Lve/f$a;->h()Ljava/net/Socket;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    iput-object v2, p0, Lve/f;->y:Ljava/net/Socket;

    .line 110
    .line 111
    new-instance v2, Lve/j;

    .line 112
    .line 113
    invoke-virtual {p1}, Lve/f$a;->g()Laf/e;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-direct {v2, v4, v0}, Lve/j;-><init>(Laf/e;Z)V

    .line 118
    .line 119
    .line 120
    iput-object v2, p0, Lve/f;->z:Lve/j;

    .line 121
    .line 122
    new-instance v2, Lve/f$d;

    .line 123
    .line 124
    new-instance v4, Lve/h;

    .line 125
    .line 126
    invoke-virtual {p1}, Lve/f$a;->i()Laf/f;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-direct {v4, v5, v0}, Lve/h;-><init>(Laf/f;Z)V

    .line 131
    .line 132
    .line 133
    invoke-direct {v2, p0, v4}, Lve/f$d;-><init>(Lve/f;Lve/h;)V

    .line 134
    .line 135
    .line 136
    iput-object v2, p0, Lve/f;->A:Lve/f$d;

    .line 137
    .line 138
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 139
    .line 140
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 141
    .line 142
    .line 143
    iput-object v0, p0, Lve/f;->B:Ljava/util/Set;

    .line 144
    .line 145
    invoke-virtual {p1}, Lve/f$a;->e()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_2

    .line 150
    .line 151
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 152
    .line 153
    invoke-virtual {p1}, Lve/f$a;->e()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    int-to-long v4, p1

    .line 158
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v4

    .line 162
    const-string p1, " ping"

    .line 163
    .line 164
    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    new-instance v0, Lve/f$j;

    .line 169
    .line 170
    invoke-direct {v0, p1, p0, v4, v5}, Lve/f$j;-><init>(Ljava/lang/String;Lve/f;J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v0, v4, v5}, Lre/d;->i(Lre/a;J)V

    .line 174
    .line 175
    .line 176
    :cond_2
    return-void
.end method

.method public static final synthetic E(Lve/f;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lve/f;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic H(Lve/f;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lve/f;->x:J

    .line 2
    .line 3
    return-void
.end method

.method private final W(Ljava/io/IOException;)V
    .locals 1

    .line 1
    sget-object v0, Lve/b;->d:Lve/b;

    .line 2
    .line 3
    invoke-virtual {p0, v0, v0, p1}, Lve/f;->P(Lve/b;Lve/b;Ljava/io/IOException;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final Y0(ILjava/util/List;Z)Lve/i;
    .locals 10

    .line 1
    xor-int/lit8 v6, p3, 0x1

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    iget-object v7, p0, Lve/f;->z:Lve/j;

    .line 5
    .line 6
    monitor-enter v7

    .line 7
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {p0}, Lve/f;->q0()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0x3fffffff    # 1.9999999f

    .line 13
    .line 14
    .line 15
    if-le v0, v1, :cond_0

    .line 16
    .line 17
    sget-object v0, Lve/b;->j:Lve/b;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lve/f;->k1(Lve/b;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-boolean v0, p0, Lve/f;->g:Z

    .line 23
    .line 24
    if-nez v0, :cond_7

    .line 25
    .line 26
    invoke-virtual {p0}, Lve/f;->q0()I

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    invoke-virtual {p0}, Lve/f;->q0()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    add-int/lit8 v0, v0, 0x2

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lve/f;->i1(I)V

    .line 37
    .line 38
    .line 39
    new-instance v9, Lve/i;

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    move-object v0, v9

    .line 43
    move v1, v8

    .line 44
    move-object v2, p0

    .line 45
    move v3, v6

    .line 46
    invoke-direct/range {v0 .. v5}, Lve/i;-><init>(ILve/f;ZZLne/s;)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    if-eqz p3, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Lve/f;->V0()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-virtual {p0}, Lve/f;->U0()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    cmp-long p3, v1, v3

    .line 61
    .line 62
    if-gez p3, :cond_2

    .line 63
    .line 64
    invoke-virtual {v9}, Lve/i;->r()J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    invoke-virtual {v9}, Lve/i;->q()J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    cmp-long p3, v1, v3

    .line 73
    .line 74
    if-ltz p3, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/4 p3, 0x0

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    :goto_0
    move p3, v0

    .line 80
    :goto_1
    invoke-virtual {v9}, Lve/i;->u()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    invoke-virtual {p0}, Lve/f;->T0()Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    :cond_3
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    :try_start_2
    monitor-exit p0

    .line 100
    if-nez p1, :cond_4

    .line 101
    .line 102
    invoke-virtual {p0}, Lve/f;->W0()Lve/j;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1, v6, v8, p2}, Lve/j;->h(ZILjava/util/List;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    invoke-virtual {p0}, Lve/f;->X()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    xor-int/2addr v0, v1

    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    invoke-virtual {p0}, Lve/f;->W0()Lve/j;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0, p1, v8, p2}, Lve/j;->q(IILjava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    .line 123
    .line 124
    :goto_2
    monitor-exit v7

    .line 125
    if-eqz p3, :cond_5

    .line 126
    .line 127
    iget-object p1, p0, Lve/f;->z:Lve/j;

    .line 128
    .line 129
    invoke-virtual {p1}, Lve/j;->flush()V

    .line 130
    .line 131
    .line 132
    :cond_5
    return-object v9

    .line 133
    :cond_6
    :try_start_3
    const-string p1, "client streams shouldn\'t have associated stream IDs"

    .line 134
    .line 135
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    :cond_7
    :try_start_4
    new-instance p1, Lve/a;

    .line 146
    .line 147
    invoke-direct {p1}, Lve/a;-><init>()V

    .line 148
    .line 149
    .line 150
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 151
    :catchall_0
    move-exception p1

    .line 152
    :try_start_5
    monitor-exit p0

    .line 153
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 154
    :catchall_1
    move-exception p1

    .line 155
    monitor-exit v7

    .line 156
    throw p1
.end method

.method public static final synthetic a(Lve/f;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lve/f;->W(Ljava/io/IOException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lve/f;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lve/f;->q:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic c(Lve/f;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lve/f;->B:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e()Lve/m;
    .locals 1

    .line 1
    sget-object v0, Lve/f;->D:Lve/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f(Lve/f;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lve/f;->p:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic g(Lve/f;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lve/f;->m:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic h(Lve/f;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lve/f;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic j(Lve/f;)Lve/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lve/f;->l:Lve/l;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lve/f;)Lre/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lve/f;->k:Lre/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m1(Lve/f;ZLre/e;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    sget-object p2, Lre/e;->i:Lre/e;

    .line 11
    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lve/f;->l1(ZLre/e;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final synthetic q(Lve/f;)Lre/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lve/f;->h:Lre/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic s(Lve/f;)Lre/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lve/f;->i:Lre/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic u(Lve/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lve/f;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic v(Lve/f;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lve/f;->q:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic w(Lve/f;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lve/f;->p:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic x(Lve/f;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lve/f;->m:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic z(Lve/f;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lve/f;->n:J

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final A0()Lve/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/f;->t:Lve/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D0()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/f;->y:Ljava/net/Socket;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized J0(I)Lve/i;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lve/f;->c:Ljava/util/Map;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lve/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public final P(Lve/b;Lve/b;Ljava/io/IOException;)V
    .locals 3

    .line 1
    const-string v0, "connectionCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "streamCode"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-boolean v0, Loe/d;->h:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 23
    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string p3, "Thread "

    .line 30
    .line 31
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p3, " MUST NOT hold lock on "

    .line 46
    .line 47
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lve/f;->k1(Lve/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    :catch_0
    monitor-enter p0

    .line 65
    :try_start_1
    invoke-virtual {p0}, Lve/f;->T0()Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    xor-int/lit8 p1, p1, 0x1

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0}, Lve/f;->T0()Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-array v1, v0, [Lve/i;

    .line 87
    .line 88
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0}, Lve/f;->T0()Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 103
    .line 104
    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 105
    .line 106
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_3
    const/4 p1, 0x0

    .line 111
    :goto_1
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    monitor-exit p0

    .line 114
    check-cast p1, [Lve/i;

    .line 115
    .line 116
    if-nez p1, :cond_4

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    array-length v1, p1

    .line 120
    :goto_2
    if-ge v0, v1, :cond_5

    .line 121
    .line 122
    aget-object v2, p1, v0

    .line 123
    .line 124
    :try_start_2
    invoke-virtual {v2, p2, p3}, Lve/i;->d(Lve/b;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 125
    .line 126
    .line 127
    :catch_1
    add-int/lit8 v0, v0, 0x1

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lve/f;->W0()Lve/j;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lve/j;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 135
    .line 136
    .line 137
    :catch_2
    :try_start_4
    invoke-virtual {p0}, Lve/f;->D0()Ljava/net/Socket;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 142
    .line 143
    .line 144
    :catch_3
    iget-object p1, p0, Lve/f;->i:Lre/d;

    .line 145
    .line 146
    invoke-virtual {p1}, Lre/d;->o()V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lve/f;->j:Lre/d;

    .line 150
    .line 151
    invoke-virtual {p1}, Lre/d;->o()V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Lve/f;->k:Lre/d;

    .line 155
    .line 156
    invoke-virtual {p1}, Lre/d;->o()V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :catchall_0
    move-exception p1

    .line 161
    monitor-exit p0

    .line 162
    throw p1
.end method

.method public final T0()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/f;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final U0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lve/f;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final V0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lve/f;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final W0()Lve/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/f;->z:Lve/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public final X()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lve/f;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public final declared-synchronized X0(J)Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lve/f;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lve/f;->p:J

    .line 10
    .line 11
    iget-wide v4, p0, Lve/f;->o:J

    .line 12
    .line 13
    cmp-long v0, v2, v4

    .line 14
    .line 15
    if-gez v0, :cond_1

    .line 16
    .line 17
    iget-wide v2, p0, Lve/f;->r:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    cmp-long p1, p1, v2

    .line 20
    .line 21
    if-ltz p1, :cond_1

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return v1

    .line 25
    :cond_1
    monitor-exit p0

    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1
.end method

.method public final Z0(Ljava/util/List;Z)Lve/i;
    .locals 1

    .line 1
    const-string v0, "requestHeaders"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0, p1, p2}, Lve/f;->Y0(ILjava/util/List;Z)Lve/i;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final a1(ILaf/f;IZ)V
    .locals 9

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v6, Laf/d;

    .line 7
    .line 8
    invoke-direct {v6}, Laf/d;-><init>()V

    .line 9
    .line 10
    .line 11
    int-to-long v0, p3

    .line 12
    invoke-interface {p2, v0, v1}, Laf/f;->O0(J)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p2, v6, v0, v1}, Laf/a1;->L0(Laf/d;J)J

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lve/f;->j:Lre/d;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lve/f;->d:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x5b

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, "] onData"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x1

    .line 48
    new-instance v0, Lve/f$e;

    .line 49
    .line 50
    move-object v1, v0

    .line 51
    move-object v4, p0

    .line 52
    move v5, p1

    .line 53
    move v7, p3

    .line 54
    move v8, p4

    .line 55
    invoke-direct/range {v1 .. v8}, Lve/f$e;-><init>(Ljava/lang/String;ZLve/f;ILaf/d;IZ)V

    .line 56
    .line 57
    .line 58
    const-wide/16 p3, 0x0

    .line 59
    .line 60
    invoke-virtual {p2, v0, p3, p4}, Lre/d;->i(Lre/a;J)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final b1(ILjava/util/List;Z)V
    .locals 10

    .line 1
    const-string v0, "requestHeaders"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lve/f;->j:Lre/d;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lve/f;->d:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x5b

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "] onHeaders"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/4 v5, 0x1

    .line 36
    new-instance v1, Lve/f$f;

    .line 37
    .line 38
    move-object v3, v1

    .line 39
    move-object v6, p0

    .line 40
    move v7, p1

    .line 41
    move-object v8, p2

    .line 42
    move v9, p3

    .line 43
    invoke-direct/range {v3 .. v9}, Lve/f$f;-><init>(Ljava/lang/String;ZLve/f;ILjava/util/List;Z)V

    .line 44
    .line 45
    .line 46
    const-wide/16 p1, 0x0

    .line 47
    .line 48
    invoke-virtual {v0, v1, p1, p2}, Lre/d;->i(Lre/a;J)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final c1(ILjava/util/List;)V
    .locals 9

    .line 1
    const-string v0, "requestHeaders"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lve/f;->B:Ljava/util/Set;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object p2, Lve/b;->d:Lve/b;

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Lve/f;->s1(ILve/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :cond_0
    :try_start_1
    iget-object v0, p0, Lve/f;->B:Ljava/util/Set;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    monitor-exit p0

    .line 36
    iget-object v0, p0, Lve/f;->j:Lre/d;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lve/f;->d:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v2, 0x5b

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, "] onRequest"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const/4 v5, 0x1

    .line 66
    new-instance v1, Lve/f$g;

    .line 67
    .line 68
    move-object v3, v1

    .line 69
    move-object v6, p0

    .line 70
    move v7, p1

    .line 71
    move-object v8, p2

    .line 72
    invoke-direct/range {v3 .. v8}, Lve/f$g;-><init>(Ljava/lang/String;ZLve/f;ILjava/util/List;)V

    .line 73
    .line 74
    .line 75
    const-wide/16 p1, 0x0

    .line 76
    .line 77
    invoke-virtual {v0, v1, p1, p2}, Lre/d;->i(Lre/a;J)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    monitor-exit p0

    .line 83
    throw p1
.end method

.method public close()V
    .locals 3

    .line 1
    sget-object v0, Lve/b;->c:Lve/b;

    .line 2
    .line 3
    sget-object v1, Lve/b;->k:Lve/b;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lve/f;->P(Lve/b;Lve/b;Ljava/io/IOException;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final d0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/f;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d1(ILve/b;)V
    .locals 9

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lve/f;->j:Lre/d;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lve/f;->d:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x5b

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "] onReset"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/4 v5, 0x1

    .line 36
    new-instance v1, Lve/f$h;

    .line 37
    .line 38
    move-object v3, v1

    .line 39
    move-object v6, p0

    .line 40
    move v7, p1

    .line 41
    move-object v8, p2

    .line 42
    invoke-direct/range {v3 .. v8}, Lve/f$h;-><init>(Ljava/lang/String;ZLve/f;ILve/b;)V

    .line 43
    .line 44
    .line 45
    const-wide/16 p1, 0x0

    .line 46
    .line 47
    invoke-virtual {v0, v1, p1, p2}, Lre/d;->i(Lre/a;J)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final e1(I)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final declared-synchronized f1(I)Lve/i;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lve/f;->c:Ljava/util/Map;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lve/i;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public final flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lve/f;->z:Lve/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lve/j;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g1()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lve/f;->p:J

    .line 3
    .line 4
    iget-wide v2, p0, Lve/f;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-gez v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    const-wide/16 v0, 0x1

    .line 13
    .line 14
    add-long/2addr v2, v0

    .line 15
    :try_start_1
    iput-wide v2, p0, Lve/f;->o:J

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const v2, 0x3b9aca00

    .line 22
    .line 23
    .line 24
    int-to-long v2, v2

    .line 25
    add-long/2addr v0, v2

    .line 26
    iput-wide v0, p0, Lve/f;->r:J

    .line 27
    .line 28
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    iget-object v0, p0, Lve/f;->i:Lre/d;

    .line 32
    .line 33
    iget-object v1, p0, Lve/f;->d:Ljava/lang/String;

    .line 34
    .line 35
    const-string v2, " ping"

    .line 36
    .line 37
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Lve/f$i;

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-direct {v2, v1, v3, p0}, Lve/f$i;-><init>(Ljava/lang/String;ZLve/f;)V

    .line 45
    .line 46
    .line 47
    const-wide/16 v3, 0x0

    .line 48
    .line 49
    invoke-virtual {v0, v2, v3, v4}, Lre/d;->i(Lre/a;J)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    monitor-exit p0

    .line 55
    throw v0
.end method

.method public final h1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lve/f;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public final i1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lve/f;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public final j1(Lve/m;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lve/f;->t:Lve/m;

    .line 7
    .line 8
    return-void
.end method

.method public final k0()I
    .locals 1

    .line 1
    iget v0, p0, Lve/f;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final k1(Lve/b;)V
    .locals 4

    .line 1
    const-string v0, "statusCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lve/f;->z:Lve/j;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    new-instance v1, Lkotlin/jvm/internal/a0;

    .line 10
    .line 11
    invoke-direct {v1}, Lkotlin/jvm/internal/a0;-><init>()V

    .line 12
    .line 13
    .line 14
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-boolean v2, p0, Lve/f;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v2, 0x1

    .line 23
    :try_start_3
    iput-boolean v2, p0, Lve/f;->g:Z

    .line 24
    .line 25
    invoke-virtual {p0}, Lve/f;->k0()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iput v2, v1, Lkotlin/jvm/internal/a0;->a:I

    .line 30
    .line 31
    sget-object v2, Lxc/t;->a:Lxc/t;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32
    .line 33
    :try_start_4
    monitor-exit p0

    .line 34
    invoke-virtual {p0}, Lve/f;->W0()Lve/j;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget v1, v1, Lkotlin/jvm/internal/a0;->a:I

    .line 39
    .line 40
    sget-object v3, Loe/d;->a:[B

    .line 41
    .line 42
    invoke-virtual {v2, v1, p1, v3}, Lve/j;->g(ILve/b;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 43
    .line 44
    .line 45
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    :try_start_5
    monitor-exit p0

    .line 49
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 50
    :catchall_1
    move-exception p1

    .line 51
    monitor-exit v0

    .line 52
    throw p1
.end method

.method public final l1(ZLre/e;)V
    .locals 4

    .line 1
    const-string v0, "taskRunner"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lve/f;->z:Lve/j;

    .line 9
    .line 10
    invoke-virtual {p1}, Lve/j;->b()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lve/f;->z:Lve/j;

    .line 14
    .line 15
    iget-object v0, p0, Lve/f;->s:Lve/m;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lve/j;->u(Lve/m;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lve/f;->s:Lve/m;

    .line 21
    .line 22
    invoke-virtual {p1}, Lve/m;->c()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const v0, 0xffff

    .line 27
    .line 28
    .line 29
    if-eq p1, v0, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lve/f;->z:Lve/j;

    .line 32
    .line 33
    sub-int/2addr p1, v0

    .line 34
    int-to-long v2, p1

    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-virtual {v1, p1, v2, v3}, Lve/j;->v(IJ)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p2}, Lre/e;->i()Lre/d;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p2, p0, Lve/f;->d:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v0, p0, Lve/f;->A:Lve/f$d;

    .line 46
    .line 47
    new-instance v1, Lre/c;

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-direct {v1, p2, v2, v0}, Lre/c;-><init>(Ljava/lang/String;ZLid/a;)V

    .line 51
    .line 52
    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    invoke-virtual {p1, v1, v2, v3}, Lre/d;->i(Lre/a;J)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final declared-synchronized n1(J)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lve/f;->u:J

    .line 3
    .line 4
    add-long/2addr v0, p1

    .line 5
    iput-wide v0, p0, Lve/f;->u:J

    .line 6
    .line 7
    iget-wide p1, p0, Lve/f;->v:J

    .line 8
    .line 9
    sub-long/2addr v0, p1

    .line 10
    iget-object p1, p0, Lve/f;->s:Lve/m;

    .line 11
    .line 12
    invoke-virtual {p1}, Lve/m;->c()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    div-int/lit8 p1, p1, 0x2

    .line 17
    .line 18
    int-to-long p1, p1

    .line 19
    cmp-long p1, v0, p1

    .line 20
    .line 21
    if-ltz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1, v0, v1}, Lve/f;->t1(IJ)V

    .line 25
    .line 26
    .line 27
    iget-wide p1, p0, Lve/f;->v:J

    .line 28
    .line 29
    add-long/2addr p1, v0

    .line 30
    iput-wide p1, p0, Lve/f;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    :cond_0
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    .line 36
    throw p1
.end method

.method public final o0()Lve/f$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/f;->b:Lve/f$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o1(IZLaf/d;J)V
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p4, v0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    iget-object p4, p0, Lve/f;->z:Lve/j;

    .line 9
    .line 10
    invoke-virtual {p4, p2, p1, p3, v3}, Lve/j;->c(ZILaf/d;I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    .line 15
    .line 16
    if-lez v2, :cond_4

    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lve/f;->V0()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    invoke-virtual {p0}, Lve/f;->U0()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    cmp-long v2, v4, v6

    .line 28
    .line 29
    if-ltz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lve/f;->T0()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 50
    .line 51
    const-string p2, "stream closed"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lve/f;->U0()J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    invoke-virtual {p0}, Lve/f;->V0()J

    .line 62
    .line 63
    .line 64
    move-result-wide v6

    .line 65
    sub-long/2addr v4, v6

    .line 66
    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    long-to-int v2, v4

    .line 71
    invoke-virtual {p0}, Lve/f;->W0()Lve/j;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v4}, Lve/j;->j()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual {p0}, Lve/f;->V0()J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    int-to-long v6, v2

    .line 88
    add-long/2addr v4, v6

    .line 89
    iput-wide v4, p0, Lve/f;->w:J

    .line 90
    .line 91
    sget-object v4, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    monitor-exit p0

    .line 94
    sub-long/2addr p4, v6

    .line 95
    iget-object v4, p0, Lve/f;->z:Lve/j;

    .line 96
    .line 97
    if-eqz p2, :cond_3

    .line 98
    .line 99
    cmp-long v5, p4, v0

    .line 100
    .line 101
    if-nez v5, :cond_3

    .line 102
    .line 103
    const/4 v5, 0x1

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    move v5, v3

    .line 106
    :goto_2
    invoke-virtual {v4, v5, p1, p3, v2}, Lve/j;->c(ZILaf/d;I)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    goto :goto_3

    .line 112
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 117
    .line 118
    .line 119
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 120
    .line 121
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 122
    .line 123
    .line 124
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :goto_3
    monitor-exit p0

    .line 126
    throw p1

    .line 127
    :cond_4
    return-void
.end method

.method public final p1(IZLjava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "alternating"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lve/f;->z:Lve/j;

    .line 7
    .line 8
    invoke-virtual {v0, p2, p1, p3}, Lve/j;->h(ZILjava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final q0()I
    .locals 1

    .line 1
    iget v0, p0, Lve/f;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final q1(ZII)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lve/f;->z:Lve/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lve/j;->k(ZII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    invoke-direct {p0, p1}, Lve/f;->W(Ljava/io/IOException;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method public final r1(ILve/b;)V
    .locals 1

    .line 1
    const-string v0, "statusCode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lve/f;->z:Lve/j;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lve/j;->s(ILve/b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final s1(ILve/b;)V
    .locals 9

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lve/f;->i:Lre/d;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lve/f;->d:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x5b

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "] writeSynReset"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const/4 v5, 0x1

    .line 36
    new-instance v1, Lve/f$k;

    .line 37
    .line 38
    move-object v3, v1

    .line 39
    move-object v6, p0

    .line 40
    move v7, p1

    .line 41
    move-object v8, p2

    .line 42
    invoke-direct/range {v3 .. v8}, Lve/f$k;-><init>(Ljava/lang/String;ZLve/f;ILve/b;)V

    .line 43
    .line 44
    .line 45
    const-wide/16 p1, 0x0

    .line 46
    .line 47
    invoke-virtual {v0, v1, p1, p2}, Lre/d;->i(Lre/a;J)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final t0()Lve/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lve/f;->s:Lve/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t1(IJ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lve/f;->i:Lre/d;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lve/f;->d:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v2, 0x5b

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "] windowUpdate"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const/4 v5, 0x1

    .line 31
    new-instance v1, Lve/f$l;

    .line 32
    .line 33
    move-object v3, v1

    .line 34
    move-object v6, p0

    .line 35
    move v7, p1

    .line 36
    move-wide v8, p2

    .line 37
    invoke-direct/range {v3 .. v9}, Lve/f$l;-><init>(Ljava/lang/String;ZLve/f;IJ)V

    .line 38
    .line 39
    .line 40
    const-wide/16 p1, 0x0

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1, p2}, Lre/d;->i(Lre/a;J)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
