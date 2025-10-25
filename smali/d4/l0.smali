.class public Ld4/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld4/l0$c;,
        Ld4/l0$b;,
        Ld4/l0$d;
    }
.end annotation


# instance fields
.field private A:Lb3/x1;

.field private B:Lb3/x1;

.field private C:I

.field private D:Z

.field private E:Z

.field private F:J

.field private G:Z

.field private final a:Ld4/j0;

.field private final b:Ld4/l0$b;

.field private final c:Ld4/q0;

.field private final d:Lf3/v;

.field private final e:Lf3/u$a;

.field private f:Ld4/l0$d;

.field private g:Lb3/x1;

.field private h:Lf3/n;

.field private i:I

.field private j:[I

.field private k:[J

.field private l:[I

.field private m:[I

.field private n:[J

.field private o:[Lg3/b0$a;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:J

.field private u:J

.field private v:J

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method protected constructor <init>(Lx4/b;Lf3/v;Lf3/u$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ld4/l0;->d:Lf3/v;

    .line 5
    .line 6
    iput-object p3, p0, Ld4/l0;->e:Lf3/u$a;

    .line 7
    .line 8
    new-instance p2, Ld4/j0;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Ld4/j0;-><init>(Lx4/b;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Ld4/l0;->a:Ld4/j0;

    .line 14
    .line 15
    new-instance p1, Ld4/l0$b;

    .line 16
    .line 17
    invoke-direct {p1}, Ld4/l0$b;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Ld4/l0;->b:Ld4/l0$b;

    .line 21
    .line 22
    const/16 p1, 0x3e8

    .line 23
    .line 24
    iput p1, p0, Ld4/l0;->i:I

    .line 25
    .line 26
    new-array p2, p1, [I

    .line 27
    .line 28
    iput-object p2, p0, Ld4/l0;->j:[I

    .line 29
    .line 30
    new-array p2, p1, [J

    .line 31
    .line 32
    iput-object p2, p0, Ld4/l0;->k:[J

    .line 33
    .line 34
    new-array p2, p1, [J

    .line 35
    .line 36
    iput-object p2, p0, Ld4/l0;->n:[J

    .line 37
    .line 38
    new-array p2, p1, [I

    .line 39
    .line 40
    iput-object p2, p0, Ld4/l0;->m:[I

    .line 41
    .line 42
    new-array p2, p1, [I

    .line 43
    .line 44
    iput-object p2, p0, Ld4/l0;->l:[I

    .line 45
    .line 46
    new-array p1, p1, [Lg3/b0$a;

    .line 47
    .line 48
    iput-object p1, p0, Ld4/l0;->o:[Lg3/b0$a;

    .line 49
    .line 50
    new-instance p1, Ld4/q0;

    .line 51
    .line 52
    new-instance p2, Ld4/k0;

    .line 53
    .line 54
    invoke-direct {p2}, Ld4/k0;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p2}, Ld4/q0;-><init>(Ly4/h;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Ld4/l0;->c:Ld4/q0;

    .line 61
    .line 62
    const-wide/high16 p1, -0x8000000000000000L

    .line 63
    .line 64
    iput-wide p1, p0, Ld4/l0;->t:J

    .line 65
    .line 66
    iput-wide p1, p0, Ld4/l0;->u:J

    .line 67
    .line 68
    iput-wide p1, p0, Ld4/l0;->v:J

    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Ld4/l0;->y:Z

    .line 72
    .line 73
    iput-boolean p1, p0, Ld4/l0;->x:Z

    .line 74
    .line 75
    return-void
.end method

.method private B(I)J
    .locals 7

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 7
    .line 8
    invoke-direct {p0, v2}, Ld4/l0;->D(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, p1, :cond_3

    .line 14
    .line 15
    iget-object v4, p0, Ld4/l0;->n:[J

    .line 16
    .line 17
    aget-wide v5, v4, v2

    .line 18
    .line 19
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-object v4, p0, Ld4/l0;->m:[I

    .line 24
    .line 25
    aget v4, v4, v2

    .line 26
    .line 27
    and-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    const/4 v4, -0x1

    .line 35
    if-ne v2, v4, :cond_2

    .line 36
    .line 37
    iget v2, p0, Ld4/l0;->i:I

    .line 38
    .line 39
    add-int/lit8 v2, v2, -0x1

    .line 40
    .line 41
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    :goto_1
    return-wide v0
.end method

.method private D(I)I
    .locals 1

    .line 1
    iget v0, p0, Ld4/l0;->r:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iget p1, p0, Ld4/l0;->i:I

    .line 5
    .line 6
    if-ge v0, p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sub-int/2addr v0, p1

    .line 10
    :goto_0
    return v0
.end method

.method private H()Z
    .locals 2

    .line 1
    iget v0, p0, Ld4/l0;->s:I

    .line 2
    .line 3
    iget v1, p0, Ld4/l0;->p:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private static synthetic L(Ld4/l0$c;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ld4/l0$c;->b:Lf3/v$b;

    .line 2
    .line 3
    invoke-interface {p0}, Lf3/v$b;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private M(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/l0;->h:Lf3/n;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lf3/n;->getState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Ld4/l0;->m:[I

    .line 13
    .line 14
    aget p1, v0, p1

    .line 15
    .line 16
    const/high16 v0, 0x40000000    # 2.0f

    .line 17
    .line 18
    and-int/2addr p1, v0

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Ld4/l0;->h:Lf3/n;

    .line 22
    .line 23
    invoke-interface {p1}, Lf3/n;->c()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 33
    :goto_1
    return p1
.end method

.method private O(Lb3/x1;Lb3/y1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld4/l0;->g:Lb3/x1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-eqz v1, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, v0, Lb3/x1;->o:Lf3/m;

    .line 13
    .line 14
    :goto_1
    iput-object p1, p0, Ld4/l0;->g:Lb3/x1;

    .line 15
    .line 16
    iget-object v2, p1, Lb3/x1;->o:Lf3/m;

    .line 17
    .line 18
    iget-object v3, p0, Ld4/l0;->d:Lf3/v;

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    invoke-interface {v3, p1}, Lf3/v;->c(Lb3/x1;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {p1, v3}, Lb3/x1;->c(I)Lb3/x1;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move-object v3, p1

    .line 32
    :goto_2
    iput-object v3, p2, Lb3/y1;->b:Lb3/x1;

    .line 33
    .line 34
    iget-object v3, p0, Ld4/l0;->h:Lf3/n;

    .line 35
    .line 36
    iput-object v3, p2, Lb3/y1;->a:Lf3/n;

    .line 37
    .line 38
    iget-object v3, p0, Ld4/l0;->d:Lf3/v;

    .line 39
    .line 40
    if-nez v3, :cond_3

    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    if-nez v1, :cond_4

    .line 44
    .line 45
    invoke-static {v0, v2}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    iget-object v0, p0, Ld4/l0;->h:Lf3/n;

    .line 53
    .line 54
    iget-object v1, p0, Ld4/l0;->d:Lf3/v;

    .line 55
    .line 56
    iget-object v2, p0, Ld4/l0;->e:Lf3/u$a;

    .line 57
    .line 58
    invoke-interface {v1, v2, p1}, Lf3/v;->e(Lf3/u$a;Lb3/x1;)Lf3/n;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Ld4/l0;->h:Lf3/n;

    .line 63
    .line 64
    iput-object p1, p2, Lb3/y1;->a:Lf3/n;

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    iget-object p1, p0, Ld4/l0;->e:Lf3/u$a;

    .line 69
    .line 70
    invoke-interface {v0, p1}, Lf3/n;->f(Lf3/u$a;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    return-void
.end method

.method private declared-synchronized P(Lb3/y1;Le3/g;ZZLd4/l0$b;)I
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p2, Le3/g;->d:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ld4/l0;->H()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x5

    .line 10
    const/4 v2, -0x3

    .line 11
    const/4 v3, -0x4

    .line 12
    if-nez v0, :cond_4

    .line 13
    .line 14
    if-nez p4, :cond_3

    .line 15
    .line 16
    iget-boolean p4, p0, Ld4/l0;->w:Z

    .line 17
    .line 18
    if-eqz p4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p2, p0, Ld4/l0;->B:Lb3/x1;

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    if-nez p3, :cond_1

    .line 26
    .line 27
    iget-object p3, p0, Ld4/l0;->g:Lb3/x1;

    .line 28
    .line 29
    if-eq p2, p3, :cond_2

    .line 30
    .line 31
    :cond_1
    invoke-static {p2}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lb3/x1;

    .line 36
    .line 37
    invoke-direct {p0, p2, p1}, Ld4/l0;->O(Lb3/x1;Lb3/y1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return v1

    .line 42
    :cond_2
    monitor-exit p0

    .line 43
    return v2

    .line 44
    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 45
    :try_start_1
    invoke-virtual {p2, p1}, Le3/a;->u(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    monitor-exit p0

    .line 49
    return v3

    .line 50
    :cond_4
    :try_start_2
    iget-object v0, p0, Ld4/l0;->c:Ld4/q0;

    .line 51
    .line 52
    invoke-virtual {p0}, Ld4/l0;->C()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {v0, v4}, Ld4/q0;->e(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Ld4/l0$c;

    .line 61
    .line 62
    iget-object v0, v0, Ld4/l0$c;->a:Lb3/x1;

    .line 63
    .line 64
    if-nez p3, :cond_a

    .line 65
    .line 66
    iget-object p3, p0, Ld4/l0;->g:Lb3/x1;

    .line 67
    .line 68
    if-eq v0, p3, :cond_5

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_5
    iget p1, p0, Ld4/l0;->s:I

    .line 72
    .line 73
    invoke-direct {p0, p1}, Ld4/l0;->D(I)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-direct {p0, p1}, Ld4/l0;->M(I)Z

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    const/4 v0, 0x1

    .line 82
    if-nez p3, :cond_6

    .line 83
    .line 84
    iput-boolean v0, p2, Le3/g;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .line 86
    monitor-exit p0

    .line 87
    return v2

    .line 88
    :cond_6
    :try_start_3
    iget-object p3, p0, Ld4/l0;->m:[I

    .line 89
    .line 90
    aget p3, p3, p1

    .line 91
    .line 92
    invoke-virtual {p2, p3}, Le3/a;->u(I)V

    .line 93
    .line 94
    .line 95
    iget p3, p0, Ld4/l0;->s:I

    .line 96
    .line 97
    iget v1, p0, Ld4/l0;->p:I

    .line 98
    .line 99
    sub-int/2addr v1, v0

    .line 100
    if-ne p3, v1, :cond_8

    .line 101
    .line 102
    if-nez p4, :cond_7

    .line 103
    .line 104
    iget-boolean p3, p0, Ld4/l0;->w:Z

    .line 105
    .line 106
    if-eqz p3, :cond_8

    .line 107
    .line 108
    :cond_7
    const/high16 p3, 0x20000000

    .line 109
    .line 110
    invoke-virtual {p2, p3}, Le3/a;->j(I)V

    .line 111
    .line 112
    .line 113
    :cond_8
    iget-object p3, p0, Ld4/l0;->n:[J

    .line 114
    .line 115
    aget-wide v0, p3, p1

    .line 116
    .line 117
    iput-wide v0, p2, Le3/g;->e:J

    .line 118
    .line 119
    iget-wide p3, p0, Ld4/l0;->t:J

    .line 120
    .line 121
    cmp-long p3, v0, p3

    .line 122
    .line 123
    if-gez p3, :cond_9

    .line 124
    .line 125
    const/high16 p3, -0x80000000

    .line 126
    .line 127
    invoke-virtual {p2, p3}, Le3/a;->j(I)V

    .line 128
    .line 129
    .line 130
    :cond_9
    iget-object p2, p0, Ld4/l0;->l:[I

    .line 131
    .line 132
    aget p2, p2, p1

    .line 133
    .line 134
    iput p2, p5, Ld4/l0$b;->a:I

    .line 135
    .line 136
    iget-object p2, p0, Ld4/l0;->k:[J

    .line 137
    .line 138
    aget-wide p3, p2, p1

    .line 139
    .line 140
    iput-wide p3, p5, Ld4/l0$b;->b:J

    .line 141
    .line 142
    iget-object p2, p0, Ld4/l0;->o:[Lg3/b0$a;

    .line 143
    .line 144
    aget-object p1, p2, p1

    .line 145
    .line 146
    iput-object p1, p5, Ld4/l0$b;->c:Lg3/b0$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    .line 148
    monitor-exit p0

    .line 149
    return v3

    .line 150
    :cond_a
    :goto_1
    :try_start_4
    invoke-direct {p0, v0, p1}, Ld4/l0;->O(Lb3/x1;Lb3/y1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 151
    .line 152
    .line 153
    monitor-exit p0

    .line 154
    return v1

    .line 155
    :catchall_0
    move-exception p1

    .line 156
    monitor-exit p0

    .line 157
    throw p1
.end method

.method private U()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/l0;->h:Lf3/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Ld4/l0;->e:Lf3/u$a;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lf3/n;->f(Lf3/u$a;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Ld4/l0;->h:Lf3/n;

    .line 12
    .line 13
    iput-object v0, p0, Ld4/l0;->g:Lb3/x1;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private declared-synchronized X()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput v0, p0, Ld4/l0;->s:I

    .line 4
    .line 5
    iget-object v0, p0, Ld4/l0;->a:Ld4/j0;

    .line 6
    .line 7
    invoke-virtual {v0}, Ld4/j0;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method private declared-synchronized c0(Lb3/x1;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Ld4/l0;->y:Z

    .line 4
    .line 5
    iget-object v1, p0, Ld4/l0;->B:Lb3/x1;

    .line 6
    .line 7
    invoke-static {p1, v1}, Ly4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return v0

    .line 15
    :cond_0
    :try_start_1
    iget-object v1, p0, Ld4/l0;->c:Ld4/q0;

    .line 16
    .line 17
    invoke-virtual {v1}, Ld4/q0;->g()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Ld4/l0;->c:Ld4/q0;

    .line 24
    .line 25
    invoke-virtual {v1}, Ld4/q0;->f()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ld4/l0$c;

    .line 30
    .line 31
    iget-object v1, v1, Ld4/l0$c;->a:Lb3/x1;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Lb3/x1;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Ld4/l0;->c:Ld4/q0;

    .line 40
    .line 41
    invoke-virtual {p1}, Ld4/q0;->f()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Ld4/l0$c;

    .line 46
    .line 47
    iget-object p1, p1, Ld4/l0$c;->a:Lb3/x1;

    .line 48
    .line 49
    iput-object p1, p0, Ld4/l0;->B:Lb3/x1;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iput-object p1, p0, Ld4/l0;->B:Lb3/x1;

    .line 53
    .line 54
    :goto_0
    iget-object p1, p0, Ld4/l0;->B:Lb3/x1;

    .line 55
    .line 56
    iget-object v1, p1, Lb3/x1;->l:Ljava/lang/String;

    .line 57
    .line 58
    iget-object p1, p1, Lb3/x1;->i:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1, p1}, Ly4/v;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput-boolean p1, p0, Ld4/l0;->D:Z

    .line 65
    .line 66
    iput-boolean v0, p0, Ld4/l0;->E:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    monitor-exit p0

    .line 69
    const/4 p1, 0x1

    .line 70
    return p1

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    monitor-exit p0

    .line 73
    throw p1
.end method

.method public static synthetic g(Ld4/l0$c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ld4/l0;->L(Ld4/l0$c;)V

    return-void
.end method

.method private declared-synchronized h(J)Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Ld4/l0;->p:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-wide v3, p0, Ld4/l0;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    cmp-long p1, p1, v3

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v2

    .line 16
    :goto_0
    monitor-exit p0

    .line 17
    return v1

    .line 18
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ld4/l0;->A()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    cmp-long v0, v3, p1

    .line 23
    .line 24
    if-ltz v0, :cond_2

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return v2

    .line 28
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, p2}, Ld4/l0;->j(J)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget p2, p0, Ld4/l0;->q:I

    .line 33
    .line 34
    add-int/2addr p2, p1

    .line 35
    invoke-direct {p0, p2}, Ld4/l0;->t(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return v1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p0

    .line 42
    throw p1
.end method

.method private declared-synchronized i(JIJILg3/b0$a;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Ld4/l0;->p:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    invoke-direct {p0, v0}, Ld4/l0;->D(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v3, p0, Ld4/l0;->k:[J

    .line 14
    .line 15
    aget-wide v4, v3, v0

    .line 16
    .line 17
    iget-object v3, p0, Ld4/l0;->l:[I

    .line 18
    .line 19
    aget v0, v3, v0

    .line 20
    .line 21
    int-to-long v6, v0

    .line 22
    add-long/2addr v4, v6

    .line 23
    cmp-long v0, v4, p4

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v2

    .line 30
    :goto_0
    invoke-static {v0}, Ly4/a;->a(Z)V

    .line 31
    .line 32
    .line 33
    :cond_1
    const/high16 v0, 0x20000000

    .line 34
    .line 35
    and-int/2addr v0, p3

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    move v0, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v0, v2

    .line 41
    :goto_1
    iput-boolean v0, p0, Ld4/l0;->w:Z

    .line 42
    .line 43
    iget-wide v3, p0, Ld4/l0;->v:J

    .line 44
    .line 45
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    iput-wide v3, p0, Ld4/l0;->v:J

    .line 50
    .line 51
    iget v0, p0, Ld4/l0;->p:I

    .line 52
    .line 53
    invoke-direct {p0, v0}, Ld4/l0;->D(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-object v3, p0, Ld4/l0;->n:[J

    .line 58
    .line 59
    aput-wide p1, v3, v0

    .line 60
    .line 61
    iget-object p1, p0, Ld4/l0;->k:[J

    .line 62
    .line 63
    aput-wide p4, p1, v0

    .line 64
    .line 65
    iget-object p1, p0, Ld4/l0;->l:[I

    .line 66
    .line 67
    aput p6, p1, v0

    .line 68
    .line 69
    iget-object p1, p0, Ld4/l0;->m:[I

    .line 70
    .line 71
    aput p3, p1, v0

    .line 72
    .line 73
    iget-object p1, p0, Ld4/l0;->o:[Lg3/b0$a;

    .line 74
    .line 75
    aput-object p7, p1, v0

    .line 76
    .line 77
    iget-object p1, p0, Ld4/l0;->j:[I

    .line 78
    .line 79
    iget p2, p0, Ld4/l0;->C:I

    .line 80
    .line 81
    aput p2, p1, v0

    .line 82
    .line 83
    iget-object p1, p0, Ld4/l0;->c:Ld4/q0;

    .line 84
    .line 85
    invoke-virtual {p1}, Ld4/q0;->g()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_3

    .line 90
    .line 91
    iget-object p1, p0, Ld4/l0;->c:Ld4/q0;

    .line 92
    .line 93
    invoke-virtual {p1}, Ld4/q0;->f()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Ld4/l0$c;

    .line 98
    .line 99
    iget-object p1, p1, Ld4/l0$c;->a:Lb3/x1;

    .line 100
    .line 101
    iget-object p2, p0, Ld4/l0;->B:Lb3/x1;

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Lb3/x1;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_5

    .line 108
    .line 109
    :cond_3
    iget-object p1, p0, Ld4/l0;->d:Lf3/v;

    .line 110
    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    iget-object p2, p0, Ld4/l0;->e:Lf3/u$a;

    .line 114
    .line 115
    iget-object p3, p0, Ld4/l0;->B:Lb3/x1;

    .line 116
    .line 117
    invoke-interface {p1, p2, p3}, Lf3/v;->a(Lf3/u$a;Lb3/x1;)Lf3/v$b;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    sget-object p1, Lf3/v$b;->a:Lf3/v$b;

    .line 123
    .line 124
    :goto_2
    iget-object p2, p0, Ld4/l0;->c:Ld4/q0;

    .line 125
    .line 126
    invoke-virtual {p0}, Ld4/l0;->G()I

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    new-instance p4, Ld4/l0$c;

    .line 131
    .line 132
    iget-object p5, p0, Ld4/l0;->B:Lb3/x1;

    .line 133
    .line 134
    invoke-static {p5}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p5

    .line 138
    check-cast p5, Lb3/x1;

    .line 139
    .line 140
    const/4 p6, 0x0

    .line 141
    invoke-direct {p4, p5, p1, p6}, Ld4/l0$c;-><init>(Lb3/x1;Lf3/v$b;Ld4/l0$a;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p3, p4}, Ld4/q0;->a(ILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    iget p1, p0, Ld4/l0;->p:I

    .line 148
    .line 149
    add-int/2addr p1, v1

    .line 150
    iput p1, p0, Ld4/l0;->p:I

    .line 151
    .line 152
    iget p2, p0, Ld4/l0;->i:I

    .line 153
    .line 154
    if-ne p1, p2, :cond_6

    .line 155
    .line 156
    add-int/lit16 p1, p2, 0x3e8

    .line 157
    .line 158
    new-array p3, p1, [I

    .line 159
    .line 160
    new-array p4, p1, [J

    .line 161
    .line 162
    new-array p5, p1, [J

    .line 163
    .line 164
    new-array p6, p1, [I

    .line 165
    .line 166
    new-array p7, p1, [I

    .line 167
    .line 168
    new-array v0, p1, [Lg3/b0$a;

    .line 169
    .line 170
    iget v1, p0, Ld4/l0;->r:I

    .line 171
    .line 172
    sub-int/2addr p2, v1

    .line 173
    iget-object v3, p0, Ld4/l0;->k:[J

    .line 174
    .line 175
    invoke-static {v3, v1, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Ld4/l0;->n:[J

    .line 179
    .line 180
    iget v3, p0, Ld4/l0;->r:I

    .line 181
    .line 182
    invoke-static {v1, v3, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Ld4/l0;->m:[I

    .line 186
    .line 187
    iget v3, p0, Ld4/l0;->r:I

    .line 188
    .line 189
    invoke-static {v1, v3, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    .line 191
    .line 192
    iget-object v1, p0, Ld4/l0;->l:[I

    .line 193
    .line 194
    iget v3, p0, Ld4/l0;->r:I

    .line 195
    .line 196
    invoke-static {v1, v3, p7, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    .line 198
    .line 199
    iget-object v1, p0, Ld4/l0;->o:[Lg3/b0$a;

    .line 200
    .line 201
    iget v3, p0, Ld4/l0;->r:I

    .line 202
    .line 203
    invoke-static {v1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    .line 205
    .line 206
    iget-object v1, p0, Ld4/l0;->j:[I

    .line 207
    .line 208
    iget v3, p0, Ld4/l0;->r:I

    .line 209
    .line 210
    invoke-static {v1, v3, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    .line 212
    .line 213
    iget v1, p0, Ld4/l0;->r:I

    .line 214
    .line 215
    iget-object v3, p0, Ld4/l0;->k:[J

    .line 216
    .line 217
    invoke-static {v3, v2, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    .line 219
    .line 220
    iget-object v3, p0, Ld4/l0;->n:[J

    .line 221
    .line 222
    invoke-static {v3, v2, p5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    .line 224
    .line 225
    iget-object v3, p0, Ld4/l0;->m:[I

    .line 226
    .line 227
    invoke-static {v3, v2, p6, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    .line 229
    .line 230
    iget-object v3, p0, Ld4/l0;->l:[I

    .line 231
    .line 232
    invoke-static {v3, v2, p7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    .line 234
    .line 235
    iget-object v3, p0, Ld4/l0;->o:[Lg3/b0$a;

    .line 236
    .line 237
    invoke-static {v3, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    .line 239
    .line 240
    iget-object v3, p0, Ld4/l0;->j:[I

    .line 241
    .line 242
    invoke-static {v3, v2, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    .line 244
    .line 245
    iput-object p4, p0, Ld4/l0;->k:[J

    .line 246
    .line 247
    iput-object p5, p0, Ld4/l0;->n:[J

    .line 248
    .line 249
    iput-object p6, p0, Ld4/l0;->m:[I

    .line 250
    .line 251
    iput-object p7, p0, Ld4/l0;->l:[I

    .line 252
    .line 253
    iput-object v0, p0, Ld4/l0;->o:[Lg3/b0$a;

    .line 254
    .line 255
    iput-object p3, p0, Ld4/l0;->j:[I

    .line 256
    .line 257
    iput v2, p0, Ld4/l0;->r:I

    .line 258
    .line 259
    iput p1, p0, Ld4/l0;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .line 261
    :cond_6
    monitor-exit p0

    .line 262
    return-void

    .line 263
    :catchall_0
    move-exception p1

    .line 264
    monitor-exit p0

    .line 265
    throw p1
.end method

.method private j(J)I
    .locals 5

    .line 1
    iget v0, p0, Ld4/l0;->p:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    invoke-direct {p0, v1}, Ld4/l0;->D(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    :cond_0
    :goto_0
    iget v2, p0, Ld4/l0;->s:I

    .line 10
    .line 11
    if-le v0, v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Ld4/l0;->n:[J

    .line 14
    .line 15
    aget-wide v3, v2, v1

    .line 16
    .line 17
    cmp-long v2, v3, p1

    .line 18
    .line 19
    if-ltz v2, :cond_1

    .line 20
    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    add-int/lit8 v1, v1, -0x1

    .line 24
    .line 25
    const/4 v2, -0x1

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    iget v1, p0, Ld4/l0;->i:I

    .line 29
    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return v0
.end method

.method public static k(Lx4/b;Lf3/v;Lf3/u$a;)Ld4/l0;
    .locals 1

    .line 1
    new-instance v0, Ld4/l0;

    .line 2
    .line 3
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lf3/v;

    .line 8
    .line 9
    invoke-static {p2}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lf3/u$a;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p2}, Ld4/l0;-><init>(Lx4/b;Lf3/v;Lf3/u$a;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static l(Lx4/b;)Ld4/l0;
    .locals 2

    .line 1
    new-instance v0, Ld4/l0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1, v1}, Ld4/l0;-><init>(Lx4/b;Lf3/v;Lf3/u$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private declared-synchronized m(JZZ)J
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Ld4/l0;->p:I

    .line 3
    .line 4
    const-wide/16 v1, -0x1

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v3, p0, Ld4/l0;->n:[J

    .line 9
    .line 10
    iget v5, p0, Ld4/l0;->r:I

    .line 11
    .line 12
    aget-wide v6, v3, v5

    .line 13
    .line 14
    cmp-long v3, p1, v6

    .line 15
    .line 16
    if-gez v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-eqz p4, :cond_1

    .line 20
    .line 21
    iget p4, p0, Ld4/l0;->s:I

    .line 22
    .line 23
    if-eq p4, v0, :cond_1

    .line 24
    .line 25
    add-int/lit8 v0, p4, 0x1

    .line 26
    .line 27
    :cond_1
    move v6, v0

    .line 28
    move-object v4, p0

    .line 29
    move-wide v7, p1

    .line 30
    move v9, p3

    .line 31
    invoke-direct/range {v4 .. v9}, Ld4/l0;->v(IIJZ)I

    .line 32
    .line 33
    .line 34
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const/4 p2, -0x1

    .line 36
    if-ne p1, p2, :cond_2

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-wide v1

    .line 40
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Ld4/l0;->p(I)J

    .line 41
    .line 42
    .line 43
    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    monitor-exit p0

    .line 45
    return-wide p1

    .line 46
    :cond_3
    :goto_0
    monitor-exit p0

    .line 47
    return-wide v1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    monitor-exit p0

    .line 50
    throw p1
.end method

.method private declared-synchronized n()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Ld4/l0;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Ld4/l0;->p(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method private p(I)J
    .locals 5

    .line 1
    iget-wide v0, p0, Ld4/l0;->u:J

    .line 2
    .line 3
    invoke-direct {p0, p1}, Ld4/l0;->B(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Ld4/l0;->u:J

    .line 12
    .line 13
    iget v0, p0, Ld4/l0;->p:I

    .line 14
    .line 15
    sub-int/2addr v0, p1

    .line 16
    iput v0, p0, Ld4/l0;->p:I

    .line 17
    .line 18
    iget v0, p0, Ld4/l0;->q:I

    .line 19
    .line 20
    add-int/2addr v0, p1

    .line 21
    iput v0, p0, Ld4/l0;->q:I

    .line 22
    .line 23
    iget v1, p0, Ld4/l0;->r:I

    .line 24
    .line 25
    add-int/2addr v1, p1

    .line 26
    iput v1, p0, Ld4/l0;->r:I

    .line 27
    .line 28
    iget v2, p0, Ld4/l0;->i:I

    .line 29
    .line 30
    if-lt v1, v2, :cond_0

    .line 31
    .line 32
    sub-int/2addr v1, v2

    .line 33
    iput v1, p0, Ld4/l0;->r:I

    .line 34
    .line 35
    :cond_0
    iget v1, p0, Ld4/l0;->s:I

    .line 36
    .line 37
    sub-int/2addr v1, p1

    .line 38
    iput v1, p0, Ld4/l0;->s:I

    .line 39
    .line 40
    if-gez v1, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    iput p1, p0, Ld4/l0;->s:I

    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Ld4/l0;->c:Ld4/q0;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ld4/q0;->d(I)V

    .line 48
    .line 49
    .line 50
    iget p1, p0, Ld4/l0;->p:I

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    iget p1, p0, Ld4/l0;->r:I

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    iget p1, p0, Ld4/l0;->i:I

    .line 59
    .line 60
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 61
    .line 62
    iget-object v0, p0, Ld4/l0;->k:[J

    .line 63
    .line 64
    aget-wide v1, v0, p1

    .line 65
    .line 66
    iget-object v0, p0, Ld4/l0;->l:[I

    .line 67
    .line 68
    aget p1, v0, p1

    .line 69
    .line 70
    int-to-long v3, p1

    .line 71
    add-long/2addr v1, v3

    .line 72
    return-wide v1

    .line 73
    :cond_3
    iget-object p1, p0, Ld4/l0;->k:[J

    .line 74
    .line 75
    iget v0, p0, Ld4/l0;->r:I

    .line 76
    .line 77
    aget-wide v0, p1, v0

    .line 78
    .line 79
    return-wide v0
.end method

.method private t(I)J
    .locals 8

    .line 1
    invoke-virtual {p0}, Ld4/l0;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    iget v3, p0, Ld4/l0;->p:I

    .line 11
    .line 12
    iget v4, p0, Ld4/l0;->s:I

    .line 13
    .line 14
    sub-int/2addr v3, v4

    .line 15
    if-gt v0, v3, :cond_0

    .line 16
    .line 17
    move v3, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v3, v1

    .line 20
    :goto_0
    invoke-static {v3}, Ly4/a;->a(Z)V

    .line 21
    .line 22
    .line 23
    iget v3, p0, Ld4/l0;->p:I

    .line 24
    .line 25
    sub-int/2addr v3, v0

    .line 26
    iput v3, p0, Ld4/l0;->p:I

    .line 27
    .line 28
    iget-wide v4, p0, Ld4/l0;->u:J

    .line 29
    .line 30
    invoke-direct {p0, v3}, Ld4/l0;->B(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide v6

    .line 34
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    iput-wide v3, p0, Ld4/l0;->v:J

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-boolean v0, p0, Ld4/l0;->w:Z

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    move v1, v2

    .line 47
    :cond_1
    iput-boolean v1, p0, Ld4/l0;->w:Z

    .line 48
    .line 49
    iget-object v0, p0, Ld4/l0;->c:Ld4/q0;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ld4/q0;->c(I)V

    .line 52
    .line 53
    .line 54
    iget p1, p0, Ld4/l0;->p:I

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    sub-int/2addr p1, v2

    .line 59
    invoke-direct {p0, p1}, Ld4/l0;->D(I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iget-object v0, p0, Ld4/l0;->k:[J

    .line 64
    .line 65
    aget-wide v1, v0, p1

    .line 66
    .line 67
    iget-object v0, p0, Ld4/l0;->l:[I

    .line 68
    .line 69
    aget p1, v0, p1

    .line 70
    .line 71
    int-to-long v3, p1

    .line 72
    add-long/2addr v1, v3

    .line 73
    return-wide v1

    .line 74
    :cond_2
    const-wide/16 v0, 0x0

    .line 75
    .line 76
    return-wide v0
.end method

.method private v(IIJZ)I
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, p2, :cond_4

    .line 5
    .line 6
    iget-object v3, p0, Ld4/l0;->n:[J

    .line 7
    .line 8
    aget-wide v4, v3, p1

    .line 9
    .line 10
    cmp-long v3, v4, p3

    .line 11
    .line 12
    if-gtz v3, :cond_4

    .line 13
    .line 14
    if-eqz p5, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Ld4/l0;->m:[I

    .line 17
    .line 18
    aget v3, v3, p1

    .line 19
    .line 20
    and-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    :cond_0
    cmp-long v0, v4, p3

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    move v0, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v2

    .line 31
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    iget v3, p0, Ld4/l0;->i:I

    .line 34
    .line 35
    if-ne p1, v3, :cond_3

    .line 36
    .line 37
    move p1, v1

    .line 38
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    :goto_1
    return v0
.end method


# virtual methods
.method public final declared-synchronized A()J
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Ld4/l0;->u:J

    .line 3
    .line 4
    iget v2, p0, Ld4/l0;->s:I

    .line 5
    .line 6
    invoke-direct {p0, v2}, Ld4/l0;->B(I)J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public final C()I
    .locals 2

    .line 1
    iget v0, p0, Ld4/l0;->q:I

    .line 2
    .line 3
    iget v1, p0, Ld4/l0;->s:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final declared-synchronized E(JZ)I
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Ld4/l0;->s:I

    .line 3
    .line 4
    invoke-direct {p0, v0}, Ld4/l0;->D(I)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-direct {p0}, Ld4/l0;->H()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v7, 0x0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Ld4/l0;->n:[J

    .line 16
    .line 17
    aget-wide v3, v0, v2

    .line 18
    .line 19
    cmp-long v0, p1, v3

    .line 20
    .line 21
    if-gez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-wide v0, p0, Ld4/l0;->v:J

    .line 25
    .line 26
    cmp-long v0, p1, v0

    .line 27
    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    if-eqz p3, :cond_1

    .line 31
    .line 32
    iget p1, p0, Ld4/l0;->p:I

    .line 33
    .line 34
    iget p2, p0, Ld4/l0;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    sub-int/2addr p1, p2

    .line 37
    monitor-exit p0

    .line 38
    return p1

    .line 39
    :cond_1
    :try_start_1
    iget p3, p0, Ld4/l0;->p:I

    .line 40
    .line 41
    iget v0, p0, Ld4/l0;->s:I

    .line 42
    .line 43
    sub-int v3, p3, v0

    .line 44
    .line 45
    const/4 v6, 0x1

    .line 46
    move-object v1, p0

    .line 47
    move-wide v4, p1

    .line 48
    invoke-direct/range {v1 .. v6}, Ld4/l0;->v(IIJZ)I

    .line 49
    .line 50
    .line 51
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    const/4 p2, -0x1

    .line 53
    if-ne p1, p2, :cond_2

    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return v7

    .line 57
    :cond_2
    monitor-exit p0

    .line 58
    return p1

    .line 59
    :cond_3
    :goto_0
    monitor-exit p0

    .line 60
    return v7

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    monitor-exit p0

    .line 63
    throw p1
.end method

.method public final declared-synchronized F()Lb3/x1;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Ld4/l0;->y:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Ld4/l0;->B:Lb3/x1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    :goto_0
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public final G()I
    .locals 2

    .line 1
    iget v0, p0, Ld4/l0;->q:I

    .line 2
    .line 3
    iget v1, p0, Ld4/l0;->p:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    return v0
.end method

.method protected final I()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ld4/l0;->z:Z

    .line 3
    .line 4
    return-void
.end method

.method public final declared-synchronized J()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Ld4/l0;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized K(Z)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Ld4/l0;->H()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-boolean p1, p0, Ld4/l0;->w:Z

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Ld4/l0;->B:Lb3/x1;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Ld4/l0;->g:Lb3/x1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :cond_1
    :goto_0
    monitor-exit p0

    .line 26
    return v1

    .line 27
    :cond_2
    :try_start_1
    iget-object p1, p0, Ld4/l0;->c:Ld4/q0;

    .line 28
    .line 29
    invoke-virtual {p0}, Ld4/l0;->C()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Ld4/q0;->e(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ld4/l0$c;

    .line 38
    .line 39
    iget-object p1, p1, Ld4/l0$c;->a:Lb3/x1;

    .line 40
    .line 41
    iget-object v0, p0, Ld4/l0;->g:Lb3/x1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    if-eq p1, v0, :cond_3

    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return v1

    .line 47
    :cond_3
    :try_start_2
    iget p1, p0, Ld4/l0;->s:I

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ld4/l0;->D(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-direct {p0, p1}, Ld4/l0;->M(I)Z

    .line 54
    .line 55
    .line 56
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    monitor-exit p0

    .line 58
    return p1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    monitor-exit p0

    .line 61
    throw p1
.end method

.method public N()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/l0;->h:Lf3/n;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lf3/n;->getState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Ld4/l0;->h:Lf3/n;

    .line 14
    .line 15
    invoke-interface {v0}, Lf3/n;->h()Lf3/n$a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lf3/n$a;

    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized Q()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Ld4/l0;->s:I

    .line 3
    .line 4
    invoke-direct {p0, v0}, Ld4/l0;->D(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-direct {p0}, Ld4/l0;->H()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Ld4/l0;->j:[I

    .line 15
    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v0, p0, Ld4/l0;->C:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    :goto_0
    monitor-exit p0

    .line 22
    return v0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0

    .line 25
    throw v0
.end method

.method public R()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ld4/l0;->r()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ld4/l0;->U()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public S(Lb3/y1;Le3/g;IZ)I
    .locals 9

    .line 1
    and-int/lit8 v0, p3, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v6, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v6, v1

    .line 10
    :goto_0
    iget-object v8, p0, Ld4/l0;->b:Ld4/l0$b;

    .line 11
    .line 12
    move-object v3, p0

    .line 13
    move-object v4, p1

    .line 14
    move-object v5, p2

    .line 15
    move v7, p4

    .line 16
    invoke-direct/range {v3 .. v8}, Ld4/l0;->P(Lb3/y1;Le3/g;ZZLd4/l0$b;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 p4, -0x4

    .line 21
    if-ne p1, p4, :cond_4

    .line 22
    .line 23
    invoke-virtual {p2}, Le3/a;->q()Z

    .line 24
    .line 25
    .line 26
    move-result p4

    .line 27
    if-nez p4, :cond_4

    .line 28
    .line 29
    and-int/lit8 p4, p3, 0x1

    .line 30
    .line 31
    if-eqz p4, :cond_1

    .line 32
    .line 33
    move v1, v2

    .line 34
    :cond_1
    and-int/lit8 p3, p3, 0x4

    .line 35
    .line 36
    if-nez p3, :cond_3

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object p3, p0, Ld4/l0;->a:Ld4/j0;

    .line 41
    .line 42
    iget-object p4, p0, Ld4/l0;->b:Ld4/l0$b;

    .line 43
    .line 44
    invoke-virtual {p3, p2, p4}, Ld4/j0;->f(Le3/g;Ld4/l0$b;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object p3, p0, Ld4/l0;->a:Ld4/j0;

    .line 49
    .line 50
    iget-object p4, p0, Ld4/l0;->b:Ld4/l0$b;

    .line 51
    .line 52
    invoke-virtual {p3, p2, p4}, Ld4/j0;->m(Le3/g;Ld4/l0$b;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 56
    .line 57
    iget p2, p0, Ld4/l0;->s:I

    .line 58
    .line 59
    add-int/2addr p2, v2

    .line 60
    iput p2, p0, Ld4/l0;->s:I

    .line 61
    .line 62
    :cond_4
    return p1
.end method

.method public T()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ld4/l0;->W(Z)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ld4/l0;->U()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final V()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ld4/l0;->W(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public W(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld4/l0;->a:Ld4/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld4/j0;->n()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ld4/l0;->p:I

    .line 8
    .line 9
    iput v0, p0, Ld4/l0;->q:I

    .line 10
    .line 11
    iput v0, p0, Ld4/l0;->r:I

    .line 12
    .line 13
    iput v0, p0, Ld4/l0;->s:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Ld4/l0;->x:Z

    .line 17
    .line 18
    const-wide/high16 v2, -0x8000000000000000L

    .line 19
    .line 20
    iput-wide v2, p0, Ld4/l0;->t:J

    .line 21
    .line 22
    iput-wide v2, p0, Ld4/l0;->u:J

    .line 23
    .line 24
    iput-wide v2, p0, Ld4/l0;->v:J

    .line 25
    .line 26
    iput-boolean v0, p0, Ld4/l0;->w:Z

    .line 27
    .line 28
    iget-object v0, p0, Ld4/l0;->c:Ld4/q0;

    .line 29
    .line 30
    invoke-virtual {v0}, Ld4/q0;->b()V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Ld4/l0;->A:Lb3/x1;

    .line 37
    .line 38
    iput-object p1, p0, Ld4/l0;->B:Lb3/x1;

    .line 39
    .line 40
    iput-boolean v1, p0, Ld4/l0;->y:Z

    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final declared-synchronized Y(I)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Ld4/l0;->X()V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Ld4/l0;->q:I

    .line 6
    .line 7
    if-lt p1, v0, :cond_1

    .line 8
    .line 9
    iget v1, p0, Ld4/l0;->p:I

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    if-le p1, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    .line 16
    .line 17
    iput-wide v1, p0, Ld4/l0;->t:J

    .line 18
    .line 19
    sub-int/2addr p1, v0

    .line 20
    iput p1, p0, Ld4/l0;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_1
    :goto_0
    monitor-exit p0

    .line 26
    const/4 p1, 0x0

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

.method public final declared-synchronized Z(JZ)Z
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Ld4/l0;->X()V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Ld4/l0;->s:I

    .line 6
    .line 7
    invoke-direct {p0, v0}, Ld4/l0;->D(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-direct {p0}, Ld4/l0;->H()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v7, 0x0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Ld4/l0;->n:[J

    .line 19
    .line 20
    aget-wide v3, v0, v2

    .line 21
    .line 22
    cmp-long v0, p1, v3

    .line 23
    .line 24
    if-ltz v0, :cond_2

    .line 25
    .line 26
    iget-wide v0, p0, Ld4/l0;->v:J

    .line 27
    .line 28
    cmp-long v0, p1, v0

    .line 29
    .line 30
    if-lez v0, :cond_0

    .line 31
    .line 32
    if-nez p3, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget p3, p0, Ld4/l0;->p:I

    .line 36
    .line 37
    iget v0, p0, Ld4/l0;->s:I

    .line 38
    .line 39
    sub-int v3, p3, v0

    .line 40
    .line 41
    const/4 v6, 0x1

    .line 42
    move-object v1, p0

    .line 43
    move-wide v4, p1

    .line 44
    invoke-direct/range {v1 .. v6}, Ld4/l0;->v(IIJZ)I

    .line 45
    .line 46
    .line 47
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const/4 v0, -0x1

    .line 49
    if-ne p3, v0, :cond_1

    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return v7

    .line 53
    :cond_1
    :try_start_1
    iput-wide p1, p0, Ld4/l0;->t:J

    .line 54
    .line 55
    iget p1, p0, Ld4/l0;->s:I

    .line 56
    .line 57
    add-int/2addr p1, p3

    .line 58
    iput p1, p0, Ld4/l0;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    monitor-exit p0

    .line 61
    const/4 p1, 0x1

    .line 62
    return p1

    .line 63
    :cond_2
    :goto_0
    monitor-exit p0

    .line 64
    return v7

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    monitor-exit p0

    .line 67
    throw p1
.end method

.method public final a(Ly4/e0;II)V
    .locals 0

    .line 1
    iget-object p3, p0, Ld4/l0;->a:Ld4/j0;

    .line 2
    .line 3
    invoke-virtual {p3, p1, p2}, Ld4/j0;->q(Ly4/e0;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final a0(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Ld4/l0;->F:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Ld4/l0;->F:J

    .line 8
    .line 9
    invoke-virtual {p0}, Ld4/l0;->I()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final b0(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ld4/l0;->t:J

    .line 2
    .line 3
    return-void
.end method

.method public final c(Lb3/x1;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ld4/l0;->w(Lb3/x1;)Lb3/x1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Ld4/l0;->z:Z

    .line 7
    .line 8
    iput-object p1, p0, Ld4/l0;->A:Lb3/x1;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ld4/l0;->c0(Lb3/x1;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v1, p0, Ld4/l0;->f:Ld4/l0$d;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-interface {v1, v0}, Ld4/l0$d;->j(Lb3/x1;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final d(Lx4/h;IZI)I
    .locals 0

    .line 1
    iget-object p4, p0, Ld4/l0;->a:Ld4/j0;

    .line 2
    .line 3
    invoke-virtual {p4, p1, p2, p3}, Ld4/j0;->p(Lx4/h;IZ)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final d0(Ld4/l0$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld4/l0;->f:Ld4/l0$d;

    .line 2
    .line 3
    return-void
.end method

.method public final declared-synchronized e0(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget v0, p0, Ld4/l0;->s:I

    .line 5
    .line 6
    add-int/2addr v0, p1

    .line 7
    iget v1, p0, Ld4/l0;->p:I

    .line 8
    .line 9
    if-gt v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-static {v0}, Ly4/a;->a(Z)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Ld4/l0;->s:I

    .line 20
    .line 21
    add-int/2addr v0, p1

    .line 22
    iput v0, p0, Ld4/l0;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit p0

    .line 27
    throw p1
.end method

.method public f(JIIILg3/b0$a;)V
    .locals 11

    .line 1
    move-object v8, p0

    .line 2
    iget-boolean v0, v8, Ld4/l0;->z:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v8, Ld4/l0;->A:Lb3/x1;

    .line 7
    .line 8
    invoke-static {v0}, Ly4/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lb3/x1;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ld4/l0;->c(Lb3/x1;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    and-int/lit8 v0, p3, 0x1

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    move v3, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v3, v1

    .line 26
    :goto_0
    iget-boolean v4, v8, Ld4/l0;->x:Z

    .line 27
    .line 28
    if-eqz v4, :cond_3

    .line 29
    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    iput-boolean v1, v8, Ld4/l0;->x:Z

    .line 34
    .line 35
    :cond_3
    iget-wide v4, v8, Ld4/l0;->F:J

    .line 36
    .line 37
    add-long/2addr v4, p1

    .line 38
    iget-boolean v6, v8, Ld4/l0;->D:Z

    .line 39
    .line 40
    if-eqz v6, :cond_6

    .line 41
    .line 42
    iget-wide v6, v8, Ld4/l0;->t:J

    .line 43
    .line 44
    cmp-long v6, v4, v6

    .line 45
    .line 46
    if-gez v6, :cond_4

    .line 47
    .line 48
    return-void

    .line 49
    :cond_4
    if-nez v0, :cond_6

    .line 50
    .line 51
    iget-boolean v0, v8, Ld4/l0;->E:Z

    .line 52
    .line 53
    if-nez v0, :cond_5

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v6, "Overriding unexpected non-sync sample for format: "

    .line 61
    .line 62
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v6, v8, Ld4/l0;->B:Lb3/x1;

    .line 66
    .line 67
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v6, "SampleQueue"

    .line 75
    .line 76
    invoke-static {v6, v0}, Ly4/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-boolean v2, v8, Ld4/l0;->E:Z

    .line 80
    .line 81
    :cond_5
    or-int/lit8 v0, p3, 0x1

    .line 82
    .line 83
    move v6, v0

    .line 84
    goto :goto_1

    .line 85
    :cond_6
    move v6, p3

    .line 86
    :goto_1
    iget-boolean v0, v8, Ld4/l0;->G:Z

    .line 87
    .line 88
    if-eqz v0, :cond_9

    .line 89
    .line 90
    if-eqz v3, :cond_8

    .line 91
    .line 92
    invoke-direct {p0, v4, v5}, Ld4/l0;->h(J)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_7

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_7
    iput-boolean v1, v8, Ld4/l0;->G:Z

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_8
    :goto_2
    return-void

    .line 103
    :cond_9
    :goto_3
    iget-object v0, v8, Ld4/l0;->a:Ld4/j0;

    .line 104
    .line 105
    invoke-virtual {v0}, Ld4/j0;->e()J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    move v7, p4

    .line 110
    int-to-long v2, v7

    .line 111
    sub-long/2addr v0, v2

    .line 112
    move/from16 v2, p5

    .line 113
    .line 114
    int-to-long v2, v2

    .line 115
    sub-long v9, v0, v2

    .line 116
    .line 117
    move-object v0, p0

    .line 118
    move-wide v1, v4

    .line 119
    move v3, v6

    .line 120
    move-wide v4, v9

    .line 121
    move v6, p4

    .line 122
    move-object/from16 v7, p6

    .line 123
    .line 124
    invoke-direct/range {v0 .. v7}, Ld4/l0;->i(JIJILg3/b0$a;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public final f0(I)V
    .locals 0

    .line 1
    iput p1, p0, Ld4/l0;->C:I

    .line 2
    .line 3
    return-void
.end method

.method public final g0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ld4/l0;->G:Z

    .line 3
    .line 4
    return-void
.end method

.method public declared-synchronized o()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Ld4/l0;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Ld4/l0;->p(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public final q(JZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/l0;->a:Ld4/j0;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Ld4/l0;->m(JZZ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    invoke-virtual {v0, p1, p2}, Ld4/j0;->b(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld4/l0;->a:Ld4/j0;

    .line 2
    .line 3
    invoke-direct {p0}, Ld4/l0;->n()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Ld4/j0;->b(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final s()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld4/l0;->a:Ld4/j0;

    .line 2
    .line 3
    invoke-virtual {p0}, Ld4/l0;->o()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Ld4/j0;->b(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final u(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld4/l0;->a:Ld4/j0;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Ld4/l0;->t(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Ld4/j0;->c(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected w(Lb3/x1;)Lb3/x1;
    .locals 5

    .line 1
    iget-wide v0, p0, Ld4/l0;->F:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p1, Lb3/x1;->p:J

    .line 10
    .line 11
    const-wide v2, 0x7fffffffffffffffL

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lb3/x1;->b()Lb3/x1$b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-wide v1, p1, Lb3/x1;->p:J

    .line 25
    .line 26
    iget-wide v3, p0, Ld4/l0;->F:J

    .line 27
    .line 28
    add-long/2addr v1, v3

    .line 29
    invoke-virtual {v0, v1, v2}, Lb3/x1$b;->k0(J)Lb3/x1$b;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lb3/x1$b;->G()Lb3/x1;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :cond_0
    return-object p1
.end method

.method public final x()I
    .locals 1

    .line 1
    iget v0, p0, Ld4/l0;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public final declared-synchronized y()J
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Ld4/l0;->p:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-wide/high16 v0, -0x8000000000000000L

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Ld4/l0;->n:[J

    .line 10
    .line 11
    iget v1, p0, Ld4/l0;->r:I

    .line 12
    .line 13
    aget-wide v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    move-wide v0, v1

    .line 16
    :goto_0
    monitor-exit p0

    .line 17
    return-wide v0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    monitor-exit p0

    .line 20
    throw v0
.end method

.method public final declared-synchronized z()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Ld4/l0;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method
