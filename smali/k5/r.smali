.class public final synthetic Lk5/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk5/x;


# direct methods
.method public synthetic constructor <init>(Lk5/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5/r;->a:Lk5/x;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    :goto_0
    iget-object v0, p0, Lk5/r;->a:Lk5/x;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, v0, Lk5/x;->a:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, v0, Lk5/x;->d:Ljava/util/Queue;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lk5/x;->f()V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v1, v0, Lk5/x;->d:Ljava/util/Queue;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lk5/a0;

    .line 31
    .line 32
    iget-object v3, v0, Lk5/x;->e:Landroid/util/SparseArray;

    .line 33
    .line 34
    iget v4, v1, Lk5/a0;->a:I

    .line 35
    .line 36
    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v3, v0, Lk5/x;->f:Lk5/d0;

    .line 40
    .line 41
    invoke-static {v3}, Lk5/d0;->e(Lk5/d0;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-instance v4, Lk5/v;

    .line 46
    .line 47
    invoke-direct {v4, v0, v1}, Lk5/v;-><init>(Lk5/x;Lk5/a0;)V

    .line 48
    .line 49
    .line 50
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 51
    .line 52
    const-wide/16 v6, 0x1e

    .line 53
    .line 54
    invoke-interface {v3, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 55
    .line 56
    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    const-string v3, "MessengerIpcClient"

    .line 59
    .line 60
    const/4 v4, 0x3

    .line 61
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v4, "Sending "

    .line 72
    .line 73
    const-string v5, "MessengerIpcClient"

    .line 74
    .line 75
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object v3, v0, Lk5/x;->f:Lk5/d0;

    .line 83
    .line 84
    iget-object v4, v0, Lk5/x;->b:Landroid/os/Messenger;

    .line 85
    .line 86
    iget v5, v1, Lk5/a0;->c:I

    .line 87
    .line 88
    invoke-static {v3}, Lk5/d0;->a(Lk5/d0;)Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    iput v5, v6, Landroid/os/Message;->what:I

    .line 97
    .line 98
    iget v5, v1, Lk5/a0;->a:I

    .line 99
    .line 100
    iput v5, v6, Landroid/os/Message;->arg1:I

    .line 101
    .line 102
    iput-object v4, v6, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 103
    .line 104
    new-instance v4, Landroid/os/Bundle;

    .line 105
    .line 106
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Lk5/a0;->b()Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    const-string v7, "oneWay"

    .line 114
    .line 115
    invoke-virtual {v4, v7, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    const-string v5, "pkg"

    .line 123
    .line 124
    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v1, Lk5/a0;->d:Landroid/os/Bundle;

    .line 128
    .line 129
    const-string v3, "data"

    .line 130
    .line 131
    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 135
    .line 136
    .line 137
    :try_start_1
    iget-object v1, v0, Lk5/x;->c:Lk5/y;

    .line 138
    .line 139
    invoke-virtual {v1, v6}, Lk5/y;->a(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :catch_0
    move-exception v1

    .line 145
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v2, v1}, Lk5/x;->a(ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :catchall_0
    move-exception v1

    .line 155
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    throw v1
.end method
