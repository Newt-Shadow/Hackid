.class final Lc3/p1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc3/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:Ld4/t$b;

.field private e:Z

.field private f:Z

.field final synthetic g:Lc3/p1;


# direct methods
.method public constructor <init>(Lc3/p1;Ljava/lang/String;ILd4/t$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc3/p1$a;->g:Lc3/p1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lc3/p1$a;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lc3/p1$a;->b:I

    .line 9
    .line 10
    if-nez p4, :cond_0

    .line 11
    .line 12
    const-wide/16 p1, -0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide p1, p4, Ld4/s;->d:J

    .line 16
    .line 17
    :goto_0
    iput-wide p1, p0, Lc3/p1$a;->c:J

    .line 18
    .line 19
    if-eqz p4, :cond_1

    .line 20
    .line 21
    invoke-virtual {p4}, Ld4/s;->b()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iput-object p4, p0, Lc3/p1$a;->d:Ld4/t$b;

    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method static synthetic a(Lc3/p1$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc3/p1$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lc3/p1$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc3/p1$a;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic c(Lc3/p1$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lc3/p1$a;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lc3/p1$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc3/p1$a;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lc3/p1$a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc3/p1$a;->e:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic f(Lc3/p1$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc3/p1$a;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lc3/p1$a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc3/p1$a;->f:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic h(Lc3/p1$a;)Ld4/t$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc3/p1$a;->d:Ld4/t$b;

    .line 2
    .line 3
    return-object p0
.end method

.method private l(Lb3/g4;Lb3/g4;I)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lb3/g4;->t()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-lt p3, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p2}, Lb3/g4;->t()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-ge p3, p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p3, v1

    .line 16
    :goto_0
    return p3

    .line 17
    :cond_1
    iget-object v0, p0, Lc3/p1$a;->g:Lc3/p1;

    .line 18
    .line 19
    invoke-static {v0}, Lc3/p1;->i(Lc3/p1;)Lb3/g4$d;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, p3, v0}, Lb3/g4;->r(ILb3/g4$d;)Lb3/g4$d;

    .line 24
    .line 25
    .line 26
    iget-object p3, p0, Lc3/p1$a;->g:Lc3/p1;

    .line 27
    .line 28
    invoke-static {p3}, Lc3/p1;->i(Lc3/p1;)Lb3/g4$d;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    iget p3, p3, Lb3/g4$d;->o:I

    .line 33
    .line 34
    :goto_1
    iget-object v0, p0, Lc3/p1$a;->g:Lc3/p1;

    .line 35
    .line 36
    invoke-static {v0}, Lc3/p1;->i(Lc3/p1;)Lb3/g4$d;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v0, v0, Lb3/g4$d;->p:I

    .line 41
    .line 42
    if-gt p3, v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1, p3}, Lb3/g4;->q(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p2, v0}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eq v0, v1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lc3/p1$a;->g:Lc3/p1;

    .line 55
    .line 56
    invoke-static {p1}, Lc3/p1;->j(Lc3/p1;)Lb3/g4$b;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p2, v0, p1}, Lb3/g4;->j(ILb3/g4$b;)Lb3/g4$b;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget p1, p1, Lb3/g4$b;->c:I

    .line 65
    .line 66
    return p1

    .line 67
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    return v1
.end method


# virtual methods
.method public i(ILd4/t$b;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    iget p2, p0, Lc3/p1$a;->b:I

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    return v0

    .line 12
    :cond_1
    iget-object p1, p0, Lc3/p1$a;->d:Ld4/t$b;

    .line 13
    .line 14
    if-nez p1, :cond_3

    .line 15
    .line 16
    invoke-virtual {p2}, Ld4/s;->b()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    iget-wide p1, p2, Ld4/s;->d:J

    .line 23
    .line 24
    iget-wide v2, p0, Lc3/p1$a;->c:J

    .line 25
    .line 26
    cmp-long p1, p1, v2

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move v0, v1

    .line 32
    :goto_1
    return v0

    .line 33
    :cond_3
    iget-wide v2, p2, Ld4/s;->d:J

    .line 34
    .line 35
    iget-wide v4, p1, Ld4/s;->d:J

    .line 36
    .line 37
    cmp-long v2, v2, v4

    .line 38
    .line 39
    if-nez v2, :cond_4

    .line 40
    .line 41
    iget v2, p2, Ld4/s;->b:I

    .line 42
    .line 43
    iget v3, p1, Ld4/s;->b:I

    .line 44
    .line 45
    if-ne v2, v3, :cond_4

    .line 46
    .line 47
    iget p2, p2, Ld4/s;->c:I

    .line 48
    .line 49
    iget p1, p1, Ld4/s;->c:I

    .line 50
    .line 51
    if-ne p2, p1, :cond_4

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    move v0, v1

    .line 55
    :goto_2
    return v0
.end method

.method public j(Lc3/b$a;)Z
    .locals 9

    .line 1
    iget-object v0, p1, Lc3/b$a;->d:Ld4/t$b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lc3/p1$a;->b:I

    .line 8
    .line 9
    iget p1, p1, Lc3/b$a;->c:I

    .line 10
    .line 11
    if-eq v0, p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v2

    .line 15
    :goto_0
    return v1

    .line 16
    :cond_1
    iget-wide v3, p0, Lc3/p1$a;->c:J

    .line 17
    .line 18
    const-wide/16 v5, -0x1

    .line 19
    .line 20
    cmp-long v5, v3, v5

    .line 21
    .line 22
    if-nez v5, :cond_2

    .line 23
    .line 24
    return v2

    .line 25
    :cond_2
    iget-wide v5, v0, Ld4/s;->d:J

    .line 26
    .line 27
    cmp-long v3, v5, v3

    .line 28
    .line 29
    if-lez v3, :cond_3

    .line 30
    .line 31
    return v1

    .line 32
    :cond_3
    iget-object v3, p0, Lc3/p1$a;->d:Ld4/t$b;

    .line 33
    .line 34
    if-nez v3, :cond_4

    .line 35
    .line 36
    return v2

    .line 37
    :cond_4
    iget-object v3, p1, Lc3/b$a;->b:Lb3/g4;

    .line 38
    .line 39
    iget-object v0, v0, Ld4/s;->a:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {v3, v0}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v3, p1, Lc3/b$a;->b:Lb3/g4;

    .line 46
    .line 47
    iget-object v4, p0, Lc3/p1$a;->d:Ld4/t$b;

    .line 48
    .line 49
    iget-object v4, v4, Ld4/s;->a:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iget-object v4, p1, Lc3/b$a;->d:Ld4/t$b;

    .line 56
    .line 57
    iget-wide v5, v4, Ld4/s;->d:J

    .line 58
    .line 59
    iget-object v7, p0, Lc3/p1$a;->d:Ld4/t$b;

    .line 60
    .line 61
    iget-wide v7, v7, Ld4/s;->d:J

    .line 62
    .line 63
    cmp-long v5, v5, v7

    .line 64
    .line 65
    if-ltz v5, :cond_c

    .line 66
    .line 67
    if-ge v0, v3, :cond_5

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_5
    if-le v0, v3, :cond_6

    .line 71
    .line 72
    return v1

    .line 73
    :cond_6
    invoke-virtual {v4}, Ld4/s;->b()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_9

    .line 78
    .line 79
    iget-object p1, p1, Lc3/b$a;->d:Ld4/t$b;

    .line 80
    .line 81
    iget v0, p1, Ld4/s;->b:I

    .line 82
    .line 83
    iget p1, p1, Ld4/s;->c:I

    .line 84
    .line 85
    iget-object v3, p0, Lc3/p1$a;->d:Ld4/t$b;

    .line 86
    .line 87
    iget v4, v3, Ld4/s;->b:I

    .line 88
    .line 89
    if-gt v0, v4, :cond_8

    .line 90
    .line 91
    if-ne v0, v4, :cond_7

    .line 92
    .line 93
    iget v0, v3, Ld4/s;->c:I

    .line 94
    .line 95
    if-le p1, v0, :cond_7

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_7
    move v1, v2

    .line 99
    :cond_8
    :goto_1
    return v1

    .line 100
    :cond_9
    iget-object p1, p1, Lc3/b$a;->d:Ld4/t$b;

    .line 101
    .line 102
    iget p1, p1, Ld4/s;->e:I

    .line 103
    .line 104
    const/4 v0, -0x1

    .line 105
    if-eq p1, v0, :cond_b

    .line 106
    .line 107
    iget-object v0, p0, Lc3/p1$a;->d:Ld4/t$b;

    .line 108
    .line 109
    iget v0, v0, Ld4/s;->b:I

    .line 110
    .line 111
    if-le p1, v0, :cond_a

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_a
    move v1, v2

    .line 115
    :cond_b
    :goto_2
    return v1

    .line 116
    :cond_c
    :goto_3
    return v2
.end method

.method public k(ILd4/t$b;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lc3/p1$a;->c:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lc3/p1$a;->b:I

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-wide p1, p2, Ld4/s;->d:J

    .line 16
    .line 17
    iput-wide p1, p0, Lc3/p1$a;->c:J

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public m(Lb3/g4;Lb3/g4;)Z
    .locals 3

    .line 1
    iget v0, p0, Lc3/p1$a;->b:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Lc3/p1$a;->l(Lb3/g4;Lb3/g4;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lc3/p1$a;->b:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    iget-object p1, p0, Lc3/p1$a;->d:Ld4/t$b;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    iget-object p1, p1, Ld4/s;->a:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Lb3/g4;->f(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eq p1, v1, :cond_2

    .line 27
    .line 28
    move v0, v2

    .line 29
    :cond_2
    return v0
.end method
