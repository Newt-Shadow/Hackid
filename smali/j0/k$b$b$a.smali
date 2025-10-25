.class public final Lj0/k$b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/k$b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lce/a;

.field final synthetic b:Lkotlin/jvm/internal/z;

.field final synthetic c:Lkotlin/jvm/internal/c0;

.field final synthetic d:Lj0/k;


# direct methods
.method constructor <init>(Lce/a;Lkotlin/jvm/internal/z;Lkotlin/jvm/internal/c0;Lj0/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/k$b$b$a;->a:Lce/a;

    .line 2
    .line 3
    iput-object p2, p0, Lj0/k$b$b$a;->b:Lkotlin/jvm/internal/z;

    .line 4
    .line 5
    iput-object p3, p0, Lj0/k$b$b$a;->c:Lkotlin/jvm/internal/c0;

    .line 6
    .line 7
    iput-object p4, p0, Lj0/k$b$b$a;->d:Lj0/k;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Lid/Function2;Lad/e;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p2, Lj0/k$b$b$a$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lj0/k$b$b$a$a;

    .line 7
    .line 8
    iget v1, v0, Lj0/k$b$b$a$a;->h:I

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
    iput v1, v0, Lj0/k$b$b$a$a;->h:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lj0/k$b$b$a$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lj0/k$b$b$a$a;-><init>(Lj0/k$b$b$a;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lj0/k$b$b$a$a;->f:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lj0/k$b$b$a$a;->h:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    if-eq v2, v5, :cond_3

    .line 40
    .line 41
    if-eq v2, v4, :cond_2

    .line 42
    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    .line 45
    iget-object p1, v0, Lj0/k$b$b$a$a;->c:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v1, v0, Lj0/k$b$b$a$a;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lkotlin/jvm/internal/c0;

    .line 50
    .line 51
    iget-object v0, v0, Lj0/k$b$b$a$a;->a:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lce/a;

    .line 54
    .line 55
    :try_start_0
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_2
    iget-object p1, v0, Lj0/k$b$b$a$a;->c:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Lj0/k;

    .line 74
    .line 75
    iget-object v2, v0, Lj0/k$b$b$a$a;->b:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v2, Lkotlin/jvm/internal/c0;

    .line 78
    .line 79
    iget-object v4, v0, Lj0/k$b$b$a$a;->a:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v4, Lce/a;

    .line 82
    .line 83
    :try_start_1
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catchall_1
    move-exception p1

    .line 88
    move-object v0, v4

    .line 89
    goto/16 :goto_5

    .line 90
    .line 91
    :cond_3
    iget-object p1, v0, Lj0/k$b$b$a$a;->e:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Lj0/k;

    .line 94
    .line 95
    iget-object v2, v0, Lj0/k$b$b$a$a;->d:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v2, Lkotlin/jvm/internal/c0;

    .line 98
    .line 99
    iget-object v7, v0, Lj0/k$b$b$a$a;->c:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v7, Lkotlin/jvm/internal/z;

    .line 102
    .line 103
    iget-object v8, v0, Lj0/k$b$b$a$a;->b:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v8, Lce/a;

    .line 106
    .line 107
    iget-object v9, v0, Lj0/k$b$b$a$a;->a:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v9, Lid/Function2;

    .line 110
    .line 111
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    move-object p2, v8

    .line 115
    move-object v8, p1

    .line 116
    move-object p1, v9

    .line 117
    goto :goto_1

    .line 118
    :cond_4
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object p2, p0, Lj0/k$b$b$a;->a:Lce/a;

    .line 122
    .line 123
    iget-object v7, p0, Lj0/k$b$b$a;->b:Lkotlin/jvm/internal/z;

    .line 124
    .line 125
    iget-object v2, p0, Lj0/k$b$b$a;->c:Lkotlin/jvm/internal/c0;

    .line 126
    .line 127
    iget-object v8, p0, Lj0/k$b$b$a;->d:Lj0/k;

    .line 128
    .line 129
    iput-object p1, v0, Lj0/k$b$b$a$a;->a:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object p2, v0, Lj0/k$b$b$a$a;->b:Ljava/lang/Object;

    .line 132
    .line 133
    iput-object v7, v0, Lj0/k$b$b$a$a;->c:Ljava/lang/Object;

    .line 134
    .line 135
    iput-object v2, v0, Lj0/k$b$b$a$a;->d:Ljava/lang/Object;

    .line 136
    .line 137
    iput-object v8, v0, Lj0/k$b$b$a$a;->e:Ljava/lang/Object;

    .line 138
    .line 139
    iput v5, v0, Lj0/k$b$b$a$a;->h:I

    .line 140
    .line 141
    invoke-interface {p2, v6, v0}, Lce/a;->b(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    if-ne v9, v1, :cond_5

    .line 146
    .line 147
    return-object v1

    .line 148
    :cond_5
    :goto_1
    :try_start_2
    iget-boolean v7, v7, Lkotlin/jvm/internal/z;->a:Z

    .line 149
    .line 150
    xor-int/2addr v5, v7

    .line 151
    if-eqz v5, :cond_9

    .line 152
    .line 153
    iget-object v5, v2, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 154
    .line 155
    iput-object p2, v0, Lj0/k$b$b$a$a;->a:Ljava/lang/Object;

    .line 156
    .line 157
    iput-object v2, v0, Lj0/k$b$b$a$a;->b:Ljava/lang/Object;

    .line 158
    .line 159
    iput-object v8, v0, Lj0/k$b$b$a$a;->c:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v6, v0, Lj0/k$b$b$a$a;->d:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v6, v0, Lj0/k$b$b$a$a;->e:Ljava/lang/Object;

    .line 164
    .line 165
    iput v4, v0, Lj0/k$b$b$a$a;->h:I

    .line 166
    .line 167
    invoke-interface {p1, v5, v0}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 171
    if-ne p1, v1, :cond_6

    .line 172
    .line 173
    return-object v1

    .line 174
    :cond_6
    move-object v4, p2

    .line 175
    move-object p2, p1

    .line 176
    move-object p1, v8

    .line 177
    :goto_2
    :try_start_3
    iget-object v5, v2, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 178
    .line 179
    invoke-static {p2, v5}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    if-nez v5, :cond_8

    .line 184
    .line 185
    iput-object v4, v0, Lj0/k$b$b$a$a;->a:Ljava/lang/Object;

    .line 186
    .line 187
    iput-object v2, v0, Lj0/k$b$b$a$a;->b:Ljava/lang/Object;

    .line 188
    .line 189
    iput-object p2, v0, Lj0/k$b$b$a$a;->c:Ljava/lang/Object;

    .line 190
    .line 191
    iput v3, v0, Lj0/k$b$b$a$a;->h:I

    .line 192
    .line 193
    const/4 v3, 0x0

    .line 194
    invoke-virtual {p1, p2, v3, v0}, Lj0/k;->B(Ljava/lang/Object;ZLad/e;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    if-ne p1, v1, :cond_7

    .line 199
    .line 200
    return-object v1

    .line 201
    :cond_7
    move-object p1, p2

    .line 202
    move-object v1, v2

    .line 203
    move-object v0, v4

    .line 204
    :goto_3
    :try_start_4
    iput-object p1, v1, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 205
    .line 206
    move-object v2, v1

    .line 207
    goto :goto_4

    .line 208
    :cond_8
    move-object v0, v4

    .line 209
    :goto_4
    iget-object p1, v2, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 210
    .line 211
    invoke-interface {v0, v6}, Lce/a;->d(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    return-object p1

    .line 215
    :cond_9
    :try_start_5
    const-string p1, "InitializerApi.updateData should not be called after initialization is complete."

    .line 216
    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 227
    :catchall_2
    move-exception p1

    .line 228
    move-object v0, p2

    .line 229
    :goto_5
    invoke-interface {v0, v6}, Lce/a;->d(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    throw p1
.end method
