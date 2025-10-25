.class final Lcom/google/android/gms/measurement/internal/r6;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/BlockingQueue;

.field private c:Z

.field final synthetic d:Lcom/google/android/gms/measurement/internal/s6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/s6;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r6;->d:Lcom/google/android/gms/measurement/internal/s6;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/r6;->c:Z

    .line 11
    .line 12
    invoke-static {p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-static {p3}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r6;->a:Ljava/lang/Object;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/r6;->b:Ljava/util/concurrent/BlockingQueue;

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r6;->d:Lcom/google/android/gms/measurement/internal/s6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s6;->B()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/r6;->c:Z

    .line 9
    .line 10
    if-nez v2, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s6;->C()Ljava/util/concurrent/Semaphore;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s6;->B()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s6;->x()Lcom/google/android/gms/measurement/internal/r6;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    if-ne p0, v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/s6;->y(Lcom/google/android/gms/measurement/internal/r6;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s6;->z()Lcom/google/android/gms/measurement/internal/r6;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-ne p0, v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/s6;->A(Lcom/google/android/gms/measurement/internal/r6;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v2, "Current scheduler thread is neither worker nor network"

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/r6;->c:Z

    .line 64
    .line 65
    :cond_2
    monitor-exit v1

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw v0
.end method

.method private final c(Ljava/lang/InterruptedException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r6;->d:Lcom/google/android/gms/measurement/internal/s6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, " was interrupted"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r6;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v1
.end method

.method public final run()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x1

    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/r6;->d:Lcom/google/android/gms/measurement/internal/s6;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s6;->C()Ljava/util/concurrent/Semaphore;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v1

    .line 17
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/r6;->c(Ljava/lang/InterruptedException;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/r6;->b:Ljava/util/concurrent/BlockingQueue;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/google/android/gms/measurement/internal/q6;

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    iget-boolean v2, v3, Lcom/google/android/gms/measurement/internal/q6;->b:Z

    .line 40
    .line 41
    if-eq v1, v2, :cond_1

    .line 42
    .line 43
    const/16 v2, 0xa

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    move v2, v0

    .line 47
    :goto_2
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->run()V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/r6;->a:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 57
    :try_start_2
    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/r6;->d:Lcom/google/android/gms/measurement/internal/s6;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s6;->D()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    .line 67
    .line 68
    const-wide/16 v4, 0x7530

    .line 69
    .line 70
    :try_start_3
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :catch_1
    move-exception v2

    .line 75
    :try_start_4
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/r6;->c(Ljava/lang/InterruptedException;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_3
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 79
    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/r6;->d:Lcom/google/android/gms/measurement/internal/s6;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s6;->B()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 86
    :try_start_6
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/r6;->b:Ljava/util/concurrent/BlockingQueue;

    .line 87
    .line 88
    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-nez v3, :cond_4

    .line 93
    .line 94
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/r6;->b()V

    .line 95
    .line 96
    .line 97
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 98
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/r6;->b()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    :try_start_7
    monitor-exit v2

    .line 103
    goto :goto_1

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 106
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 109
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 110
    :catchall_2
    move-exception v0

    .line 111
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/r6;->b()V

    .line 112
    .line 113
    .line 114
    throw v0
.end method
