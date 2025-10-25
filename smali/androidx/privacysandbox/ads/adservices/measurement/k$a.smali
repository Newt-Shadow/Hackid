.class final Landroidx/privacysandbox/ads/adservices/measurement/k$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/privacysandbox/ads/adservices/measurement/k;->l(Landroidx/privacysandbox/ads/adservices/measurement/k;Landroidx/privacysandbox/ads/adservices/measurement/l;Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Landroidx/privacysandbox/ads/adservices/measurement/k;


# direct methods
.method constructor <init>(Landroidx/privacysandbox/ads/adservices/measurement/l;Landroidx/privacysandbox/ads/adservices/measurement/k;Lad/e;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/privacysandbox/ads/adservices/measurement/k$a;->c:Landroidx/privacysandbox/ads/adservices/measurement/k;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 3

    .line 1
    new-instance v0, Landroidx/privacysandbox/ads/adservices/measurement/k$a;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/measurement/k$a;->c:Landroidx/privacysandbox/ads/adservices/measurement/k;

    invoke-direct {v0, v1, v2, p2}, Landroidx/privacysandbox/ads/adservices/measurement/k$a;-><init>(Landroidx/privacysandbox/ads/adservices/measurement/l;Landroidx/privacysandbox/ads/adservices/measurement/k;Lad/e;)V

    iput-object p1, v0, Landroidx/privacysandbox/ads/adservices/measurement/k$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/measurement/k$a;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/measurement/k$a;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Landroidx/privacysandbox/ads/adservices/measurement/k$a;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Landroidx/privacysandbox/ads/adservices/measurement/k$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/k$a;->a:I

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :cond_0
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/k$a;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Ltd/l0;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    throw p1
.end method
