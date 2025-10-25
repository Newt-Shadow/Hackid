.class public final Lhc/d;
.super Lhc/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhc/d$c;
    }
.end annotation


# static fields
.field private static final d:Lxc/d;

.field private static final e:Lxc/d;

.field private static final f:Ljava/util/WeakHashMap;

.field private static final g:Ljava/lang/Object;

.field public static final h:Lhc/d$c;


# instance fields
.field private final b:Lhc/e;

.field private final c:Landroid/view/Window$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhc/d$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lhc/d$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lhc/d;->h:Lhc/d$c;

    .line 8
    .line 9
    sget-object v0, Lxc/h;->c:Lxc/h;

    .line 10
    .line 11
    sget-object v1, Lhc/d$b;->e:Lhc/d$b;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lhc/d;->d:Lxc/d;

    .line 18
    .line 19
    sget-object v1, Lhc/d$a;->e:Lhc/d$a;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lhc/d;->e:Lxc/d;

    .line 26
    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lhc/d;->f:Ljava/util/WeakHashMap;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/Object;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lhc/d;->g:Ljava/lang/Object;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/view/Window$Callback;)V
    .locals 1

    .line 1
    const-string v0, "delegate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lhc/b;-><init>(Landroid/view/Window$Callback;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lhc/d;->c:Landroid/view/Window$Callback;

    .line 10
    .line 11
    new-instance p1, Lhc/e;

    .line 12
    .line 13
    invoke-direct {p1}, Lhc/e;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lhc/d;->b:Lhc/e;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic a()Ljava/util/WeakHashMap;
    .locals 1

    .line 1
    sget-object v0, Lhc/d;->f:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Lhc/d;)Landroid/view/Window$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lhc/d;->c:Landroid/view/Window$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c()Lxc/d;
    .locals 1

    .line 1
    sget-object v0, Lhc/d;->d:Lxc/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Lhc/d;)Lhc/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lhc/d;->b:Lhc/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lhc/d;->g:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lhc/d;->b:Lhc/e;

    .line 4
    .line 5
    invoke-virtual {v0}, Lhc/e;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "listeners.keyEventInterceptors.iterator()"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lhc/d$d;

    .line 19
    .line 20
    invoke-direct {v1, p0, v0}, Lhc/d$d;-><init>(Lhc/d;Ljava/util/Iterator;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    sget-object v0, Lgc/b;->b:Lgc/b$a;

    .line 30
    .line 31
    iget-object v1, p0, Lhc/d;->c:Landroid/view/Window$Callback;

    .line 32
    .line 33
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {v0, p1}, Lgc/b$a;->a(Z)Lgc/b;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    instance-of p1, p1, Lgc/b$b;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    throw p1

    .line 53
    :cond_1
    iget-object v0, p0, Lhc/d;->c:Landroid/view/Window$Callback;

    .line 54
    .line 55
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    :goto_0
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lhc/d;->b:Lhc/e;

    .line 4
    .line 5
    invoke-virtual {v0}, Lhc/e;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "listeners.touchEventInterceptors.iterator()"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lhc/d$e;

    .line 19
    .line 20
    invoke-direct {v1, p0, v0}, Lhc/d$e;-><init>(Lhc/d;Ljava/util/Iterator;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lgc/e;

    .line 34
    .line 35
    invoke-interface {v0, p1, v1}, Lgc/e;->a(Landroid/view/MotionEvent;Lid/l;)Lgc/b;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object v0, Lgc/b;->b:Lgc/b$a;

    .line 41
    .line 42
    iget-object v1, p0, Lhc/d;->c:Landroid/view/Window$Callback;

    .line 43
    .line 44
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {v0, p1}, Lgc/b$a;->a(Z)Lgc/b;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    instance-of p1, p1, Lgc/b$b;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object v0, p0, Lhc/d;->c:Landroid/view/Window$Callback;

    .line 56
    .line 57
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    :goto_1
    return p1
.end method

.method public onContentChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lhc/d;->b:Lhc/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lhc/e;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lgc/c;

    .line 22
    .line 23
    invoke-interface {v1}, Lgc/c;->onContentChanged()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lhc/d;->c:Landroid/view/Window$Callback;

    .line 28
    .line 29
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lhc/d;->b:Lhc/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lhc/e;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lhc/d;->c:Landroid/view/Window$Callback;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    throw p1
.end method
