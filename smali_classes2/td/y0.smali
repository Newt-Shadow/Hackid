.class public abstract Ltd/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ltd/x0;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ltd/x0;->c()Lad/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-nez v1, :cond_2

    .line 12
    .line 13
    instance-of v2, v0, Lyd/h;

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-static {p1}, Ltd/y0;->b(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget v2, p0, Ltd/x0;->c:I

    .line 22
    .line 23
    invoke-static {v2}, Ltd/y0;->b(I)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ne p1, v2, :cond_2

    .line 28
    .line 29
    check-cast v0, Lyd/h;

    .line 30
    .line 31
    iget-object p1, v0, Lyd/h;->d:Ltd/i0;

    .line 32
    .line 33
    invoke-virtual {v0}, Lyd/h;->getContext()Lad/i;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Ltd/i0;->t0(Lad/i;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1, v0, p0}, Ltd/i0;->q0(Lad/i;Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-static {p0}, Ltd/y0;->e(Ltd/x0;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-static {p0, v0, v1}, Ltd/y0;->d(Ltd/x0;Lad/e;Z)V

    .line 52
    .line 53
    .line 54
    :goto_1
    return-void
.end method

.method public static final b(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final c(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final d(Ltd/x0;Lad/e;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ltd/x0;->h()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Ltd/x0;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object p0, Lxc/l;->b:Lxc/l$a;

    .line 12
    .line 13
    invoke-static {v1}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lxc/l;->b:Lxc/l$a;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ltd/x0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    invoke-static {p0}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p2, :cond_5

    .line 29
    .line 30
    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>"

    .line 31
    .line 32
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast p1, Lyd/h;

    .line 36
    .line 37
    iget-object p2, p1, Lyd/h;->e:Lad/e;

    .line 38
    .line 39
    iget-object v0, p1, Lyd/h;->g:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-interface {p2}, Lad/e;->getContext()Lad/i;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1, v0}, Lyd/m0;->i(Lad/i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v2, Lyd/m0;->a:Lyd/f0;

    .line 50
    .line 51
    if-eq v0, v2, :cond_1

    .line 52
    .line 53
    invoke-static {p2, v1, v0}, Ltd/g0;->m(Lad/e;Lad/i;Ljava/lang/Object;)Ltd/q2;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 p2, 0x0

    .line 59
    :goto_1
    :try_start_0
    iget-object p1, p1, Lyd/h;->e:Lad/e;

    .line 60
    .line 61
    invoke-interface {p1, p0}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget-object p0, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    invoke-virtual {p2}, Ltd/q2;->S0()Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_6

    .line 73
    .line 74
    :cond_2
    invoke-static {v1, v0}, Lyd/m0;->f(Lad/i;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    invoke-virtual {p2}, Ltd/q2;->S0()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    :cond_3
    invoke-static {v1, v0}, Lyd/m0;->f(Lad/i;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    throw p0

    .line 91
    :cond_5
    invoke-interface {p1, p0}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_6
    :goto_2
    return-void
.end method

.method private static final e(Ltd/x0;)V
    .locals 3

    .line 1
    sget-object v0, Ltd/o2;->a:Ltd/o2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ltd/o2;->b()Ltd/d1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ltd/d1;->Z0()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ltd/d1;->V0(Ltd/x0;)V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Ltd/d1;->X0(Z)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0}, Ltd/x0;->c()Lad/e;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {p0, v2, v1}, Ltd/y0;->d(Ltd/x0;Lad/e;Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v0}, Ltd/d1;->c1()Z

    .line 29
    .line 30
    .line 31
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v2

    .line 36
    :try_start_1
    invoke-virtual {p0, v2}, Ltd/x0;->g(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {v0, v1}, Ltd/d1;->J0(Z)V

    .line 40
    .line 41
    .line 42
    :goto_1
    return-void

    .line 43
    :catchall_1
    move-exception p0

    .line 44
    invoke-virtual {v0, v1}, Ltd/d1;->J0(Z)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method
