.class final Lrf/o$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrf/o;->w(Lsf/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lsf/d;

.field final synthetic c:Lrf/o;

.field final synthetic d:Lrf/o;

.field final synthetic e:J


# direct methods
.method constructor <init>(Lsf/d;Lrf/o;Lrf/o;JLad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrf/o$a;->b:Lsf/d;

    iput-object p2, p0, Lrf/o$a;->c:Lrf/o;

    iput-object p3, p0, Lrf/o$a;->d:Lrf/o;

    iput-wide p4, p0, Lrf/o$a;->e:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 7

    .line 1
    new-instance p1, Lrf/o$a;

    iget-object v1, p0, Lrf/o$a;->b:Lsf/d;

    iget-object v2, p0, Lrf/o$a;->c:Lrf/o;

    iget-object v3, p0, Lrf/o$a;->d:Lrf/o;

    iget-wide v4, p0, Lrf/o$a;->e:J

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lrf/o$a;-><init>(Lsf/d;Lrf/o;Lrf/o;JLad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lrf/o$a;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lrf/o$a;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lrf/o$a;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lrf/o$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lrf/o$a;->a:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lrf/o$a;->b:Lsf/d;

    .line 12
    .line 13
    invoke-virtual {p1}, Lsf/d;->d()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object p1, p0, Lrf/o$a;->c:Lrf/o;

    .line 18
    .line 19
    invoke-static {p1}, Lrf/o;->k(Lrf/o;)Ltd/l0;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {}, Ltd/z0;->c()Ltd/d2;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    const/4 v9, 0x0

    .line 28
    new-instance v10, Lrf/o$a$a;

    .line 29
    .line 30
    iget-object v1, p0, Lrf/o$a;->c:Lrf/o;

    .line 31
    .line 32
    iget-object v3, p0, Lrf/o$a;->d:Lrf/o;

    .line 33
    .line 34
    iget-object v4, p0, Lrf/o$a;->b:Lsf/d;

    .line 35
    .line 36
    iget-wide v5, p0, Lrf/o$a;->e:J

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    move-object v0, v10

    .line 40
    invoke-direct/range {v0 .. v7}, Lrf/o$a$a;-><init>(Lrf/o;Ljava/lang/String;Lrf/o;Lsf/d;JLad/e;)V

    .line 41
    .line 42
    .line 43
    const/4 v7, 0x2

    .line 44
    const/4 v0, 0x0

    .line 45
    move-object v3, p1

    .line 46
    move-object v4, v8

    .line 47
    move-object v5, v9

    .line 48
    move-object v6, v10

    .line 49
    move-object v8, v0

    .line 50
    invoke-static/range {v3 .. v8}, Ltd/g;->d(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;ILjava/lang/Object;)Ltd/t1;

    .line 51
    .line 52
    .line 53
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1
.end method
