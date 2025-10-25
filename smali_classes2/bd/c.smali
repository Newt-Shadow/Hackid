.class abstract Lbd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lid/Function2;Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "completion"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->a(Lad/e;)Lad/e;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/a;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p0, Lkotlin/coroutines/jvm/internal/a;

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/a;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {p2}, Lad/e;->getContext()Lad/i;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lad/j;->a:Lad/j;

    .line 31
    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    new-instance v0, Lbd/c$a;

    .line 35
    .line 36
    invoke-direct {v0, p2, p0, p1}, Lbd/c$a;-><init>(Lad/e;Lid/Function2;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    move-object p0, v0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance v1, Lbd/c$b;

    .line 42
    .line 43
    invoke-direct {v1, p2, v0, p0, p1}, Lbd/c$b;-><init>(Lad/e;Lad/i;Lid/Function2;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    move-object p0, v1

    .line 47
    :goto_0
    return-object p0
.end method

.method private static final b(Lad/e;)Lad/e;
    .locals 2

    .line 1
    invoke-interface {p0}, Lad/e;->getContext()Lad/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lad/j;->a:Lad/j;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lbd/c$c;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lbd/c$c;-><init>(Lad/e;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Lbd/c$d;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Lbd/c$d;-><init>(Lad/e;Lad/i;)V

    .line 18
    .line 19
    .line 20
    move-object v0, v1

    .line 21
    :goto_0
    return-object v0
.end method

.method public static c(Lad/e;)Lad/e;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/d;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Lkotlin/coroutines/jvm/internal/d;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Lkotlin/coroutines/jvm/internal/d;->intercepted()Lad/e;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object p0, v0

    .line 25
    :cond_2
    :goto_1
    return-object p0
.end method

.method public static d(Lid/Function2;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "completion"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->a(Lad/e;)Lad/e;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2}, Lbd/c;->b(Lad/e;)Lad/e;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-static {p0, v0}, Lkotlin/jvm/internal/g0;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lid/Function2;

    .line 25
    .line 26
    invoke-interface {p0, p1, p2}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
