.class Ltb/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field protected e:Ljava/lang/Runnable;

.field private f:Ltb/k;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltb/m;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Ltb/m;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Ltb/m;Ltb/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ltb/m;->c(Ltb/k;)V

    return-void
.end method

.method private synthetic c(Ltb/k;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ltb/m;->h(Ltb/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ltb/m;->f:Ltb/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ltb/k;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method d()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Ltb/m;->f:Ltb/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ltb/k;->a()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method e(Ltb/k;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ltb/m;->d:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Ltb/l;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Ltb/l;-><init>(Ltb/m;Ltb/k;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method declared-synchronized f()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ltb/m;->c:Landroid/os/HandlerThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Ltb/m;->c:Landroid/os/HandlerThread;

    .line 11
    .line 12
    iput-object v0, p0, Ltb/m;->d:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    :cond_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method declared-synchronized g(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    .line 4
    iget-object v1, p0, Ltb/m;->a:Ljava/lang/String;

    .line 5
    .line 6
    iget v2, p0, Ltb/m;->b:I

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ltb/m;->c:Landroid/os/HandlerThread;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v1, p0, Ltb/m;->c:Landroid/os/HandlerThread;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Ltb/m;->d:Landroid/os/Handler;

    .line 28
    .line 29
    iput-object p1, p0, Ltb/m;->e:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit p0

    .line 35
    throw p1
.end method

.method h(Ltb/k;)V
    .locals 1

    .line 1
    iget-object v0, p1, Ltb/k;->b:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ltb/m;->f:Ltb/k;

    .line 7
    .line 8
    iget-object p1, p0, Ltb/m;->e:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
