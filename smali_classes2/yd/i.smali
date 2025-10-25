.class public abstract Lyd/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lyd/f0;

.field public static final b:Lyd/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyd/f0;

    .line 2
    .line 3
    const-string v1, "UNDEFINED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lyd/f0;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lyd/i;->a:Lyd/f0;

    .line 9
    .line 10
    new-instance v0, Lyd/f0;

    .line 11
    .line 12
    const-string v1, "REUSABLE_CLAIMED"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lyd/f0;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lyd/i;->b:Lyd/f0;

    .line 18
    .line 19
    return-void
.end method

.method public static final synthetic a()Lyd/f0;
    .locals 1

    .line 1
    sget-object v0, Lyd/i;->a:Lyd/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b(Lad/e;Ljava/lang/Object;)V
    .locals 6

    .line 1
    instance-of v0, p0, Lyd/h;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    check-cast p0, Lyd/h;

    .line 6
    .line 7
    invoke-static {p1}, Ltd/c0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lyd/h;->d:Ltd/i0;

    .line 12
    .line 13
    invoke-virtual {p0}, Lyd/h;->getContext()Lad/i;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ltd/i0;->t0(Lad/i;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iput-object v0, p0, Lyd/h;->f:Ljava/lang/Object;

    .line 25
    .line 26
    iput v2, p0, Ltd/x0;->c:I

    .line 27
    .line 28
    iget-object p1, p0, Lyd/h;->d:Ltd/i0;

    .line 29
    .line 30
    invoke-virtual {p0}, Lyd/h;->getContext()Lad/i;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0, p0}, Ltd/i0;->q0(Lad/i;Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_0
    sget-object v1, Ltd/o2;->a:Ltd/o2;

    .line 40
    .line 41
    invoke-virtual {v1}, Ltd/o2;->b()Ltd/d1;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ltd/d1;->Z0()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    iput-object v0, p0, Lyd/h;->f:Ljava/lang/Object;

    .line 52
    .line 53
    iput v2, p0, Ltd/x0;->c:I

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ltd/d1;->V0(Ltd/x0;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_1
    invoke-virtual {v1, v2}, Ltd/d1;->X0(Z)V

    .line 61
    .line 62
    .line 63
    :try_start_0
    invoke-virtual {p0}, Lyd/h;->getContext()Lad/i;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    sget-object v4, Ltd/t1;->t0:Ltd/t1$b;

    .line 68
    .line 69
    invoke-interface {v3, v4}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Ltd/t1;

    .line 74
    .line 75
    if-eqz v3, :cond_2

    .line 76
    .line 77
    invoke-interface {v3}, Ltd/t1;->isActive()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_2

    .line 82
    .line 83
    invoke-interface {v3}, Ltd/t1;->u()Ljava/util/concurrent/CancellationException;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {p0, v0, v3}, Ltd/x0;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    sget-object v0, Lxc/l;->b:Lxc/l$a;

    .line 91
    .line 92
    invoke-static {v3}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {p0, v0}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    move v0, v2

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    const/4 v0, 0x0

    .line 106
    :goto_0
    if-nez v0, :cond_7

    .line 107
    .line 108
    iget-object v0, p0, Lyd/h;->e:Lad/e;

    .line 109
    .line 110
    iget-object v3, p0, Lyd/h;->g:Ljava/lang/Object;

    .line 111
    .line 112
    invoke-interface {v0}, Lad/e;->getContext()Lad/i;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {v4, v3}, Lyd/m0;->i(Lad/i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    sget-object v5, Lyd/m0;->a:Lyd/f0;

    .line 121
    .line 122
    if-eq v3, v5, :cond_3

    .line 123
    .line 124
    invoke-static {v0, v4, v3}, Ltd/g0;->m(Lad/e;Lad/i;Ljava/lang/Object;)Ltd/q2;

    .line 125
    .line 126
    .line 127
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    goto :goto_1

    .line 129
    :cond_3
    const/4 v0, 0x0

    .line 130
    :goto_1
    :try_start_1
    iget-object v5, p0, Lyd/h;->e:Lad/e;

    .line 131
    .line 132
    invoke-interface {v5, p1}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    :try_start_2
    invoke-virtual {v0}, Ltd/q2;->S0()Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_7

    .line 144
    .line 145
    :cond_4
    invoke-static {v4, v3}, Lyd/m0;->f(Lad/i;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :catchall_0
    move-exception p1

    .line 150
    if-eqz v0, :cond_5

    .line 151
    .line 152
    invoke-virtual {v0}, Ltd/q2;->S0()Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_6

    .line 157
    .line 158
    :cond_5
    invoke-static {v4, v3}, Lyd/m0;->f(Lad/i;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_6
    throw p1

    .line 162
    :cond_7
    :goto_2
    invoke-virtual {v1}, Ltd/d1;->c1()Z

    .line 163
    .line 164
    .line 165
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    if-nez p1, :cond_7

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :catchall_1
    move-exception p1

    .line 170
    :try_start_3
    invoke-virtual {p0, p1}, Ltd/x0;->g(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 171
    .line 172
    .line 173
    :goto_3
    invoke-virtual {v1, v2}, Ltd/d1;->J0(Z)V

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :catchall_2
    move-exception p0

    .line 178
    invoke-virtual {v1, v2}, Ltd/d1;->J0(Z)V

    .line 179
    .line 180
    .line 181
    throw p0

    .line 182
    :cond_8
    invoke-interface {p0, p1}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :goto_4
    return-void
.end method
