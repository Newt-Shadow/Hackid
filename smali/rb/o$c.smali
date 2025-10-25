.class final Lrb/o$c;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrb/o;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:J

.field final synthetic c:Lrb/o;


# direct methods
.method constructor <init>(JLrb/o;Lad/e;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lrb/o$c;->b:J

    iput-object p3, p0, Lrb/o$c;->c:Lrb/o;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 3

    .line 1
    new-instance p1, Lrb/o$c;

    iget-wide v0, p0, Lrb/o$c;->b:J

    iget-object v2, p0, Lrb/o$c;->c:Lrb/o;

    invoke-direct {p1, v0, v1, v2, p2}, Lrb/o$c;-><init>(JLrb/o;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lrb/o$c;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lrb/o$c;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lrb/o$c;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lrb/o$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lrb/o$c;->a:I

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
    move-object p1, p0

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    move-object p1, p0

    .line 33
    :cond_3
    iget-wide v4, p1, Lrb/o$c;->b:J

    .line 34
    .line 35
    iput v3, p1, Lrb/o$c;->a:I

    .line 36
    .line 37
    invoke-static {v4, v5, p1}, Ltd/v0;->a(JLad/e;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-ne v1, v0, :cond_4

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_4
    :goto_1
    invoke-static {}, Ltd/z0;->c()Ltd/d2;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-instance v4, Lrb/o$c$a;

    .line 49
    .line 50
    iget-object v5, p1, Lrb/o$c;->c:Lrb/o;

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    invoke-direct {v4, v5, v6}, Lrb/o$c$a;-><init>(Lrb/o;Lad/e;)V

    .line 54
    .line 55
    .line 56
    iput v2, p1, Lrb/o$c;->a:I

    .line 57
    .line 58
    invoke-static {v1, v4, p1}, Ltd/g;->g(Lad/i;Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-ne v1, v0, :cond_3

    .line 63
    .line 64
    return-object v0
.end method
