.class final Landroidx/fragment/app/f$g$b$a;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/f$g$b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/fragment/app/f$g;

.field final synthetic f:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroidx/fragment/app/f$g;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/f$g$b$a;->e:Landroidx/fragment/app/f$g;

    iput-object p2, p0, Landroidx/fragment/app/f$g$b$a;->f:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Landroidx/fragment/app/f$g;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/fragment/app/f$g$b$a;->d(Landroidx/fragment/app/f$g;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private static final d(Landroidx/fragment/app/f$g;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$container"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/f$g;->w()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroidx/fragment/app/f$h;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/f$f;->a()Landroidx/fragment/app/y0$d;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroidx/fragment/app/y0$d;->i()Landroidx/fragment/app/p;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroidx/fragment/app/p;->getView()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/fragment/app/y0$d;->h()Landroidx/fragment/app/y0$d$b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/y0$d$b;->b(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .line 1
    const/4 v0, 0x2

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
    const-string v1, "Animating to start"

    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/f$g$b$a;->e:Landroidx/fragment/app/f$g;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/f$g;->v()Landroidx/fragment/app/t0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Landroidx/fragment/app/f$g$b$a;->e:Landroidx/fragment/app/f$g;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/fragment/app/f$g;->s()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Landroidx/fragment/app/f$g$b$a;->e:Landroidx/fragment/app/f$g;

    .line 31
    .line 32
    iget-object v3, p0, Landroidx/fragment/app/f$g$b$a;->f:Landroid/view/ViewGroup;

    .line 33
    .line 34
    new-instance v4, Landroidx/fragment/app/m;

    .line 35
    .line 36
    invoke-direct {v4, v2, v3}, Landroidx/fragment/app/m;-><init>(Landroidx/fragment/app/f$g;Landroid/view/ViewGroup;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v4}, Landroidx/fragment/app/t0;->d(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/f$g$b$a;->b()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 5
    .line 6
    return-object v0
.end method
