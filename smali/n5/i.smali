.class public abstract Ln5/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:I = 0x9

.field private static c:Ln5/r1; = null

.field static d:Landroid/os/HandlerThread; = null

.field private static e:Ljava/util/concurrent/Executor; = null

.field private static f:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ln5/i;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Ln5/i;
    .locals 4

    .line 1
    sget-object v0, Ln5/i;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ln5/i;->c:Ln5/r1;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    new-instance v1, Ln5/r1;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-boolean v3, Ln5/i;->f:Z

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-static {}, Ln5/i;->c()Landroid/os/HandlerThread;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :goto_0
    sget-object v3, Ln5/i;->e:Ljava/util/concurrent/Executor;

    .line 32
    .line 33
    invoke-direct {v1, v2, p0, v3}, Ln5/r1;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;)V

    .line 34
    .line 35
    .line 36
    sput-object v1, Ln5/i;->c:Ln5/r1;

    .line 37
    .line 38
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    sget-object p0, Ln5/i;->c:Ln5/r1;

    .line 40
    .line 41
    return-object p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p0
.end method

.method public static c()Landroid/os/HandlerThread;
    .locals 4

    .line 1
    sget-object v0, Ln5/i;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ln5/i;->d:Landroid/os/HandlerThread;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    .line 11
    .line 12
    const-string v2, "GoogleApiHandler"

    .line 13
    .line 14
    sget v3, Ln5/i;->b:I

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Ln5/i;->d:Landroid/os/HandlerThread;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 22
    .line 23
    .line 24
    sget-object v1, Ln5/i;->d:Landroid/os/HandlerThread;

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-object v1

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1
.end method


# virtual methods
.method public a(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z
    .locals 2

    .line 1
    new-instance v0, Ln5/n1;

    .line 2
    .line 3
    const/16 v1, 0x1081

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ln5/n1;-><init>(Landroid/content/ComponentName;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p2, p3, p4}, Ln5/i;->e(Ln5/n1;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Ll5/b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ll5/b;->n()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public d(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ln5/n1;

    .line 2
    .line 3
    const/16 v1, 0x1081

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ln5/n1;-><init>(Landroid/content/ComponentName;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p2, p3}, Ln5/i;->f(Ln5/n1;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected abstract e(Ln5/n1;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Ll5/b;
.end method

.method protected abstract f(Ln5/n1;Landroid/content/ServiceConnection;Ljava/lang/String;)V
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    new-instance p3, Ln5/n1;

    .line 2
    .line 3
    const/16 v0, 0x1081

    .line 4
    .line 5
    invoke-direct {p3, p1, p2, v0, p6}, Ln5/n1;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p3, p4, p5}, Ln5/i;->f(Ln5/n1;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
