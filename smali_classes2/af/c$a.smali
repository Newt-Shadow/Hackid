.class public final Laf/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Laf/c$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Laf/c$a;Laf/c;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Laf/c$a;->d(Laf/c;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b(Laf/c$a;Laf/c;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Laf/c$a;->g(Laf/c;JZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d(Laf/c;)Z
    .locals 4

    .line 1
    sget-object v0, Laf/c;->i:Laf/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Laf/c$a;->f()Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-static {p1}, Laf/c;->m(Laf/c;)Z

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    :try_start_1
    invoke-static {p1, v2}, Laf/c;->s(Laf/c;Z)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Laf/c;->j()Laf/c;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-static {v1}, Laf/c;->o(Laf/c;)Laf/c;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-ne v3, p1, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Laf/c;->o(Laf/c;)Laf/c;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v1, v3}, Laf/c;->t(Laf/c;Laf/c;)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-static {p1, v1}, Laf/c;->t(Laf/c;Laf/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 48
    .line 49
    .line 50
    return v2

    .line 51
    :cond_1
    :try_start_2
    invoke-static {v1}, Laf/c;->o(Laf/c;)Laf/c;

    .line 52
    .line 53
    .line 54
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    return p1

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method private final g(Laf/c;JZ)V
    .locals 5

    .line 1
    sget-object v0, Laf/c;->i:Laf/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Laf/c$a;->f()Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-static {p1}, Laf/c;->m(Laf/c;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    xor-int/2addr v1, v2

    .line 16
    if-eqz v1, :cond_7

    .line 17
    .line 18
    invoke-static {p1, v2}, Laf/c;->s(Laf/c;Z)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Laf/c;->j()Laf/c;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    new-instance v1, Laf/c;

    .line 28
    .line 29
    invoke-direct {v1}, Laf/c;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Laf/c;->r(Laf/c;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Laf/c$b;

    .line 36
    .line 37
    invoke-direct {v1}, Laf/c$b;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    const-wide/16 v3, 0x0

    .line 48
    .line 49
    cmp-long v3, p2, v3

    .line 50
    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    if-eqz p4, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1}, Laf/b1;->c()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    sub-long/2addr v3, v1

    .line 60
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 61
    .line 62
    .line 63
    move-result-wide p2

    .line 64
    add-long/2addr p2, v1

    .line 65
    invoke-static {p1, p2, p3}, Laf/c;->u(Laf/c;J)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    if-eqz v3, :cond_2

    .line 70
    .line 71
    add-long/2addr p2, v1

    .line 72
    invoke-static {p1, p2, p3}, Laf/c;->u(Laf/c;J)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    if-eqz p4, :cond_6

    .line 77
    .line 78
    invoke-virtual {p1}, Laf/b1;->c()J

    .line 79
    .line 80
    .line 81
    move-result-wide p2

    .line 82
    invoke-static {p1, p2, p3}, Laf/c;->u(Laf/c;J)V

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-static {p1, v1, v2}, Laf/c;->q(Laf/c;J)J

    .line 86
    .line 87
    .line 88
    move-result-wide p2

    .line 89
    invoke-static {}, Laf/c;->j()Laf/c;

    .line 90
    .line 91
    .line 92
    move-result-object p4

    .line 93
    invoke-static {p4}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-static {p4}, Laf/c;->o(Laf/c;)Laf/c;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    invoke-static {p4}, Laf/c;->o(Laf/c;)Laf/c;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v3}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v3, v1, v2}, Laf/c;->q(Laf/c;J)J

    .line 110
    .line 111
    .line 112
    move-result-wide v3

    .line 113
    cmp-long v3, p2, v3

    .line 114
    .line 115
    if-gez v3, :cond_3

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    invoke-static {p4}, Laf/c;->o(Laf/c;)Laf/c;

    .line 119
    .line 120
    .line 121
    move-result-object p4

    .line 122
    invoke-static {p4}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    :goto_2
    invoke-static {p4}, Laf/c;->o(Laf/c;)Laf/c;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-static {p1, p2}, Laf/c;->t(Laf/c;Laf/c;)V

    .line 131
    .line 132
    .line 133
    invoke-static {p4, p1}, Laf/c;->t(Laf/c;Laf/c;)V

    .line 134
    .line 135
    .line 136
    invoke-static {}, Laf/c;->j()Laf/c;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-ne p4, p1, :cond_5

    .line 141
    .line 142
    sget-object p1, Laf/c;->i:Laf/c$a;

    .line 143
    .line 144
    invoke-virtual {p1}, Laf/c$a;->e()Ljava/util/concurrent/locks/Condition;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 149
    .line 150
    .line 151
    :cond_5
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_6
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 158
    .line 159
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 160
    .line 161
    .line 162
    throw p1

    .line 163
    :cond_7
    const-string p1, "Unbalanced enter/exit"

    .line 164
    .line 165
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :catchall_0
    move-exception p1

    .line 176
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 177
    .line 178
    .line 179
    throw p1
.end method


# virtual methods
.method public final c()Laf/c;
    .locals 7

    .line 1
    invoke-static {}, Laf/c;->j()Laf/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Laf/c;->o(Laf/c;)Laf/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-virtual {p0}, Laf/c$a;->e()Ljava/util/concurrent/locks/Condition;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Laf/c;->k()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 30
    .line 31
    .line 32
    invoke-static {}, Laf/c;->j()Laf/c;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Laf/c;->o(Laf/c;)Laf/c;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    sub-long/2addr v4, v2

    .line 50
    invoke-static {}, Laf/c;->l()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    cmp-long v0, v4, v2

    .line 55
    .line 56
    if-ltz v0, :cond_0

    .line 57
    .line 58
    invoke-static {}, Laf/c;->j()Laf/c;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :cond_0
    return-object v1

    .line 63
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    invoke-static {v0, v2, v3}, Laf/c;->q(Laf/c;J)J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    const-wide/16 v4, 0x0

    .line 72
    .line 73
    cmp-long v4, v2, v4

    .line 74
    .line 75
    if-lez v4, :cond_2

    .line 76
    .line 77
    invoke-virtual {p0}, Laf/c$a;->e()Ljava/util/concurrent/locks/Condition;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 82
    .line 83
    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 84
    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_2
    invoke-static {}, Laf/c;->j()Laf/c;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Laf/c;->o(Laf/c;)Laf/c;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {v2, v3}, Laf/c;->t(Laf/c;Laf/c;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Laf/c;->t(Laf/c;Laf/c;)V

    .line 102
    .line 103
    .line 104
    return-object v0
.end method

.method public final e()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 1
    invoke-static {}, Laf/c;->i()Ljava/util/concurrent/locks/Condition;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final f()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 1
    invoke-static {}, Laf/c;->n()Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
