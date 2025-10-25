.class public abstract Landroidx/fragment/app/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/y0$a;,
        Landroidx/fragment/app/y0$b;,
        Landroidx/fragment/app/y0$c;,
        Landroidx/fragment/app/y0$d;,
        Landroidx/fragment/app/y0$e;
    }
.end annotation


# static fields
.field public static final f:Landroidx/fragment/app/y0$a;


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/fragment/app/y0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/fragment/app/y0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/fragment/app/y0;->f:Landroidx/fragment/app/y0$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/fragment/app/y0;->a:Landroid/view/ViewGroup;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/fragment/app/y0;->b:Ljava/util/List;

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/fragment/app/y0;->c:Ljava/util/List;

    .line 24
    .line 25
    return-void
.end method

.method private final A()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y0;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/fragment/app/y0$d;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/fragment/app/y0$d;->j()Landroidx/fragment/app/y0$d$a;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v3, Landroidx/fragment/app/y0$d$a;->b:Landroidx/fragment/app/y0$d$a;

    .line 24
    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroidx/fragment/app/p;->requireView()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "fragment.requireView()"

    .line 36
    .line 37
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v3, Landroidx/fragment/app/y0$d$b;->a:Landroidx/fragment/app/y0$d$b$a;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v3, v2}, Landroidx/fragment/app/y0$d$b$a;->b(I)Landroidx/fragment/app/y0$d$b;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    sget-object v3, Landroidx/fragment/app/y0$d$a;->a:Landroidx/fragment/app/y0$d$a;

    .line 51
    .line 52
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/y0$d;->p(Landroidx/fragment/app/y0$d$b;Landroidx/fragment/app/y0$d$a;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method public static synthetic a(Landroidx/fragment/app/y0;Landroidx/fragment/app/y0$c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/fragment/app/y0;->i(Landroidx/fragment/app/y0;Landroidx/fragment/app/y0$c;)V

    return-void
.end method

.method public static synthetic b(Landroidx/fragment/app/y0;Landroidx/fragment/app/y0$c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/fragment/app/y0;->h(Landroidx/fragment/app/y0;Landroidx/fragment/app/y0$c;)V

    return-void
.end method

.method private final g(Landroidx/fragment/app/y0$d$b;Landroidx/fragment/app/y0$d$a;Landroidx/fragment/app/o0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y0;->b:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p3}, Landroidx/fragment/app/o0;->k()Landroidx/fragment/app/p;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "fragmentStateManager.fragment"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1}, Landroidx/fragment/app/y0;->o(Landroidx/fragment/app/p;)Landroidx/fragment/app/y0$d;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3}, Landroidx/fragment/app/o0;->k()Landroidx/fragment/app/p;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-boolean v1, v1, Landroidx/fragment/app/p;->mTransitioning:Z

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p3}, Landroidx/fragment/app/o0;->k()Landroidx/fragment/app/p;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "fragmentStateManager.fragment"

    .line 32
    .line 33
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v1}, Landroidx/fragment/app/y0;->p(Landroidx/fragment/app/p;)Landroidx/fragment/app/y0$d;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/y0$d;->p(Landroidx/fragment/app/y0$d$b;Landroidx/fragment/app/y0$d$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :cond_2
    :try_start_1
    new-instance v1, Landroidx/fragment/app/y0$c;

    .line 50
    .line 51
    invoke-direct {v1, p1, p2, p3}, Landroidx/fragment/app/y0$c;-><init>(Landroidx/fragment/app/y0$d$b;Landroidx/fragment/app/y0$d$a;Landroidx/fragment/app/o0;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Landroidx/fragment/app/y0;->b:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    new-instance p1, Landroidx/fragment/app/w0;

    .line 60
    .line 61
    invoke-direct {p1, p0, v1}, Landroidx/fragment/app/w0;-><init>(Landroidx/fragment/app/y0;Landroidx/fragment/app/y0$c;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Landroidx/fragment/app/y0$d;->a(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    new-instance p1, Landroidx/fragment/app/x0;

    .line 68
    .line 69
    invoke-direct {p1, p0, v1}, Landroidx/fragment/app/x0;-><init>(Landroidx/fragment/app/y0;Landroidx/fragment/app/y0$c;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p1}, Landroidx/fragment/app/y0$d;->a(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    monitor-exit v0

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    monitor-exit v0

    .line 81
    throw p1
.end method

.method private static final h(Landroidx/fragment/app/y0;Landroidx/fragment/app/y0$c;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$operation"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/fragment/app/y0;->b:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/fragment/app/y0$d;->h()Landroidx/fragment/app/y0$d$b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p1, p1, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 28
    .line 29
    const-string v1, "operation.fragment.mView"

    .line 30
    .line 31
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Landroidx/fragment/app/y0;->a:Landroid/view/ViewGroup;

    .line 35
    .line 36
    invoke-virtual {v0, p1, p0}, Landroidx/fragment/app/y0$d$b;->b(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method private static final i(Landroidx/fragment/app/y0;Landroidx/fragment/app/y0$c;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$operation"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/fragment/app/y0;->b:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Landroidx/fragment/app/y0;->c:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final o(Landroidx/fragment/app/p;)Landroidx/fragment/app/y0$d;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y0;->b:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v2, v1

    .line 20
    check-cast v2, Landroidx/fragment/app/y0$d;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v3, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/fragment/app/y0$d;->l()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-eqz v2, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 v1, 0x0

    .line 45
    :goto_1
    check-cast v1, Landroidx/fragment/app/y0$d;

    .line 46
    .line 47
    return-object v1
.end method

.method private final p(Landroidx/fragment/app/p;)Landroidx/fragment/app/y0$d;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v2, v1

    .line 20
    check-cast v2, Landroidx/fragment/app/y0$d;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v3, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/fragment/app/y0$d;->l()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-eqz v2, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 v1, 0x0

    .line 45
    :goto_1
    check-cast v1, Landroidx/fragment/app/y0$d;

    .line 46
    .line 47
    return-object v1
.end method

.method public static final u(Landroid/view/ViewGroup;Landroidx/fragment/app/i0;)Landroidx/fragment/app/y0;
    .locals 1

    .line 1
    sget-object v0, Landroidx/fragment/app/y0;->f:Landroidx/fragment/app/y0$a;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/y0$a;->a(Landroid/view/ViewGroup;Landroidx/fragment/app/i0;)Landroidx/fragment/app/y0;

    move-result-object p0

    return-object p0
.end method

.method public static final v(Landroid/view/ViewGroup;Landroidx/fragment/app/z0;)Landroidx/fragment/app/y0;
    .locals 1

    .line 1
    sget-object v0, Landroidx/fragment/app/y0;->f:Landroidx/fragment/app/y0$a;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/y0$a;->b(Landroid/view/ViewGroup;Landroidx/fragment/app/z0;)Landroidx/fragment/app/y0;

    move-result-object p0

    return-object p0
.end method

.method private final z(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Landroidx/fragment/app/y0$d;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroidx/fragment/app/y0$d;->q()V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroidx/fragment/app/y0$d;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/fragment/app/y0$d;->g()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/lang/Iterable;

    .line 49
    .line 50
    invoke-static {v0, v2}, Lyc/m;->v(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-static {v0}, Lyc/m;->o0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lyc/m;->k0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    :goto_2
    if-ge v1, v0, :cond_2

    .line 67
    .line 68
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Landroidx/fragment/app/y0$b;

    .line 73
    .line 74
    iget-object v3, p0, Landroidx/fragment/app/y0;->a:Landroid/view/ViewGroup;

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Landroidx/fragment/app/y0$b;->g(Landroid/view/ViewGroup;)V

    .line 77
    .line 78
    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    return-void
.end method


# virtual methods
.method public final B(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/y0;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final c(Landroidx/fragment/app/y0$d;)V
    .locals 3

    .line 1
    const-string v0, "operation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/y0$d;->k()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/y0$d;->h()Landroidx/fragment/app/y0$d$b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroidx/fragment/app/p;->requireView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "operation.fragment.requireView()"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Landroidx/fragment/app/y0;->a:Landroid/view/ViewGroup;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/y0$d$b;->b(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Landroidx/fragment/app/y0$d;->r(Z)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public abstract d(Ljava/util/List;Z)V
.end method

.method public e(Ljava/util/List;)V
    .locals 6

    .line 1
    const-string v0, "operations"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroidx/fragment/app/y0$d;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/fragment/app/y0$d;->g()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/Iterable;

    .line 35
    .line 36
    invoke-static {v1, v2}, Lyc/m;->v(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v1}, Lyc/m;->o0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lyc/m;->k0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x0

    .line 53
    move v3, v2

    .line 54
    :goto_1
    if-ge v3, v1, :cond_1

    .line 55
    .line 56
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Landroidx/fragment/app/y0$b;

    .line 61
    .line 62
    iget-object v5, p0, Landroidx/fragment/app/y0;->a:Landroid/view/ViewGroup;

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Landroidx/fragment/app/y0$b;->d(Landroid/view/ViewGroup;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    move v1, v2

    .line 75
    :goto_2
    if-ge v1, v0, :cond_2

    .line 76
    .line 77
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Landroidx/fragment/app/y0$d;

    .line 82
    .line 83
    invoke-virtual {p0, v3}, Landroidx/fragment/app/y0;->c(Landroidx/fragment/app/y0$d;)V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    .line 90
    .line 91
    invoke-static {p1}, Lyc/m;->k0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    :goto_3
    if-ge v2, v0, :cond_4

    .line 100
    .line 101
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Landroidx/fragment/app/y0$d;

    .line 106
    .line 107
    invoke-virtual {v1}, Landroidx/fragment/app/y0$d;->g()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_3

    .line 116
    .line 117
    invoke-virtual {v1}, Landroidx/fragment/app/y0$d;->e()V

    .line 118
    .line 119
    .line 120
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_4
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "FragmentManager"

    .line 9
    .line 10
    const-string v1, "SpecialEffectsController: Completing Back "

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Ljava/util/List;

    .line 16
    .line 17
    invoke-direct {p0, v0}, Landroidx/fragment/app/y0;->z(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Ljava/util/List;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroidx/fragment/app/y0;->e(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final j(Landroidx/fragment/app/y0$d$b;Landroidx/fragment/app/o0;)V
    .locals 2

    .line 1
    const-string v0, "finalState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fragmentStateManager"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "SpecialEffectsController: Enqueuing add operation for fragment "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/fragment/app/o0;->k()Landroidx/fragment/app/p;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "FragmentManager"

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    sget-object v0, Landroidx/fragment/app/y0$d$a;->b:Landroidx/fragment/app/y0$d$a;

    .line 45
    .line 46
    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/y0;->g(Landroidx/fragment/app/y0$d$b;Landroidx/fragment/app/y0$d$a;Landroidx/fragment/app/o0;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final k(Landroidx/fragment/app/o0;)V
    .locals 2

    .line 1
    const-string v0, "fragmentStateManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "SpecialEffectsController: Enqueuing hide operation for fragment "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/o0;->k()Landroidx/fragment/app/p;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "FragmentManager"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    sget-object v0, Landroidx/fragment/app/y0$d$b;->d:Landroidx/fragment/app/y0$d$b;

    .line 40
    .line 41
    sget-object v1, Landroidx/fragment/app/y0$d$a;->a:Landroidx/fragment/app/y0$d$a;

    .line 42
    .line 43
    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/y0;->g(Landroidx/fragment/app/y0$d$b;Landroidx/fragment/app/y0$d$a;Landroidx/fragment/app/o0;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final l(Landroidx/fragment/app/o0;)V
    .locals 2

    .line 1
    const-string v0, "fragmentStateManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "SpecialEffectsController: Enqueuing remove operation for fragment "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/o0;->k()Landroidx/fragment/app/p;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "FragmentManager"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    sget-object v0, Landroidx/fragment/app/y0$d$b;->b:Landroidx/fragment/app/y0$d$b;

    .line 40
    .line 41
    sget-object v1, Landroidx/fragment/app/y0$d$a;->c:Landroidx/fragment/app/y0$d$a;

    .line 42
    .line 43
    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/y0;->g(Landroidx/fragment/app/y0$d$b;Landroidx/fragment/app/y0$d$a;Landroidx/fragment/app/o0;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final m(Landroidx/fragment/app/o0;)V
    .locals 2

    .line 1
    const-string v0, "fragmentStateManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "SpecialEffectsController: Enqueuing show operation for fragment "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/o0;->k()Landroidx/fragment/app/p;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "FragmentManager"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    sget-object v0, Landroidx/fragment/app/y0$d$b;->c:Landroidx/fragment/app/y0$d$b;

    .line 40
    .line 41
    sget-object v1, Landroidx/fragment/app/y0$d$a;->a:Landroidx/fragment/app/y0$d$a;

    .line 42
    .line 43
    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/y0;->g(Landroidx/fragment/app/y0$d$b;Landroidx/fragment/app/y0$d$a;Landroidx/fragment/app/o0;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final n()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/y0;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/y0;->a:Landroid/view/ViewGroup;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->q()V

    .line 16
    .line 17
    .line 18
    iput-boolean v1, p0, Landroidx/fragment/app/y0;->d:Z

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/y0;->b:Ljava/util/List;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/y0;->b:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x2

    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/fragment/app/y0;->c:Ljava/util/List;

    .line 34
    .line 35
    check-cast v2, Ljava/util/Collection;

    .line 36
    .line 37
    invoke-static {v2}, Lyc/m;->m0(Ljava/util/Collection;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v4, p0, Landroidx/fragment/app/y0;->c:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 44
    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_14

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Landroidx/fragment/app/y0$d;

    .line 61
    .line 62
    invoke-static {v3}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_3

    .line 67
    .line 68
    const-string v5, "FragmentManager"

    .line 69
    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v7, "SpecialEffectsController: Cancelling operation "

    .line 76
    .line 77
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v7, " with no incoming pendingOperations"

    .line 84
    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object v5, p0, Landroidx/fragment/app/y0;->a:Landroid/view/ViewGroup;

    .line 96
    .line 97
    invoke-virtual {v4, v5, v1}, Landroidx/fragment/app/y0$d;->d(Landroid/view/ViewGroup;Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Landroidx/fragment/app/y0$d;->m()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-nez v5, :cond_2

    .line 105
    .line 106
    iget-object v5, p0, Landroidx/fragment/app/y0;->c:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    iget-object v2, p0, Landroidx/fragment/app/y0;->c:Ljava/util/List;

    .line 113
    .line 114
    check-cast v2, Ljava/util/Collection;

    .line 115
    .line 116
    invoke-static {v2}, Lyc/m;->m0(Ljava/util/Collection;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iget-object v4, p0, Landroidx/fragment/app/y0;->c:Ljava/util/List;

    .line 121
    .line 122
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 123
    .line 124
    .line 125
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_7

    .line 134
    .line 135
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Landroidx/fragment/app/y0$d;

    .line 140
    .line 141
    invoke-static {v3}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_6

    .line 146
    .line 147
    const-string v5, "FragmentManager"

    .line 148
    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v7, "SpecialEffectsController: Cancelling operation "

    .line 155
    .line 156
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    :cond_6
    iget-object v5, p0, Landroidx/fragment/app/y0;->a:Landroid/view/ViewGroup;

    .line 170
    .line 171
    invoke-virtual {v4}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    iget-boolean v6, v6, Landroidx/fragment/app/p;->mTransitioning:Z

    .line 176
    .line 177
    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/y0$d;->d(Landroid/view/ViewGroup;Z)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4}, Landroidx/fragment/app/y0$d;->m()Z

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    if-nez v5, :cond_5

    .line 185
    .line 186
    iget-object v5, p0, Landroidx/fragment/app/y0;->c:Ljava/util/List;

    .line 187
    .line 188
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_7
    invoke-direct {p0}, Landroidx/fragment/app/y0;->A()V

    .line 193
    .line 194
    .line 195
    iget-object v2, p0, Landroidx/fragment/app/y0;->b:Ljava/util/List;

    .line 196
    .line 197
    check-cast v2, Ljava/util/Collection;

    .line 198
    .line 199
    invoke-static {v2}, Lyc/m;->m0(Ljava/util/Collection;)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 204
    .line 205
    .line 206
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    if-eqz v4, :cond_8

    .line 208
    .line 209
    monitor-exit v0

    .line 210
    return-void

    .line 211
    :cond_8
    :try_start_1
    iget-object v4, p0, Landroidx/fragment/app/y0;->b:Ljava/util/List;

    .line 212
    .line 213
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 214
    .line 215
    .line 216
    iget-object v4, p0, Landroidx/fragment/app/y0;->c:Ljava/util/List;

    .line 217
    .line 218
    move-object v5, v2

    .line 219
    check-cast v5, Ljava/util/Collection;

    .line 220
    .line 221
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    .line 223
    .line 224
    invoke-static {v3}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-eqz v4, :cond_9

    .line 229
    .line 230
    const-string v4, "FragmentManager"

    .line 231
    .line 232
    const-string v5, "SpecialEffectsController: Executing pending operations"

    .line 233
    .line 234
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    :cond_9
    iget-boolean v4, p0, Landroidx/fragment/app/y0;->d:Z

    .line 238
    .line 239
    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/y0;->d(Ljava/util/List;Z)V

    .line 240
    .line 241
    .line 242
    new-instance v4, Lkotlin/jvm/internal/z;

    .line 243
    .line 244
    invoke-direct {v4}, Lkotlin/jvm/internal/z;-><init>()V

    .line 245
    .line 246
    .line 247
    const/4 v5, 0x1

    .line 248
    iput-boolean v5, v4, Lkotlin/jvm/internal/z;->a:Z

    .line 249
    .line 250
    move-object v6, v2

    .line 251
    check-cast v6, Ljava/lang/Iterable;

    .line 252
    .line 253
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    move v7, v5

    .line 258
    :cond_a
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v8

    .line 262
    if-eqz v8, :cond_f

    .line 263
    .line 264
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    check-cast v8, Landroidx/fragment/app/y0$d;

    .line 269
    .line 270
    invoke-virtual {v8}, Landroidx/fragment/app/y0$d;->g()Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object v9

    .line 274
    check-cast v9, Ljava/util/Collection;

    .line 275
    .line 276
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 277
    .line 278
    .line 279
    move-result v9

    .line 280
    xor-int/2addr v9, v5

    .line 281
    if-eqz v9, :cond_e

    .line 282
    .line 283
    invoke-virtual {v8}, Landroidx/fragment/app/y0$d;->g()Ljava/util/List;

    .line 284
    .line 285
    .line 286
    move-result-object v9

    .line 287
    check-cast v9, Ljava/lang/Iterable;

    .line 288
    .line 289
    instance-of v10, v9, Ljava/util/Collection;

    .line 290
    .line 291
    if-eqz v10, :cond_c

    .line 292
    .line 293
    move-object v10, v9

    .line 294
    check-cast v10, Ljava/util/Collection;

    .line 295
    .line 296
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 297
    .line 298
    .line 299
    move-result v10

    .line 300
    if-eqz v10, :cond_c

    .line 301
    .line 302
    :cond_b
    move v9, v5

    .line 303
    goto :goto_3

    .line 304
    :cond_c
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v10

    .line 312
    if-eqz v10, :cond_b

    .line 313
    .line 314
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v10

    .line 318
    check-cast v10, Landroidx/fragment/app/y0$b;

    .line 319
    .line 320
    invoke-virtual {v10}, Landroidx/fragment/app/y0$b;->b()Z

    .line 321
    .line 322
    .line 323
    move-result v10

    .line 324
    if-nez v10, :cond_d

    .line 325
    .line 326
    move v9, v1

    .line 327
    :goto_3
    if-eqz v9, :cond_e

    .line 328
    .line 329
    move v9, v5

    .line 330
    goto :goto_4

    .line 331
    :cond_e
    move v9, v1

    .line 332
    :goto_4
    iput-boolean v9, v4, Lkotlin/jvm/internal/z;->a:Z

    .line 333
    .line 334
    invoke-virtual {v8}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 335
    .line 336
    .line 337
    move-result-object v8

    .line 338
    iget-boolean v8, v8, Landroidx/fragment/app/p;->mTransitioning:Z

    .line 339
    .line 340
    if-nez v8, :cond_a

    .line 341
    .line 342
    move v7, v1

    .line 343
    goto :goto_2

    .line 344
    :cond_f
    iget-boolean v6, v4, Lkotlin/jvm/internal/z;->a:Z

    .line 345
    .line 346
    if-eqz v6, :cond_11

    .line 347
    .line 348
    move-object v6, v2

    .line 349
    check-cast v6, Ljava/lang/Iterable;

    .line 350
    .line 351
    new-instance v8, Ljava/util/ArrayList;

    .line 352
    .line 353
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 357
    .line 358
    .line 359
    move-result-object v6

    .line 360
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 361
    .line 362
    .line 363
    move-result v9

    .line 364
    if-eqz v9, :cond_10

    .line 365
    .line 366
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v9

    .line 370
    check-cast v9, Landroidx/fragment/app/y0$d;

    .line 371
    .line 372
    invoke-virtual {v9}, Landroidx/fragment/app/y0$d;->g()Ljava/util/List;

    .line 373
    .line 374
    .line 375
    move-result-object v9

    .line 376
    check-cast v9, Ljava/lang/Iterable;

    .line 377
    .line 378
    invoke-static {v8, v9}, Lyc/m;->v(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 379
    .line 380
    .line 381
    goto :goto_5

    .line 382
    :cond_10
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 383
    .line 384
    .line 385
    move-result v6

    .line 386
    xor-int/2addr v6, v5

    .line 387
    if-eqz v6, :cond_11

    .line 388
    .line 389
    goto :goto_6

    .line 390
    :cond_11
    move v5, v1

    .line 391
    :goto_6
    iput-boolean v5, v4, Lkotlin/jvm/internal/z;->a:Z

    .line 392
    .line 393
    if-nez v7, :cond_12

    .line 394
    .line 395
    invoke-direct {p0, v2}, Landroidx/fragment/app/y0;->z(Ljava/util/List;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0, v2}, Landroidx/fragment/app/y0;->e(Ljava/util/List;)V

    .line 399
    .line 400
    .line 401
    goto :goto_8

    .line 402
    :cond_12
    if-eqz v5, :cond_13

    .line 403
    .line 404
    invoke-direct {p0, v2}, Landroidx/fragment/app/y0;->z(Ljava/util/List;)V

    .line 405
    .line 406
    .line 407
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 408
    .line 409
    .line 410
    move-result v4

    .line 411
    move v5, v1

    .line 412
    :goto_7
    if-ge v5, v4, :cond_13

    .line 413
    .line 414
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    check-cast v6, Landroidx/fragment/app/y0$d;

    .line 419
    .line 420
    invoke-virtual {p0, v6}, Landroidx/fragment/app/y0;->c(Landroidx/fragment/app/y0$d;)V

    .line 421
    .line 422
    .line 423
    add-int/lit8 v5, v5, 0x1

    .line 424
    .line 425
    goto :goto_7

    .line 426
    :cond_13
    :goto_8
    iput-boolean v1, p0, Landroidx/fragment/app/y0;->d:Z

    .line 427
    .line 428
    invoke-static {v3}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    if-eqz v1, :cond_14

    .line 433
    .line 434
    const-string v1, "FragmentManager"

    .line 435
    .line 436
    const-string v2, "SpecialEffectsController: Finished executing pending operations"

    .line 437
    .line 438
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    :cond_14
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    .line 443
    monitor-exit v0

    .line 444
    return-void

    .line 445
    :catchall_0
    move-exception v1

    .line 446
    monitor-exit v0

    .line 447
    throw v1
.end method

.method public final q()V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "FragmentManager"

    .line 9
    .line 10
    const-string v2, "SpecialEffectsController: Forcing all operations to complete"

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/y0;->a:Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Landroidx/fragment/app/y0;->b:Ljava/util/List;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    invoke-direct {p0}, Landroidx/fragment/app/y0;->A()V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Landroidx/fragment/app/y0;->b:Ljava/util/List;

    .line 28
    .line 29
    invoke-direct {p0, v3}, Landroidx/fragment/app/y0;->z(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Landroidx/fragment/app/y0;->c:Ljava/util/List;

    .line 33
    .line 34
    check-cast v3, Ljava/util/Collection;

    .line 35
    .line 36
    invoke-static {v3}, Lyc/m;->m0(Ljava/util/Collection;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroidx/fragment/app/y0$d;

    .line 55
    .line 56
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    const-string v5, ""

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v6, "Container "

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v6, p0, Landroidx/fragment/app/y0;->a:Landroid/view/ViewGroup;

    .line 78
    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v6, " is not attached to window. "

    .line 83
    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    :goto_1
    const-string v6, "FragmentManager"

    .line 92
    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v8, "SpecialEffectsController: "

    .line 99
    .line 100
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v5, "Cancelling running operation "

    .line 107
    .line 108
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :cond_2
    iget-object v5, p0, Landroidx/fragment/app/y0;->a:Landroid/view/ViewGroup;

    .line 122
    .line 123
    invoke-virtual {v4, v5}, Landroidx/fragment/app/y0$d;->c(Landroid/view/ViewGroup;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_3
    iget-object v3, p0, Landroidx/fragment/app/y0;->b:Ljava/util/List;

    .line 128
    .line 129
    check-cast v3, Ljava/util/Collection;

    .line 130
    .line 131
    invoke-static {v3}, Lyc/m;->m0(Ljava/util/Collection;)Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_6

    .line 144
    .line 145
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Landroidx/fragment/app/y0$d;

    .line 150
    .line 151
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-eqz v5, :cond_5

    .line 156
    .line 157
    if-eqz v1, :cond_4

    .line 158
    .line 159
    const-string v5, ""

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v6, "Container "

    .line 168
    .line 169
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-object v6, p0, Landroidx/fragment/app/y0;->a:Landroid/view/ViewGroup;

    .line 173
    .line 174
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v6, " is not attached to window. "

    .line 178
    .line 179
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    :goto_3
    const-string v6, "FragmentManager"

    .line 187
    .line 188
    new-instance v7, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string v8, "SpecialEffectsController: "

    .line 194
    .line 195
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v5, "Cancelling pending operation "

    .line 202
    .line 203
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_5
    iget-object v5, p0, Landroidx/fragment/app/y0;->a:Landroid/view/ViewGroup;

    .line 217
    .line 218
    invoke-virtual {v4, v5}, Landroidx/fragment/app/y0$d;->c(Landroid/view/ViewGroup;)V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_6
    sget-object v0, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .line 224
    monitor-exit v2

    .line 225
    return-void

    .line 226
    :catchall_0
    move-exception v0

    .line 227
    monitor-exit v2

    .line 228
    throw v0
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/y0;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "FragmentManager"

    .line 13
    .line 14
    const-string v1, "SpecialEffectsController: Forcing postponed operations"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Landroidx/fragment/app/y0;->e:Z

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->n()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final s(Landroidx/fragment/app/o0;)Landroidx/fragment/app/y0$d$a;
    .locals 4

    .line 1
    const-string v0, "fragmentStateManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/o0;->k()Landroidx/fragment/app/p;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "fragmentStateManager.fragment"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Landroidx/fragment/app/y0;->o(Landroidx/fragment/app/p;)Landroidx/fragment/app/y0$d;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/fragment/app/y0$d;->j()Landroidx/fragment/app/y0$d$a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v0, v1

    .line 28
    :goto_0
    invoke-direct {p0, p1}, Landroidx/fragment/app/y0;->p(Landroidx/fragment/app/p;)Landroidx/fragment/app/y0$d;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/fragment/app/y0$d;->j()Landroidx/fragment/app/y0$d$a;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_1
    const/4 p1, -0x1

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    move v2, p1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    sget-object v2, Landroidx/fragment/app/y0$e;->a:[I

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    aget v2, v2, v3

    .line 50
    .line 51
    :goto_1
    if-eq v2, p1, :cond_3

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    if-eq v2, p1, :cond_3

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    move-object v0, v1

    .line 58
    :goto_2
    return-object v0
.end method

.method public final t()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y0;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y0;->b:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    return v0
.end method

.method public final x()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y0;->b:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Landroidx/fragment/app/y0;->A()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroidx/fragment/app/y0;->b:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    move-object v5, v2

    .line 30
    check-cast v5, Landroidx/fragment/app/y0$d;

    .line 31
    .line 32
    sget-object v6, Landroidx/fragment/app/y0$d$b;->a:Landroidx/fragment/app/y0$d$b$a;

    .line 33
    .line 34
    invoke-virtual {v5}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    iget-object v7, v7, Landroidx/fragment/app/p;->mView:Landroid/view/View;

    .line 39
    .line 40
    const-string v8, "operation.fragment.mView"

    .line 41
    .line 42
    invoke-static {v7, v8}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v7}, Landroidx/fragment/app/y0$d$b$a;->a(Landroid/view/View;)Landroidx/fragment/app/y0$d$b;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v5}, Landroidx/fragment/app/y0$d;->h()Landroidx/fragment/app/y0$d$b;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    sget-object v7, Landroidx/fragment/app/y0$d$b;->c:Landroidx/fragment/app/y0$d$b;

    .line 54
    .line 55
    if-ne v5, v7, :cond_1

    .line 56
    .line 57
    if-eq v6, v7, :cond_1

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move v5, v3

    .line 62
    :goto_0
    if-eqz v5, :cond_0

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-object v2, v4

    .line 66
    :goto_1
    check-cast v2, Landroidx/fragment/app/y0$d;

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    invoke-virtual {v2}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    :cond_3
    if-eqz v4, :cond_4

    .line 75
    .line 76
    invoke-virtual {v4}, Landroidx/fragment/app/p;->isPostponed()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    :cond_4
    iput-boolean v3, p0, Landroidx/fragment/app/y0;->e:Z

    .line 81
    .line 82
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception v1

    .line 87
    monitor-exit v0

    .line 88
    throw v1
.end method

.method public final y(Landroidx/activity/b;)V
    .locals 5

    .line 1
    const-string v0, "backEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    invoke-static {v0}, Landroidx/fragment/app/i0;->J0(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "SpecialEffectsController: Processing Progress "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/activity/b;->a()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "FragmentManager"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Ljava/util/List;

    .line 40
    .line 41
    check-cast v0, Ljava/lang/Iterable;

    .line 42
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroidx/fragment/app/y0$d;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroidx/fragment/app/y0$d;->g()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/Iterable;

    .line 69
    .line 70
    invoke-static {v1, v2}, Lyc/m;->v(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-static {v1}, Lyc/m;->o0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lyc/m;->k0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const/4 v2, 0x0

    .line 87
    :goto_1
    if-ge v2, v1, :cond_2

    .line 88
    .line 89
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Landroidx/fragment/app/y0$b;

    .line 94
    .line 95
    iget-object v4, p0, Landroidx/fragment/app/y0;->a:Landroid/view/ViewGroup;

    .line 96
    .line 97
    invoke-virtual {v3, p1, v4}, Landroidx/fragment/app/y0$b;->e(Landroidx/activity/b;Landroid/view/ViewGroup;)V

    .line 98
    .line 99
    .line 100
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    return-void
.end method
