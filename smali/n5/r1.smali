.class final Ln5/r1;
.super Ln5/i;
.source "SourceFile"


# instance fields
.field private final g:Ljava/util/HashMap;

.field private final h:Landroid/content/Context;

.field private volatile i:Landroid/os/Handler;

.field private final j:Ln5/p1;

.field private final k:Lr5/b;

.field private final l:J

.field private final m:J

.field private volatile n:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln5/i;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ln5/r1;->g:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ln5/p1;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Ln5/p1;-><init>(Ln5/r1;Ln5/q1;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ln5/r1;->j:Ln5/p1;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Ln5/r1;->h:Landroid/content/Context;

    .line 24
    .line 25
    new-instance p1, Lc6/f;

    .line 26
    .line 27
    invoke-direct {p1, p2, v0}, Lc6/f;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Ln5/r1;->i:Landroid/os/Handler;

    .line 31
    .line 32
    invoke-static {}, Lr5/b;->b()Lr5/b;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Ln5/r1;->k:Lr5/b;

    .line 37
    .line 38
    const-wide/16 p1, 0x1388

    .line 39
    .line 40
    iput-wide p1, p0, Ln5/r1;->l:J

    .line 41
    .line 42
    const-wide/32 p1, 0x493e0

    .line 43
    .line 44
    .line 45
    iput-wide p1, p0, Ln5/r1;->m:J

    .line 46
    .line 47
    iput-object p3, p0, Ln5/r1;->n:Ljava/util/concurrent/Executor;

    .line 48
    .line 49
    return-void
.end method

.method static bridge synthetic h(Ln5/r1;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Ln5/r1;->m:J

    return-wide v0
.end method

.method static bridge synthetic i(Ln5/r1;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Ln5/r1;->h:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic j(Ln5/r1;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Ln5/r1;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic k(Ln5/r1;)Lr5/b;
    .locals 0

    .line 1
    iget-object p0, p0, Ln5/r1;->k:Lr5/b;

    return-object p0
.end method

.method static bridge synthetic l(Ln5/r1;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Ln5/r1;->g:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method protected final e(Ln5/n1;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Ll5/b;
    .locals 4

    .line 1
    const-string v0, "ServiceConnection must not be null"

    .line 2
    .line 3
    invoke-static {p2, v0}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ln5/r1;->g:Ljava/util/HashMap;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Ln5/r1;->g:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ln5/o1;

    .line 16
    .line 17
    if-nez p4, :cond_0

    .line 18
    .line 19
    iget-object p4, p0, Ln5/r1;->n:Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    :cond_0
    if-nez v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Ln5/o1;

    .line 24
    .line 25
    invoke-direct {v1, p0, p1}, Ln5/o1;-><init>(Ln5/r1;Ln5/n1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2, p2, p3}, Ln5/o1;->e(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v1, p3, p4}, Ln5/o1;->d(Ln5/o1;Ljava/lang/String;Ljava/util/concurrent/Executor;)Ll5/b;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iget-object p3, p0, Ln5/r1;->g:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {p3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v2, p0, Ln5/r1;->i:Landroid/os/Handler;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p2}, Ln5/o1;->h(Landroid/content/ServiceConnection;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_6

    .line 52
    .line 53
    invoke-virtual {v1, p2, p2, p3}, Ln5/o1;->e(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ln5/o1;->a()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    const/4 v2, 0x1

    .line 61
    const/4 v3, 0x0

    .line 62
    if-eq p1, v2, :cond_3

    .line 63
    .line 64
    const/4 p2, 0x2

    .line 65
    if-eq p1, p2, :cond_2

    .line 66
    .line 67
    :goto_0
    move-object p2, v3

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-static {v1, p3, p4}, Ln5/o1;->d(Ln5/o1;Ljava/lang/String;Ljava/util/concurrent/Executor;)Ll5/b;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {v1}, Ln5/o1;->b()Landroid/content/ComponentName;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v1}, Ln5/o1;->c()Landroid/os/IBinder;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-interface {p2, p1, p3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :goto_1
    invoke-virtual {v1}, Ln5/o1;->j()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    sget-object p1, Ll5/b;->e:Ll5/b;

    .line 93
    .line 94
    monitor-exit v0

    .line 95
    return-object p1

    .line 96
    :cond_4
    if-nez p2, :cond_5

    .line 97
    .line 98
    new-instance p2, Ll5/b;

    .line 99
    .line 100
    const/4 p1, -0x1

    .line 101
    invoke-direct {p2, p1}, Ll5/b;-><init>(I)V

    .line 102
    .line 103
    .line 104
    :cond_5
    monitor-exit v0

    .line 105
    return-object p2

    .line 106
    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    new-instance p3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string p4, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    .line 118
    .line 119
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p2

    .line 133
    :catchall_0
    move-exception p1

    .line 134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    throw p1
.end method

.method protected final f(Ln5/n1;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "ServiceConnection must not be null"

    .line 2
    .line 3
    invoke-static {p2, v0}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ln5/r1;->g:Ljava/util/HashMap;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Ln5/r1;->g:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ln5/o1;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {v1, p2}, Ln5/o1;->h(Landroid/content/ServiceConnection;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1, p2, p3}, Ln5/o1;->f(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ln5/o1;->i()Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    iget-object p2, p0, Ln5/r1;->i:Landroid/os/Handler;

    .line 35
    .line 36
    const/4 p3, 0x0

    .line 37
    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p2, p0, Ln5/r1;->i:Landroid/os/Handler;

    .line 42
    .line 43
    iget-wide v1, p0, Ln5/r1;->l:J

    .line 44
    .line 45
    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance p3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v1, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    .line 62
    .line 63
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p2

    .line 77
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v1, "Nonexistent connection status for service config: "

    .line 89
    .line 90
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p2

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    throw p1
.end method
