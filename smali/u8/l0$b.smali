.class final Lu8/l0$b;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/l0;->a(Lu8/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:I

.field final synthetic h:Lu8/l0;

.field final synthetic i:Lu8/h0;


# direct methods
.method constructor <init>(Lu8/l0;Lu8/h0;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu8/l0$b;->h:Lu8/l0;

    iput-object p2, p0, Lu8/l0$b;->i:Lu8/h0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 2

    .line 1
    new-instance p1, Lu8/l0$b;

    iget-object v0, p0, Lu8/l0$b;->h:Lu8/l0;

    iget-object v1, p0, Lu8/l0$b;->i:Lu8/h0;

    invoke-direct {p1, v0, v1, p2}, Lu8/l0$b;-><init>(Lu8/l0;Lu8/h0;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lu8/l0$b;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lu8/l0$b;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lu8/l0$b;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lu8/l0$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lu8/l0$b;->g:I

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
    iget-object v0, p0, Lu8/l0$b;->f:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lx8/j;

    .line 21
    .line 22
    iget-object v1, p0, Lu8/l0$b;->e:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lu8/h0;

    .line 25
    .line 26
    iget-object v2, p0, Lu8/l0$b;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Lh7/f;

    .line 29
    .line 30
    iget-object v3, p0, Lu8/l0$b;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v3, Lu8/j0;

    .line 33
    .line 34
    iget-object v4, p0, Lu8/l0$b;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v4, Lu8/l0;

    .line 37
    .line 38
    iget-object v5, p0, Lu8/l0$b;->a:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v5, Lu8/t;

    .line 41
    .line 42
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    move-object v7, v4

    .line 46
    move-object v8, v3

    .line 47
    move-object v3, v0

    .line 48
    move-object v0, v8

    .line 49
    move-object v9, v2

    .line 50
    move-object v2, v1

    .line 51
    move-object v1, v9

    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_1
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lu8/l0$b;->h:Lu8/l0;

    .line 74
    .line 75
    iput v4, p0, Lu8/l0$b;->g:I

    .line 76
    .line 77
    invoke-static {p1, p0}, Lu8/l0;->f(Lu8/l0;Lad/e;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-ne p1, v0, :cond_4

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    sget-object p1, Lu8/t;->c:Lu8/t$a;

    .line 93
    .line 94
    iget-object v1, p0, Lu8/l0$b;->h:Lu8/l0;

    .line 95
    .line 96
    invoke-static {v1}, Lu8/l0;->d(Lu8/l0;)Ll8/e;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput v3, p0, Lu8/l0$b;->g:I

    .line 101
    .line 102
    invoke-virtual {p1, v1, p0}, Lu8/t$a;->a(Ll8/e;Lad/e;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-ne p1, v0, :cond_5

    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_5
    :goto_1
    move-object v5, p1

    .line 110
    check-cast v5, Lu8/t;

    .line 111
    .line 112
    iget-object v4, p0, Lu8/l0$b;->h:Lu8/l0;

    .line 113
    .line 114
    sget-object v3, Lu8/j0;->a:Lu8/j0;

    .line 115
    .line 116
    invoke-static {v4}, Lu8/l0;->c(Lu8/l0;)Lh7/f;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object v1, p0, Lu8/l0$b;->i:Lu8/h0;

    .line 121
    .line 122
    iget-object v6, p0, Lu8/l0$b;->h:Lu8/l0;

    .line 123
    .line 124
    invoke-static {v6}, Lu8/l0;->e(Lu8/l0;)Lx8/j;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    sget-object v7, Lv8/b;->a:Lv8/b;

    .line 129
    .line 130
    iput-object v5, p0, Lu8/l0$b;->a:Ljava/lang/Object;

    .line 131
    .line 132
    iput-object v4, p0, Lu8/l0$b;->b:Ljava/lang/Object;

    .line 133
    .line 134
    iput-object v3, p0, Lu8/l0$b;->c:Ljava/lang/Object;

    .line 135
    .line 136
    iput-object p1, p0, Lu8/l0$b;->d:Ljava/lang/Object;

    .line 137
    .line 138
    iput-object v1, p0, Lu8/l0$b;->e:Ljava/lang/Object;

    .line 139
    .line 140
    iput-object v6, p0, Lu8/l0$b;->f:Ljava/lang/Object;

    .line 141
    .line 142
    iput v2, p0, Lu8/l0$b;->g:I

    .line 143
    .line 144
    invoke-virtual {v7, p0}, Lv8/b;->c(Lad/e;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    if-ne v2, v0, :cond_6

    .line 149
    .line 150
    return-object v0

    .line 151
    :cond_6
    move-object v0, v3

    .line 152
    move-object v7, v4

    .line 153
    move-object v3, v6

    .line 154
    move-object v8, v1

    .line 155
    move-object v1, p1

    .line 156
    move-object p1, v2

    .line 157
    move-object v2, v8

    .line 158
    :goto_2
    move-object v4, p1

    .line 159
    check-cast v4, Ljava/util/Map;

    .line 160
    .line 161
    invoke-virtual {v5}, Lu8/t;->b()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v5}, Lu8/t;->a()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    move-object v5, p1

    .line 170
    invoke-virtual/range {v0 .. v6}, Lu8/j0;->a(Lh7/f;Lu8/h0;Lx8/j;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lu8/i0;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {v7, p1}, Lu8/l0;->b(Lu8/l0;Lu8/i0;)V

    .line 175
    .line 176
    .line 177
    :cond_7
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 178
    .line 179
    return-object p1
.end method
