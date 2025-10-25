.class final Landroidx/datastore/preferences/protobuf/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/e1;


# instance fields
.field private final a:Landroidx/datastore/preferences/protobuf/p0;

.field private final b:Landroidx/datastore/preferences/protobuf/l1;

.field private final c:Z

.field private final d:Landroidx/datastore/preferences/protobuf/p;


# direct methods
.method private constructor <init>(Landroidx/datastore/preferences/protobuf/l1;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/t0;->b:Landroidx/datastore/preferences/protobuf/l1;

    .line 5
    .line 6
    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/p;->e(Landroidx/datastore/preferences/protobuf/p0;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/t0;->c:Z

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/t0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 13
    .line 14
    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/t0;->a:Landroidx/datastore/preferences/protobuf/p0;

    .line 15
    .line 16
    return-void
.end method

.method private i(Landroidx/datastore/preferences/protobuf/l1;Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/l1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/l1;->i(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private j(Landroidx/datastore/preferences/protobuf/l1;Landroidx/datastore/preferences/protobuf/p;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/d1;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 9

    .line 1
    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/l1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/p;->d(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    :goto_0
    :try_start_0
    invoke-interface {p4}, Landroidx/datastore/preferences/protobuf/d1;->w()I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const v1, 0x7fffffff

    .line 14
    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, p3, v7}, Landroidx/datastore/preferences/protobuf/l1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    move-object v0, p0

    .line 23
    move-object v1, p4

    .line 24
    move-object v2, p5

    .line 25
    move-object v3, p2

    .line 26
    move-object v4, v8

    .line 27
    move-object v5, p1

    .line 28
    move-object v6, v7

    .line 29
    :try_start_1
    invoke-direct/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/t0;->l(Landroidx/datastore/preferences/protobuf/d1;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/s;Landroidx/datastore/preferences/protobuf/l1;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p1, p3, v7}, Landroidx/datastore/preferences/protobuf/l1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p2

    .line 41
    invoke-virtual {p1, p3, v7}, Landroidx/datastore/preferences/protobuf/l1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    throw p2
.end method

.method static k(Landroidx/datastore/preferences/protobuf/l1;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/p0;)Landroidx/datastore/preferences/protobuf/t0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/t0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/t0;-><init>(Landroidx/datastore/preferences/protobuf/l1;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/p0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private l(Landroidx/datastore/preferences/protobuf/d1;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/s;Landroidx/datastore/preferences/protobuf/l1;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/d1;->q()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Landroidx/datastore/preferences/protobuf/q1;->a:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->b(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v4, 0x2

    .line 16
    if-ne v1, v4, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/t0;->a:Landroidx/datastore/preferences/protobuf/p0;

    .line 19
    .line 20
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/q1;->a(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p3, p2, v1, v0}, Landroidx/datastore/preferences/protobuf/p;->b(Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/p0;I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p3, p1, v0, p2, p4}, Landroidx/datastore/preferences/protobuf/p;->h(Landroidx/datastore/preferences/protobuf/d1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/s;)V

    .line 31
    .line 32
    .line 33
    return v2

    .line 34
    :cond_0
    invoke-virtual {p5, p6, p1, v3}, Landroidx/datastore/preferences/protobuf/l1;->m(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/d1;I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :cond_1
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/d1;->C()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    return p1

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    move-object v1, v0

    .line 46
    :cond_3
    :goto_0
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/d1;->w()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const v5, 0x7fffffff

    .line 51
    .line 52
    .line 53
    if-ne v4, v5, :cond_4

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/d1;->q()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    sget v5, Landroidx/datastore/preferences/protobuf/q1;->c:I

    .line 61
    .line 62
    if-ne v4, v5, :cond_5

    .line 63
    .line 64
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/d1;->k()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/t0;->a:Landroidx/datastore/preferences/protobuf/p0;

    .line 69
    .line 70
    invoke-virtual {p3, p2, v0, v3}, Landroidx/datastore/preferences/protobuf/p;->b(Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/p0;I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_0

    .line 75
    :cond_5
    sget v5, Landroidx/datastore/preferences/protobuf/q1;->d:I

    .line 76
    .line 77
    if-ne v4, v5, :cond_7

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    invoke-virtual {p3, p1, v0, p2, p4}, Landroidx/datastore/preferences/protobuf/p;->h(Landroidx/datastore/preferences/protobuf/d1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/s;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_6
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/d1;->z()Landroidx/datastore/preferences/protobuf/g;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    goto :goto_0

    .line 90
    :cond_7
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/d1;->C()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_3

    .line 95
    .line 96
    :goto_1
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/d1;->q()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    sget v4, Landroidx/datastore/preferences/protobuf/q1;->b:I

    .line 101
    .line 102
    if-ne p1, v4, :cond_a

    .line 103
    .line 104
    if-eqz v1, :cond_9

    .line 105
    .line 106
    if-eqz v0, :cond_8

    .line 107
    .line 108
    invoke-virtual {p3, v1, v0, p2, p4}, Landroidx/datastore/preferences/protobuf/p;->i(Landroidx/datastore/preferences/protobuf/g;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/s;)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_8
    invoke-virtual {p5, p6, v3, v1}, Landroidx/datastore/preferences/protobuf/l1;->d(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/g;)V

    .line 113
    .line 114
    .line 115
    :cond_9
    :goto_2
    return v2

    .line 116
    :cond_a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/z;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    throw p1
.end method

.method private m(Landroidx/datastore/preferences/protobuf/l1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/r1;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/l1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/l1;->s(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/r1;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/t0;->b:Landroidx/datastore/preferences/protobuf/l1;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/g1;->F(Landroidx/datastore/preferences/protobuf/l1;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/t0;->c:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/t0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 11
    .line 12
    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/g1;->D(Landroidx/datastore/preferences/protobuf/p;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/t0;->b:Landroidx/datastore/preferences/protobuf/l1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/l1;->j(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/t0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/p;->f(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/t0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/p;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/s;->k()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/t0;->b:Landroidx/datastore/preferences/protobuf/l1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/l1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/t0;->b:Landroidx/datastore/preferences/protobuf/l1;

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Landroidx/datastore/preferences/protobuf/l1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/t0;->c:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/t0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/p;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/t0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Landroidx/datastore/preferences/protobuf/p;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/s;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_1
    const/4 p1, 0x1

    .line 43
    return p1
.end method

.method public e(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/t0;->b:Landroidx/datastore/preferences/protobuf/l1;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/t0;->i(Landroidx/datastore/preferences/protobuf/l1;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x0

    .line 8
    .line 9
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/t0;->c:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/t0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Landroidx/datastore/preferences/protobuf/p;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/s;->f()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    add-int/2addr v0, p1

    .line 24
    :cond_0
    return v0
.end method

.method public f(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/t0;->b:Landroidx/datastore/preferences/protobuf/l1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/l1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/t0;->c:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/t0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroidx/datastore/preferences/protobuf/p;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    mul-int/lit8 v0, v0, 0x35

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/s;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    add-int/2addr v0, p1

    .line 28
    :cond_0
    return v0
.end method

.method public g(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/d1;Landroidx/datastore/preferences/protobuf/o;)V
    .locals 6

    .line 1
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/t0;->b:Landroidx/datastore/preferences/protobuf/l1;

    .line 2
    .line 3
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/t0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v3, p1

    .line 7
    move-object v4, p2

    .line 8
    move-object v5, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/t0;->j(Landroidx/datastore/preferences/protobuf/l1;Landroidx/datastore/preferences/protobuf/p;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/d1;Landroidx/datastore/preferences/protobuf/o;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public h(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/r1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/t0;->d:Landroidx/datastore/preferences/protobuf/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/p;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/s;->n()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/t0;->b:Landroidx/datastore/preferences/protobuf/l1;

    .line 18
    .line 19
    invoke-direct {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/t0;->m(Landroidx/datastore/preferences/protobuf/l1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/r1;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    throw p1
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/t0;->a:Landroidx/datastore/preferences/protobuf/p0;

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/datastore/preferences/protobuf/w;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroidx/datastore/preferences/protobuf/w;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/w;->I()Landroidx/datastore/preferences/protobuf/w;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/p0;->c()Landroidx/datastore/preferences/protobuf/p0$a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/p0$a;->s()Landroidx/datastore/preferences/protobuf/p0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
