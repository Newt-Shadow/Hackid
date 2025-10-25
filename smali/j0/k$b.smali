.class final Lj0/k$b;
.super Lj0/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private c:Ljava/util/List;

.field final synthetic d:Lj0/k;


# direct methods
.method public constructor <init>(Lj0/k;Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "initTasksList"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lj0/k$b;->d:Lj0/k;

    .line 7
    .line 8
    invoke-direct {p0}, Lj0/d0;-><init>()V

    .line 9
    .line 10
    .line 11
    check-cast p2, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-static {p2}, Lyc/m;->k0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lj0/k$b;->c:Ljava/util/List;

    .line 18
    .line 19
    return-void
.end method

.method public static final synthetic d(Lj0/k$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lj0/k$b;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lj0/k$b;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/k$b;->c:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method protected b(Lad/e;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lj0/k$b$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lj0/k$b$a;

    .line 7
    .line 8
    iget v1, v0, Lj0/k$b$a;->d:I

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
    iput v1, v0, Lj0/k$b$a;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lj0/k$b$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lj0/k$b$a;-><init>(Lj0/k$b;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lj0/k$b$a;->b:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lj0/k$b$a;->d:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget-object v0, v0, Lj0/k$b$a;->a:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lj0/k$b;

    .line 44
    .line 45
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    iget-object v0, v0, Lj0/k$b$a;->a:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Lj0/k$b;

    .line 60
    .line 61
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lj0/k$b;->c:Ljava/util/List;

    .line 69
    .line 70
    if-eqz p1, :cond_6

    .line 71
    .line 72
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    iget-object p1, p0, Lj0/k$b;->d:Lj0/k;

    .line 83
    .line 84
    invoke-static {p1}, Lj0/k;->c(Lj0/k;)Lj0/t;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance v2, Lj0/k$b$b;

    .line 89
    .line 90
    iget-object v4, p0, Lj0/k$b;->d:Lj0/k;

    .line 91
    .line 92
    const/4 v5, 0x0

    .line 93
    invoke-direct {v2, v4, p0, v5}, Lj0/k$b$b;-><init>(Lj0/k;Lj0/k$b;Lad/e;)V

    .line 94
    .line 95
    .line 96
    iput-object p0, v0, Lj0/k$b$a;->a:Ljava/lang/Object;

    .line 97
    .line 98
    iput v3, v0, Lj0/k$b$a;->d:I

    .line 99
    .line 100
    invoke-interface {p1, v2, v0}, Lj0/t;->a(Lid/l;Lad/e;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-ne p1, v1, :cond_5

    .line 105
    .line 106
    return-object v1

    .line 107
    :cond_5
    move-object v0, p0

    .line 108
    :goto_1
    check-cast p1, Lj0/f;

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_6
    :goto_2
    iget-object p1, p0, Lj0/k$b;->d:Lj0/k;

    .line 112
    .line 113
    iput-object p0, v0, Lj0/k$b$a;->a:Ljava/lang/Object;

    .line 114
    .line 115
    iput v4, v0, Lj0/k$b$a;->d:I

    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    invoke-static {p1, v2, v0}, Lj0/k;->n(Lj0/k;ZLad/e;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-ne p1, v1, :cond_7

    .line 123
    .line 124
    return-object v1

    .line 125
    :cond_7
    move-object v0, p0

    .line 126
    :goto_3
    check-cast p1, Lj0/f;

    .line 127
    .line 128
    :goto_4
    iget-object v0, v0, Lj0/k$b;->d:Lj0/k;

    .line 129
    .line 130
    invoke-static {v0}, Lj0/k;->d(Lj0/k;)Lj0/l;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0, p1}, Lj0/l;->c(Lj0/i0;)Lj0/i0;

    .line 135
    .line 136
    .line 137
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 138
    .line 139
    return-object p1
.end method
