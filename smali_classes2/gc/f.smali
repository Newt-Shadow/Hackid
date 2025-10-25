.class public abstract Lgc/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lxc/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lxc/h;->c:Lxc/h;

    .line 2
    .line 3
    sget-object v1, Lgc/f$b;->e:Lgc/f$b;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lgc/f;->a:Lxc/d;

    .line 10
    .line 11
    return-void
.end method

.method public static final a(Landroid/view/View;)Landroid/view/Window;
    .locals 2

    .line 1
    const-string v0, "$this$phoneWindow"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lhc/g;->c:Lhc/g;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v1, "rootView"

    .line 13
    .line 14
    invoke-static {p0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lhc/g;->d(Landroid/view/View;)Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static final b(Landroid/view/Window;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "$this$touchEventInterceptors"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lhc/d;->h:Lhc/d$c;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lhc/d$c;->c(Landroid/view/Window;)Lhc/e;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lhc/e;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final c(Landroid/view/View;)I
    .locals 1

    .line 1
    const-string v0, "$this$windowAttachCount"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroid/view/b;->a(Landroid/view/View;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static final d(Landroid/view/Window;Lid/l;)V
    .locals 3

    .line 1
    const-string v0, "$this$onDecorViewReady"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onDecorViewReady"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lhc/d;->h:Lhc/d$c;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lhc/d$c;->c(Landroid/view/Window;)Lhc/e;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lhc/e;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lgc/f$a;

    .line 32
    .line 33
    invoke-direct {v2, v0, p0, p1}, Lgc/f$a;-><init>(Lhc/e;Landroid/view/Window;Lid/l;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
