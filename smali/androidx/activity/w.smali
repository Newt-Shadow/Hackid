.class public final Landroidx/activity/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/w$f;,
        Landroidx/activity/w$g;,
        Landroidx/activity/w$h;,
        Landroidx/activity/w$i;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Lc0/a;

.field private final c:Lyc/f;

.field private d:Landroidx/activity/v;

.field private e:Landroid/window/OnBackInvokedCallback;

.field private f:Landroid/window/OnBackInvokedDispatcher;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Landroidx/activity/w;-><init>(Ljava/lang/Runnable;Lc0/a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lc0/a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/activity/w;->a:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Landroidx/activity/w;->b:Lc0/a;

    .line 4
    new-instance p1, Lyc/f;

    invoke-direct {p1}, Lyc/f;-><init>()V

    iput-object p1, p0, Landroidx/activity/w;->c:Lyc/f;

    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    if-lt p1, p2, :cond_1

    const/16 p2, 0x22

    if-lt p1, p2, :cond_0

    .line 6
    sget-object p1, Landroidx/activity/w$g;->a:Landroidx/activity/w$g;

    new-instance p2, Landroidx/activity/w$a;

    invoke-direct {p2, p0}, Landroidx/activity/w$a;-><init>(Landroidx/activity/w;)V

    new-instance v0, Landroidx/activity/w$b;

    invoke-direct {v0, p0}, Landroidx/activity/w$b;-><init>(Landroidx/activity/w;)V

    new-instance v1, Landroidx/activity/w$c;

    invoke-direct {v1, p0}, Landroidx/activity/w$c;-><init>(Landroidx/activity/w;)V

    new-instance v2, Landroidx/activity/w$d;

    invoke-direct {v2, p0}, Landroidx/activity/w$d;-><init>(Landroidx/activity/w;)V

    invoke-virtual {p1, p2, v0, v1, v2}, Landroidx/activity/w$g;->a(Lid/l;Lid/l;Lid/a;Lid/a;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Landroidx/activity/w$f;->a:Landroidx/activity/w$f;

    new-instance p2, Landroidx/activity/w$e;

    invoke-direct {p2, p0}, Landroidx/activity/w$e;-><init>(Landroidx/activity/w;)V

    invoke-virtual {p1, p2}, Landroidx/activity/w$f;->b(Lid/a;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    .line 8
    :goto_0
    iput-object p1, p0, Landroidx/activity/w;->e:Landroid/window/OnBackInvokedCallback;

    :cond_1
    return-void
.end method

.method public static final synthetic a(Landroidx/activity/w;)Landroidx/activity/v;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/activity/w;->d:Landroidx/activity/v;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Landroidx/activity/w;)Lyc/f;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/activity/w;->c:Lyc/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Landroidx/activity/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/activity/w;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Landroidx/activity/w;Landroidx/activity/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/activity/w;->l(Landroidx/activity/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e(Landroidx/activity/w;Landroidx/activity/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/activity/w;->m(Landroidx/activity/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Landroidx/activity/w;Landroidx/activity/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/w;->d:Landroidx/activity/v;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic g(Landroidx/activity/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/activity/w;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/activity/w;->d:Landroidx/activity/v;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/activity/w;->c:Lyc/f;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    move-object v3, v2

    .line 27
    check-cast v3, Landroidx/activity/v;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroidx/activity/v;->isEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v2, v1

    .line 37
    :goto_0
    move-object v0, v2

    .line 38
    check-cast v0, Landroidx/activity/v;

    .line 39
    .line 40
    :cond_2
    iput-object v1, p0, Landroidx/activity/w;->d:Landroidx/activity/v;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/activity/v;->handleOnBackCancelled()V

    .line 45
    .line 46
    .line 47
    :cond_3
    return-void
.end method

.method private final l(Landroidx/activity/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/activity/w;->d:Landroidx/activity/v;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/activity/w;->c:Lyc/f;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    move-object v2, v1

    .line 26
    check-cast v2, Landroidx/activity/v;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroidx/activity/v;->isEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    :goto_0
    move-object v0, v1

    .line 37
    check-cast v0, Landroidx/activity/v;

    .line 38
    .line 39
    :cond_2
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroidx/activity/v;->handleOnBackProgressed(Landroidx/activity/b;)V

    .line 42
    .line 43
    .line 44
    :cond_3
    return-void
.end method

.method private final m(Landroidx/activity/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/activity/w;->c:Lyc/f;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move-object v2, v1

    .line 22
    check-cast v2, Landroidx/activity/v;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/activity/v;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    check-cast v1, Landroidx/activity/v;

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/activity/w;->d:Landroidx/activity/v;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-direct {p0}, Landroidx/activity/w;->j()V

    .line 39
    .line 40
    .line 41
    :cond_2
    iput-object v1, p0, Landroidx/activity/w;->d:Landroidx/activity/v;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Landroidx/activity/v;->handleOnBackStarted(Landroidx/activity/b;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method private final o(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/activity/w;->f:Landroid/window/OnBackInvokedDispatcher;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/activity/w;->e:Landroid/window/OnBackInvokedCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-boolean v3, p0, Landroidx/activity/w;->g:Z

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    sget-object p1, Landroidx/activity/w$f;->a:Landroidx/activity/w$f;

    .line 17
    .line 18
    invoke-virtual {p1, v0, v2, v1}, Landroidx/activity/w$f;->d(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Landroidx/activity/w;->g:Z

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-nez p1, :cond_1

    .line 26
    .line 27
    iget-boolean p1, p0, Landroidx/activity/w;->g:Z

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    sget-object p1, Landroidx/activity/w$f;->a:Landroidx/activity/w$f;

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroidx/activity/w$f;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-boolean v2, p0, Landroidx/activity/w;->g:Z

    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method private final p()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/activity/w;->h:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/activity/w;->c:Lyc/f;

    .line 4
    .line 5
    instance-of v2, v1, Ljava/util/Collection;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroidx/activity/v;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/activity/v;->isEnabled()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    :cond_2
    :goto_0
    iput-boolean v3, p0, Landroidx/activity/w;->h:Z

    .line 41
    .line 42
    if-eq v3, v0, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/activity/w;->b:Lc0/a;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v0, v1}, Lc0/a;->accept(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .line 57
    const/16 v1, 0x21

    .line 58
    .line 59
    if-lt v0, v1, :cond_4

    .line 60
    .line 61
    invoke-direct {p0, v3}, Landroidx/activity/w;->o(Z)V

    .line 62
    .line 63
    .line 64
    :cond_4
    return-void
.end method


# virtual methods
.method public final h(Landroidx/lifecycle/m;Landroidx/activity/v;)V
    .locals 2

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onBackPressedCallback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Landroidx/lifecycle/m;->getLifecycle()Landroidx/lifecycle/i;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroidx/lifecycle/i;->b()Landroidx/lifecycle/i$b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Landroidx/lifecycle/i$b;->a:Landroidx/lifecycle/i$b;

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v0, Landroidx/activity/w$h;

    .line 25
    .line 26
    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/w$h;-><init>(Landroidx/activity/w;Landroidx/lifecycle/i;Landroidx/activity/v;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroidx/activity/v;->addCancellable(Landroidx/activity/c;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Landroidx/activity/w;->p()V

    .line 33
    .line 34
    .line 35
    new-instance p1, Landroidx/activity/w$j;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Landroidx/activity/w$j;-><init>(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroidx/activity/v;->setEnabledChangedCallback$activity_release(Lid/a;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final i(Landroidx/activity/v;)Landroidx/activity/c;
    .locals 2

    .line 1
    const-string v0, "onBackPressedCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/activity/w;->c:Lyc/f;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lyc/f;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/activity/w$i;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Landroidx/activity/w$i;-><init>(Landroidx/activity/w;Landroidx/activity/v;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/activity/v;->addCancellable(Landroidx/activity/c;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroidx/activity/w;->p()V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/activity/w$k;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Landroidx/activity/w$k;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroidx/activity/v;->setEnabledChangedCallback$activity_release(Lid/a;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/activity/w;->d:Landroidx/activity/v;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/activity/w;->c:Lyc/f;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    move-object v3, v2

    .line 27
    check-cast v3, Landroidx/activity/v;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroidx/activity/v;->isEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v2, v1

    .line 37
    :goto_0
    move-object v0, v2

    .line 38
    check-cast v0, Landroidx/activity/v;

    .line 39
    .line 40
    :cond_2
    iput-object v1, p0, Landroidx/activity/w;->d:Landroidx/activity/v;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/activity/v;->handleOnBackPressed()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    iget-object v0, p0, Landroidx/activity/w;->a:Ljava/lang/Runnable;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 53
    .line 54
    .line 55
    :cond_4
    return-void
.end method

.method public final n(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 1

    .line 1
    const-string v0, "invoker"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/activity/w;->f:Landroid/window/OnBackInvokedDispatcher;

    .line 7
    .line 8
    iget-boolean p1, p0, Landroidx/activity/w;->h:Z

    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroidx/activity/w;->o(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
