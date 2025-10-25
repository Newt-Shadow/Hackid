.class final Lu8/t0$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/t0;-><init>(Lx8/j;Lu8/n0;Lu8/k0;Lu8/w0;Lj0/i;Lu8/w;Lad/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lu8/t0;


# direct methods
.method constructor <init>(Lu8/t0;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu8/t0$a;->b:Lu8/t0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 1

    .line 1
    new-instance p1, Lu8/t0$a;

    iget-object v0, p0, Lu8/t0$a;->b:Lu8/t0;

    invoke-direct {p1, v0, p2}, Lu8/t0$a;-><init>(Lu8/t0;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lu8/t0$a;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lu8/t0$a;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lu8/t0$a;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lu8/t0$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lu8/t0$a;->a:I

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
    iget-object p1, p0, Lu8/t0$a;->b:Lu8/t0;

    .line 28
    .line 29
    invoke-static {p1}, Lu8/t0;->e(Lu8/t0;)Lj0/i;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Lj0/i;->getData()Lwd/d;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v1, Lu8/t0$a$a;

    .line 38
    .line 39
    iget-object v3, p0, Lu8/t0$a;->b:Lu8/t0;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-direct {v1, v3, v4}, Lu8/t0$a$a;-><init>(Lu8/t0;Lad/e;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v1}, Lwd/f;->e(Lwd/d;Lid/p;)Lwd/d;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v1, Lu8/t0$a$b;

    .line 50
    .line 51
    iget-object v3, p0, Lu8/t0$a;->b:Lu8/t0;

    .line 52
    .line 53
    invoke-direct {v1, v3}, Lu8/t0$a$b;-><init>(Lu8/t0;)V

    .line 54
    .line 55
    .line 56
    iput v2, p0, Lu8/t0$a;->a:I

    .line 57
    .line 58
    invoke-interface {p1, v1, p0}, Lwd/d;->collect(Lwd/e;Lad/e;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-ne p1, v0, :cond_2

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_2
    :goto_0
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 66
    .line 67
    return-object p1
.end method
