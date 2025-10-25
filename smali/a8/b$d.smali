.class final La8/b$d;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La8/b;->i(Lo0/f$a;Ljava/lang/Object;)Lo0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:La8/b;

.field final synthetic c:Lo0/f$a;

.field final synthetic d:Ljava/lang/Object;


# direct methods
.method constructor <init>(La8/b;Lo0/f$a;Ljava/lang/Object;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, La8/b$d;->b:La8/b;

    iput-object p2, p0, La8/b$d;->c:Lo0/f$a;

    iput-object p3, p0, La8/b$d;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 3

    .line 1
    new-instance p1, La8/b$d;

    iget-object v0, p0, La8/b$d;->b:La8/b;

    iget-object v1, p0, La8/b$d;->c:Lo0/f$a;

    iget-object v2, p0, La8/b$d;->d:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, v2, p2}, La8/b$d;-><init>(La8/b;Lo0/f$a;Ljava/lang/Object;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, La8/b$d;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, La8/b$d;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, La8/b$d;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, La8/b$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, La8/b$d;->a:I

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
    iget-object p1, p0, La8/b$d;->b:La8/b;

    .line 28
    .line 29
    invoke-static {p1}, La8/b;->b(La8/b;)Lj0/i;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v1, La8/b$d$a;

    .line 34
    .line 35
    iget-object v3, p0, La8/b$d;->c:Lo0/f$a;

    .line 36
    .line 37
    iget-object v4, p0, La8/b$d;->d:Ljava/lang/Object;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-direct {v1, v3, v4, v5}, La8/b$d$a;-><init>(Lo0/f$a;Ljava/lang/Object;Lad/e;)V

    .line 41
    .line 42
    .line 43
    iput v2, p0, La8/b$d;->a:I

    .line 44
    .line 45
    invoke-static {p1, v1, p0}, Lo0/i;->a(Lj0/i;Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    :goto_0
    return-object p1
.end method
