.class abstract synthetic Lwd/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lwd/d;Lid/p;)Lwd/d;
    .locals 1

    .line 1
    new-instance v0, Lwd/l$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lwd/l$a;-><init>(Lwd/d;Lid/p;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final b(Lwd/d;Lwd/e;Lad/e;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lwd/l$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lwd/l$b;

    .line 7
    .line 8
    iget v1, v0, Lwd/l$b;->c:I

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
    iput v1, v0, Lwd/l$b;->c:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lwd/l$b;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lwd/l$b;-><init>(Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lwd/l$b;->b:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lwd/l$b;->c:I

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
    iget-object p0, v0, Lwd/l$b;->a:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lkotlin/jvm/internal/c0;

    .line 41
    .line 42
    :try_start_0
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Lkotlin/jvm/internal/c0;

    .line 60
    .line 61
    invoke-direct {p2}, Lkotlin/jvm/internal/c0;-><init>()V

    .line 62
    .line 63
    .line 64
    :try_start_1
    new-instance v2, Lwd/l$c;

    .line 65
    .line 66
    invoke-direct {v2, p1, p2}, Lwd/l$c;-><init>(Lwd/e;Lkotlin/jvm/internal/c0;)V

    .line 67
    .line 68
    .line 69
    iput-object p2, v0, Lwd/l$b;->a:Ljava/lang/Object;

    .line 70
    .line 71
    iput v3, v0, Lwd/l$b;->c:I

    .line 72
    .line 73
    invoke-interface {p0, v2, v0}, Lwd/d;->collect(Lwd/e;Lad/e;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    if-ne p0, v1, :cond_3

    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 81
    return-object p0

    .line 82
    :catchall_1
    move-exception p1

    .line 83
    move-object p0, p2

    .line 84
    :goto_2
    iget-object p0, p0, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p0, Ljava/lang/Throwable;

    .line 87
    .line 88
    invoke-static {p1, p0}, Lwd/l;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-nez p2, :cond_6

    .line 93
    .line 94
    invoke-interface {v0}, Lad/e;->getContext()Lad/i;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-static {p1, p2}, Lwd/l;->c(Ljava/lang/Throwable;Lad/i;)Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-nez p2, :cond_6

    .line 103
    .line 104
    if-nez p0, :cond_4

    .line 105
    .line 106
    return-object p1

    .line 107
    :cond_4
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    .line 108
    .line 109
    if-eqz p2, :cond_5

    .line 110
    .line 111
    invoke-static {p0, p1}, Lxc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :cond_5
    invoke-static {p1, p0}, Lxc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :cond_6
    throw p1
.end method

.method private static final c(Ljava/lang/Throwable;Lad/i;)Z
    .locals 1

    .line 1
    sget-object v0, Ltd/t1;->t0:Ltd/t1$b;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ltd/t1;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ltd/t1;->isCancelled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p1}, Ltd/t1;->u()Ljava/util/concurrent/CancellationException;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p0, p1}, Lwd/l;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method private static final d(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method
