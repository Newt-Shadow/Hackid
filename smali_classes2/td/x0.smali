.class public abstract Ltd/x0;
.super Lae/h;
.source "SourceFile"


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lae/h;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ltd/x0;->c:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract c()Lad/e;
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p1, Ltd/a0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Ltd/a0;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v1

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v1, p1, Ltd/a0;->a:Ljava/lang/Throwable;

    .line 13
    .line 14
    :cond_1
    return-object v1
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final g(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Ltd/o0;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Fatal exception in coroutines machinery for "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1, p1}, Ltd/o0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ltd/x0;->c()Lad/e;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Lad/e;->getContext()Lad/i;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1, v0}, Ltd/k0;->a(Lad/i;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public abstract h()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ltd/x0;->c()Lad/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Lyd/h;

    .line 11
    .line 12
    iget-object v1, v0, Lyd/h;->e:Lad/e;

    .line 13
    .line 14
    iget-object v0, v0, Lyd/h;->g:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-interface {v1}, Lad/e;->getContext()Lad/i;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2, v0}, Lyd/m0;->i(Lad/i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v3, Lyd/m0;->a:Lyd/f0;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    if-eq v0, v3, :cond_0

    .line 28
    .line 29
    invoke-static {v1, v2, v0}, Ltd/g0;->m(Lad/e;Lad/i;Ljava/lang/Object;)Ltd/q2;

    .line 30
    .line 31
    .line 32
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v3, v4

    .line 35
    :goto_0
    :try_start_1
    invoke-interface {v1}, Lad/e;->getContext()Lad/i;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {p0}, Ltd/x0;->h()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {p0, v6}, Ltd/x0;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    if-nez v7, :cond_1

    .line 48
    .line 49
    iget v8, p0, Ltd/x0;->c:I

    .line 50
    .line 51
    invoke-static {v8}, Ltd/y0;->b(I)Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-eqz v8, :cond_1

    .line 56
    .line 57
    sget-object v4, Ltd/t1;->t0:Ltd/t1$b;

    .line 58
    .line 59
    invoke-interface {v5, v4}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Ltd/t1;

    .line 64
    .line 65
    :cond_1
    if-eqz v4, :cond_2

    .line 66
    .line 67
    invoke-interface {v4}, Ltd/t1;->isActive()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_2

    .line 72
    .line 73
    invoke-interface {v4}, Ltd/t1;->u()Ljava/util/concurrent/CancellationException;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {p0, v6, v4}, Ltd/x0;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    sget-object v5, Lxc/l;->b:Lxc/l$a;

    .line 81
    .line 82
    invoke-static {v4}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-static {v4}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-interface {v1, v4}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    if-eqz v7, :cond_3

    .line 95
    .line 96
    sget-object v4, Lxc/l;->b:Lxc/l$a;

    .line 97
    .line 98
    invoke-static {v7}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v4}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-interface {v1, v4}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    sget-object v4, Lxc/l;->b:Lxc/l$a;

    .line 111
    .line 112
    invoke-virtual {p0, v6}, Ltd/x0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {v4}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-interface {v1, v4}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :goto_1
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .line 125
    if-eqz v3, :cond_4

    .line 126
    .line 127
    :try_start_2
    invoke-virtual {v3}, Ltd/q2;->S0()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    :cond_4
    invoke-static {v2, v0}, Lyd/m0;->f(Lad/i;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :catchall_0
    move-exception v1

    .line 138
    if-eqz v3, :cond_5

    .line 139
    .line 140
    invoke-virtual {v3}, Ltd/q2;->S0()Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_6

    .line 145
    .line 146
    :cond_5
    invoke-static {v2, v0}, Lyd/m0;->f(Lad/i;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_6
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    :catchall_1
    move-exception v0

    .line 151
    invoke-virtual {p0, v0}, Ltd/x0;->g(Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    :goto_2
    return-void
.end method
