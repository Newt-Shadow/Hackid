.class final Lbb/a$f$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/a$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lbb/a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Ljava/lang/Boolean;

.field final synthetic h:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lbb/a;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Boolean;Ljava/lang/Integer;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbb/a$f$a;->b:Lbb/a;

    iput-object p2, p0, Lbb/a$f$a;->c:Ljava/lang/String;

    iput-object p3, p0, Lbb/a$f$a;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lbb/a$f$a;->e:Z

    iput-boolean p5, p0, Lbb/a$f$a;->f:Z

    iput-object p6, p0, Lbb/a$f$a;->g:Ljava/lang/Boolean;

    iput-object p7, p0, Lbb/a$f$a;->h:Ljava/lang/Integer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 9

    .line 1
    new-instance p1, Lbb/a$f$a;

    iget-object v1, p0, Lbb/a$f$a;->b:Lbb/a;

    iget-object v2, p0, Lbb/a$f$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lbb/a$f$a;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lbb/a$f$a;->e:Z

    iget-boolean v5, p0, Lbb/a$f$a;->f:Z

    iget-object v6, p0, Lbb/a$f$a;->g:Ljava/lang/Boolean;

    iget-object v7, p0, Lbb/a$f$a;->h:Ljava/lang/Integer;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lbb/a$f$a;-><init>(Lbb/a;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Boolean;Ljava/lang/Integer;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lbb/a$f$a;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lbb/a$f$a;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lbb/a$f$a;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lbb/a$f$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lbb/a$f$a;->a:I

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
    iget-object v1, p0, Lbb/a$f$a;->b:Lbb/a;

    .line 28
    .line 29
    iget-object p1, p0, Lbb/a$f$a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lbb/a$f$a;->d:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v3}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v4, p0, Lbb/a$f$a;->e:Z

    .line 40
    .line 41
    iget-boolean v5, p0, Lbb/a$f$a;->f:Z

    .line 42
    .line 43
    iget-object v6, p0, Lbb/a$f$a;->g:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-static {v6, v7}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    iget-object v7, p0, Lbb/a$f$a;->h:Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-static {v7}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    iput v2, p0, Lbb/a$f$a;->a:I

    .line 63
    .line 64
    move-object v2, p1

    .line 65
    move-object v8, p0

    .line 66
    invoke-static/range {v1 .. v8}, Lbb/a;->e(Lbb/a;Ljava/lang/String;Ljava/lang/String;ZZZILad/e;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-ne p1, v0, :cond_2

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_2
    :goto_0
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 74
    .line 75
    return-object p1
.end method
