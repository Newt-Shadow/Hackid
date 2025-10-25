.class final Lj0/a0$a$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/a0$a;->e(Ljava/io/File;)Lwd/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field private synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/a0$a$a;->d:Ljava/io/File;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lvd/v;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lj0/a0$a$a;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lj0/a0$a$a;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lj0/a0$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 2

    .line 1
    new-instance v0, Lj0/a0$a$a;

    iget-object v1, p0, Lj0/a0$a$a;->d:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Lj0/a0$a$a;-><init>(Ljava/io/File;Lad/e;)V

    iput-object p1, v0, Lj0/a0$a$a;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lvd/v;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lj0/a0$a$a;->a(Lvd/v;Lad/e;)Ljava/lang/Object;

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
    iget v1, p0, Lj0/a0$a$a;->b:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    iget-object v1, p0, Lj0/a0$a$a;->a:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Ltd/a1;

    .line 30
    .line 31
    iget-object v3, p0, Lj0/a0$a$a;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Lvd/v;

    .line 34
    .line 35
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lj0/a0$a$a;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lvd/v;

    .line 45
    .line 46
    new-instance v1, Lj0/a0$a$a$b;

    .line 47
    .line 48
    iget-object v4, p0, Lj0/a0$a$a;->d:Ljava/io/File;

    .line 49
    .line 50
    invoke-direct {v1, v4, p1}, Lj0/a0$a$a$b;-><init>(Ljava/io/File;Lvd/v;)V

    .line 51
    .line 52
    .line 53
    sget-object v4, Lj0/a0;->c:Lj0/a0$a;

    .line 54
    .line 55
    iget-object v5, p0, Lj0/a0$a$a;->d:Ljava/io/File;

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-static {v5}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v4, v5, v1}, Lj0/a0$a;->b(Lj0/a0$a;Ljava/io/File;Lid/l;)Ltd/a1;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    sget-object v4, Lxc/t;->a:Lxc/t;

    .line 69
    .line 70
    iput-object p1, p0, Lj0/a0$a$a;->c:Ljava/lang/Object;

    .line 71
    .line 72
    iput-object v1, p0, Lj0/a0$a$a;->a:Ljava/lang/Object;

    .line 73
    .line 74
    iput v3, p0, Lj0/a0$a$a;->b:I

    .line 75
    .line 76
    invoke-interface {p1, v4, p0}, Lvd/x;->y(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-ne v3, v0, :cond_3

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_3
    move-object v3, p1

    .line 84
    :goto_0
    new-instance p1, Lj0/a0$a$a$a;

    .line 85
    .line 86
    invoke-direct {p1, v1}, Lj0/a0$a$a$a;-><init>(Ltd/a1;)V

    .line 87
    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    iput-object v1, p0, Lj0/a0$a$a;->c:Ljava/lang/Object;

    .line 91
    .line 92
    iput-object v1, p0, Lj0/a0$a$a;->a:Ljava/lang/Object;

    .line 93
    .line 94
    iput v2, p0, Lj0/a0$a$a;->b:I

    .line 95
    .line 96
    invoke-static {v3, p1, p0}, Lvd/t;->a(Lvd/v;Lid/a;Lad/e;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-ne p1, v0, :cond_4

    .line 101
    .line 102
    return-object v0

    .line 103
    :cond_4
    :goto_1
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 104
    .line 105
    return-object p1
.end method
