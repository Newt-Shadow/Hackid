.class final Lj0/g0$b;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/g0;->e(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lj0/g0;


# direct methods
.method constructor <init>(Lj0/g0;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/g0$b;->c:Lj0/g0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 1

    .line 1
    new-instance p1, Lj0/g0$b;

    iget-object v0, p0, Lj0/g0$b;->c:Lj0/g0;

    invoke-direct {p1, v0, p2}, Lj0/g0$b;-><init>(Lj0/g0;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lj0/g0$b;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lj0/g0$b;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lj0/g0$b;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lj0/g0$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lj0/g0$b;->b:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    move-object p1, p0

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    iget-object v1, p0, Lj0/g0$b;->a:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lid/Function2;

    .line 31
    .line 32
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    move-object v4, v1

    .line 36
    move-object v1, v0

    .line 37
    move-object v0, p0

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lj0/g0$b;->c:Lj0/g0;

    .line 43
    .line 44
    invoke-static {p1}, Lj0/g0;->c(Lj0/g0;)Lj0/b;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lj0/b;->b()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-lez p1, :cond_3

    .line 53
    .line 54
    move p1, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 p1, 0x0

    .line 57
    :goto_0
    if-eqz p1, :cond_7

    .line 58
    .line 59
    move-object p1, p0

    .line 60
    :cond_4
    iget-object v1, p1, Lj0/g0$b;->c:Lj0/g0;

    .line 61
    .line 62
    invoke-static {v1}, Lj0/g0;->d(Lj0/g0;)Ltd/l0;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, Ltd/m0;->e(Ltd/l0;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p1, Lj0/g0$b;->c:Lj0/g0;

    .line 70
    .line 71
    invoke-static {v1}, Lj0/g0;->a(Lj0/g0;)Lid/Function2;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object v4, p1, Lj0/g0$b;->c:Lj0/g0;

    .line 76
    .line 77
    invoke-static {v4}, Lj0/g0;->b(Lj0/g0;)Lvd/g;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    iput-object v1, p1, Lj0/g0$b;->a:Ljava/lang/Object;

    .line 82
    .line 83
    iput v3, p1, Lj0/g0$b;->b:I

    .line 84
    .line 85
    invoke-interface {v4, p1}, Lvd/w;->p(Lad/e;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    if-ne v4, v0, :cond_5

    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_5
    move-object v6, v0

    .line 93
    move-object v0, p1

    .line 94
    move-object p1, v4

    .line 95
    move-object v4, v1

    .line 96
    move-object v1, v6

    .line 97
    :goto_1
    const/4 v5, 0x0

    .line 98
    iput-object v5, v0, Lj0/g0$b;->a:Ljava/lang/Object;

    .line 99
    .line 100
    iput v2, v0, Lj0/g0$b;->b:I

    .line 101
    .line 102
    invoke-interface {v4, p1, v0}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-ne p1, v1, :cond_6

    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_6
    move-object p1, v0

    .line 110
    move-object v0, v1

    .line 111
    :goto_2
    iget-object v1, p1, Lj0/g0$b;->c:Lj0/g0;

    .line 112
    .line 113
    invoke-static {v1}, Lj0/g0;->c(Lj0/g0;)Lj0/b;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lj0/b;->a()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-nez v1, :cond_4

    .line 122
    .line 123
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 124
    .line 125
    return-object p1

    .line 126
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 127
    .line 128
    const-string v0, "Check failed."

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1
.end method
