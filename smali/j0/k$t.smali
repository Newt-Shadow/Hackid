.class final Lj0/k$t;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/k;->a(Lid/Function2;Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lj0/k;

.field final synthetic d:Lid/Function2;


# direct methods
.method constructor <init>(Lj0/k;Lid/Function2;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/k$t;->c:Lj0/k;

    iput-object p2, p0, Lj0/k$t;->d:Lid/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 3

    .line 1
    new-instance v0, Lj0/k$t;

    iget-object v1, p0, Lj0/k$t;->c:Lj0/k;

    iget-object v2, p0, Lj0/k$t;->d:Lid/Function2;

    invoke-direct {v0, v1, v2, p2}, Lj0/k$t;-><init>(Lj0/k;Lid/Function2;Lad/e;)V

    iput-object p1, v0, Lj0/k$t;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lj0/k$t;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lj0/k$t;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lj0/k$t;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lj0/k$t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lj0/k$t;->a:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lj0/k$t;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Ltd/l0;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static {v1, v2, v1}, Ltd/x;->b(Ltd/t1;ILjava/lang/Object;)Ltd/v;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v3, p0, Lj0/k$t;->c:Lj0/k;

    .line 37
    .line 38
    invoke-static {v3}, Lj0/k;->d(Lj0/k;)Lj0/l;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lj0/l;->a()Lj0/i0;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    new-instance v4, Lj0/w$a;

    .line 47
    .line 48
    iget-object v5, p0, Lj0/k$t;->d:Lid/Function2;

    .line 49
    .line 50
    invoke-interface {p1}, Ltd/l0;->n()Lad/i;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {v4, v5, v1, v3, p1}, Lj0/w$a;-><init>(Lid/Function2;Ltd/v;Lj0/i0;Lad/i;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lj0/k$t;->c:Lj0/k;

    .line 58
    .line 59
    invoke-static {p1}, Lj0/k;->h(Lj0/k;)Lj0/g0;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, v4}, Lj0/g0;->e(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iput v2, p0, Lj0/k$t;->a:I

    .line 67
    .line 68
    invoke-interface {v1, p0}, Ltd/s0;->w(Lad/e;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-ne p1, v0, :cond_2

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_2
    :goto_0
    return-object p1
.end method
