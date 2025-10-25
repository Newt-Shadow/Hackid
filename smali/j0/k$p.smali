.class final Lj0/k$p;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/k;->y(ZLad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lkotlin/jvm/internal/c0;

.field final synthetic d:Lj0/k;

.field final synthetic e:Lkotlin/jvm/internal/a0;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/c0;Lj0/k;Lkotlin/jvm/internal/a0;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/k$p;->c:Lkotlin/jvm/internal/c0;

    iput-object p2, p0, Lj0/k$p;->d:Lj0/k;

    iput-object p3, p0, Lj0/k$p;->e:Lkotlin/jvm/internal/a0;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lad/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lj0/k$p;->create(Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lj0/k$p;

    sget-object v0, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, v0}, Lj0/k$p;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lad/e;)Lad/e;
    .locals 4

    .line 1
    new-instance v0, Lj0/k$p;

    iget-object v1, p0, Lj0/k$p;->c:Lkotlin/jvm/internal/c0;

    iget-object v2, p0, Lj0/k$p;->d:Lj0/k;

    iget-object v3, p0, Lj0/k$p;->e:Lkotlin/jvm/internal/a0;

    invoke-direct {v0, v1, v2, v3, p1}, Lj0/k$p;-><init>(Lkotlin/jvm/internal/c0;Lj0/k;Lkotlin/jvm/internal/a0;Lad/e;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lad/e;

    invoke-virtual {p0, p1}, Lj0/k$p;->a(Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lj0/k$p;->b:I

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
    iget-object v0, p0, Lj0/k$p;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lkotlin/jvm/internal/a0;

    .line 21
    .line 22
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    iget-object v1, p0, Lj0/k$p;->a:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lkotlin/jvm/internal/a0;

    .line 37
    .line 38
    :try_start_0
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lj0/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget-object v1, p0, Lj0/k$p;->a:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lkotlin/jvm/internal/c0;

    .line 45
    .line 46
    :try_start_1
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Lj0/d; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :try_start_2
    iget-object v1, p0, Lj0/k$p;->c:Lkotlin/jvm/internal/c0;

    .line 54
    .line 55
    iget-object p1, p0, Lj0/k$p;->d:Lj0/k;

    .line 56
    .line 57
    iput-object v1, p0, Lj0/k$p;->a:Ljava/lang/Object;

    .line 58
    .line 59
    iput v4, p0, Lj0/k$p;->b:I

    .line 60
    .line 61
    invoke-static {p1, p0}, Lj0/k;->m(Lj0/k;Lad/e;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v0, :cond_4

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_4
    :goto_0
    iput-object p1, v1, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 69
    .line 70
    iget-object v1, p0, Lj0/k$p;->e:Lkotlin/jvm/internal/a0;

    .line 71
    .line 72
    iget-object p1, p0, Lj0/k$p;->d:Lj0/k;

    .line 73
    .line 74
    invoke-static {p1}, Lj0/k;->c(Lj0/k;)Lj0/t;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object v1, p0, Lj0/k$p;->a:Ljava/lang/Object;

    .line 79
    .line 80
    iput v3, p0, Lj0/k$p;->b:I

    .line 81
    .line 82
    invoke-interface {p1, p0}, Lj0/t;->c(Lad/e;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-ne p1, v0, :cond_5

    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Number;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iput p1, v1, Lkotlin/jvm/internal/a0;->a:I
    :try_end_2
    .catch Lj0/d; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :catch_0
    iget-object p1, p0, Lj0/k$p;->e:Lkotlin/jvm/internal/a0;

    .line 99
    .line 100
    iget-object v1, p0, Lj0/k$p;->d:Lj0/k;

    .line 101
    .line 102
    iget-object v3, p0, Lj0/k$p;->c:Lkotlin/jvm/internal/c0;

    .line 103
    .line 104
    iget-object v3, v3, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object p1, p0, Lj0/k$p;->a:Ljava/lang/Object;

    .line 107
    .line 108
    iput v2, p0, Lj0/k$p;->b:I

    .line 109
    .line 110
    invoke-virtual {v1, v3, v4, p0}, Lj0/k;->B(Ljava/lang/Object;ZLad/e;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-ne v1, v0, :cond_6

    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_6
    move-object v0, p1

    .line 118
    move-object p1, v1

    .line 119
    :goto_2
    check-cast p1, Ljava/lang/Number;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iput p1, v0, Lkotlin/jvm/internal/a0;->a:I

    .line 126
    .line 127
    :goto_3
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 128
    .line 129
    return-object p1
.end method
