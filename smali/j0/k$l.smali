.class final Lj0/k$l;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/l;


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

.field final synthetic c:Lj0/k;


# direct methods
.method constructor <init>(Lj0/k;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/k$l;->c:Lj0/k;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lad/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lj0/k$l;->create(Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lj0/k$l;

    sget-object v0, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, v0}, Lj0/k$l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lad/e;)Lad/e;
    .locals 2

    .line 1
    new-instance v0, Lj0/k$l;

    iget-object v1, p0, Lj0/k$l;->c:Lj0/k;

    invoke-direct {v0, v1, p1}, Lj0/k$l;-><init>(Lj0/k;Lad/e;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lad/e;

    invoke-virtual {p0, p1}, Lj0/k$l;->a(Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lj0/k$l;->b:I

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
    iget-object v0, p0, Lj0/k$l;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/lang/Throwable;

    .line 18
    .line 19
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_2

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
    :try_start_0
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :try_start_1
    iget-object p1, p0, Lj0/k$l;->c:Lj0/k;

    .line 41
    .line 42
    iput v3, p0, Lj0/k$l;->b:I

    .line 43
    .line 44
    invoke-static {p1, v3, p0}, Lj0/k;->n(Lj0/k;ZLad/e;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-ne p1, v0, :cond_3

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_3
    :goto_0
    check-cast p1, Lj0/i0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :goto_1
    iget-object v1, p0, Lj0/k$l;->c:Lj0/k;

    .line 55
    .line 56
    invoke-static {v1}, Lj0/k;->c(Lj0/k;)Lj0/t;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput-object p1, p0, Lj0/k$l;->a:Ljava/lang/Object;

    .line 61
    .line 62
    iput v2, p0, Lj0/k$l;->b:I

    .line 63
    .line 64
    invoke-interface {v1, p0}, Lj0/t;->c(Lad/e;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-ne v1, v0, :cond_4

    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_4
    move-object v0, p1

    .line 72
    move-object p1, v1

    .line 73
    :goto_2
    check-cast p1, Ljava/lang/Number;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    new-instance v1, Lj0/b0;

    .line 80
    .line 81
    invoke-direct {v1, v0, p1}, Lj0/b0;-><init>(Ljava/lang/Throwable;I)V

    .line 82
    .line 83
    .line 84
    move-object p1, v1

    .line 85
    :goto_3
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {p1, v0}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1
.end method
