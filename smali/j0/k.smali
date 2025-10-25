.class public final Lj0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/k$a;,
        Lj0/k$b;
    }
.end annotation


# static fields
.field public static final m:Lj0/k$a;


# instance fields
.field private final a:Lj0/j0;

.field private final b:Lj0/e;

.field private final c:Ltd/l0;

.field private final d:Lwd/d;

.field private final e:Lce/a;

.field private f:I

.field private g:Ltd/t1;

.field private final h:Lj0/l;

.field private final i:Lj0/k$b;

.field private final j:Lxc/d;

.field private final k:Lxc/d;

.field private final l:Lj0/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lj0/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj0/k$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lj0/k;->m:Lj0/k$a;

    return-void
.end method

.method public constructor <init>(Lj0/j0;Ljava/util/List;Lj0/e;Ltd/l0;)V
    .locals 2

    .line 1
    const-string v0, "storage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "initTasksList"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "corruptionHandler"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "scope"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lj0/k;->a:Lj0/j0;

    .line 25
    .line 26
    iput-object p3, p0, Lj0/k;->b:Lj0/e;

    .line 27
    .line 28
    iput-object p4, p0, Lj0/k;->c:Ltd/l0;

    .line 29
    .line 30
    new-instance p1, Lj0/k$d;

    .line 31
    .line 32
    const/4 p3, 0x0

    .line 33
    invoke-direct {p1, p0, p3}, Lj0/k$d;-><init>(Lj0/k;Lad/e;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lwd/f;->o(Lid/Function2;)Lwd/d;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lj0/k;->d:Lwd/d;

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-static {p1, v0, p3}, Lce/g;->b(ZILjava/lang/Object;)Lce/a;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lj0/k;->e:Lce/a;

    .line 49
    .line 50
    new-instance p1, Lj0/l;

    .line 51
    .line 52
    invoke-direct {p1}, Lj0/l;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lj0/k;->h:Lj0/l;

    .line 56
    .line 57
    new-instance p1, Lj0/k$b;

    .line 58
    .line 59
    invoke-direct {p1, p0, p2}, Lj0/k$b;-><init>(Lj0/k;Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lj0/k;->i:Lj0/k$b;

    .line 63
    .line 64
    new-instance p1, Lj0/k$r;

    .line 65
    .line 66
    invoke-direct {p1, p0}, Lj0/k$r;-><init>(Lj0/k;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lj0/k;->j:Lxc/d;

    .line 74
    .line 75
    new-instance p1, Lj0/k$c;

    .line 76
    .line 77
    invoke-direct {p1, p0}, Lj0/k$c;-><init>(Lj0/k;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lj0/k;->k:Lxc/d;

    .line 85
    .line 86
    new-instance p1, Lj0/g0;

    .line 87
    .line 88
    new-instance p2, Lj0/k$u;

    .line 89
    .line 90
    invoke-direct {p2, p0}, Lj0/k$u;-><init>(Lj0/k;)V

    .line 91
    .line 92
    .line 93
    sget-object v0, Lj0/k$v;->e:Lj0/k$v;

    .line 94
    .line 95
    new-instance v1, Lj0/k$w;

    .line 96
    .line 97
    invoke-direct {v1, p0, p3}, Lj0/k$w;-><init>(Lj0/k;Lad/e;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p1, p4, p2, v0, v1}, Lj0/g0;-><init>(Ltd/l0;Lid/l;Lid/Function2;Lid/Function2;)V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Lj0/k;->l:Lj0/g0;

    .line 104
    .line 105
    return-void
.end method

.method private final A(Lid/Function2;Lad/i;Lad/e;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0}, Lj0/k;->r()Lj0/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lj0/k$s;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p2, p1, v2}, Lj0/k$s;-><init>(Lj0/k;Lad/i;Lid/Function2;Lad/e;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, p3}, Lj0/t;->a(Lid/l;Lad/e;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public static final synthetic b(Lj0/k;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lj0/k;->p(Lad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lj0/k;)Lj0/t;
    .locals 0

    .line 1
    invoke-direct {p0}, Lj0/k;->r()Lj0/t;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lj0/k;)Lj0/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lj0/k;->h:Lj0/l;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lj0/k;)Lj0/k$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lj0/k;->i:Lj0/k$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lj0/k;)Lj0/j0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj0/k;->a:Lj0/j0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lj0/k;)Lxc/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lj0/k;->j:Lxc/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lj0/k;)Lj0/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lj0/k;->l:Lj0/g0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lj0/k;Lj0/w$a;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lj0/k;->t(Lj0/w$a;Lad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Lj0/k;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lj0/k;->u(Lad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Lj0/k;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lj0/k;->v(Lad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l(Lj0/k;ZLad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lj0/k;->w(ZLad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m(Lj0/k;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lj0/k;->x(Lad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n(Lj0/k;ZLad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lj0/k;->y(ZLad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic o(Lj0/k;ZLad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lj0/k;->z(ZLad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final p(Lad/e;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lj0/k$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lj0/k$e;

    .line 7
    .line 8
    iget v1, v0, Lj0/k$e;->e:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lj0/k$e;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lj0/k$e;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lj0/k$e;-><init>(Lj0/k;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lj0/k$e;->c:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lj0/k$e;->e:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object v1, v0, Lj0/k$e;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lce/a;

    .line 42
    .line 43
    iget-object v0, v0, Lj0/k$e;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lj0/k;

    .line 46
    .line 47
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lj0/k;->e:Lce/a;

    .line 63
    .line 64
    iput-object p0, v0, Lj0/k$e;->a:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object p1, v0, Lj0/k$e;->b:Ljava/lang/Object;

    .line 67
    .line 68
    iput v3, v0, Lj0/k$e;->e:I

    .line 69
    .line 70
    invoke-interface {p1, v4, v0}, Lce/a;->b(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-ne v0, v1, :cond_3

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_3
    move-object v0, p0

    .line 78
    move-object v1, p1

    .line 79
    :goto_1
    :try_start_0
    iget p1, v0, Lj0/k;->f:I

    .line 80
    .line 81
    add-int/lit8 p1, p1, -0x1

    .line 82
    .line 83
    iput p1, v0, Lj0/k;->f:I

    .line 84
    .line 85
    if-nez p1, :cond_5

    .line 86
    .line 87
    iget-object p1, v0, Lj0/k;->g:Ltd/t1;

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    invoke-static {p1, v4, v3, v4}, Ltd/t1$a;->a(Ltd/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    iput-object v4, v0, Lj0/k;->g:Ltd/t1;

    .line 95
    .line 96
    :cond_5
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    invoke-interface {v1, v4}, Lce/a;->d(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 102
    .line 103
    return-object p1

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    invoke-interface {v1, v4}, Lce/a;->d(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    throw p1
.end method

.method private final q(ZLid/l;Lad/e;)Ljava/lang/Object;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p2, p3}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-direct {p0}, Lj0/k;->r()Lj0/t;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Lj0/k$f;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p2, v1}, Lj0/k$f;-><init>(Lid/l;Lad/e;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0, p3}, Lj0/t;->a(Lid/l;Lad/e;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private final r()Lj0/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/k;->k:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lj0/t;

    .line 8
    .line 9
    return-object v0
.end method

.method private final t(Lj0/w$a;Lad/e;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lj0/k$g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lj0/k$g;

    .line 7
    .line 8
    iget v1, v0, Lj0/k$g;->f:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lj0/k$g;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lj0/k$g;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lj0/k$g;-><init>(Lj0/k;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lj0/k$g;->d:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lj0/k$g;->f:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v5, :cond_3

    .line 39
    .line 40
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    iget-object p1, v0, Lj0/k$g;->a:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Ltd/v;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    iget-object p1, v0, Lj0/k$g;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Ltd/v;

    .line 60
    .line 61
    iget-object v2, v0, Lj0/k$g;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Lj0/k;

    .line 64
    .line 65
    iget-object v4, v0, Lj0/k$g;->a:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v4, Lj0/w$a;

    .line 68
    .line 69
    :try_start_0
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    move-object p2, p1

    .line 73
    move-object p1, v4

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    iget-object p1, v0, Lj0/k$g;->a:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p1, Ltd/v;

    .line 78
    .line 79
    :goto_1
    :try_start_1
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :catchall_0
    move-exception p2

    .line 84
    goto/16 :goto_5

    .line 85
    .line 86
    :cond_4
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lj0/w$a;->a()Ltd/v;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    :try_start_2
    sget-object v2, Lxc/l;->b:Lxc/l$a;

    .line 94
    .line 95
    iget-object v2, p0, Lj0/k;->h:Lj0/l;

    .line 96
    .line 97
    invoke-virtual {v2}, Lj0/l;->a()Lj0/i0;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    instance-of v6, v2, Lj0/f;

    .line 102
    .line 103
    if-eqz v6, :cond_6

    .line 104
    .line 105
    invoke-virtual {p1}, Lj0/w$a;->d()Lid/Function2;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {p1}, Lj0/w$a;->b()Lad/i;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iput-object p2, v0, Lj0/k$g;->a:Ljava/lang/Object;

    .line 114
    .line 115
    iput v5, v0, Lj0/k$g;->f:I

    .line 116
    .line 117
    invoke-direct {p0, v2, p1, v0}, Lj0/k;->A(Lid/Function2;Lad/i;Lad/e;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-ne p1, v1, :cond_5

    .line 122
    .line 123
    return-object v1

    .line 124
    :cond_5
    move-object v7, p2

    .line 125
    move-object p2, p1

    .line 126
    move-object p1, v7

    .line 127
    goto :goto_4

    .line 128
    :cond_6
    instance-of v6, v2, Lj0/b0;

    .line 129
    .line 130
    if-eqz v6, :cond_7

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_7
    instance-of v5, v2, Lj0/m0;

    .line 134
    .line 135
    :goto_2
    if-eqz v5, :cond_a

    .line 136
    .line 137
    invoke-virtual {p1}, Lj0/w$a;->c()Lj0/i0;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    if-ne v2, v5, :cond_9

    .line 142
    .line 143
    iput-object p1, v0, Lj0/k$g;->a:Ljava/lang/Object;

    .line 144
    .line 145
    iput-object p0, v0, Lj0/k$g;->b:Ljava/lang/Object;

    .line 146
    .line 147
    iput-object p2, v0, Lj0/k$g;->c:Ljava/lang/Object;

    .line 148
    .line 149
    iput v4, v0, Lj0/k$g;->f:I

    .line 150
    .line 151
    invoke-direct {p0, v0}, Lj0/k;->v(Lad/e;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    if-ne v2, v1, :cond_8

    .line 156
    .line 157
    return-object v1

    .line 158
    :cond_8
    move-object v2, p0

    .line 159
    :goto_3
    invoke-virtual {p1}, Lj0/w$a;->d()Lid/Function2;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {p1}, Lj0/w$a;->b()Lad/i;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iput-object p2, v0, Lj0/k$g;->a:Ljava/lang/Object;

    .line 168
    .line 169
    const/4 v5, 0x0

    .line 170
    iput-object v5, v0, Lj0/k$g;->b:Ljava/lang/Object;

    .line 171
    .line 172
    iput-object v5, v0, Lj0/k$g;->c:Ljava/lang/Object;

    .line 173
    .line 174
    iput v3, v0, Lj0/k$g;->f:I

    .line 175
    .line 176
    invoke-direct {v2, v4, p1, v0}, Lj0/k;->A(Lid/Function2;Lad/i;Lad/e;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 180
    if-ne p1, v1, :cond_5

    .line 181
    .line 182
    return-object v1

    .line 183
    :goto_4
    :try_start_3
    invoke-static {p2}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    goto :goto_6

    .line 188
    :cond_9
    :try_start_4
    const-string p1, "null cannot be cast to non-null type androidx.datastore.core.ReadException<T of androidx.datastore.core.DataStoreImpl.handleUpdate$lambda$2>"

    .line 189
    .line 190
    invoke-static {v2, p1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    check-cast v2, Lj0/b0;

    .line 194
    .line 195
    invoke-virtual {v2}, Lj0/b0;->b()Ljava/lang/Throwable;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    throw p1

    .line 200
    :cond_a
    instance-of p1, v2, Lj0/r;

    .line 201
    .line 202
    if-eqz p1, :cond_b

    .line 203
    .line 204
    check-cast v2, Lj0/r;

    .line 205
    .line 206
    invoke-virtual {v2}, Lj0/r;->b()Ljava/lang/Throwable;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    throw p1

    .line 211
    :cond_b
    new-instance p1, Lxc/i;

    .line 212
    .line 213
    invoke-direct {p1}, Lxc/i;-><init>()V

    .line 214
    .line 215
    .line 216
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 217
    :catchall_1
    move-exception p1

    .line 218
    move-object v7, p2

    .line 219
    move-object p2, p1

    .line 220
    move-object p1, v7

    .line 221
    :goto_5
    sget-object v0, Lxc/l;->b:Lxc/l$a;

    .line 222
    .line 223
    invoke-static {p2}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-static {p2}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    :goto_6
    invoke-static {p1, p2}, Ltd/x;->c(Ltd/v;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 235
    .line 236
    return-object p1
.end method

.method private final u(Lad/e;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p1, Lj0/k$h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lj0/k$h;

    .line 7
    .line 8
    iget v1, v0, Lj0/k$h;->e:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lj0/k$h;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lj0/k$h;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lj0/k$h;-><init>(Lj0/k;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lj0/k$h;->c:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lj0/k$h;->e:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-object v1, v0, Lj0/k$h;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lce/a;

    .line 42
    .line 43
    iget-object v0, v0, Lj0/k$h;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lj0/k;

    .line 46
    .line 47
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lj0/k;->e:Lce/a;

    .line 63
    .line 64
    iput-object p0, v0, Lj0/k$h;->a:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object p1, v0, Lj0/k$h;->b:Ljava/lang/Object;

    .line 67
    .line 68
    iput v4, v0, Lj0/k$h;->e:I

    .line 69
    .line 70
    invoke-interface {p1, v3, v0}, Lce/a;->b(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-ne v0, v1, :cond_3

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_3
    move-object v0, p0

    .line 78
    move-object v1, p1

    .line 79
    :goto_1
    :try_start_0
    iget p1, v0, Lj0/k;->f:I

    .line 80
    .line 81
    add-int/2addr p1, v4

    .line 82
    iput p1, v0, Lj0/k;->f:I

    .line 83
    .line 84
    if-ne p1, v4, :cond_4

    .line 85
    .line 86
    iget-object v5, v0, Lj0/k;->c:Ltd/l0;

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    const/4 v7, 0x0

    .line 90
    new-instance v8, Lj0/k$i;

    .line 91
    .line 92
    invoke-direct {v8, v0, v3}, Lj0/k$i;-><init>(Lj0/k;Lad/e;)V

    .line 93
    .line 94
    .line 95
    const/4 v9, 0x3

    .line 96
    const/4 v10, 0x0

    .line 97
    invoke-static/range {v5 .. v10}, Ltd/g;->d(Ltd/l0;Lad/i;Ltd/n0;Lid/Function2;ILjava/lang/Object;)Ltd/t1;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, v0, Lj0/k;->g:Ltd/t1;

    .line 102
    .line 103
    :cond_4
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    invoke-interface {v1, v3}, Lce/a;->d(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 109
    .line 110
    return-object p1

    .line 111
    :catchall_0
    move-exception p1

    .line 112
    invoke-interface {v1, v3}, Lce/a;->d(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    throw p1
.end method

.method private final v(Lad/e;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lj0/k$j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lj0/k$j;

    .line 7
    .line 8
    iget v1, v0, Lj0/k$j;->e:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lj0/k$j;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lj0/k$j;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lj0/k$j;-><init>(Lj0/k;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lj0/k$j;->c:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lj0/k$j;->e:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget v1, v0, Lj0/k$j;->b:I

    .line 42
    .line 43
    iget-object v0, v0, Lj0/k$j;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lj0/k;

    .line 46
    .line 47
    :try_start_0
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    iget-object v2, v0, Lj0/k$j;->a:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Lj0/k;

    .line 64
    .line 65
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lj0/k;->r()Lj0/t;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p0, v0, Lj0/k$j;->a:Ljava/lang/Object;

    .line 77
    .line 78
    iput v4, v0, Lj0/k$j;->e:I

    .line 79
    .line 80
    invoke-interface {p1, v0}, Lj0/t;->c(Lad/e;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v1, :cond_4

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_4
    move-object v2, p0

    .line 88
    :goto_1
    check-cast p1, Ljava/lang/Number;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    :try_start_1
    iget-object v4, v2, Lj0/k;->i:Lj0/k$b;

    .line 95
    .line 96
    iput-object v2, v0, Lj0/k$j;->a:Ljava/lang/Object;

    .line 97
    .line 98
    iput p1, v0, Lj0/k$j;->b:I

    .line 99
    .line 100
    iput v3, v0, Lj0/k$j;->e:I

    .line 101
    .line 102
    invoke-virtual {v4, v0}, Lj0/d0;->c(Lad/e;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    if-ne p1, v1, :cond_5

    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_5
    :goto_2
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 110
    .line 111
    return-object p1

    .line 112
    :catchall_1
    move-exception v0

    .line 113
    move v1, p1

    .line 114
    move-object p1, v0

    .line 115
    move-object v0, v2

    .line 116
    :goto_3
    iget-object v0, v0, Lj0/k;->h:Lj0/l;

    .line 117
    .line 118
    new-instance v2, Lj0/b0;

    .line 119
    .line 120
    invoke-direct {v2, p1, v1}, Lj0/b0;-><init>(Ljava/lang/Throwable;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2}, Lj0/l;->c(Lj0/i0;)Lj0/i0;

    .line 124
    .line 125
    .line 126
    throw p1
.end method

.method private final w(ZLad/e;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Lj0/k$k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lj0/k$k;

    .line 7
    .line 8
    iget v1, v0, Lj0/k$k;->f:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lj0/k$k;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lj0/k$k;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lj0/k$k;-><init>(Lj0/k;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lj0/k$k;->d:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lj0/k$k;->f:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v5, :cond_3

    .line 39
    .line 40
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    iget-object p1, v0, Lj0/k$k;->a:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lj0/k;

    .line 47
    .line 48
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    iget-object p1, v0, Lj0/k$k;->a:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Lj0/k;

    .line 64
    .line 65
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_3

    .line 69
    .line 70
    :cond_3
    iget-boolean p1, v0, Lj0/k$k;->c:Z

    .line 71
    .line 72
    iget-object v2, v0, Lj0/k$k;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v2, Lj0/i0;

    .line 75
    .line 76
    iget-object v5, v0, Lj0/k$k;->a:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v5, Lj0/k;

    .line 79
    .line 80
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object v8, p2

    .line 84
    move p2, p1

    .line 85
    move-object p1, v5

    .line 86
    move-object v5, v2

    .line 87
    move-object v2, v8

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object p2, p0, Lj0/k;->h:Lj0/l;

    .line 93
    .line 94
    invoke-virtual {p2}, Lj0/l;->a()Lj0/i0;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    instance-of p2, v2, Lj0/m0;

    .line 99
    .line 100
    xor-int/2addr p2, v5

    .line 101
    if-eqz p2, :cond_c

    .line 102
    .line 103
    invoke-direct {p0}, Lj0/k;->r()Lj0/t;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    iput-object p0, v0, Lj0/k$k;->a:Ljava/lang/Object;

    .line 108
    .line 109
    iput-object v2, v0, Lj0/k$k;->b:Ljava/lang/Object;

    .line 110
    .line 111
    iput-boolean p1, v0, Lj0/k$k;->c:Z

    .line 112
    .line 113
    iput v5, v0, Lj0/k$k;->f:I

    .line 114
    .line 115
    invoke-interface {p2, v0}, Lj0/t;->c(Lad/e;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    if-ne p2, v1, :cond_5

    .line 120
    .line 121
    return-object v1

    .line 122
    :cond_5
    move-object v5, v2

    .line 123
    move-object v2, p2

    .line 124
    move p2, p1

    .line 125
    move-object p1, p0

    .line 126
    :goto_1
    check-cast v2, Ljava/lang/Number;

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    instance-of v6, v5, Lj0/f;

    .line 133
    .line 134
    if-eqz v6, :cond_6

    .line 135
    .line 136
    invoke-virtual {v5}, Lj0/i0;->a()I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    goto :goto_2

    .line 141
    :cond_6
    const/4 v7, -0x1

    .line 142
    :goto_2
    if-eqz v6, :cond_7

    .line 143
    .line 144
    if-ne v2, v7, :cond_7

    .line 145
    .line 146
    return-object v5

    .line 147
    :cond_7
    const/4 v2, 0x0

    .line 148
    if-eqz p2, :cond_9

    .line 149
    .line 150
    invoke-direct {p1}, Lj0/k;->r()Lj0/t;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    new-instance v3, Lj0/k$l;

    .line 155
    .line 156
    invoke-direct {v3, p1, v2}, Lj0/k$l;-><init>(Lj0/k;Lad/e;)V

    .line 157
    .line 158
    .line 159
    iput-object p1, v0, Lj0/k$k;->a:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v2, v0, Lj0/k$k;->b:Ljava/lang/Object;

    .line 162
    .line 163
    iput v4, v0, Lj0/k$k;->f:I

    .line 164
    .line 165
    invoke-interface {p2, v3, v0}, Lj0/t;->a(Lid/l;Lad/e;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    if-ne p2, v1, :cond_8

    .line 170
    .line 171
    return-object v1

    .line 172
    :cond_8
    :goto_3
    check-cast p2, Lxc/k;

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_9
    invoke-direct {p1}, Lj0/k;->r()Lj0/t;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    new-instance v4, Lj0/k$m;

    .line 180
    .line 181
    invoke-direct {v4, p1, v7, v2}, Lj0/k$m;-><init>(Lj0/k;ILad/e;)V

    .line 182
    .line 183
    .line 184
    iput-object p1, v0, Lj0/k$k;->a:Ljava/lang/Object;

    .line 185
    .line 186
    iput-object v2, v0, Lj0/k$k;->b:Ljava/lang/Object;

    .line 187
    .line 188
    iput v3, v0, Lj0/k$k;->f:I

    .line 189
    .line 190
    invoke-interface {p2, v4, v0}, Lj0/t;->b(Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    if-ne p2, v1, :cond_a

    .line 195
    .line 196
    return-object v1

    .line 197
    :cond_a
    :goto_4
    check-cast p2, Lxc/k;

    .line 198
    .line 199
    :goto_5
    invoke-virtual {p2}, Lxc/k;->a()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Lj0/i0;

    .line 204
    .line 205
    invoke-virtual {p2}, Lxc/k;->b()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    check-cast p2, Ljava/lang/Boolean;

    .line 210
    .line 211
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    if-eqz p2, :cond_b

    .line 216
    .line 217
    iget-object p1, p1, Lj0/k;->h:Lj0/l;

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Lj0/l;->c(Lj0/i0;)Lj0/i0;

    .line 220
    .line 221
    .line 222
    :cond_b
    return-object v0

    .line 223
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 224
    .line 225
    const-string p2, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    .line 226
    .line 227
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p1
.end method

.method private final x(Lad/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj0/k;->s()Lj0/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lj0/l0;->a(Lj0/k0;Lad/e;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private final y(ZLad/e;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p2, Lj0/k$n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lj0/k$n;

    .line 7
    .line 8
    iget v1, v0, Lj0/k$n;->i:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lj0/k$n;->i:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lj0/k$n;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lj0/k$n;-><init>(Lj0/k;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lj0/k$n;->g:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lj0/k$n;->i:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    packed-switch v2, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :pswitch_0
    iget-object p1, v0, Lj0/k$n;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lkotlin/jvm/internal/a0;

    .line 50
    .line 51
    iget-object v1, v0, Lj0/k$n;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Lkotlin/jvm/internal/c0;

    .line 54
    .line 55
    iget-object v0, v0, Lj0/k$n;->a:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Lj0/d;

    .line 58
    .line 59
    :try_start_0
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto/16 :goto_b

    .line 63
    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto/16 :goto_c

    .line 66
    .line 67
    :pswitch_1
    iget-boolean p1, v0, Lj0/k$n;->e:Z

    .line 68
    .line 69
    iget-object v2, v0, Lj0/k$n;->d:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Lkotlin/jvm/internal/c0;

    .line 72
    .line 73
    iget-object v6, v0, Lj0/k$n;->c:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v6, Lkotlin/jvm/internal/c0;

    .line 76
    .line 77
    iget-object v7, v0, Lj0/k$n;->b:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v7, Lj0/d;

    .line 80
    .line 81
    iget-object v8, v0, Lj0/k$n;->a:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v8, Lj0/k;

    .line 84
    .line 85
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    move-object v9, v6

    .line 89
    move-object v6, v2

    .line 90
    move-object v2, v9

    .line 91
    goto/16 :goto_9

    .line 92
    .line 93
    :pswitch_2
    iget-boolean p1, v0, Lj0/k$n;->e:Z

    .line 94
    .line 95
    iget-object v2, v0, Lj0/k$n;->a:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v2, Lj0/k;

    .line 98
    .line 99
    :try_start_1
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Lj0/d; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    .line 101
    .line 102
    goto/16 :goto_6

    .line 103
    .line 104
    :pswitch_3
    iget-boolean p1, v0, Lj0/k$n;->e:Z

    .line 105
    .line 106
    iget-object v2, v0, Lj0/k$n;->a:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v2, Lj0/k;

    .line 109
    .line 110
    :try_start_2
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Lj0/d; {:try_start_2 .. :try_end_2} :catch_1

    .line 111
    .line 112
    .line 113
    goto/16 :goto_5

    .line 114
    .line 115
    :pswitch_4
    iget p1, v0, Lj0/k$n;->f:I

    .line 116
    .line 117
    iget-boolean v2, v0, Lj0/k$n;->e:Z

    .line 118
    .line 119
    iget-object v6, v0, Lj0/k$n;->b:Ljava/lang/Object;

    .line 120
    .line 121
    iget-object v7, v0, Lj0/k$n;->a:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v7, Lj0/k;

    .line 124
    .line 125
    :try_start_3
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_3
    .catch Lj0/d; {:try_start_3 .. :try_end_3} :catch_0

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :catch_0
    move-exception p2

    .line 130
    move p1, v2

    .line 131
    :goto_1
    move-object v8, v7

    .line 132
    goto/16 :goto_8

    .line 133
    .line 134
    :pswitch_5
    iget-boolean p1, v0, Lj0/k$n;->e:Z

    .line 135
    .line 136
    iget-object v2, v0, Lj0/k$n;->a:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v2, Lj0/k;

    .line 139
    .line 140
    :try_start_4
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V
    :try_end_4
    .catch Lj0/d; {:try_start_4 .. :try_end_4} :catch_1

    .line 141
    .line 142
    .line 143
    move-object v7, v2

    .line 144
    goto :goto_2

    .line 145
    :catch_1
    move-exception p2

    .line 146
    move-object v8, v2

    .line 147
    goto/16 :goto_8

    .line 148
    .line 149
    :pswitch_6
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    if-eqz p1, :cond_4

    .line 153
    .line 154
    :try_start_5
    iput-object p0, v0, Lj0/k$n;->a:Ljava/lang/Object;

    .line 155
    .line 156
    iput-boolean p1, v0, Lj0/k$n;->e:Z

    .line 157
    .line 158
    iput v3, v0, Lj0/k$n;->i:I

    .line 159
    .line 160
    invoke-direct {p0, v0}, Lj0/k;->x(Lad/e;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p2
    :try_end_5
    .catch Lj0/d; {:try_start_5 .. :try_end_5} :catch_3

    .line 164
    if-ne p2, v1, :cond_1

    .line 165
    .line 166
    return-object v1

    .line 167
    :cond_1
    move-object v7, p0

    .line 168
    :goto_2
    if-eqz p2, :cond_2

    .line 169
    .line 170
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    goto :goto_3

    .line 175
    :catch_2
    move-exception p2

    .line 176
    goto :goto_1

    .line 177
    :cond_2
    move v2, v5

    .line 178
    :goto_3
    invoke-direct {v7}, Lj0/k;->r()Lj0/t;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    iput-object v7, v0, Lj0/k$n;->a:Ljava/lang/Object;

    .line 183
    .line 184
    iput-object p2, v0, Lj0/k$n;->b:Ljava/lang/Object;

    .line 185
    .line 186
    iput-boolean p1, v0, Lj0/k$n;->e:Z

    .line 187
    .line 188
    iput v2, v0, Lj0/k$n;->f:I

    .line 189
    .line 190
    const/4 v8, 0x2

    .line 191
    iput v8, v0, Lj0/k$n;->i:I

    .line 192
    .line 193
    invoke-interface {v6, v0}, Lj0/t;->c(Lad/e;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v6
    :try_end_6
    .catch Lj0/d; {:try_start_6 .. :try_end_6} :catch_2

    .line 197
    if-ne v6, v1, :cond_3

    .line 198
    .line 199
    return-object v1

    .line 200
    :cond_3
    move v9, v2

    .line 201
    move v2, p1

    .line 202
    move p1, v9

    .line 203
    move-object v10, v6

    .line 204
    move-object v6, p2

    .line 205
    move-object p2, v10

    .line 206
    :goto_4
    :try_start_7
    check-cast p2, Ljava/lang/Number;

    .line 207
    .line 208
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    new-instance v8, Lj0/f;

    .line 213
    .line 214
    invoke-direct {v8, v6, p1, p2}, Lj0/f;-><init>(Ljava/lang/Object;II)V
    :try_end_7
    .catch Lj0/d; {:try_start_7 .. :try_end_7} :catch_0

    .line 215
    .line 216
    .line 217
    goto :goto_7

    .line 218
    :cond_4
    :try_start_8
    invoke-direct {p0}, Lj0/k;->r()Lj0/t;

    .line 219
    .line 220
    .line 221
    move-result-object p2

    .line 222
    iput-object p0, v0, Lj0/k$n;->a:Ljava/lang/Object;

    .line 223
    .line 224
    iput-boolean p1, v0, Lj0/k$n;->e:Z

    .line 225
    .line 226
    const/4 v2, 0x3

    .line 227
    iput v2, v0, Lj0/k$n;->i:I

    .line 228
    .line 229
    invoke-interface {p2, v0}, Lj0/t;->c(Lad/e;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p2
    :try_end_8
    .catch Lj0/d; {:try_start_8 .. :try_end_8} :catch_3

    .line 233
    if-ne p2, v1, :cond_5

    .line 234
    .line 235
    return-object v1

    .line 236
    :cond_5
    move-object v2, p0

    .line 237
    :goto_5
    :try_start_9
    check-cast p2, Ljava/lang/Number;

    .line 238
    .line 239
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 240
    .line 241
    .line 242
    move-result p2

    .line 243
    invoke-direct {v2}, Lj0/k;->r()Lj0/t;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    new-instance v7, Lj0/k$o;

    .line 248
    .line 249
    invoke-direct {v7, v2, p2, v4}, Lj0/k$o;-><init>(Lj0/k;ILad/e;)V

    .line 250
    .line 251
    .line 252
    iput-object v2, v0, Lj0/k$n;->a:Ljava/lang/Object;

    .line 253
    .line 254
    iput-boolean p1, v0, Lj0/k$n;->e:Z

    .line 255
    .line 256
    const/4 p2, 0x4

    .line 257
    iput p2, v0, Lj0/k$n;->i:I

    .line 258
    .line 259
    invoke-interface {v6, v7, v0}, Lj0/t;->b(Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    if-ne p2, v1, :cond_6

    .line 264
    .line 265
    return-object v1

    .line 266
    :cond_6
    :goto_6
    move-object v8, p2

    .line 267
    check-cast v8, Lj0/f;
    :try_end_9
    .catch Lj0/d; {:try_start_9 .. :try_end_9} :catch_1

    .line 268
    .line 269
    :goto_7
    return-object v8

    .line 270
    :catch_3
    move-exception p2

    .line 271
    move-object v8, p0

    .line 272
    :goto_8
    new-instance v2, Lkotlin/jvm/internal/c0;

    .line 273
    .line 274
    invoke-direct {v2}, Lkotlin/jvm/internal/c0;-><init>()V

    .line 275
    .line 276
    .line 277
    iget-object v6, v8, Lj0/k;->b:Lj0/e;

    .line 278
    .line 279
    iput-object v8, v0, Lj0/k$n;->a:Ljava/lang/Object;

    .line 280
    .line 281
    iput-object p2, v0, Lj0/k$n;->b:Ljava/lang/Object;

    .line 282
    .line 283
    iput-object v2, v0, Lj0/k$n;->c:Ljava/lang/Object;

    .line 284
    .line 285
    iput-object v2, v0, Lj0/k$n;->d:Ljava/lang/Object;

    .line 286
    .line 287
    iput-boolean p1, v0, Lj0/k$n;->e:Z

    .line 288
    .line 289
    const/4 v7, 0x5

    .line 290
    iput v7, v0, Lj0/k$n;->i:I

    .line 291
    .line 292
    invoke-interface {v6, p2, v0}, Lj0/e;->a(Lj0/d;Lad/e;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    if-ne v6, v1, :cond_7

    .line 297
    .line 298
    return-object v1

    .line 299
    :cond_7
    move-object v7, p2

    .line 300
    move-object p2, v6

    .line 301
    move-object v6, v2

    .line 302
    :goto_9
    iput-object p2, v6, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 303
    .line 304
    new-instance p2, Lkotlin/jvm/internal/a0;

    .line 305
    .line 306
    invoke-direct {p2}, Lkotlin/jvm/internal/a0;-><init>()V

    .line 307
    .line 308
    .line 309
    if-eqz p1, :cond_8

    .line 310
    .line 311
    goto :goto_a

    .line 312
    :cond_8
    move v3, v5

    .line 313
    :goto_a
    :try_start_a
    new-instance p1, Lj0/k$p;

    .line 314
    .line 315
    invoke-direct {p1, v2, v8, p2, v4}, Lj0/k$p;-><init>(Lkotlin/jvm/internal/c0;Lj0/k;Lkotlin/jvm/internal/a0;Lad/e;)V

    .line 316
    .line 317
    .line 318
    iput-object v7, v0, Lj0/k$n;->a:Ljava/lang/Object;

    .line 319
    .line 320
    iput-object v2, v0, Lj0/k$n;->b:Ljava/lang/Object;

    .line 321
    .line 322
    iput-object p2, v0, Lj0/k$n;->c:Ljava/lang/Object;

    .line 323
    .line 324
    iput-object v4, v0, Lj0/k$n;->d:Ljava/lang/Object;

    .line 325
    .line 326
    const/4 v4, 0x6

    .line 327
    iput v4, v0, Lj0/k$n;->i:I

    .line 328
    .line 329
    invoke-direct {v8, v3, p1, v0}, Lj0/k;->q(ZLid/l;Lad/e;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 333
    if-ne p1, v1, :cond_9

    .line 334
    .line 335
    return-object v1

    .line 336
    :cond_9
    move-object p1, p2

    .line 337
    move-object v1, v2

    .line 338
    :goto_b
    new-instance p2, Lj0/f;

    .line 339
    .line 340
    iget-object v0, v1, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 341
    .line 342
    if-eqz v0, :cond_a

    .line 343
    .line 344
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    :cond_a
    iget p1, p1, Lkotlin/jvm/internal/a0;->a:I

    .line 349
    .line 350
    invoke-direct {p2, v0, v5, p1}, Lj0/f;-><init>(Ljava/lang/Object;II)V

    .line 351
    .line 352
    .line 353
    return-object p2

    .line 354
    :catchall_1
    move-exception p1

    .line 355
    move-object v0, v7

    .line 356
    :goto_c
    invoke-static {v0, p1}, Lxc/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 357
    .line 358
    .line 359
    throw v0

    .line 360
    nop

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final z(ZLad/e;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lj0/k;->c:Ltd/l0;

    .line 2
    .line 3
    invoke-interface {v0}, Ltd/l0;->n()Lad/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lj0/k$q;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, p1, v2}, Lj0/k$q;-><init>(Lj0/k;ZLad/e;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p2}, Ltd/g;->g(Lad/i;Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method


# virtual methods
.method public final B(Ljava/lang/Object;ZLad/e;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p3, Lj0/k$x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lj0/k$x;

    .line 7
    .line 8
    iget v1, v0, Lj0/k$x;->d:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lj0/k$x;->d:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lj0/k$x;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lj0/k$x;-><init>(Lj0/k;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lj0/k$x;->b:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lj0/k$x;->d:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lj0/k$x;->a:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lkotlin/jvm/internal/a0;

    .line 41
    .line 42
    invoke-static {p3}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p3}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance p3, Lkotlin/jvm/internal/a0;

    .line 58
    .line 59
    invoke-direct {p3}, Lkotlin/jvm/internal/a0;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lj0/k;->s()Lj0/k0;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    new-instance v10, Lj0/k$y;

    .line 67
    .line 68
    const/4 v9, 0x0

    .line 69
    move-object v4, v10

    .line 70
    move-object v5, p3

    .line 71
    move-object v6, p0

    .line 72
    move-object v7, p1

    .line 73
    move v8, p2

    .line 74
    invoke-direct/range {v4 .. v9}, Lj0/k$y;-><init>(Lkotlin/jvm/internal/a0;Lj0/k;Ljava/lang/Object;ZLad/e;)V

    .line 75
    .line 76
    .line 77
    iput-object p3, v0, Lj0/k$x;->a:Ljava/lang/Object;

    .line 78
    .line 79
    iput v3, v0, Lj0/k$x;->d:I

    .line 80
    .line 81
    invoke-interface {v2, v10, v0}, Lj0/k0;->a(Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v1, :cond_3

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_3
    move-object p1, p3

    .line 89
    :goto_1
    iget p1, p1, Lkotlin/jvm/internal/a0;->a:I

    .line 90
    .line 91
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1
.end method

.method public a(Lid/Function2;Lad/e;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p2}, Lad/e;->getContext()Lad/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lj0/o0$a$a;->a:Lj0/o0$a$a;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lj0/o0;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lj0/o0;->d(Lj0/i;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    new-instance v1, Lj0/o0;

    .line 19
    .line 20
    invoke-direct {v1, v0, p0}, Lj0/o0;-><init>(Lj0/o0;Lj0/k;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lj0/k$t;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v0, p0, p1, v2}, Lj0/k$t;-><init>(Lj0/k;Lid/Function2;Lad/e;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0, p2}, Ltd/g;->g(Lad/i;Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public getData()Lwd/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/k;->d:Lwd/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Lj0/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/k;->j:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lj0/k0;

    .line 8
    .line 9
    return-object v0
.end method
