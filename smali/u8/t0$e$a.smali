.class final Lu8/t0$e$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/t0$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lu8/t0;


# direct methods
.method constructor <init>(Lu8/t0;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu8/t0$e$a;->c:Lu8/t0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lu8/e0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lu8/t0$e$a;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lu8/t0$e$a;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lu8/t0$e$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 2

    .line 1
    new-instance v0, Lu8/t0$e$a;

    iget-object v1, p0, Lu8/t0$e$a;->c:Lu8/t0;

    invoke-direct {v0, v1, p2}, Lu8/t0$e$a;-><init>(Lu8/t0;Lad/e;)V

    iput-object p1, v0, Lu8/t0$e$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lu8/e0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lu8/t0$e$a;->a(Lu8/e0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lu8/t0$e$a;->a:I

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lu8/t0$e$a;->b:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Lu8/e0;

    .line 15
    .line 16
    iget-object p1, p0, Lu8/t0$e$a;->c:Lu8/t0;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lu8/t0;->k(Lu8/t0;Lu8/e0;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object v1, p0, Lu8/t0$e$a;->c:Lu8/t0;

    .line 23
    .line 24
    invoke-static {v1, v0}, Lu8/t0;->i(Lu8/t0;Lu8/e0;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v2, p0, Lu8/t0$e$a;->c:Lu8/t0;

    .line 29
    .line 30
    invoke-static {v2, v0}, Lu8/t0;->j(Lu8/t0;Lu8/e0;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget-object v3, p0, Lu8/t0$e$a;->c:Lu8/t0;

    .line 37
    .line 38
    invoke-static {v3}, Lu8/t0;->d(Lu8/t0;)Lu8/w;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v3}, Lu8/w;->e()Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget-object v3, p0, Lu8/t0$e$a;->c:Lu8/t0;

    .line 50
    .line 51
    invoke-static {v3}, Lu8/t0;->d(Lu8/t0;)Lu8/w;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v0}, Lu8/e0;->e()Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v3, v4}, Lu8/w;->f(Ljava/util/Map;)Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0}, Lu8/e0;->e()Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :goto_0
    const/4 v4, 0x0

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    move-object v5, v4

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v0}, Lu8/e0;->f()Lu8/h0;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    :goto_1
    if-nez p1, :cond_4

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    if-eqz v2, :cond_5

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    const/4 v2, 0x0

    .line 86
    iget-object p1, p0, Lu8/t0$e$a;->c:Lu8/t0;

    .line 87
    .line 88
    invoke-static {p1}, Lu8/t0;->d(Lu8/t0;)Lu8/w;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-interface {p1, v3}, Lu8/w;->f(Ljava/util/Map;)Ljava/util/Map;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const/4 v4, 0x3

    .line 97
    const/4 v5, 0x0

    .line 98
    invoke-static/range {v0 .. v5}, Lu8/e0;->c(Lu8/e0;Lu8/h0;Lu8/v0;Ljava/util/Map;ILjava/lang/Object;)Lu8/e0;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    :goto_2
    iget-object p1, p0, Lu8/t0$e$a;->c:Lu8/t0;

    .line 104
    .line 105
    invoke-static {p1}, Lu8/t0;->g(Lu8/t0;)Lu8/n0;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1, v5}, Lu8/n0;->a(Lu8/h0;)Lu8/h0;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iget-object v1, p0, Lu8/t0$e$a;->c:Lu8/t0;

    .line 114
    .line 115
    invoke-static {v1}, Lu8/t0;->f(Lu8/t0;)Lu8/k0;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-interface {v1, p1}, Lu8/k0;->a(Lu8/h0;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lu8/t0$e$a;->c:Lu8/t0;

    .line 123
    .line 124
    invoke-static {v1}, Lu8/t0;->d(Lu8/t0;)Lu8/w;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-interface {v1}, Lu8/w;->a()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1, v4, v3}, Lu8/e0;->b(Lu8/h0;Lu8/v0;Ljava/util/Map;)Lu8/e0;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    :cond_5
    :goto_3
    return-object v0

    .line 136
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 137
    .line 138
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 139
    .line 140
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1
.end method
