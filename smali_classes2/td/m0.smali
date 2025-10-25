.class public abstract Ltd/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lad/i;)Ltd/l0;
    .locals 3

    .line 1
    new-instance v0, Lyd/d;

    .line 2
    .line 3
    sget-object v1, Ltd/t1;->t0:Ltd/t1$b;

    .line 4
    .line 5
    invoke-interface {p0, v1}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v2, v1, v2}, Ltd/w1;->b(Ltd/t1;ILjava/lang/Object;)Ltd/y;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p0, v1}, Lad/i;->e(Lad/i;)Lad/i;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    invoke-direct {v0, p0}, Lyd/d;-><init>(Lad/i;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static final b(Ltd/l0;Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Ltd/l0;->n()Lad/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ltd/t1;->t0:Ltd/t1$b;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ltd/t1;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ltd/t1;->b(Ljava/util/concurrent/CancellationException;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "Scope cannot be cancelled because it does not have a job: "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public static synthetic c(Ltd/l0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Ltd/m0;->b(Ltd/l0;Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final d(Lid/Function2;Lad/e;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lyd/b0;

    .line 2
    .line 3
    invoke-interface {p1}, Lad/e;->getContext()Lad/i;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Lyd/b0;-><init>(Lad/i;Lad/e;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v0, p0}, Lzd/b;->b(Lyd/b0;Ljava/lang/Object;Lid/Function2;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lad/e;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object p0
.end method

.method public static final e(Ltd/l0;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Ltd/l0;->n()Lad/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ltd/w1;->d(Lad/i;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
