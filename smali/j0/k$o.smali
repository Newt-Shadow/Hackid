.class final Lj0/k$o;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


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

.field synthetic c:Z

.field final synthetic d:Lj0/k;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lj0/k;ILad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/k$o;->d:Lj0/k;

    iput p2, p0, Lj0/k$o;->e:I

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

    invoke-virtual {p0, p1, p2}, Lj0/k$o;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lj0/k$o;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lj0/k$o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 3

    .line 1
    new-instance v0, Lj0/k$o;

    iget-object v1, p0, Lj0/k$o;->d:Lj0/k;

    iget v2, p0, Lj0/k$o;->e:I

    invoke-direct {v0, v1, v2, p2}, Lj0/k$o;-><init>(Lj0/k;ILad/e;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lj0/k$o;->c:Z

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lj0/k$o;->a(ZLad/e;)Ljava/lang/Object;

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
    iget v1, p0, Lj0/k$o;->b:I

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
    iget-object v0, p0, Lj0/k$o;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    iget-boolean v1, p0, Lj0/k$o;->c:Z

    .line 30
    .line 31
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lj0/k$o;->c:Z

    .line 39
    .line 40
    iget-object p1, p0, Lj0/k$o;->d:Lj0/k;

    .line 41
    .line 42
    iput-boolean v1, p0, Lj0/k$o;->c:Z

    .line 43
    .line 44
    iput v3, p0, Lj0/k$o;->b:I

    .line 45
    .line 46
    invoke-static {p1, p0}, Lj0/k;->m(Lj0/k;Lad/e;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-ne p1, v0, :cond_3

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    .line 54
    .line 55
    iget-object v1, p0, Lj0/k$o;->d:Lj0/k;

    .line 56
    .line 57
    invoke-static {v1}, Lj0/k;->c(Lj0/k;)Lj0/t;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object p1, p0, Lj0/k$o;->a:Ljava/lang/Object;

    .line 62
    .line 63
    iput v2, p0, Lj0/k$o;->b:I

    .line 64
    .line 65
    invoke-interface {v1, p0}, Lj0/t;->c(Lad/e;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-ne v1, v0, :cond_4

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_4
    move-object v0, p1

    .line 73
    move-object p1, v1

    .line 74
    :goto_1
    check-cast p1, Ljava/lang/Number;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    goto :goto_2

    .line 81
    :cond_5
    iget v0, p0, Lj0/k$o;->e:I

    .line 82
    .line 83
    move v4, v0

    .line 84
    move-object v0, p1

    .line 85
    move p1, v4

    .line 86
    :goto_2
    new-instance v1, Lj0/f;

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    goto :goto_3

    .line 95
    :cond_6
    const/4 v2, 0x0

    .line 96
    :goto_3
    invoke-direct {v1, v0, v2, p1}, Lj0/f;-><init>(Ljava/lang/Object;II)V

    .line 97
    .line 98
    .line 99
    return-object v1
.end method
