.class public final Lre/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lre/e;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Lre/a;

.field private final e:Ljava/util/List;

.field private f:Z


# direct methods
.method public constructor <init>(Lre/e;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "taskRunner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "name"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lre/d;->a:Lre/e;

    .line 15
    .line 16
    iput-object p2, p0, Lre/d;->b:Ljava/lang/String;

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lre/d;->e:Ljava/util/List;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic j(Lre/d;Lre/a;JILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const-wide/16 p2, 0x0

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lre/d;->i(Lre/a;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-boolean v0, Loe/d;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "Thread "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, " MUST NOT hold lock on "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    :goto_0
    iget-object v0, p0, Lre/d;->a:Lre/e;

    .line 52
    .line 53
    monitor-enter v0

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lre/d;->b()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0}, Lre/d;->h()Lre/e;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1, p0}, Lre/e;->h(Lre/d;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception v1

    .line 72
    monitor-exit v0

    .line 73
    throw v1
.end method

.method public final b()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lre/d;->d:Lre/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lre/a;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput-boolean v1, p0, Lre/d;->f:Z

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lre/d;->e:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sub-int/2addr v0, v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-ltz v0, :cond_4

    .line 26
    .line 27
    :goto_0
    add-int/lit8 v3, v0, -0x1

    .line 28
    .line 29
    iget-object v4, p0, Lre/d;->e:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lre/a;

    .line 36
    .line 37
    invoke-virtual {v4}, Lre/a;->a()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    iget-object v2, p0, Lre/d;->e:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lre/a;

    .line 50
    .line 51
    sget-object v4, Lre/e;->h:Lre/e$b;

    .line 52
    .line 53
    invoke-virtual {v4}, Lre/e$b;->a()Ljava/util/logging/Logger;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    const-string v4, "canceled"

    .line 66
    .line 67
    invoke-static {v2, p0, v4}, Lre/b;->a(Lre/a;Lre/d;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v2, p0, Lre/d;->e:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move v2, v1

    .line 76
    :cond_2
    if-gez v3, :cond_3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move v0, v3

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    :goto_1
    return v2
.end method

.method public final c()Lre/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lre/d;->d:Lre/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lre/d;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lre/d;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lre/d;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lre/d;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final h()Lre/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lre/d;->a:Lre/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(Lre/a;J)V
    .locals 2

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lre/d;->a:Lre/e;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lre/d;->g()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    invoke-virtual {p1}, Lre/a;->a()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    sget-object p2, Lre/e;->h:Lre/e$b;

    .line 22
    .line 23
    invoke-virtual {p2}, Lre/e$b;->a()Ljava/util/logging/Logger;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    const-string p2, "schedule canceled (queue is shutdown)"

    .line 36
    .line 37
    invoke-static {p1, p0, p2}, Lre/b;->a(Lre/a;Lre/d;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    :cond_0
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :cond_1
    :try_start_1
    sget-object p2, Lre/e;->h:Lre/e$b;

    .line 43
    .line 44
    invoke-virtual {p2}, Lre/e$b;->a()Ljava/util/logging/Logger;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 49
    .line 50
    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_2

    .line 55
    .line 56
    const-string p2, "schedule failed (queue is shutdown)"

    .line 57
    .line 58
    invoke-static {p1, p0, p2}, Lre/b;->a(Lre/a;Lre/d;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_3
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, p1, p2, p3, v1}, Lre/d;->k(Lre/a;JZ)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    invoke-virtual {p0}, Lre/d;->h()Lre/e;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1, p0}, Lre/e;->h(Lre/d;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    monitor-exit v0

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    monitor-exit v0

    .line 87
    throw p1
.end method

.method public final k(Lre/a;JZ)Z
    .locals 9

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lre/a;->e(Lre/d;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lre/d;->a:Lre/e;

    .line 10
    .line 11
    invoke-virtual {v0}, Lre/e;->g()Lre/e$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lre/e$a;->a()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    add-long v2, v0, p2

    .line 20
    .line 21
    iget-object v4, p0, Lre/d;->e:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v4, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, -0x1

    .line 29
    if-eq v4, v6, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Lre/a;->c()J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    cmp-long v7, v7, v2

    .line 36
    .line 37
    if-gtz v7, :cond_1

    .line 38
    .line 39
    sget-object p2, Lre/e;->h:Lre/e$b;

    .line 40
    .line 41
    invoke-virtual {p2}, Lre/e$b;->a()Ljava/util/logging/Logger;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 46
    .line 47
    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_0

    .line 52
    .line 53
    const-string p2, "already scheduled"

    .line 54
    .line 55
    invoke-static {p1, p0, p2}, Lre/b;->a(Lre/a;Lre/d;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return v5

    .line 59
    :cond_1
    iget-object v7, p0, Lre/d;->e:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v7, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {p1, v2, v3}, Lre/a;->g(J)V

    .line 65
    .line 66
    .line 67
    sget-object v4, Lre/e;->h:Lre/e$b;

    .line 68
    .line 69
    invoke-virtual {v4}, Lre/e$b;->a()Ljava/util/logging/Logger;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 74
    .line 75
    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_4

    .line 80
    .line 81
    if-eqz p4, :cond_3

    .line 82
    .line 83
    sub-long/2addr v2, v0

    .line 84
    invoke-static {v2, v3}, Lre/b;->b(J)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p4

    .line 88
    const-string v2, "run again after "

    .line 89
    .line 90
    invoke-static {v2, p4}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p4

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    sub-long/2addr v2, v0

    .line 96
    invoke-static {v2, v3}, Lre/b;->b(J)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p4

    .line 100
    const-string v2, "scheduled after "

    .line 101
    .line 102
    invoke-static {v2, p4}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p4

    .line 106
    :goto_0
    invoke-static {p1, p0, p4}, Lre/b;->a(Lre/a;Lre/d;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    iget-object p4, p0, Lre/d;->e:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object p4

    .line 115
    move v2, v5

    .line 116
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    const/4 v4, 0x1

    .line 121
    if-eqz v3, :cond_7

    .line 122
    .line 123
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Lre/a;

    .line 128
    .line 129
    invoke-virtual {v3}, Lre/a;->c()J

    .line 130
    .line 131
    .line 132
    move-result-wide v7

    .line 133
    sub-long/2addr v7, v0

    .line 134
    cmp-long v3, v7, p2

    .line 135
    .line 136
    if-lez v3, :cond_5

    .line 137
    .line 138
    move v3, v4

    .line 139
    goto :goto_2

    .line 140
    :cond_5
    move v3, v5

    .line 141
    :goto_2
    if-eqz v3, :cond_6

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_7
    move v2, v6

    .line 148
    :goto_3
    if-ne v2, v6, :cond_8

    .line 149
    .line 150
    iget-object p2, p0, Lre/d;->e:Ljava/util/List;

    .line 151
    .line 152
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    :cond_8
    iget-object p2, p0, Lre/d;->e:Ljava/util/List;

    .line 157
    .line 158
    invoke-interface {p2, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    if-nez v2, :cond_9

    .line 162
    .line 163
    move v5, v4

    .line 164
    :cond_9
    return v5
.end method

.method public final l(Lre/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lre/d;->d:Lre/a;

    .line 2
    .line 3
    return-void
.end method

.method public final m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lre/d;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public final n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lre/d;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    sget-boolean v0, Loe/d;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "Thread "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, " MUST NOT hold lock on "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    :goto_0
    iget-object v0, p0, Lre/d;->a:Lre/e;

    .line 52
    .line 53
    monitor-enter v0

    .line 54
    const/4 v1, 0x1

    .line 55
    :try_start_0
    invoke-virtual {p0, v1}, Lre/d;->n(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lre/d;->b()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Lre/d;->h()Lre/e;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, p0}, Lre/e;->h(Lre/d;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception v1

    .line 76
    monitor-exit v0

    .line 77
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lre/d;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
