.class final Lj0/k$m;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/k;->w(ZLad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field synthetic c:Z

.field final synthetic d:Lj0/k;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lj0/k;ILad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/k$m;->d:Lj0/k;

    iput p2, p0, Lj0/k$m;->e:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final a(ZLad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lj0/k$m;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lj0/k$m;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lj0/k$m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 3

    .line 1
    new-instance v0, Lj0/k$m;

    iget-object v1, p0, Lj0/k$m;->d:Lj0/k;

    iget v2, p0, Lj0/k$m;->e:I

    invoke-direct {v0, v1, v2, p2}, Lj0/k$m;-><init>(Lj0/k;ILad/e;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lj0/k$m;->c:Z

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lj0/k$m;->a(ZLad/e;)Ljava/lang/Object;

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
    iget v1, p0, Lj0/k$m;->b:I

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
    iget-boolean v0, p0, Lj0/k$m;->c:Z

    .line 16
    .line 17
    iget-object v1, p0, Lj0/k$m;->a:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ljava/lang/Throwable;

    .line 20
    .line 21
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    iget-boolean v1, p0, Lj0/k$m;->c:Z

    .line 34
    .line 35
    :try_start_0
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-boolean v1, p0, Lj0/k$m;->c:Z

    .line 43
    .line 44
    :try_start_1
    iget-object p1, p0, Lj0/k$m;->d:Lj0/k;

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    move v4, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    const/4 v4, 0x0

    .line 51
    :goto_0
    iput-boolean v1, p0, Lj0/k$m;->c:Z

    .line 52
    .line 53
    iput v3, p0, Lj0/k$m;->b:I

    .line 54
    .line 55
    invoke-static {p1, v4, p0}, Lj0/k;->n(Lj0/k;ZLad/e;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-ne p1, v0, :cond_4

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_4
    :goto_1
    check-cast p1, Lj0/i0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    if-eqz v1, :cond_6

    .line 67
    .line 68
    iget-object v3, p0, Lj0/k$m;->d:Lj0/k;

    .line 69
    .line 70
    invoke-static {v3}, Lj0/k;->c(Lj0/k;)Lj0/t;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iput-object p1, p0, Lj0/k$m;->a:Ljava/lang/Object;

    .line 75
    .line 76
    iput-boolean v1, p0, Lj0/k$m;->c:Z

    .line 77
    .line 78
    iput v2, p0, Lj0/k$m;->b:I

    .line 79
    .line 80
    invoke-interface {v3, p0}, Lj0/t;->c(Lad/e;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    if-ne v2, v0, :cond_5

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_5
    move v0, v1

    .line 88
    move-object v1, p1

    .line 89
    move-object p1, v2

    .line 90
    :goto_2
    check-cast p1, Ljava/lang/Number;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    goto :goto_3

    .line 97
    :cond_6
    iget v0, p0, Lj0/k$m;->e:I

    .line 98
    .line 99
    move v5, v1

    .line 100
    move-object v1, p1

    .line 101
    move p1, v0

    .line 102
    move v0, v5

    .line 103
    :goto_3
    new-instance v2, Lj0/b0;

    .line 104
    .line 105
    invoke-direct {v2, v1, p1}, Lj0/b0;-><init>(Ljava/lang/Throwable;I)V

    .line 106
    .line 107
    .line 108
    move v1, v0

    .line 109
    move-object p1, v2

    .line 110
    :goto_4
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {p1, v0}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1
.end method
