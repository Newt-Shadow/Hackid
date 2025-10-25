.class public final Lk3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/k;


# static fields
.field public static final q:Lg3/p;


# instance fields
.field private final a:Ly4/e0;

.field private final b:Ly4/e0;

.field private final c:Ly4/e0;

.field private final d:Ly4/e0;

.field private final e:Lk3/d;

.field private f:Lg3/m;

.field private g:I

.field private h:Z

.field private i:J

.field private j:I

.field private k:I

.field private l:I

.field private m:J

.field private n:Z

.field private o:Lk3/a;

.field private p:Lk3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk3/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lk3/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lk3/c;->q:Lg3/p;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ly4/e0;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1}, Ly4/e0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lk3/c;->a:Ly4/e0;

    .line 11
    .line 12
    new-instance v0, Ly4/e0;

    .line 13
    .line 14
    const/16 v1, 0x9

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ly4/e0;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lk3/c;->b:Ly4/e0;

    .line 20
    .line 21
    new-instance v0, Ly4/e0;

    .line 22
    .line 23
    const/16 v1, 0xb

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ly4/e0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lk3/c;->c:Ly4/e0;

    .line 29
    .line 30
    new-instance v0, Ly4/e0;

    .line 31
    .line 32
    invoke-direct {v0}, Ly4/e0;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lk3/c;->d:Ly4/e0;

    .line 36
    .line 37
    new-instance v0, Lk3/d;

    .line 38
    .line 39
    invoke-direct {v0}, Lk3/d;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lk3/c;->e:Lk3/d;

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lk3/c;->g:I

    .line 46
    .line 47
    return-void
.end method

.method public static synthetic a()[Lg3/k;
    .locals 1

    .line 1
    invoke-static {}, Lk3/c;->h()[Lg3/k;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lk3/c;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lk3/c;->f:Lg3/m;

    .line 6
    .line 7
    new-instance v1, Lg3/z$b;

    .line 8
    .line 9
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Lg3/z$b;-><init>(J)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Lg3/m;->l(Lg3/z;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lk3/c;->n:Z

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private e()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lk3/c;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lk3/c;->i:J

    .line 6
    .line 7
    iget-wide v2, p0, Lk3/c;->m:J

    .line 8
    .line 9
    add-long/2addr v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lk3/c;->e:Lk3/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lk3/d;->d()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    cmp-long v0, v0, v2

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-wide v0, p0, Lk3/c;->m:J

    .line 30
    .line 31
    :goto_0
    return-wide v0
.end method

.method private static synthetic h()[Lg3/k;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lg3/k;

    .line 3
    .line 4
    new-instance v1, Lk3/c;

    .line 5
    .line 6
    invoke-direct {v1}, Lk3/c;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v1, v0, v2

    .line 11
    .line 12
    return-object v0
.end method

.method private i(Lg3/l;)Ly4/e0;
    .locals 4

    .line 1
    iget v0, p0, Lk3/c;->l:I

    .line 2
    .line 3
    iget-object v1, p0, Lk3/c;->d:Ly4/e0;

    .line 4
    .line 5
    invoke-virtual {v1}, Ly4/e0;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lk3/c;->d:Ly4/e0;

    .line 13
    .line 14
    invoke-virtual {v0}, Ly4/e0;->b()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    mul-int/lit8 v1, v1, 0x2

    .line 19
    .line 20
    iget v3, p0, Lk3/c;->l:I

    .line 21
    .line 22
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    new-array v1, v1, [B

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ly4/e0;->R([BI)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lk3/c;->d:Ly4/e0;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ly4/e0;->T(I)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v0, p0, Lk3/c;->d:Ly4/e0;

    .line 38
    .line 39
    iget v1, p0, Lk3/c;->l:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ly4/e0;->S(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lk3/c;->d:Ly4/e0;

    .line 45
    .line 46
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget v1, p0, Lk3/c;->l:I

    .line 51
    .line 52
    invoke-interface {p1, v0, v2, v1}, Lg3/l;->readFully([BII)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lk3/c;->d:Ly4/e0;

    .line 56
    .line 57
    return-object p1
.end method

.method private j(Lg3/l;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lk3/c;->b:Ly4/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x9

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-interface {p1, v0, v1, v2, v3}, Lg3/l;->e([BIIZ)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    iget-object p1, p0, Lk3/c;->b:Ly4/e0;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ly4/e0;->T(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lk3/c;->b:Ly4/e0;

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    invoke-virtual {p1, v0}, Ly4/e0;->U(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lk3/c;->b:Ly4/e0;

    .line 30
    .line 31
    invoke-virtual {p1}, Ly4/e0;->G()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    and-int/lit8 v4, p1, 0x4

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    move v4, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v4, v1

    .line 42
    :goto_0
    and-int/2addr p1, v3

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    move v1, v3

    .line 46
    :cond_2
    if-eqz v4, :cond_3

    .line 47
    .line 48
    iget-object p1, p0, Lk3/c;->o:Lk3/a;

    .line 49
    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    new-instance p1, Lk3/a;

    .line 53
    .line 54
    iget-object v4, p0, Lk3/c;->f:Lg3/m;

    .line 55
    .line 56
    const/16 v5, 0x8

    .line 57
    .line 58
    invoke-interface {v4, v5, v3}, Lg3/m;->a(II)Lg3/b0;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-direct {p1, v4}, Lk3/a;-><init>(Lg3/b0;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lk3/c;->o:Lk3/a;

    .line 66
    .line 67
    :cond_3
    const/4 p1, 0x2

    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    iget-object v1, p0, Lk3/c;->p:Lk3/f;

    .line 71
    .line 72
    if-nez v1, :cond_4

    .line 73
    .line 74
    new-instance v1, Lk3/f;

    .line 75
    .line 76
    iget-object v4, p0, Lk3/c;->f:Lg3/m;

    .line 77
    .line 78
    invoke-interface {v4, v2, p1}, Lg3/m;->a(II)Lg3/b0;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-direct {v1, v4}, Lk3/f;-><init>(Lg3/b0;)V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Lk3/c;->p:Lk3/f;

    .line 86
    .line 87
    :cond_4
    iget-object v1, p0, Lk3/c;->f:Lg3/m;

    .line 88
    .line 89
    invoke-interface {v1}, Lg3/m;->n()V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lk3/c;->b:Ly4/e0;

    .line 93
    .line 94
    invoke-virtual {v1}, Ly4/e0;->p()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    sub-int/2addr v1, v2

    .line 99
    add-int/2addr v1, v0

    .line 100
    iput v1, p0, Lk3/c;->j:I

    .line 101
    .line 102
    iput p1, p0, Lk3/c;->g:I

    .line 103
    .line 104
    return v3
.end method

.method private k(Lg3/l;)Z
    .locals 9

    .line 1
    invoke-direct {p0}, Lk3/c;->e()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget v2, p0, Lk3/c;->k:I

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    if-ne v2, v3, :cond_1

    .line 16
    .line 17
    iget-object v3, p0, Lk3/c;->o:Lk3/a;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Lk3/c;->d()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lk3/c;->o:Lk3/a;

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lk3/c;->i(Lg3/l;)Ly4/e0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v2, p1, v0, v1}, Lk3/e;->a(Ly4/e0;J)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    :cond_0
    :goto_0
    move v0, v6

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/16 v3, 0x9

    .line 37
    .line 38
    if-ne v2, v3, :cond_2

    .line 39
    .line 40
    iget-object v3, p0, Lk3/c;->p:Lk3/f;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-direct {p0}, Lk3/c;->d()V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lk3/c;->p:Lk3/f;

    .line 48
    .line 49
    invoke-direct {p0, p1}, Lk3/c;->i(Lg3/l;)Ly4/e0;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v2, p1, v0, v1}, Lk3/e;->a(Ly4/e0;J)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/16 v3, 0x12

    .line 59
    .line 60
    if-ne v2, v3, :cond_3

    .line 61
    .line 62
    iget-boolean v2, p0, Lk3/c;->n:Z

    .line 63
    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    iget-object v2, p0, Lk3/c;->e:Lk3/d;

    .line 67
    .line 68
    invoke-direct {p0, p1}, Lk3/c;->i(Lg3/l;)Ly4/e0;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v2, p1, v0, v1}, Lk3/e;->a(Ly4/e0;J)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iget-object v0, p0, Lk3/c;->e:Lk3/d;

    .line 77
    .line 78
    invoke-virtual {v0}, Lk3/d;->d()J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    cmp-long v2, v0, v4

    .line 83
    .line 84
    if-eqz v2, :cond_0

    .line 85
    .line 86
    iget-object v2, p0, Lk3/c;->f:Lg3/m;

    .line 87
    .line 88
    new-instance v3, Lg3/x;

    .line 89
    .line 90
    iget-object v7, p0, Lk3/c;->e:Lk3/d;

    .line 91
    .line 92
    invoke-virtual {v7}, Lk3/d;->e()[J

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    iget-object v8, p0, Lk3/c;->e:Lk3/d;

    .line 97
    .line 98
    invoke-virtual {v8}, Lk3/d;->f()[J

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-direct {v3, v7, v8, v0, v1}, Lg3/x;-><init>([J[JJ)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v2, v3}, Lg3/m;->l(Lg3/z;)V

    .line 106
    .line 107
    .line 108
    iput-boolean v6, p0, Lk3/c;->n:Z

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    iget v0, p0, Lk3/c;->l:I

    .line 112
    .line 113
    invoke-interface {p1, v0}, Lg3/l;->m(I)V

    .line 114
    .line 115
    .line 116
    const/4 p1, 0x0

    .line 117
    move v0, p1

    .line 118
    :goto_1
    iget-boolean v1, p0, Lk3/c;->h:Z

    .line 119
    .line 120
    if-nez v1, :cond_5

    .line 121
    .line 122
    if-eqz p1, :cond_5

    .line 123
    .line 124
    iput-boolean v6, p0, Lk3/c;->h:Z

    .line 125
    .line 126
    iget-object p1, p0, Lk3/c;->e:Lk3/d;

    .line 127
    .line 128
    invoke-virtual {p1}, Lk3/d;->d()J

    .line 129
    .line 130
    .line 131
    move-result-wide v1

    .line 132
    cmp-long p1, v1, v4

    .line 133
    .line 134
    if-nez p1, :cond_4

    .line 135
    .line 136
    iget-wide v1, p0, Lk3/c;->m:J

    .line 137
    .line 138
    neg-long v1, v1

    .line 139
    goto :goto_2

    .line 140
    :cond_4
    const-wide/16 v1, 0x0

    .line 141
    .line 142
    :goto_2
    iput-wide v1, p0, Lk3/c;->i:J

    .line 143
    .line 144
    :cond_5
    const/4 p1, 0x4

    .line 145
    iput p1, p0, Lk3/c;->j:I

    .line 146
    .line 147
    const/4 p1, 0x2

    .line 148
    iput p1, p0, Lk3/c;->g:I

    .line 149
    .line 150
    return v0
.end method

.method private l(Lg3/l;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lk3/c;->c:Ly4/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0xb

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-interface {p1, v0, v1, v2, v3}, Lg3/l;->e([BIIZ)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    iget-object p1, p0, Lk3/c;->c:Ly4/e0;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ly4/e0;->T(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lk3/c;->c:Ly4/e0;

    .line 24
    .line 25
    invoke-virtual {p1}, Ly4/e0;->G()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lk3/c;->k:I

    .line 30
    .line 31
    iget-object p1, p0, Lk3/c;->c:Ly4/e0;

    .line 32
    .line 33
    invoke-virtual {p1}, Ly4/e0;->J()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lk3/c;->l:I

    .line 38
    .line 39
    iget-object p1, p0, Lk3/c;->c:Ly4/e0;

    .line 40
    .line 41
    invoke-virtual {p1}, Ly4/e0;->J()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    int-to-long v0, p1

    .line 46
    iput-wide v0, p0, Lk3/c;->m:J

    .line 47
    .line 48
    iget-object p1, p0, Lk3/c;->c:Ly4/e0;

    .line 49
    .line 50
    invoke-virtual {p1}, Ly4/e0;->G()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    shl-int/lit8 p1, p1, 0x18

    .line 55
    .line 56
    int-to-long v0, p1

    .line 57
    iget-wide v4, p0, Lk3/c;->m:J

    .line 58
    .line 59
    or-long/2addr v0, v4

    .line 60
    const-wide/16 v4, 0x3e8

    .line 61
    .line 62
    mul-long/2addr v0, v4

    .line 63
    iput-wide v0, p0, Lk3/c;->m:J

    .line 64
    .line 65
    iget-object p1, p0, Lk3/c;->c:Ly4/e0;

    .line 66
    .line 67
    const/4 v0, 0x3

    .line 68
    invoke-virtual {p1, v0}, Ly4/e0;->U(I)V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x4

    .line 72
    iput p1, p0, Lk3/c;->g:I

    .line 73
    .line 74
    return v3
.end method

.method private m(Lg3/l;)V
    .locals 1

    .line 1
    iget v0, p0, Lk3/c;->j:I

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lg3/l;->m(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lk3/c;->j:I

    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    iput p1, p0, Lk3/c;->g:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public b(JJ)V
    .locals 0

    .line 1
    const-wide/16 p3, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, p3

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lk3/c;->g:I

    .line 10
    .line 11
    iput-boolean p2, p0, Lk3/c;->h:Z

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x3

    .line 15
    iput p1, p0, Lk3/c;->g:I

    .line 16
    .line 17
    :goto_0
    iput p2, p0, Lk3/c;->j:I

    .line 18
    .line 19
    return-void
.end method

.method public c(Lg3/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk3/c;->f:Lg3/m;

    .line 2
    .line 3
    return-void
.end method

.method public f(Lg3/l;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lk3/c;->a:Ly4/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-interface {p1, v0, v2, v1}, Lg3/l;->p([BII)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lk3/c;->a:Ly4/e0;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ly4/e0;->T(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lk3/c;->a:Ly4/e0;

    .line 18
    .line 19
    invoke-virtual {v0}, Ly4/e0;->J()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const v1, 0x464c56

    .line 24
    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    return v2

    .line 29
    :cond_0
    iget-object v0, p0, Lk3/c;->a:Ly4/e0;

    .line 30
    .line 31
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x2

    .line 36
    invoke-interface {p1, v0, v2, v1}, Lg3/l;->p([BII)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lk3/c;->a:Ly4/e0;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ly4/e0;->T(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lk3/c;->a:Ly4/e0;

    .line 45
    .line 46
    invoke-virtual {v0}, Ly4/e0;->M()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    and-int/lit16 v0, v0, 0xfa

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    return v2

    .line 55
    :cond_1
    iget-object v0, p0, Lk3/c;->a:Ly4/e0;

    .line 56
    .line 57
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/4 v1, 0x4

    .line 62
    invoke-interface {p1, v0, v2, v1}, Lg3/l;->p([BII)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lk3/c;->a:Ly4/e0;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ly4/e0;->T(I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lk3/c;->a:Ly4/e0;

    .line 71
    .line 72
    invoke-virtual {v0}, Ly4/e0;->p()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-interface {p1}, Lg3/l;->l()V

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v0}, Lg3/l;->h(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lk3/c;->a:Ly4/e0;

    .line 83
    .line 84
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {p1, v0, v2, v1}, Lg3/l;->p([BII)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lk3/c;->a:Ly4/e0;

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Ly4/e0;->T(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lk3/c;->a:Ly4/e0;

    .line 97
    .line 98
    invoke-virtual {p1}, Ly4/e0;->p()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_2

    .line 103
    .line 104
    const/4 v2, 0x1

    .line 105
    :cond_2
    return v2
.end method

.method public g(Lg3/l;Lg3/y;)I
    .locals 2

    .line 1
    iget-object p2, p0, Lk3/c;->f:Lg3/m;

    .line 2
    .line 3
    invoke-static {p2}, Ly4/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :cond_0
    :goto_0
    iget p2, p0, Lk3/c;->g:I

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq p2, v0, :cond_4

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p2, v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p2, v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-ne p2, v0, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lk3/c;->k(Lg3/l;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return p1

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_2
    invoke-direct {p0, p1}, Lk3/c;->l(Lg3/l;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_0

    .line 40
    .line 41
    return v1

    .line 42
    :cond_3
    invoke-direct {p0, p1}, Lk3/c;->m(Lg3/l;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    invoke-direct {p0, p1}, Lk3/c;->j(Lg3/l;)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-nez p2, :cond_0

    .line 51
    .line 52
    return v1
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method
