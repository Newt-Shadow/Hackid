.class final Lj0/k$y;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/k;->B(Ljava/lang/Object;ZLad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field private synthetic c:Ljava/lang/Object;

.field final synthetic d:Lkotlin/jvm/internal/a0;

.field final synthetic e:Lj0/k;

.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:Z


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/a0;Lj0/k;Ljava/lang/Object;ZLad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/k$y;->d:Lkotlin/jvm/internal/a0;

    iput-object p2, p0, Lj0/k$y;->e:Lj0/k;

    iput-object p3, p0, Lj0/k$y;->f:Ljava/lang/Object;

    iput-boolean p4, p0, Lj0/k$y;->g:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lj0/p0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lj0/k$y;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lj0/k$y;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lj0/k$y;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 7

    .line 1
    new-instance v6, Lj0/k$y;

    iget-object v1, p0, Lj0/k$y;->d:Lkotlin/jvm/internal/a0;

    iget-object v2, p0, Lj0/k$y;->e:Lj0/k;

    iget-object v3, p0, Lj0/k$y;->f:Ljava/lang/Object;

    iget-boolean v4, p0, Lj0/k$y;->g:Z

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lj0/k$y;-><init>(Lkotlin/jvm/internal/a0;Lj0/k;Ljava/lang/Object;ZLad/e;)V

    iput-object p1, v6, Lj0/k$y;->c:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lj0/p0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lj0/k$y;->a(Lj0/p0;Lad/e;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lj0/k$y;->b:I

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
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    iget-object v1, p0, Lj0/k$y;->a:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lkotlin/jvm/internal/a0;

    .line 30
    .line 31
    iget-object v3, p0, Lj0/k$y;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Lj0/p0;

    .line 34
    .line 35
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lj0/k$y;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lj0/p0;

    .line 45
    .line 46
    iget-object v1, p0, Lj0/k$y;->d:Lkotlin/jvm/internal/a0;

    .line 47
    .line 48
    iget-object v4, p0, Lj0/k$y;->e:Lj0/k;

    .line 49
    .line 50
    invoke-static {v4}, Lj0/k;->c(Lj0/k;)Lj0/t;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iput-object p1, p0, Lj0/k$y;->c:Ljava/lang/Object;

    .line 55
    .line 56
    iput-object v1, p0, Lj0/k$y;->a:Ljava/lang/Object;

    .line 57
    .line 58
    iput v3, p0, Lj0/k$y;->b:I

    .line 59
    .line 60
    invoke-interface {v4, p0}, Lj0/t;->e(Lad/e;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-ne v3, v0, :cond_3

    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_3
    move-object v5, v3

    .line 68
    move-object v3, p1

    .line 69
    move-object p1, v5

    .line 70
    :goto_0
    check-cast p1, Ljava/lang/Number;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput p1, v1, Lkotlin/jvm/internal/a0;->a:I

    .line 77
    .line 78
    iget-object p1, p0, Lj0/k$y;->f:Ljava/lang/Object;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lj0/k$y;->c:Ljava/lang/Object;

    .line 82
    .line 83
    iput-object v1, p0, Lj0/k$y;->a:Ljava/lang/Object;

    .line 84
    .line 85
    iput v2, p0, Lj0/k$y;->b:I

    .line 86
    .line 87
    invoke-interface {v3, p1, p0}, Lj0/p0;->b(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-ne p1, v0, :cond_4

    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lj0/k$y;->g:Z

    .line 95
    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    iget-object p1, p0, Lj0/k$y;->e:Lj0/k;

    .line 99
    .line 100
    invoke-static {p1}, Lj0/k;->d(Lj0/k;)Lj0/l;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance v0, Lj0/f;

    .line 105
    .line 106
    iget-object v1, p0, Lj0/k$y;->f:Ljava/lang/Object;

    .line 107
    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    goto :goto_2

    .line 115
    :cond_5
    const/4 v2, 0x0

    .line 116
    :goto_2
    iget-object v3, p0, Lj0/k$y;->d:Lkotlin/jvm/internal/a0;

    .line 117
    .line 118
    iget v3, v3, Lkotlin/jvm/internal/a0;->a:I

    .line 119
    .line 120
    invoke-direct {v0, v1, v2, v3}, Lj0/f;-><init>(Ljava/lang/Object;II)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lj0/l;->c(Lj0/i0;)Lj0/i0;

    .line 124
    .line 125
    .line 126
    :cond_6
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 127
    .line 128
    return-object p1
.end method
