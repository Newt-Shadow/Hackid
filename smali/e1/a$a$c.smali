.class final Le1/a$a$c;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le1/a$a;->f(Landroid/net/Uri;Landroid/view/InputEvent;)Lr6/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Le1/a$a;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:Landroid/view/InputEvent;


# direct methods
.method constructor <init>(Le1/a$a;Landroid/net/Uri;Landroid/view/InputEvent;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/a$a$c;->b:Le1/a$a;

    iput-object p2, p0, Le1/a$a$c;->c:Landroid/net/Uri;

    iput-object p3, p0, Le1/a$a$c;->d:Landroid/view/InputEvent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 3

    .line 1
    new-instance p1, Le1/a$a$c;

    iget-object v0, p0, Le1/a$a$c;->b:Le1/a$a;

    iget-object v1, p0, Le1/a$a$c;->c:Landroid/net/Uri;

    iget-object v2, p0, Le1/a$a$c;->d:Landroid/view/InputEvent;

    invoke-direct {p1, v0, v1, v2, p2}, Le1/a$a$c;-><init>(Le1/a$a;Landroid/net/Uri;Landroid/view/InputEvent;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Le1/a$a$c;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Le1/a$a$c;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Le1/a$a$c;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Le1/a$a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Le1/a$a$c;->a:I

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
    iget-object p1, p0, Le1/a$a$c;->b:Le1/a$a;

    .line 28
    .line 29
    invoke-static {p1}, Le1/a$a;->d(Le1/a$a;)Landroidx/privacysandbox/ads/adservices/measurement/b;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Le1/a$a$c;->c:Landroid/net/Uri;

    .line 34
    .line 35
    iget-object v3, p0, Le1/a$a$c;->d:Landroid/view/InputEvent;

    .line 36
    .line 37
    iput v2, p0, Le1/a$a$c;->a:I

    .line 38
    .line 39
    invoke-virtual {p1, v1, v3, p0}, Landroidx/privacysandbox/ads/adservices/measurement/b;->c(Landroid/net/Uri;Landroid/view/InputEvent;Lad/e;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-ne p1, v0, :cond_2

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    :goto_0
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 47
    .line 48
    return-object p1
.end method
