.class public final Lk5/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lk5/d0;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private c:Lk5/x;

.field private d:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lk5/x;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lk5/x;-><init>(Lk5/d0;Lk5/w;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lk5/d0;->c:Lk5/x;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lk5/d0;->d:I

    .line 14
    .line 15
    iput-object p2, p0, Lk5/d0;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lk5/d0;->a:Landroid/content/Context;

    .line 22
    .line 23
    return-void
.end method

.method static bridge synthetic a(Lk5/d0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lk5/d0;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lk5/d0;
    .locals 4

    .line 1
    const-class v0, Lk5/d0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lk5/d0;->e:Lk5/d0;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lk5/d0;

    .line 9
    .line 10
    invoke-static {}, Lb6/e;->a()Lb6/b;

    .line 11
    .line 12
    .line 13
    new-instance v2, Ls5/b;

    .line 14
    .line 15
    const-string v3, "MessengerIpcClient"

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ls5/b;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-static {v3, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v1, p0, v2}, Lk5/d0;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 30
    .line 31
    .line 32
    sput-object v1, Lk5/d0;->e:Lk5/d0;

    .line 33
    .line 34
    :cond_0
    sget-object p0, Lk5/d0;->e:Lk5/d0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-object p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0

    .line 40
    throw p0
.end method

.method static bridge synthetic e(Lk5/d0;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lk5/d0;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private final declared-synchronized f()I
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lk5/d0;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lk5/d0;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized g(Lk5/a0;)Lm6/Task;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "MessengerIpcClient"

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Queueing "

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "MessengerIpcClient"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lk5/d0;->c:Lk5/x;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lk5/x;->g(Lk5/a0;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Lk5/x;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, p0, v1}, Lk5/x;-><init>(Lk5/d0;Lk5/w;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lk5/d0;->c:Lk5/x;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lk5/x;->g(Lk5/a0;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p1, p1, Lk5/a0;->b:Lm6/l;

    .line 46
    .line 47
    invoke-virtual {p1}, Lm6/l;->a()Lm6/Task;

    .line 48
    .line 49
    .line 50
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    .line 52
    return-object p1

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    monitor-exit p0

    .line 55
    throw p1
.end method


# virtual methods
.method public final c(ILandroid/os/Bundle;)Lm6/Task;
    .locals 2

    .line 1
    new-instance v0, Lk5/z;

    .line 2
    .line 3
    invoke-direct {p0}, Lk5/d0;->f()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1, p1, p2}, Lk5/z;-><init>(IILandroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lk5/d0;->g(Lk5/a0;)Lm6/Task;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final d(ILandroid/os/Bundle;)Lm6/Task;
    .locals 2

    .line 1
    new-instance v0, Lk5/c0;

    .line 2
    .line 3
    invoke-direct {p0}, Lk5/d0;->f()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1, p1, p2}, Lk5/c0;-><init>(IILandroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lk5/d0;->g(Lk5/a0;)Lm6/Task;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
