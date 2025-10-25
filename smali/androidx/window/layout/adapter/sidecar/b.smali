.class public final Landroidx/window/layout/adapter/sidecar/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/adapter/sidecar/b$a;,
        Landroidx/window/layout/adapter/sidecar/b$b;,
        Landroidx/window/layout/adapter/sidecar/b$c;
    }
.end annotation


# static fields
.field public static final c:Landroidx/window/layout/adapter/sidecar/b$a;

.field private static volatile d:Landroidx/window/layout/adapter/sidecar/b;

.field private static final e:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private a:Landroidx/window/layout/adapter/sidecar/a;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/window/layout/adapter/sidecar/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/window/layout/adapter/sidecar/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/window/layout/adapter/sidecar/b;->c:Landroidx/window/layout/adapter/sidecar/b$a;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/window/layout/adapter/sidecar/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroidx/window/layout/adapter/sidecar/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/b;->a:Landroidx/window/layout/adapter/sidecar/a;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/b;->a:Landroidx/window/layout/adapter/sidecar/a;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroidx/window/layout/adapter/sidecar/b$b;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Landroidx/window/layout/adapter/sidecar/b$b;-><init>(Landroidx/window/layout/adapter/sidecar/b;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0}, Landroidx/window/layout/adapter/sidecar/a;->a(Landroidx/window/layout/adapter/sidecar/a$a;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public static final synthetic c()Landroidx/window/layout/adapter/sidecar/b;
    .locals 1

    .line 1
    sget-object v0, Landroidx/window/layout/adapter/sidecar/b;->d:Landroidx/window/layout/adapter/sidecar/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 1
    sget-object v0, Landroidx/window/layout/adapter/sidecar/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e(Landroidx/window/layout/adapter/sidecar/b;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/window/layout/adapter/sidecar/b;->d:Landroidx/window/layout/adapter/sidecar/b;

    .line 2
    .line 3
    return-void
.end method

.method private final f(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/util/Collection;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroidx/window/layout/adapter/sidecar/b$c;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/window/layout/adapter/sidecar/b$c;->d()Landroid/app/Activity;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/b;->a:Landroidx/window/layout/adapter/sidecar/a;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-interface {v0, p1}, Landroidx/window/layout/adapter/sidecar/a;->c(Landroid/app/Activity;)V

    .line 50
    .line 51
    .line 52
    :cond_4
    return-void
.end method

.method private final h(Landroid/app/Activity;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/util/Collection;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroidx/window/layout/adapter/sidecar/b$c;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/window/layout/adapter/sidecar/b$c;->d()Landroid/app/Activity;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    :cond_2
    :goto_0
    return v2
.end method


# virtual methods
.method public a(Lc0/a;)V
    .locals 5

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/window/layout/adapter/sidecar/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/b;->a:Landroidx/window/layout/adapter/sidecar/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Landroidx/window/layout/adapter/sidecar/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Landroidx/window/layout/adapter/sidecar/b$c;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/window/layout/adapter/sidecar/b$c;->e()Lc0/a;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-ne v4, p1, :cond_1

    .line 43
    .line 44
    const-string v4, "callbackWrapper"

    .line 45
    .line 46
    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 56
    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Landroidx/window/layout/adapter/sidecar/b$c;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/window/layout/adapter/sidecar/b$c;->d()Landroid/app/Activity;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-direct {p0, v1}, Landroidx/window/layout/adapter/sidecar/b;->f(Landroid/app/Activity;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    monitor-exit v0

    .line 88
    throw p1
.end method

.method public b(Landroid/content/Context;Ljava/util/concurrent/Executor;Lc0/a;)V
    .locals 5

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "executor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    instance-of v0, p1, Landroid/app/Activity;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    check-cast p1, Landroid/app/Activity;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object p1, v1

    .line 25
    :goto_0
    if-eqz p1, :cond_7

    .line 26
    .line 27
    sget-object v0, Landroidx/window/layout/adapter/sidecar/b;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 30
    .line 31
    .line 32
    :try_start_0
    iget-object v2, p0, Landroidx/window/layout/adapter/sidecar/b;->a:Landroidx/window/layout/adapter/sidecar/a;

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    new-instance p1, Lt1/j;

    .line 37
    .line 38
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-direct {p1, p2}, Lt1/j;-><init>(Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p3, p1}, Lc0/a;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Landroidx/window/layout/adapter/sidecar/b;->h(Landroid/app/Activity;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    new-instance v4, Landroidx/window/layout/adapter/sidecar/b$c;

    .line 57
    .line 58
    invoke-direct {v4, p1, p2, p3}, Landroidx/window/layout/adapter/sidecar/b$c;-><init>(Landroid/app/Activity;Ljava/util/concurrent/Executor;Lc0/a;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Landroidx/window/layout/adapter/sidecar/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    .line 63
    invoke-virtual {p2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    if-nez v3, :cond_2

    .line 67
    .line 68
    invoke-interface {v2, p1}, Landroidx/window/layout/adapter/sidecar/a;->b(Landroid/app/Activity;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    iget-object p2, p0, Landroidx/window/layout/adapter/sidecar/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 73
    .line 74
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    move-object v3, v2

    .line 89
    check-cast v3, Landroidx/window/layout/adapter/sidecar/b$c;

    .line 90
    .line 91
    invoke-virtual {v3}, Landroidx/window/layout/adapter/sidecar/b$c;->d()Landroid/app/Activity;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {p1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_3

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    move-object v2, v1

    .line 103
    :goto_1
    check-cast v2, Landroidx/window/layout/adapter/sidecar/b$c;

    .line 104
    .line 105
    if-eqz v2, :cond_5

    .line 106
    .line 107
    invoke-virtual {v2}, Landroidx/window/layout/adapter/sidecar/b$c;->f()Lt1/j;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    :cond_5
    if-eqz v1, :cond_6

    .line 112
    .line 113
    invoke-virtual {v4, v1}, Landroidx/window/layout/adapter/sidecar/b$c;->b(Lt1/j;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    :goto_2
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 119
    .line 120
    .line 121
    sget-object v1, Lxc/t;->a:Lxc/t;

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :catchall_0
    move-exception p1

    .line 125
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 126
    .line 127
    .line 128
    throw p1

    .line 129
    :cond_7
    :goto_3
    if-nez v1, :cond_8

    .line 130
    .line 131
    new-instance p1, Lt1/j;

    .line 132
    .line 133
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-direct {p1, p2}, Lt1/j;-><init>(Ljava/util/List;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {p3, p1}, Lc0/a;->accept(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_8
    return-void
.end method

.method public final g()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object v0
.end method
