.class final Lbb/a$h$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/a$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lbb/a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/nio/charset/Charset;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/Boolean;

.field final synthetic g:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lbb/a;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbb/a$h$a;->b:Lbb/a;

    iput-object p2, p0, Lbb/a$h$a;->c:Ljava/lang/String;

    iput-object p3, p0, Lbb/a$h$a;->d:Ljava/nio/charset/Charset;

    iput-object p4, p0, Lbb/a$h$a;->e:Ljava/lang/String;

    iput-object p5, p0, Lbb/a$h$a;->f:Ljava/lang/Boolean;

    iput-object p6, p0, Lbb/a$h$a;->g:Ljava/lang/Integer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 8

    .line 1
    new-instance p1, Lbb/a$h$a;

    iget-object v1, p0, Lbb/a$h$a;->b:Lbb/a;

    iget-object v2, p0, Lbb/a$h$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lbb/a$h$a;->d:Ljava/nio/charset/Charset;

    iget-object v4, p0, Lbb/a$h$a;->e:Ljava/lang/String;

    iget-object v5, p0, Lbb/a$h$a;->f:Ljava/lang/Boolean;

    iget-object v6, p0, Lbb/a$h$a;->g:Ljava/lang/Integer;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lbb/a$h$a;-><init>(Lbb/a;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lbb/a$h$a;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lbb/a$h$a;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lbb/a$h$a;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lbb/a$h$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lbb/a$h$a;->a:I

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
    iget-object v1, p0, Lbb/a$h$a;->b:Lbb/a;

    .line 28
    .line 29
    iget-object p1, p0, Lbb/a$h$a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lbb/a$h$a;->d:Ljava/nio/charset/Charset;

    .line 35
    .line 36
    iget-object v4, p0, Lbb/a$h$a;->e:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v4}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v5, p0, Lbb/a$h$a;->f:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-static {v5, v6}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    iget-object v6, p0, Lbb/a$h$a;->g:Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-static {v6}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    iput v2, p0, Lbb/a$h$a;->a:I

    .line 61
    .line 62
    move-object v2, p1

    .line 63
    move-object v7, p0

    .line 64
    invoke-static/range {v1 .. v7}, Lbb/a;->d(Lbb/a;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;ZILad/e;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-ne p1, v0, :cond_2

    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_2
    :goto_0
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 72
    .line 73
    return-object p1
.end method
