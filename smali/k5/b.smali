.class public abstract Lk5/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/ref/SoftReference;

.field private static b:Ljava/lang/ref/SoftReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 3

    .line 1
    const-string v0, "pending_intent"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/app/PendingIntent;

    .line 8
    .line 9
    const-string v2, "CloudMessagingReceiver"

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    const-string v1, "Notification pending intent canceled"

    .line 18
    .line 19
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const-string v0, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    .line 42
    .line 43
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0, p1, v1}, Lk5/b;->c(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    const/4 p1, -0x1

    .line 53
    return p1

    .line 54
    :cond_2
    const-string p1, "Unknown notification action"

    .line 55
    .line 56
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    const/16 p1, 0x1f4

    .line 60
    .line 61
    return p1
.end method


# virtual methods
.method protected a()Ljava/util/concurrent/Executor;
    .locals 3

    .line 1
    const-class v0, Lk5/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lk5/b;->a:Ljava/lang/ref/SoftReference;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lb6/e;->a()Lb6/b;

    .line 19
    .line 20
    .line 21
    new-instance v1, Ls5/b;

    .line 22
    .line 23
    const-string v2, "firebase-iid-executor"

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ls5/b;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Ljava/lang/ref/SoftReference;

    .line 37
    .line 38
    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sput-object v2, Lk5/b;->a:Ljava/lang/ref/SoftReference;

    .line 42
    .line 43
    :cond_1
    monitor-exit v0

    .line 44
    return-object v1

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw v1
.end method

.method protected abstract b(Landroid/content/Context;Lk5/a;)I
.end method

.method protected abstract c(Landroid/content/Context;Landroid/os/Bundle;)V
.end method

.method final synthetic d(Landroid/content/Intent;Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    :try_start_0
    const-string v4, "wrapped_intent"

    .line 10
    .line 11
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    instance-of v5, v4, Landroid/content/Intent;

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    check-cast v4, Landroid/content/Intent;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v4, v6

    .line 24
    :goto_0
    if-eqz v4, :cond_1

    .line 25
    .line 26
    invoke-direct {v1, v2, v4}, Lk5/b;->e(Landroid/content/Context;Landroid/content/Intent;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-nez v4, :cond_2

    .line 37
    .line 38
    const/16 v0, 0x1f4

    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_2
    new-instance v4, Lk5/a;

    .line 43
    .line 44
    invoke-direct {v4, v0}, Lk5/a;-><init>(Landroid/content/Intent;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    invoke-direct {v0, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 51
    .line 52
    .line 53
    const-class v7, Lk5/b;

    .line 54
    .line 55
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    sget-object v8, Lk5/b;->b:Ljava/lang/ref/SoftReference;

    .line 57
    .line 58
    if-eqz v8, :cond_3

    .line 59
    .line 60
    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Ljava/util/concurrent/Executor;

    .line 65
    .line 66
    :cond_3
    if-nez v6, :cond_4

    .line 67
    .line 68
    invoke-static {}, Lb6/e;->a()Lb6/b;

    .line 69
    .line 70
    .line 71
    new-instance v15, Ls5/b;

    .line 72
    .line 73
    const-string v6, "pscm-ack-executor"

    .line 74
    .line 75
    invoke-direct {v15, v6}, Ls5/b;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 79
    .line 80
    const/4 v9, 0x1

    .line 81
    const/4 v10, 0x1

    .line 82
    const-wide/16 v11, 0x3c

    .line 83
    .line 84
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 85
    .line 86
    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 87
    .line 88
    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 89
    .line 90
    .line 91
    move-object v8, v6

    .line 92
    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 96
    .line 97
    .line 98
    invoke-static {v6}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    new-instance v5, Ljava/lang/ref/SoftReference;

    .line 103
    .line 104
    invoke-direct {v5, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    sput-object v5, Lk5/b;->b:Ljava/lang/ref/SoftReference;

    .line 108
    .line 109
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :try_start_2
    new-instance v5, Lk5/o;

    .line 111
    .line 112
    invoke-direct {v5, v2, v4, v0}, Lk5/o;-><init>(Landroid/content/Context;Lk5/a;Ljava/util/concurrent/CountDownLatch;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v6, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2, v4}, Lk5/b;->b(Landroid/content/Context;Lk5/a;)I

    .line 119
    .line 120
    .line 121
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    :try_start_3
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 123
    .line 124
    const-wide/16 v5, 0x1

    .line 125
    .line 126
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 127
    .line 128
    .line 129
    move-result-wide v4

    .line 130
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 131
    .line 132
    invoke-virtual {v0, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_5

    .line 137
    .line 138
    const-string v0, "CloudMessagingReceiver"

    .line 139
    .line 140
    const-string v4, "Message ack timed out"

    .line 141
    .line 142
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    :try_start_4
    const-string v4, "CloudMessagingReceiver"

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-string v5, "Message ack failed: "

    .line 154
    .line 155
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    :cond_5
    :goto_1
    move v0, v2

    .line 163
    :goto_2
    if-eqz p3, :cond_6

    .line 164
    .line 165
    if-eqz v3, :cond_6

    .line 166
    .line 167
    invoke-virtual {v3, v0}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 168
    .line 169
    .line 170
    :cond_6
    if-eqz v3, :cond_7

    .line 171
    .line 172
    invoke-virtual/range {p4 .. p4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 173
    .line 174
    .line 175
    :cond_7
    return-void

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 178
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 179
    :catchall_1
    move-exception v0

    .line 180
    if-eqz v3, :cond_8

    .line 181
    .line 182
    invoke-virtual/range {p4 .. p4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 183
    .line 184
    .line 185
    :cond_8
    throw v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    .line 5
    .line 6
    .line 7
    move-result v4

    .line 8
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    invoke-virtual {p0}, Lk5/b;->a()Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    new-instance v7, Lk5/p;

    .line 17
    .line 18
    move-object v0, v7

    .line 19
    move-object v1, p0

    .line 20
    move-object v2, p2

    .line 21
    move-object v3, p1

    .line 22
    invoke-direct/range {v0 .. v5}, Lk5/p;-><init>(Lk5/b;Landroid/content/Intent;Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
