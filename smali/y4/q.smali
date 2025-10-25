.class public final Ly4/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly4/q$c;,
        Ly4/q$b;,
        Ly4/q$a;
    }
.end annotation


# instance fields
.field private final a:Ly4/d;

.field private final b:Ly4/n;

.field private final c:Ly4/q$b;

.field private final d:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final e:Ljava/util/ArrayDeque;

.field private final f:Ljava/util/ArrayDeque;

.field private final g:Ljava/lang/Object;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ly4/d;Ly4/q$b;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Ly4/q;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ly4/d;Ly4/q$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ly4/d;Ly4/q$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Ly4/q;->a:Ly4/d;

    .line 4
    iput-object p1, p0, Ly4/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    iput-object p4, p0, Ly4/q;->c:Ly4/q$b;

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/q;->g:Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Ly4/q;->e:Ljava/util/ArrayDeque;

    .line 8
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Ly4/q;->f:Ljava/util/ArrayDeque;

    .line 9
    new-instance p1, Ly4/o;

    invoke-direct {p1, p0}, Ly4/o;-><init>(Ly4/q;)V

    invoke-interface {p3, p2, p1}, Ly4/d;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Ly4/n;

    move-result-object p1

    .line 10
    iput-object p1, p0, Ly4/q;->b:Ly4/n;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Ly4/q;->i:Z

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/CopyOnWriteArraySet;ILy4/q$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ly4/q;->h(Ljava/util/concurrent/CopyOnWriteArraySet;ILy4/q$a;)V

    return-void
.end method

.method public static synthetic b(Ly4/q;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ly4/q;->g(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private g(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Ly4/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ly4/q$c;

    .line 18
    .line 19
    iget-object v1, p0, Ly4/q;->c:Ly4/q$b;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ly4/q$c;->b(Ly4/q$b;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Ly4/q;->b:Ly4/n;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-interface {v0, v1}, Ly4/n;->d(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    :cond_1
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method private static synthetic h(Ljava/util/concurrent/CopyOnWriteArraySet;ILy4/q$a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ly4/q$c;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Ly4/q$c;->a(ILy4/q$a;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ly4/q;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Ly4/q;->b:Ly4/n;

    .line 11
    .line 12
    invoke-interface {v1}, Ly4/n;->getLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly4/q;->g:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Ly4/q;->h:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, p0, Ly4/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 14
    .line 15
    new-instance v2, Ly4/q$c;

    .line 16
    .line 17
    invoke-direct {v2, p1}, Ly4/q$c;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1
.end method

.method public d(Landroid/os/Looper;Ly4/d;Ly4/q$b;)Ly4/q;
    .locals 2

    .line 1
    new-instance v0, Ly4/q;

    .line 2
    .line 3
    iget-object v1, p0, Ly4/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2, p3}, Ly4/q;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ly4/d;Ly4/q$b;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public e(Landroid/os/Looper;Ly4/q$b;)Ly4/q;
    .locals 1

    .line 1
    iget-object v0, p0, Ly4/q;->a:Ly4/d;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, Ly4/q;->d(Landroid/os/Looper;Ly4/d;Ly4/q$b;)Ly4/q;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public f()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ly4/q;->l()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly4/q;->f:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Ly4/q;->b:Ly4/n;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {v0, v1}, Ly4/n;->d(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Ly4/q;->b:Ly4/n;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ly4/n;->c(I)Ly4/n$a;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v0, v1}, Ly4/n;->h(Ly4/n$a;)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Ly4/q;->e:Ljava/util/ArrayDeque;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    xor-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    iget-object v1, p0, Ly4/q;->e:Ljava/util/ArrayDeque;

    .line 40
    .line 41
    iget-object v2, p0, Ly4/q;->f:Ljava/util/ArrayDeque;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Ly4/q;->f:Ljava/util/ArrayDeque;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 49
    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    :goto_0
    iget-object v0, p0, Ly4/q;->e:Ljava/util/ArrayDeque;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Ly4/q;->e:Ljava/util/ArrayDeque;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ljava/lang/Runnable;

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Ly4/q;->e:Ljava/util/ArrayDeque;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    return-void
.end method

.method public i(ILy4/q$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ly4/q;->l()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    iget-object v1, p0, Ly4/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Ly4/q;->f:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    new-instance v2, Ly4/p;

    .line 14
    .line 15
    invoke-direct {v2, v0, p1, p2}, Ly4/p;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILy4/q$a;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ly4/q;->l()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly4/q;->g:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    iput-boolean v1, p0, Ly4/q;->h:Z

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Ly4/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ly4/q$c;

    .line 28
    .line 29
    iget-object v2, p0, Ly4/q;->c:Ly4/q$b;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ly4/q$c;->c(Ly4/q$b;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Ly4/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw v1
.end method

.method public k(ILy4/q$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ly4/q;->i(ILy4/q$a;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ly4/q;->f()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
