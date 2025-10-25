.class final Lbb/a$g$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/a$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lbb/a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z


# direct methods
.method constructor <init>(Lbb/a;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbb/a$g$a;->b:Lbb/a;

    iput-object p2, p0, Lbb/a$g$a;->c:Ljava/lang/String;

    iput-object p3, p0, Lbb/a$g$a;->d:Ljava/util/List;

    iput-object p4, p0, Lbb/a$g$a;->e:Ljava/lang/String;

    iput-boolean p5, p0, Lbb/a$g$a;->f:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 7

    .line 1
    new-instance p1, Lbb/a$g$a;

    iget-object v1, p0, Lbb/a$g$a;->b:Lbb/a;

    iget-object v2, p0, Lbb/a$g$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lbb/a$g$a;->d:Ljava/util/List;

    iget-object v4, p0, Lbb/a$g$a;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lbb/a$g$a;->f:Z

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lbb/a$g$a;-><init>(Lbb/a;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lbb/a$g$a;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lbb/a$g$a;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lbb/a$g$a;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lbb/a$g$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lbb/a$g$a;->a:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lbb/a$g$a;->b:Lbb/a;

    .line 12
    .line 13
    iget-object v0, p0, Lbb/a$g$a;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lbb/a$g$a;->d:Ljava/util/List;

    .line 19
    .line 20
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lbb/a$g$a;->e:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-boolean v3, p0, Lbb/a$g$a;->f:Z

    .line 29
    .line 30
    invoke-static {p1, v0, v1, v2, v3}, Lbb/a;->f(Lbb/a;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method
