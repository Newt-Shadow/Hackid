.class final Lj0/k$d;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/k;-><init>(Lj0/j0;Ljava/util/List;Lj0/e;Ltd/l0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field private synthetic c:Ljava/lang/Object;

.field final synthetic d:Lj0/k;


# direct methods
.method constructor <init>(Lj0/k;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/k$d;->d:Lj0/k;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lwd/e;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lj0/k$d;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lj0/k$d;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lj0/k$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 2

    .line 1
    new-instance v0, Lj0/k$d;

    iget-object v1, p0, Lj0/k$d;->d:Lj0/k;

    invoke-direct {v0, v1, p2}, Lj0/k$d;-><init>(Lj0/k;Lad/e;)V

    iput-object p1, v0, Lj0/k$d;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lwd/e;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lj0/k$d;->a(Lwd/e;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lj0/k$d;->b:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    iget-object v1, p0, Lj0/k$d;->a:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lj0/i0;

    .line 34
    .line 35
    iget-object v3, p0, Lj0/k$d;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, Lwd/e;

    .line 38
    .line 39
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v1, p0, Lj0/k$d;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lwd/e;

    .line 46
    .line 47
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lj0/k$d;->c:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lwd/e;

    .line 57
    .line 58
    iget-object v1, p0, Lj0/k$d;->d:Lj0/k;

    .line 59
    .line 60
    iput-object p1, p0, Lj0/k$d;->c:Ljava/lang/Object;

    .line 61
    .line 62
    iput v4, p0, Lj0/k$d;->b:I

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-static {v1, v4, p0}, Lj0/k;->o(Lj0/k;ZLad/e;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-ne v1, v0, :cond_4

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_4
    move-object v7, v1

    .line 73
    move-object v1, p1

    .line 74
    move-object p1, v7

    .line 75
    :goto_0
    check-cast p1, Lj0/i0;

    .line 76
    .line 77
    instance-of v4, p1, Lj0/f;

    .line 78
    .line 79
    if-eqz v4, :cond_6

    .line 80
    .line 81
    move-object v4, p1

    .line 82
    check-cast v4, Lj0/f;

    .line 83
    .line 84
    invoke-virtual {v4}, Lj0/f;->c()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iput-object v1, p0, Lj0/k$d;->c:Ljava/lang/Object;

    .line 89
    .line 90
    iput-object p1, p0, Lj0/k$d;->a:Ljava/lang/Object;

    .line 91
    .line 92
    iput v3, p0, Lj0/k$d;->b:I

    .line 93
    .line 94
    invoke-interface {v1, v4, p0}, Lwd/e;->emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    if-ne v3, v0, :cond_5

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_5
    move-object v3, v1

    .line 102
    move-object v1, p1

    .line 103
    :goto_1
    move-object p1, v1

    .line 104
    move-object v1, v3

    .line 105
    goto :goto_2

    .line 106
    :cond_6
    instance-of v3, p1, Lj0/m0;

    .line 107
    .line 108
    if-nez v3, :cond_a

    .line 109
    .line 110
    instance-of v3, p1, Lj0/b0;

    .line 111
    .line 112
    if-nez v3, :cond_9

    .line 113
    .line 114
    instance-of v3, p1, Lj0/r;

    .line 115
    .line 116
    if-eqz v3, :cond_7

    .line 117
    .line 118
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 119
    .line 120
    return-object p1

    .line 121
    :cond_7
    :goto_2
    iget-object v3, p0, Lj0/k$d;->d:Lj0/k;

    .line 122
    .line 123
    invoke-static {v3}, Lj0/k;->d(Lj0/k;)Lj0/l;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3}, Lj0/l;->b()Lwd/d;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    new-instance v4, Lj0/k$d$a;

    .line 132
    .line 133
    iget-object v5, p0, Lj0/k$d;->d:Lj0/k;

    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    invoke-direct {v4, v5, v6}, Lj0/k$d$a;-><init>(Lj0/k;Lad/e;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v3, v4}, Lwd/f;->r(Lwd/d;Lid/Function2;)Lwd/d;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    new-instance v4, Lj0/k$d$b;

    .line 144
    .line 145
    invoke-direct {v4, v6}, Lj0/k$d$b;-><init>(Lad/e;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v3, v4}, Lwd/f;->s(Lwd/d;Lid/Function2;)Lwd/d;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    new-instance v4, Lj0/k$d$c;

    .line 153
    .line 154
    invoke-direct {v4, p1, v6}, Lj0/k$d$c;-><init>(Lj0/i0;Lad/e;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v3, v4}, Lwd/f;->i(Lwd/d;Lid/Function2;)Lwd/d;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    new-instance v3, Lj0/k$d$e;

    .line 162
    .line 163
    invoke-direct {v3, p1}, Lj0/k$d$e;-><init>(Lwd/d;)V

    .line 164
    .line 165
    .line 166
    new-instance p1, Lj0/k$d$d;

    .line 167
    .line 168
    iget-object v4, p0, Lj0/k$d;->d:Lj0/k;

    .line 169
    .line 170
    invoke-direct {p1, v4, v6}, Lj0/k$d$d;-><init>(Lj0/k;Lad/e;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v3, p1}, Lwd/f;->q(Lwd/d;Lid/p;)Lwd/d;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iput-object v6, p0, Lj0/k$d;->c:Ljava/lang/Object;

    .line 178
    .line 179
    iput-object v6, p0, Lj0/k$d;->a:Ljava/lang/Object;

    .line 180
    .line 181
    iput v2, p0, Lj0/k$d;->b:I

    .line 182
    .line 183
    invoke-static {v1, p1, p0}, Lwd/f;->k(Lwd/e;Lwd/d;Lad/e;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    if-ne p1, v0, :cond_8

    .line 188
    .line 189
    return-object v0

    .line 190
    :cond_8
    :goto_3
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 191
    .line 192
    return-object p1

    .line 193
    :cond_9
    check-cast p1, Lj0/b0;

    .line 194
    .line 195
    invoke-virtual {p1}, Lj0/b0;->b()Ljava/lang/Throwable;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    throw p1

    .line 200
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 201
    .line 202
    const-string v0, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p1
.end method
