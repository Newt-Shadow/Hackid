.class public final Ltd/q2;
.super Lyd/b0;
.source "SourceFile"


# instance fields
.field private final e:Ljava/lang/ThreadLocal;

.field private volatile threadLocalIsSet:Z


# direct methods
.method public constructor <init>(Lad/i;Lad/e;)V
    .locals 2

    .line 1
    sget-object v0, Ltd/r2;->a:Ltd/r2;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lad/i;->e(Lad/i;)Lad/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v0, p1

    .line 15
    :goto_0
    invoke-direct {p0, v0, p2}, Lyd/b0;-><init>(Lad/i;Lad/e;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ltd/q2;->e:Ljava/lang/ThreadLocal;

    .line 24
    .line 25
    invoke-interface {p2}, Lad/e;->getContext()Lad/i;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    sget-object v0, Lad/f;->h0:Lad/f$b;

    .line 30
    .line 31
    invoke-interface {p2, v0}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    instance-of p2, p2, Ltd/i0;

    .line 36
    .line 37
    if-nez p2, :cond_1

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-static {p1, p2}, Lyd/m0;->i(Lad/i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p1, p2}, Lyd/m0;->f(Lad/i;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Ltd/q2;->T0(Lad/i;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method protected O0(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Ltd/q2;->threadLocalIsSet:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Ltd/q2;->e:Ljava/lang/ThreadLocal;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lxc/k;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lxc/k;->a()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lad/i;

    .line 20
    .line 21
    invoke-virtual {v0}, Lxc/k;->b()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v1, v0}, Lyd/m0;->f(Lad/i;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Ltd/q2;->e:Ljava/lang/ThreadLocal;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lyd/b0;->d:Lad/e;

    .line 34
    .line 35
    invoke-static {p1, v0}, Ltd/c0;->a(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lyd/b0;->d:Lad/e;

    .line 40
    .line 41
    invoke-interface {v0}, Lad/e;->getContext()Lad/i;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-static {v1, v2}, Lyd/m0;->i(Lad/i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    sget-object v4, Lyd/m0;->a:Lyd/f0;

    .line 51
    .line 52
    if-eq v3, v4, :cond_2

    .line 53
    .line 54
    invoke-static {v0, v1, v3}, Ltd/g0;->m(Lad/e;Lad/i;Ljava/lang/Object;)Ltd/q2;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :cond_2
    :try_start_0
    iget-object v0, p0, Lyd/b0;->d:Lad/e;

    .line 59
    .line 60
    invoke-interface {v0, p1}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {v2}, Ltd/q2;->S0()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    :cond_3
    invoke-static {v1, v3}, Lyd/m0;->f(Lad/i;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    return-void

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    invoke-virtual {v2}, Ltd/q2;->S0()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    :cond_5
    invoke-static {v1, v3}, Lyd/m0;->f(Lad/i;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_6
    throw p1
.end method

.method public final S0()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Ltd/q2;->threadLocalIsSet:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ltd/q2;->e:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v2, p0, Ltd/q2;->e:Ljava/lang/ThreadLocal;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 20
    .line 21
    .line 22
    xor-int/2addr v0, v1

    .line 23
    return v0
.end method

.method public final T0(Lad/i;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ltd/q2;->threadLocalIsSet:Z

    .line 3
    .line 4
    iget-object v0, p0, Ltd/q2;->e:Ljava/lang/ThreadLocal;

    .line 5
    .line 6
    invoke-static {p1, p2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
