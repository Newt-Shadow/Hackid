.class final Lw9/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lj9/b;

.field private final b:Ld9/p;

.field private final c:Ld9/p;

.field private final d:Ld9/p;

.field private final e:Ld9/p;

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I


# direct methods
.method constructor <init>(Lj9/b;Ld9/p;Ld9/p;Ld9/p;Ld9/p;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz p4, :cond_2

    if-nez p5, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    if-eqz v2, :cond_5

    if-nez v0, :cond_4

    goto :goto_2

    .line 2
    :cond_4
    invoke-static {}, Ld9/j;->a()Ld9/j;

    move-result-object p1

    throw p1

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 3
    new-instance p2, Ld9/p;

    invoke-virtual {p4}, Ld9/p;->d()F

    move-result p3

    const/4 v0, 0x0

    invoke-direct {p2, v0, p3}, Ld9/p;-><init>(FF)V

    .line 4
    new-instance p3, Ld9/p;

    invoke-virtual {p5}, Ld9/p;->d()F

    move-result v1

    invoke-direct {p3, v0, v1}, Ld9/p;-><init>(FF)V

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    .line 5
    new-instance p4, Ld9/p;

    invoke-virtual {p1}, Lj9/b;->m()I

    move-result p5

    sub-int/2addr p5, v1

    int-to-float p5, p5

    invoke-virtual {p2}, Ld9/p;->d()F

    move-result v0

    invoke-direct {p4, p5, v0}, Ld9/p;-><init>(FF)V

    .line 6
    new-instance p5, Ld9/p;

    invoke-virtual {p1}, Lj9/b;->m()I

    move-result v0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p3}, Ld9/p;->d()F

    move-result v1

    invoke-direct {p5, v0, v1}, Ld9/p;-><init>(FF)V

    .line 7
    :cond_7
    :goto_3
    iput-object p1, p0, Lw9/c;->a:Lj9/b;

    .line 8
    iput-object p2, p0, Lw9/c;->b:Ld9/p;

    .line 9
    iput-object p3, p0, Lw9/c;->c:Ld9/p;

    .line 10
    iput-object p4, p0, Lw9/c;->d:Ld9/p;

    .line 11
    iput-object p5, p0, Lw9/c;->e:Ld9/p;

    .line 12
    invoke-virtual {p2}, Ld9/p;->c()F

    move-result p1

    invoke-virtual {p3}, Ld9/p;->c()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lw9/c;->f:I

    .line 13
    invoke-virtual {p4}, Ld9/p;->c()F

    move-result p1

    invoke-virtual {p5}, Ld9/p;->c()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lw9/c;->g:I

    .line 14
    invoke-virtual {p2}, Ld9/p;->d()F

    move-result p1

    invoke-virtual {p4}, Ld9/p;->d()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lw9/c;->h:I

    .line 15
    invoke-virtual {p3}, Ld9/p;->d()F

    move-result p1

    invoke-virtual {p5}, Ld9/p;->d()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lw9/c;->i:I

    return-void
.end method

.method constructor <init>(Lw9/c;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-object v0, p1, Lw9/c;->a:Lj9/b;

    iput-object v0, p0, Lw9/c;->a:Lj9/b;

    .line 18
    iget-object v0, p1, Lw9/c;->b:Ld9/p;

    iput-object v0, p0, Lw9/c;->b:Ld9/p;

    .line 19
    iget-object v0, p1, Lw9/c;->c:Ld9/p;

    iput-object v0, p0, Lw9/c;->c:Ld9/p;

    .line 20
    iget-object v0, p1, Lw9/c;->d:Ld9/p;

    iput-object v0, p0, Lw9/c;->d:Ld9/p;

    .line 21
    iget-object v0, p1, Lw9/c;->e:Ld9/p;

    iput-object v0, p0, Lw9/c;->e:Ld9/p;

    .line 22
    iget v0, p1, Lw9/c;->f:I

    iput v0, p0, Lw9/c;->f:I

    .line 23
    iget v0, p1, Lw9/c;->g:I

    iput v0, p0, Lw9/c;->g:I

    .line 24
    iget v0, p1, Lw9/c;->h:I

    iput v0, p0, Lw9/c;->h:I

    .line 25
    iget p1, p1, Lw9/c;->i:I

    iput p1, p0, Lw9/c;->i:I

    return-void
.end method

.method static j(Lw9/c;Lw9/c;)Lw9/c;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_1
    new-instance v6, Lw9/c;

    .line 8
    .line 9
    iget-object v1, p0, Lw9/c;->a:Lj9/b;

    .line 10
    .line 11
    iget-object v2, p0, Lw9/c;->b:Ld9/p;

    .line 12
    .line 13
    iget-object v3, p0, Lw9/c;->c:Ld9/p;

    .line 14
    .line 15
    iget-object v4, p1, Lw9/c;->d:Ld9/p;

    .line 16
    .line 17
    iget-object v5, p1, Lw9/c;->e:Ld9/p;

    .line 18
    .line 19
    move-object v0, v6

    .line 20
    invoke-direct/range {v0 .. v5}, Lw9/c;-><init>(Lj9/b;Ld9/p;Ld9/p;Ld9/p;Ld9/p;)V

    .line 21
    .line 22
    .line 23
    return-object v6
.end method


# virtual methods
.method a(IIZ)Lw9/c;
    .locals 12

    .line 1
    iget-object v0, p0, Lw9/c;->b:Ld9/p;

    .line 2
    .line 3
    iget-object v1, p0, Lw9/c;->c:Ld9/p;

    .line 4
    .line 5
    iget-object v2, p0, Lw9/c;->d:Ld9/p;

    .line 6
    .line 7
    iget-object v3, p0, Lw9/c;->e:Ld9/p;

    .line 8
    .line 9
    if-lez p1, :cond_3

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    move-object v4, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v4, v2

    .line 16
    :goto_0
    invoke-virtual {v4}, Ld9/p;->d()F

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    float-to-int v5, v5

    .line 21
    sub-int/2addr v5, p1

    .line 22
    if-gez v5, :cond_1

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    :cond_1
    new-instance p1, Ld9/p;

    .line 26
    .line 27
    invoke-virtual {v4}, Ld9/p;->c()F

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    int-to-float v5, v5

    .line 32
    invoke-direct {p1, v4, v5}, Ld9/p;-><init>(FF)V

    .line 33
    .line 34
    .line 35
    if-eqz p3, :cond_2

    .line 36
    .line 37
    move-object v8, p1

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move-object v10, p1

    .line 40
    move-object v8, v0

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    move-object v8, v0

    .line 43
    :goto_1
    move-object v10, v2

    .line 44
    :goto_2
    if-lez p2, :cond_7

    .line 45
    .line 46
    if-eqz p3, :cond_4

    .line 47
    .line 48
    iget-object p1, p0, Lw9/c;->c:Ld9/p;

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_4
    iget-object p1, p0, Lw9/c;->e:Ld9/p;

    .line 52
    .line 53
    :goto_3
    invoke-virtual {p1}, Ld9/p;->d()F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    float-to-int v0, v0

    .line 58
    add-int/2addr v0, p2

    .line 59
    iget-object p2, p0, Lw9/c;->a:Lj9/b;

    .line 60
    .line 61
    invoke-virtual {p2}, Lj9/b;->j()I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-lt v0, p2, :cond_5

    .line 66
    .line 67
    iget-object p2, p0, Lw9/c;->a:Lj9/b;

    .line 68
    .line 69
    invoke-virtual {p2}, Lj9/b;->j()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    add-int/lit8 v0, p2, -0x1

    .line 74
    .line 75
    :cond_5
    new-instance p2, Ld9/p;

    .line 76
    .line 77
    invoke-virtual {p1}, Ld9/p;->c()F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    int-to-float v0, v0

    .line 82
    invoke-direct {p2, p1, v0}, Ld9/p;-><init>(FF)V

    .line 83
    .line 84
    .line 85
    if-eqz p3, :cond_6

    .line 86
    .line 87
    move-object v9, p2

    .line 88
    goto :goto_4

    .line 89
    :cond_6
    move-object v11, p2

    .line 90
    move-object v9, v1

    .line 91
    goto :goto_5

    .line 92
    :cond_7
    move-object v9, v1

    .line 93
    :goto_4
    move-object v11, v3

    .line 94
    :goto_5
    new-instance p1, Lw9/c;

    .line 95
    .line 96
    iget-object v7, p0, Lw9/c;->a:Lj9/b;

    .line 97
    .line 98
    move-object v6, p1

    .line 99
    invoke-direct/range {v6 .. v11}, Lw9/c;-><init>(Lj9/b;Ld9/p;Ld9/p;Ld9/p;Ld9/p;)V

    .line 100
    .line 101
    .line 102
    return-object p1
.end method

.method b()Ld9/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lw9/c;->c:Ld9/p;

    .line 2
    .line 3
    return-object v0
.end method

.method c()Ld9/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lw9/c;->e:Ld9/p;

    .line 2
    .line 3
    return-object v0
.end method

.method d()I
    .locals 1

    .line 1
    iget v0, p0, Lw9/c;->g:I

    .line 2
    .line 3
    return v0
.end method

.method e()I
    .locals 1

    .line 1
    iget v0, p0, Lw9/c;->i:I

    .line 2
    .line 3
    return v0
.end method

.method f()I
    .locals 1

    .line 1
    iget v0, p0, Lw9/c;->f:I

    .line 2
    .line 3
    return v0
.end method

.method g()I
    .locals 1

    .line 1
    iget v0, p0, Lw9/c;->h:I

    .line 2
    .line 3
    return v0
.end method

.method h()Ld9/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lw9/c;->b:Ld9/p;

    .line 2
    .line 3
    return-object v0
.end method

.method i()Ld9/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lw9/c;->d:Ld9/p;

    .line 2
    .line 3
    return-object v0
.end method
