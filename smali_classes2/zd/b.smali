.class public abstract Lzd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lid/Function2;Ljava/lang/Object;Lad/e;)V
    .locals 3

    .line 1
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->a(Lad/e;)Lad/e;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :try_start_0
    invoke-interface {p2}, Lad/e;->getContext()Lad/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lyd/m0;->i(Lad/i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->b(Lad/e;)V

    .line 15
    .line 16
    .line 17
    instance-of v2, p0, Lkotlin/coroutines/jvm/internal/a;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-static {p0, p1, p2}, Lbd/b;->d(Lid/Function2;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x2

    .line 27
    invoke-static {p0, v2}, Lkotlin/jvm/internal/g0;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lid/Function2;

    .line 32
    .line 33
    invoke-interface {p0, p1, p2}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_0
    :try_start_2
    invoke-static {v0, v1}, Lyd/m0;->f(Lad/i;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eq p0, p1, :cond_1

    .line 45
    .line 46
    invoke-static {p0}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p2, p0}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    :try_start_3
    invoke-static {v0, v1}, Lyd/m0;->f(Lad/i;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    sget-object p1, Lxc/l;->b:Lxc/l$a;

    .line 61
    .line 62
    invoke-static {p0}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-interface {p2, p0}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static final b(Lyd/b0;Ljava/lang/Object;Lid/Function2;)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    :try_start_0
    instance-of v1, p2, Lkotlin/coroutines/jvm/internal/a;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    invoke-static {p2, p1, p0}, Lbd/b;->d(Lid/Function2;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p2, v0}, Lkotlin/jvm/internal/g0;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lid/Function2;

    .line 16
    .line 17
    invoke-interface {p2, p1, p0}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    new-instance p2, Ltd/a0;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {p2, p1, v1, v0, v2}, Ltd/a0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    move-object p1, p2

    .line 31
    :goto_0
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    if-ne p1, p2, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Ltd/z1;->s0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sget-object p1, Ltd/a2;->b:Lyd/f0;

    .line 47
    .line 48
    if-ne p0, p1, :cond_2

    .line 49
    .line 50
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    instance-of p1, p0, Ltd/a0;

    .line 56
    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    invoke-static {p0}, Ltd/a2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :goto_1
    return-object p0

    .line 64
    :cond_3
    check-cast p0, Ltd/a0;

    .line 65
    .line 66
    iget-object p0, p0, Ltd/a0;->a:Ljava/lang/Throwable;

    .line 67
    .line 68
    throw p0
.end method
