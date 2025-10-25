.class public final Lio/sentry/android/replay/gestures/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/android/replay/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/gestures/a$a;
    }
.end annotation


# instance fields
.field private final a:Lio/sentry/s5;

.field private final b:Lio/sentry/android/replay/gestures/c;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lio/sentry/s5;Lio/sentry/android/replay/gestures/c;)V
    .locals 1

    .line 1
    const-string v0, "options"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "touchRecorderCallback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lio/sentry/android/replay/gestures/a;->a:Lio/sentry/s5;

    .line 15
    .line 16
    iput-object p2, p0, Lio/sentry/android/replay/gestures/a;->b:Lio/sentry/android/replay/gestures/c;

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lio/sentry/android/replay/gestures/a;->c:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance p1, Ljava/lang/Object;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lio/sentry/android/replay/gestures/a;->d:Ljava/lang/Object;

    .line 31
    .line 32
    return-void
.end method

.method private final b(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lio/sentry/android/replay/a0;->a(Landroid/view/View;)Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lio/sentry/android/replay/gestures/a;->a:Lio/sentry/s5;

    .line 8
    .line 9
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v2, "Window is invalid, not tracking gestures"

    .line 19
    .line 20
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v1, v0, Lio/sentry/android/replay/gestures/a$a;

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    new-instance v1, Lio/sentry/android/replay/gestures/a$a;

    .line 33
    .line 34
    iget-object v2, p0, Lio/sentry/android/replay/gestures/a;->a:Lio/sentry/s5;

    .line 35
    .line 36
    iget-object v3, p0, Lio/sentry/android/replay/gestures/a;->b:Lio/sentry/android/replay/gestures/c;

    .line 37
    .line 38
    invoke-direct {v1, v2, v3, v0}, Lio/sentry/android/replay/gestures/a$a;-><init>(Lio/sentry/s5;Lio/sentry/android/replay/gestures/c;Landroid/view/Window$Callback;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method private final d(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lio/sentry/android/replay/a0;->a(Landroid/view/View;)Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lio/sentry/android/replay/gestures/a;->a:Lio/sentry/s5;

    .line 8
    .line 9
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v2, "Window was null in stopGestureTracking"

    .line 19
    .line 20
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v1, v0, Lio/sentry/android/replay/gestures/a$a;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    check-cast v0, Lio/sentry/android/replay/gestures/a$a;

    .line 33
    .line 34
    iget-object v0, v0, Lio/sentry/android/replay/util/h;->a:Landroid/view/Window$Callback;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .locals 2

    .line 1
    const-string v0, "root"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/replay/gestures/a;->d:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object p2, p0, Lio/sentry/android/replay/gestures/a;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lio/sentry/android/replay/gestures/a;->b(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/android/replay/gestures/a;->d(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lio/sentry/android/replay/gestures/a;->c:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v1, Lio/sentry/android/replay/gestures/a$b;

    .line 33
    .line 34
    invoke-direct {v1, p1}, Lio/sentry/android/replay/gestures/a$b;-><init>(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p2, v1}, Lyc/m;->A(Ljava/util/List;Lid/l;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    :goto_0
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    monitor-exit v0

    .line 44
    throw p1
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/gestures/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/replay/gestures/a;->c:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/view/View;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const-string v3, "get()"

    .line 31
    .line 32
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v2}, Lio/sentry/android/replay/gestures/a;->d(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v1, p0, Lio/sentry/android/replay/gestures/a;->c:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 42
    .line 43
    .line 44
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    monitor-exit v0

    .line 50
    throw v1
.end method
