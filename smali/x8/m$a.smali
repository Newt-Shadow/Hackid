.class final Lx8/m$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx8/m;-><init>(Lad/i;Lu8/w0;Lj0/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lx8/m;


# direct methods
.method constructor <init>(Lx8/m;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx8/m$a;->b:Lx8/m;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method

.method public static final synthetic a(Ljava/util/concurrent/atomic/AtomicReference;Lx8/h;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lx8/m$a;->f(Ljava/util/concurrent/atomic/AtomicReference;Lx8/h;Lad/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final synthetic f(Ljava/util/concurrent/atomic/AtomicReference;Lx8/h;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 1

    .line 1
    new-instance p1, Lx8/m$a;

    iget-object v0, p0, Lx8/m$a;->b:Lx8/m;

    invoke-direct {p1, v0, p2}, Lx8/m$a;-><init>(Lx8/m;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lx8/m$a;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lx8/m$a;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lx8/m$a;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lx8/m$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lx8/m$a;->a:I

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
    iget-object p1, p0, Lx8/m$a;->b:Lx8/m;

    .line 28
    .line 29
    invoke-static {p1}, Lx8/m;->g(Lx8/m;)Lj0/i;

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
    iget-object v1, p0, Lx8/m$a;->b:Lx8/m;

    .line 38
    .line 39
    invoke-static {v1}, Lx8/m;->f(Lx8/m;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v3, Lx8/m$a$a;

    .line 44
    .line 45
    invoke-direct {v3, v1}, Lx8/m$a$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 46
    .line 47
    .line 48
    iput v2, p0, Lx8/m$a;->a:I

    .line 49
    .line 50
    invoke-interface {p1, v3, p0}, Lwd/d;->collect(Lwd/e;Lad/e;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_2
    :goto_0
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 58
    .line 59
    return-object p1
.end method
