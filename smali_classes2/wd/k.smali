.class abstract synthetic Lwd/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lwd/e;Lid/p;Ljava/lang/Throwable;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lwd/k;->c(Lwd/e;Lid/p;Ljava/lang/Throwable;Lad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Lwd/e;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lwd/y;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    check-cast p0, Lwd/y;

    .line 7
    .line 8
    iget-object p0, p0, Lwd/y;->a:Ljava/lang/Throwable;

    .line 9
    .line 10
    throw p0
.end method

.method private static final c(Lwd/e;Lid/p;Ljava/lang/Throwable;Lad/e;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p3, Lwd/k$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lwd/k$a;

    .line 7
    .line 8
    iget v1, v0, Lwd/k$a;->c:I

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
    iput v1, v0, Lwd/k$a;->c:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lwd/k$a;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lwd/k$a;-><init>(Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lwd/k$a;->b:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lwd/k$a;->c:I

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
    iget-object p0, v0, Lwd/k$a;->a:Ljava/lang/Object;

    .line 39
    .line 40
    move-object p2, p0

    .line 41
    check-cast p2, Ljava/lang/Throwable;

    .line 42
    .line 43
    :try_start_0
    invoke-static {p3}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_2
    invoke-static {p3}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :try_start_1
    iput-object p2, v0, Lwd/k$a;->a:Ljava/lang/Object;

    .line 59
    .line 60
    iput v3, v0, Lwd/k$a;->c:I

    .line 61
    .line 62
    invoke-interface {p1, p0, p2, v0}, Lid/p;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    if-ne p0, v1, :cond_3

    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_3
    :goto_1
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 70
    .line 71
    return-object p0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    if-eq p2, p0, :cond_4

    .line 76
    .line 77
    invoke-static {p0, p2}, Lxc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    throw p0
.end method

.method public static final d(Lwd/d;Lid/p;)Lwd/d;
    .locals 1

    .line 1
    new-instance v0, Lwd/k$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lwd/k$b;-><init>(Lwd/d;Lid/p;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final e(Lwd/d;Lid/Function2;)Lwd/d;
    .locals 1

    .line 1
    new-instance v0, Lwd/k$c;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Lwd/k$c;-><init>(Lid/Function2;Lwd/d;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
