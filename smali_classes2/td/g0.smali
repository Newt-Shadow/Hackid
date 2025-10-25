.class public abstract Ltd/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(ZLad/i$b;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ltd/g0;->i(ZLad/i$b;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lkotlin/jvm/internal/c0;ZLad/i;Lad/i$b;)Lad/i;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Ltd/g0;->e(Lkotlin/jvm/internal/c0;ZLad/i;Lad/i$b;)Lad/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lad/i;Lad/i$b;)Lad/i;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ltd/g0;->f(Lad/i;Lad/i$b;)Lad/i;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Lad/i;Lad/i;Z)Lad/i;
    .locals 3

    .line 1
    invoke-static {p0}, Ltd/g0;->h(Lad/i;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Ltd/g0;->h(Lad/i;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lad/i;->e(Lad/i;)Lad/i;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/c0;

    .line 19
    .line 20
    invoke-direct {v0}, Lkotlin/jvm/internal/c0;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 24
    .line 25
    sget-object p1, Lad/j;->a:Lad/j;

    .line 26
    .line 27
    new-instance v2, Ltd/d0;

    .line 28
    .line 29
    invoke-direct {v2, v0, p2}, Ltd/d0;-><init>(Lkotlin/jvm/internal/c0;Z)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, p1, v2}, Lad/i;->k(Ljava/lang/Object;Lid/Function2;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lad/i;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-object p2, v0, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p2, Lad/i;

    .line 43
    .line 44
    new-instance v1, Ltd/e0;

    .line 45
    .line 46
    invoke-direct {v1}, Ltd/e0;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, p1, v1}, Lad/i;->k(Ljava/lang/Object;Lid/Function2;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, v0, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 54
    .line 55
    :cond_1
    iget-object p1, v0, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Lad/i;

    .line 58
    .line 59
    invoke-interface {p0, p1}, Lad/i;->e(Lad/i;)Lad/i;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method private static final e(Lkotlin/jvm/internal/c0;ZLad/i;Lad/i$b;)Lad/i;
    .locals 0

    .line 1
    invoke-interface {p2, p3}, Lad/i;->e(Lad/i;)Lad/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final f(Lad/i;Lad/i$b;)Lad/i;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lad/i;->e(Lad/i;)Lad/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final g(Lad/i;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final h(Lad/i;)Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    new-instance v1, Ltd/f0;

    .line 4
    .line 5
    invoke-direct {v1}, Ltd/f0;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, v0, v1}, Lad/i;->k(Ljava/lang/Object;Lid/Function2;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method private static final i(ZLad/i$b;)Z
    .locals 0

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final j(Lad/i;Lad/i;)Lad/i;
    .locals 1

    .line 1
    invoke-static {p1}, Ltd/g0;->h(Lad/i;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, p1}, Lad/i;->e(Lad/i;)Lad/i;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-static {p0, p1, v0}, Ltd/g0;->d(Lad/i;Lad/i;Z)Lad/i;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final k(Ltd/l0;Lad/i;)Lad/i;
    .locals 1

    .line 1
    invoke-interface {p0}, Ltd/l0;->n()Lad/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {p0, p1, v0}, Ltd/g0;->d(Lad/i;Lad/i;Z)Lad/i;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {}, Ltd/z0;->a()Ltd/i0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eq p0, p1, :cond_0

    .line 15
    .line 16
    sget-object p1, Lad/f;->h0:Lad/f$b;

    .line 17
    .line 18
    invoke-interface {p0, p1}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    invoke-static {}, Ltd/z0;->a()Ltd/i0;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p0, p1}, Lad/i;->e(Lad/i;)Lad/i;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :cond_0
    return-object p0
.end method

.method public static final l(Lkotlin/coroutines/jvm/internal/e;)Ltd/q2;
    .locals 2

    .line 1
    :cond_0
    instance-of v0, p0, Ltd/w0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_1
    invoke-interface {p0}, Lkotlin/coroutines/jvm/internal/e;->getCallerFrame()Lkotlin/coroutines/jvm/internal/e;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_2

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_2
    instance-of v0, p0, Ltd/q2;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    check-cast p0, Ltd/q2;

    .line 19
    .line 20
    return-object p0
.end method

.method public static final m(Lad/e;Lad/i;Ljava/lang/Object;)Ltd/q2;
    .locals 2

    .line 1
    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    sget-object v0, Ltd/r2;->a:Ltd/r2;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_2

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_2
    check-cast p0, Lkotlin/coroutines/jvm/internal/e;

    .line 22
    .line 23
    invoke-static {p0}, Ltd/g0;->l(Lkotlin/coroutines/jvm/internal/e;)Ltd/q2;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Ltd/q2;->T0(Lad/i;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_3
    return-object p0
.end method
