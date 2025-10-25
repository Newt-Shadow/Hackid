.class public abstract Lvd/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lvd/v;Lid/a;Lad/e;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lvd/t$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lvd/t$a;

    .line 7
    .line 8
    iget v1, v0, Lvd/t$a;->d:I

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
    iput v1, v0, Lvd/t$a;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lvd/t$a;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lvd/t$a;-><init>(Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lvd/t$a;->c:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lvd/t$a;->d:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lvd/t$a;->b:Ljava/lang/Object;

    .line 39
    .line 40
    move-object p1, p0

    .line 41
    check-cast p1, Lid/a;

    .line 42
    .line 43
    iget-object p0, v0, Lvd/t$a;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lvd/v;

    .line 46
    .line 47
    :try_start_0
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_2
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0}, Lad/e;->getContext()Lad/i;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    sget-object v2, Ltd/t1;->t0:Ltd/t1$b;

    .line 69
    .line 70
    invoke-interface {p2, v2}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-ne p2, p0, :cond_3

    .line 75
    .line 76
    move p2, v3

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/4 p2, 0x0

    .line 79
    :goto_1
    if-eqz p2, :cond_6

    .line 80
    .line 81
    :try_start_1
    iput-object p0, v0, Lvd/t$a;->a:Ljava/lang/Object;

    .line 82
    .line 83
    iput-object p1, v0, Lvd/t$a;->b:Ljava/lang/Object;

    .line 84
    .line 85
    iput v3, v0, Lvd/t$a;->d:I

    .line 86
    .line 87
    new-instance p2, Ltd/n;

    .line 88
    .line 89
    invoke-static {v0}, Lbd/b;->c(Lad/e;)Lad/e;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-direct {p2, v2, v3}, Ltd/n;-><init>(Lad/e;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ltd/n;->E()V

    .line 97
    .line 98
    .line 99
    new-instance v2, Lvd/t$b;

    .line 100
    .line 101
    invoke-direct {v2, p2}, Lvd/t$b;-><init>(Ltd/l;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {p0, v2}, Lvd/x;->h(Lid/l;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Ltd/n;->x()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    if-ne p0, p2, :cond_4

    .line 116
    .line 117
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/h;->c(Lad/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .line 119
    .line 120
    :cond_4
    if-ne p0, v1, :cond_5

    .line 121
    .line 122
    return-object v1

    .line 123
    :cond_5
    :goto_2
    invoke-interface {p1}, Lid/a;->invoke()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 127
    .line 128
    return-object p0

    .line 129
    :goto_3
    invoke-interface {p1}, Lid/a;->invoke()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 134
    .line 135
    const-string p1, "awaitClose() can only be invoked from the producer context"

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0
.end method

.method public static final b(Ltd/l0;Lad/i;ILvd/a;Ltd/n0;Lid/l;Lid/Function2;)Lvd/w;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    invoke-static {p2, p3, v0, v1, v0}, Lvd/j;->b(ILvd/a;Lid/l;ILjava/lang/Object;)Lvd/g;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p0, p1}, Ltd/g0;->k(Ltd/l0;Lad/i;)Lad/i;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance p1, Lvd/u;

    .line 12
    .line 13
    invoke-direct {p1, p0, p2}, Lvd/u;-><init>(Lad/i;Lvd/g;)V

    .line 14
    .line 15
    .line 16
    if-eqz p5, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, p5}, Ltd/z1;->q(Lid/l;)Ltd/a1;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1, p4, p1, p6}, Ltd/a;->R0(Ltd/n0;Ljava/lang/Object;Lid/Function2;)V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method

.method public static synthetic c(Ltd/l0;Lad/i;ILvd/a;Ltd/n0;Lid/l;Lid/Function2;ILjava/lang/Object;)Lvd/w;
    .locals 7

    .line 1
    and-int/lit8 p8, p7, 0x1

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    sget-object p1, Lad/j;->a:Lad/j;

    .line 6
    .line 7
    :cond_0
    move-object v1, p1

    .line 8
    and-int/lit8 p1, p7, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    :cond_1
    move v2, p2

    .line 14
    and-int/lit8 p1, p7, 0x4

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    sget-object p3, Lvd/a;->a:Lvd/a;

    .line 19
    .line 20
    :cond_2
    move-object v3, p3

    .line 21
    and-int/lit8 p1, p7, 0x8

    .line 22
    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    sget-object p4, Ltd/n0;->a:Ltd/n0;

    .line 26
    .line 27
    :cond_3
    move-object v4, p4

    .line 28
    and-int/lit8 p1, p7, 0x10

    .line 29
    .line 30
    if-eqz p1, :cond_4

    .line 31
    .line 32
    const/4 p5, 0x0

    .line 33
    :cond_4
    move-object v5, p5

    .line 34
    move-object v0, p0

    .line 35
    move-object v6, p6

    .line 36
    invoke-static/range {v0 .. v6}, Lvd/t;->b(Ltd/l0;Lad/i;ILvd/a;Ltd/n0;Lid/l;Lid/Function2;)Lvd/w;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
