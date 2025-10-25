.class final Lu8/t0$d$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/t0$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lu8/t0;


# direct methods
.method constructor <init>(Lu8/t0;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu8/t0$d$a;->c:Lu8/t0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lu8/e0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lu8/t0$d$a;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lu8/t0$d$a;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lu8/t0$d$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 2

    .line 1
    new-instance v0, Lu8/t0$d$a;

    iget-object v1, p0, Lu8/t0$d$a;->c:Lu8/t0;

    invoke-direct {v0, v1, p2}, Lu8/t0$d$a;-><init>(Lu8/t0;Lad/e;)V

    iput-object p1, v0, Lu8/t0$d$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lu8/e0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lu8/t0$d$a;->a(Lu8/e0;Lad/e;)Ljava/lang/Object;

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
    iget v0, p0, Lu8/t0$d$a;->a:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lu8/t0$d$a;->b:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Lu8/e0;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iget-object p1, p0, Lu8/t0$d$a;->c:Lu8/t0;

    .line 18
    .line 19
    invoke-static {p1}, Lu8/t0;->h(Lu8/t0;)Lu8/w0;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Lu8/w0;->a()Lu8/v0;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x5

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-static/range {v0 .. v5}, Lu8/e0;->c(Lu8/e0;Lu8/h0;Lu8/v0;Ljava/util/Map;ILjava/lang/Object;)Lu8/e0;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method
