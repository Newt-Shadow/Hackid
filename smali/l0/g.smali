.class public final Ll0/g;
.super Ll0/b;
.source "SourceFile"

# interfaces
.implements Lj0/p0;


# direct methods
.method public constructor <init>(Laf/k;Laf/s0;Ll0/c;)V
    .locals 1

    .line 1
    const-string v0, "fileSystem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "path"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "serializer"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2, p3}, Ll0/b;-><init>(Laf/k;Laf/s0;Ll0/c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Ll0/g$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Ll0/g$a;

    .line 7
    .line 8
    iget v1, v0, Ll0/g$a;->f:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Ll0/g$a;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ll0/g$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Ll0/g$a;-><init>(Ll0/g;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Ll0/g$a;->d:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Ll0/g$a;->f:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Ll0/g$a;->c:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Ljava/io/Closeable;

    .line 42
    .line 43
    iget-object v1, v0, Ll0/g$a;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Laf/i;

    .line 46
    .line 47
    iget-object v0, v0, Ll0/g$a;->a:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Ljava/io/Closeable;

    .line 50
    .line 51
    :try_start_0
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p2

    .line 56
    goto :goto_3

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_2
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ll0/b;->f()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Ll0/b;->g()Laf/k;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p0}, Ll0/b;->h()Laf/s0;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p2, v2}, Laf/k;->j(Laf/s0;)Laf/i;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    const-wide/16 v5, 0x0

    .line 84
    .line 85
    :try_start_1
    invoke-static {p2, v5, v6, v3, v4}, Laf/i;->w(Laf/i;JILjava/lang/Object;)Laf/y0;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v2}, Laf/m0;->a(Laf/y0;)Laf/e;

    .line 90
    .line 91
    .line 92
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 93
    :try_start_2
    invoke-virtual {p0}, Ll0/b;->i()Ll0/c;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    iput-object p2, v0, Ll0/g$a;->a:Ljava/lang/Object;

    .line 98
    .line 99
    iput-object p2, v0, Ll0/g$a;->b:Ljava/lang/Object;

    .line 100
    .line 101
    iput-object v2, v0, Ll0/g$a;->c:Ljava/lang/Object;

    .line 102
    .line 103
    iput v3, v0, Ll0/g$a;->f:I

    .line 104
    .line 105
    invoke-interface {v5, p1, v2, v0}, Ll0/c;->c(Ljava/lang/Object;Laf/e;Lad/e;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 109
    if-ne p1, v1, :cond_3

    .line 110
    .line 111
    return-object v1

    .line 112
    :cond_3
    move-object v0, p2

    .line 113
    move-object v1, v0

    .line 114
    move-object p1, v2

    .line 115
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Laf/i;->flush()V

    .line 116
    .line 117
    .line 118
    sget-object p2, Lxc/t;->a:Lxc/t;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    .line 120
    if-eqz p1, :cond_4

    .line 121
    .line 122
    :try_start_4
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :catchall_1
    move-exception p1

    .line 127
    goto :goto_5

    .line 128
    :cond_4
    :goto_2
    move-object p1, v4

    .line 129
    goto :goto_5

    .line 130
    :catchall_2
    move-exception p1

    .line 131
    move-object v0, p2

    .line 132
    move-object p2, p1

    .line 133
    move-object p1, v2

    .line 134
    :goto_3
    if-eqz p1, :cond_5

    .line 135
    .line 136
    :try_start_5
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :catchall_3
    move-exception p1

    .line 141
    :try_start_6
    invoke-static {p2, p1}, Lxc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :catchall_4
    move-exception p1

    .line 146
    move-object p2, v0

    .line 147
    goto :goto_6

    .line 148
    :cond_5
    :goto_4
    move-object p1, p2

    .line 149
    move-object p2, v4

    .line 150
    :goto_5
    if-nez p1, :cond_6

    .line 151
    .line 152
    invoke-static {p2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 156
    .line 157
    if-eqz v0, :cond_8

    .line 158
    .line 159
    :try_start_7
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 160
    .line 161
    .line 162
    goto :goto_8

    .line 163
    :catchall_5
    move-exception v4

    .line 164
    goto :goto_8

    .line 165
    :cond_6
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 166
    :catchall_6
    move-exception p1

    .line 167
    :goto_6
    if-eqz p2, :cond_7

    .line 168
    .line 169
    :try_start_9
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 170
    .line 171
    .line 172
    goto :goto_7

    .line 173
    :catchall_7
    move-exception p2

    .line 174
    invoke-static {p1, p2}, Lxc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    :goto_7
    move-object v7, v4

    .line 178
    move-object v4, p1

    .line 179
    move-object p1, v7

    .line 180
    :cond_8
    :goto_8
    if-nez v4, :cond_9

    .line 181
    .line 182
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 186
    .line 187
    return-object p1

    .line 188
    :cond_9
    throw v4
.end method
