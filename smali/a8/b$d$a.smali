.class final La8/b$d$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La8/b$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lo0/f$a;

.field final synthetic d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lo0/f$a;Ljava/lang/Object;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, La8/b$d$a;->c:Lo0/f$a;

    iput-object p2, p0, La8/b$d$a;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 3

    .line 1
    new-instance v0, La8/b$d$a;

    iget-object v1, p0, La8/b$d$a;->c:Lo0/f$a;

    iget-object v2, p0, La8/b$d$a;->d:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p2}, La8/b$d$a;-><init>(Lo0/f$a;Ljava/lang/Object;Lad/e;)V

    iput-object p1, v0, La8/b$d$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lo0/c;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, La8/b$d$a;->invoke(Lo0/c;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lo0/c;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, La8/b$d$a;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, La8/b$d$a;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, La8/b$d$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, La8/b$d$a;->a:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, La8/b$d$a;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lo0/c;

    .line 14
    .line 15
    iget-object v0, p0, La8/b$d$a;->c:Lo0/f$a;

    .line 16
    .line 17
    iget-object v1, p0, La8/b$d$a;->d:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method
