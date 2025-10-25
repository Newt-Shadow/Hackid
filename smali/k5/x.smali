.class final Lk5/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field a:I

.field final b:Landroid/os/Messenger;

.field c:Lk5/y;

.field final d:Ljava/util/Queue;

.field final e:Landroid/util/SparseArray;

.field final synthetic f:Lk5/d0;


# direct methods
.method synthetic constructor <init>(Lk5/d0;Lk5/w;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lk5/x;->f:Lk5/d0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lk5/x;->a:I

    .line 8
    .line 9
    new-instance p1, Landroid/os/Messenger;

    .line 10
    .line 11
    new-instance p2, Lb6/f;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lk5/u;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lk5/u;-><init>(Lk5/x;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, v0, v1}, Lb6/f;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lk5/x;->b:Landroid/os/Messenger;

    .line 29
    .line 30
    new-instance p1, Ljava/util/ArrayDeque;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lk5/x;->d:Ljava/util/Queue;

    .line 36
    .line 37
    new-instance p1, Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lk5/x;->e:Landroid/util/SparseArray;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method final declared-synchronized a(ILjava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lk5/x;->b(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
    throw p1
.end method

.method final declared-synchronized b(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

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
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "Disconnected: "

    .line 16
    .line 17
    const-string v3, "MessengerIpcClient"

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    iget v0, p0, Lk5/x;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    if-eqz v0, :cond_6

    .line 29
    .line 30
    const/4 v2, 0x4

    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eq v0, v4, :cond_2

    .line 34
    .line 35
    if-eq v0, v3, :cond_2

    .line 36
    .line 37
    if-eq v0, v1, :cond_1

    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :cond_1
    :try_start_1
    iput v2, p0, Lk5/x;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :cond_2
    :try_start_2
    const-string v0, "MessengerIpcClient"

    .line 46
    .line 47
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    const-string v0, "MessengerIpcClient"

    .line 54
    .line 55
    const-string v1, "Unbinding service"

    .line 56
    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_3
    iput v2, p0, Lk5/x;->a:I

    .line 61
    .line 62
    iget-object v0, p0, Lk5/x;->f:Lk5/d0;

    .line 63
    .line 64
    invoke-static {}, Lr5/b;->b()Lr5/b;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0}, Lk5/d0;->a(Lk5/d0;)Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v0, p0}, Lr5/b;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lk5/b0;

    .line 76
    .line 77
    invoke-direct {v0, p1, p2, p3}, Lk5/b0;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lk5/x;->d:Ljava/util/Queue;

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_4

    .line 91
    .line 92
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    check-cast p2, Lk5/a0;

    .line 97
    .line 98
    invoke-virtual {p2, v0}, Lk5/a0;->c(Lk5/b0;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    iget-object p1, p0, Lk5/x;->d:Ljava/util/Queue;

    .line 103
    .line 104
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 105
    .line 106
    .line 107
    const/4 p1, 0x0

    .line 108
    :goto_1
    iget-object p2, p0, Lk5/x;->e:Landroid/util/SparseArray;

    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-ge p1, p2, :cond_5

    .line 115
    .line 116
    iget-object p2, p0, Lk5/x;->e:Landroid/util/SparseArray;

    .line 117
    .line 118
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    check-cast p2, Lk5/a0;

    .line 123
    .line 124
    invoke-virtual {p2, v0}, Lk5/a0;->c(Lk5/b0;)V

    .line 125
    .line 126
    .line 127
    add-int/lit8 p1, p1, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    iget-object p1, p0, Lk5/x;->e:Landroid/util/SparseArray;

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    .line 134
    .line 135
    monitor-exit p0

    .line 136
    return-void

    .line 137
    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 138
    .line 139
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 140
    .line 141
    .line 142
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    :catchall_0
    move-exception p1

    .line 144
    monitor-exit p0

    .line 145
    throw p1
.end method

.method final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk5/x;->f:Lk5/d0;

    .line 2
    .line 3
    invoke-static {v0}, Lk5/d0;->e(Lk5/d0;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lk5/r;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lk5/r;-><init>(Lk5/x;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method final declared-synchronized d()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lk5/x;->a:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const-string v0, "Timed out while binding"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lk5/x;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

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

.method final declared-synchronized e(I)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lk5/x;->e:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lk5/a0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "Timing out request: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "MessengerIpcClient"

    .line 30
    .line 31
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lk5/x;->e:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 37
    .line 38
    .line 39
    const-string p1, "Timed out waiting for response"

    .line 40
    .line 41
    new-instance v1, Lk5/b0;

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-direct {v1, v2, p1, v3}, Lk5/b0;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lk5/a0;->c(Lk5/b0;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lk5/x;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :cond_0
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    monitor-exit p0

    .line 60
    throw p1
.end method

.method final declared-synchronized f()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lk5/x;->a:I

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lk5/x;->d:Ljava/util/Queue;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lk5/x;->e:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string v0, "MessengerIpcClient"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v0, "MessengerIpcClient"

    .line 32
    .line 33
    const-string v1, "Finished handling requests, unbinding"

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 v0, 0x3

    .line 39
    iput v0, p0, Lk5/x;->a:I

    .line 40
    .line 41
    iget-object v0, p0, Lk5/x;->f:Lk5/d0;

    .line 42
    .line 43
    invoke-static {}, Lr5/b;->b()Lr5/b;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0}, Lk5/d0;->a(Lk5/d0;)Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0, p0}, Lr5/b;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :cond_1
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    monitor-exit p0

    .line 60
    throw v0
.end method

.method final declared-synchronized g(Lk5/a0;)Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lk5/x;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eq v0, v3, :cond_1

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return v2

    .line 15
    :cond_0
    :try_start_1
    iget-object v0, p0, Lk5/x;->d:Ljava/util/Queue;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lk5/x;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return v3

    .line 25
    :cond_1
    :try_start_2
    iget-object v0, p0, Lk5/x;->d:Ljava/util/Queue;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return v3

    .line 32
    :cond_2
    :try_start_3
    iget-object v0, p0, Lk5/x;->d:Ljava/util/Queue;

    .line 33
    .line 34
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iget p1, p0, Lk5/x;->a:I

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    move p1, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    move p1, v2

    .line 44
    :goto_0
    invoke-static {p1}, Ln5/q;->n(Z)V

    .line 45
    .line 46
    .line 47
    const-string p1, "MessengerIpcClient"

    .line 48
    .line 49
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    const-string p1, "MessengerIpcClient"

    .line 56
    .line 57
    const-string v0, "Starting bind to GmsCore"

    .line 58
    .line 59
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_4
    iput v3, p0, Lk5/x;->a:I

    .line 63
    .line 64
    new-instance p1, Landroid/content/Intent;

    .line 65
    .line 66
    const-string v0, "com.google.android.c2dm.intent.REGISTER"

    .line 67
    .line 68
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "com.google.android.gms"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    .line 75
    .line 76
    :try_start_4
    invoke-static {}, Lr5/b;->b()Lr5/b;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v1, p0, Lk5/x;->f:Lk5/d0;

    .line 81
    .line 82
    invoke-static {v1}, Lk5/d0;->a(Lk5/d0;)Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1, p1, p0, v3}, Lr5/b;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_5

    .line 91
    .line 92
    const-string p1, "Unable to bind to service"

    .line 93
    .line 94
    invoke-virtual {p0, v2, p1}, Lk5/x;->a(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    :try_start_5
    iget-object p1, p0, Lk5/x;->f:Lk5/d0;

    .line 99
    .line 100
    invoke-static {p1}, Lk5/d0;->e(Lk5/d0;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance v0, Lk5/s;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lk5/s;-><init>(Lk5/x;)V

    .line 107
    .line 108
    .line 109
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 110
    .line 111
    const-wide/16 v4, 0x1e

    .line 112
    .line 113
    invoke-interface {p1, v0, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catch_0
    move-exception p1

    .line 118
    const-string v0, "Unable to bind to service"

    .line 119
    .line 120
    invoke-virtual {p0, v2, v0, p1}, Lk5/x;->b(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    .line 122
    .line 123
    :goto_1
    monitor-exit p0

    .line 124
    return v3

    .line 125
    :catchall_0
    move-exception p1

    .line 126
    monitor-exit p0

    .line 127
    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const/4 p1, 0x2

    .line 2
    const-string v0, "MessengerIpcClient"

    .line 3
    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string p1, "Service connected"

    .line 11
    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lk5/x;->f:Lk5/d0;

    .line 16
    .line 17
    invoke-static {p1}, Lk5/d0;->e(Lk5/d0;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Lk5/q;

    .line 22
    .line 23
    invoke-direct {v0, p0, p2}, Lk5/q;-><init>(Lk5/x;Landroid/os/IBinder;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const/4 p1, 0x2

    .line 2
    const-string v0, "MessengerIpcClient"

    .line 3
    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string p1, "Service disconnected"

    .line 11
    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lk5/x;->f:Lk5/d0;

    .line 16
    .line 17
    invoke-static {p1}, Lk5/d0;->e(Lk5/d0;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Lk5/t;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lk5/t;-><init>(Lk5/x;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
