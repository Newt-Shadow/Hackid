.class final Lt1/i$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/i;->a(Landroid/app/Activity;)Lwd/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lt1/i;

.field final synthetic d:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lt1/i;Landroid/app/Activity;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt1/i$a;->c:Lt1/i;

    iput-object p2, p0, Lt1/i$a;->d:Landroid/app/Activity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method

.method public static synthetic a(Lvd/v;Lt1/j;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt1/i$a;->g(Lvd/v;Lt1/j;)V

    return-void
.end method

.method private static final g(Lvd/v;Lt1/j;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lvd/x;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 3

    .line 1
    new-instance v0, Lt1/i$a;

    iget-object v1, p0, Lt1/i$a;->c:Lt1/i;

    iget-object v2, p0, Lt1/i$a;->d:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, p2}, Lt1/i$a;-><init>(Lt1/i;Landroid/app/Activity;Lad/e;)V

    iput-object p1, v0, Lt1/i$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final f(Lvd/v;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lt1/i$a;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lt1/i$a;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lt1/i$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lvd/v;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lt1/i$a;->f(Lvd/v;Lad/e;)Ljava/lang/Object;

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
    iget v1, p0, Lt1/i$a;->a:I

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
    iget-object p1, p0, Lt1/i$a;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lvd/v;

    .line 30
    .line 31
    new-instance v1, Lt1/h;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Lt1/h;-><init>(Lvd/v;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lt1/i$a;->c:Lt1/i;

    .line 37
    .line 38
    invoke-static {v3}, Lt1/i;->b(Lt1/i;)Lu1/a;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object v4, p0, Lt1/i$a;->d:Landroid/app/Activity;

    .line 43
    .line 44
    new-instance v5, Landroidx/privacysandbox/ads/adservices/measurement/j;

    .line 45
    .line 46
    invoke-direct {v5}, Landroidx/privacysandbox/ads/adservices/measurement/j;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-interface {v3, v4, v5, v1}, Lu1/a;->b(Landroid/content/Context;Ljava/util/concurrent/Executor;Lc0/a;)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Lt1/i$a$a;

    .line 53
    .line 54
    iget-object v4, p0, Lt1/i$a;->c:Lt1/i;

    .line 55
    .line 56
    invoke-direct {v3, v4, v1}, Lt1/i$a$a;-><init>(Lt1/i;Lc0/a;)V

    .line 57
    .line 58
    .line 59
    iput v2, p0, Lt1/i$a;->a:I

    .line 60
    .line 61
    invoke-static {p1, v3, p0}, Lvd/t;->a(Lvd/v;Lid/a;Lad/e;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v0, :cond_2

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_2
    :goto_0
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 69
    .line 70
    return-object p1
.end method
