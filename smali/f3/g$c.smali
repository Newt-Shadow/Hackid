.class Lf3/g$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lf3/g;


# direct methods
.method public constructor <init>(Lf3/g;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf3/g$c;->b:Lf3/g;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private a(Landroid/os/Message;Lf3/n0;)Z
    .locals 21

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
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lf3/g$d;

    .line 10
    .line 11
    iget-boolean v4, v3, Lf3/g$d;->b:Z

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    return v5

    .line 17
    :cond_0
    iget v4, v3, Lf3/g$d;->e:I

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    add-int/2addr v4, v6

    .line 21
    iput v4, v3, Lf3/g$d;->e:I

    .line 22
    .line 23
    iget-object v7, v1, Lf3/g$c;->b:Lf3/g;

    .line 24
    .line 25
    invoke-static {v7}, Lf3/g;->p(Lf3/g;)Lx4/d0;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    const/4 v8, 0x3

    .line 30
    invoke-interface {v7, v8}, Lx4/d0;->d(I)I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-le v4, v7, :cond_1

    .line 35
    .line 36
    return v5

    .line 37
    :cond_1
    new-instance v4, Ld4/n;

    .line 38
    .line 39
    iget-wide v10, v3, Lf3/g$d;->a:J

    .line 40
    .line 41
    iget-object v12, v2, Lf3/n0;->a:Lx4/n;

    .line 42
    .line 43
    iget-object v13, v2, Lf3/n0;->b:Landroid/net/Uri;

    .line 44
    .line 45
    iget-object v14, v2, Lf3/n0;->c:Ljava/util/Map;

    .line 46
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v15

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v17

    .line 55
    iget-wide v6, v3, Lf3/g$d;->c:J

    .line 56
    .line 57
    sub-long v17, v17, v6

    .line 58
    .line 59
    iget-wide v6, v2, Lf3/n0;->d:J

    .line 60
    .line 61
    move-object v9, v4

    .line 62
    move-wide/from16 v19, v6

    .line 63
    .line 64
    invoke-direct/range {v9 .. v20}, Ld4/n;-><init>(JLx4/n;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 65
    .line 66
    .line 67
    new-instance v6, Ld4/q;

    .line 68
    .line 69
    invoke-direct {v6, v8}, Ld4/q;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    instance-of v7, v7, Ljava/io/IOException;

    .line 77
    .line 78
    if-eqz v7, :cond_2

    .line 79
    .line 80
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/io/IOException;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    new-instance v7, Lf3/g$f;

    .line 88
    .line 89
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-direct {v7, v2}, Lf3/g$f;-><init>(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    move-object v2, v7

    .line 97
    :goto_0
    iget-object v7, v1, Lf3/g$c;->b:Lf3/g;

    .line 98
    .line 99
    invoke-static {v7}, Lf3/g;->p(Lf3/g;)Lx4/d0;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    new-instance v8, Lx4/d0$c;

    .line 104
    .line 105
    iget v3, v3, Lf3/g$d;->e:I

    .line 106
    .line 107
    invoke-direct {v8, v4, v6, v2, v3}, Lx4/d0$c;-><init>(Ld4/n;Ld4/q;Ljava/io/IOException;I)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v7, v8}, Lx4/d0;->a(Lx4/d0$c;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v2

    .line 114
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    cmp-long v4, v2, v6

    .line 120
    .line 121
    if-nez v4, :cond_3

    .line 122
    .line 123
    return v5

    .line 124
    :cond_3
    monitor-enter p0

    .line 125
    :try_start_0
    iget-boolean v4, v1, Lf3/g$c;->a:Z

    .line 126
    .line 127
    if-nez v4, :cond_4

    .line 128
    .line 129
    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 134
    .line 135
    .line 136
    monitor-exit p0

    .line 137
    const/4 v0, 0x1

    .line 138
    return v0

    .line 139
    :cond_4
    monitor-exit p0

    .line 140
    return v5

    .line 141
    :catchall_0
    move-exception v0

    .line 142
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    throw v0
.end method


# virtual methods
.method b(ILjava/lang/Object;Z)V
    .locals 8

    .line 1
    new-instance v7, Lf3/g$d;

    .line 2
    .line 3
    invoke-static {}, Ld4/n;->a()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    move-object v0, v7

    .line 12
    move v3, p3

    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lf3/g$d;-><init>(JZJLjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public declared-synchronized c()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lf3/g$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf3/g$d;

    .line 4
    .line 5
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lf3/g$c;->b:Lf3/g;

    .line 13
    .line 14
    invoke-static {v1}, Lf3/g;->o(Lf3/g;)Lf3/m0;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lf3/g$c;->b:Lf3/g;

    .line 19
    .line 20
    invoke-static {v2}, Lf3/g;->n(Lf3/g;)Ljava/util/UUID;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, v0, Lf3/g$d;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Lf3/b0$a;

    .line 27
    .line 28
    invoke-interface {v1, v2, v3}, Lf3/m0;->a(Ljava/util/UUID;Lf3/b0$a;)[B

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw v1

    .line 39
    :cond_1
    iget-object v1, p0, Lf3/g$c;->b:Lf3/g;

    .line 40
    .line 41
    invoke-static {v1}, Lf3/g;->o(Lf3/g;)Lf3/m0;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lf3/g$c;->b:Lf3/g;

    .line 46
    .line 47
    invoke-static {v2}, Lf3/g;->n(Lf3/g;)Ljava/util/UUID;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v3, v0, Lf3/g$d;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Lf3/b0$d;

    .line 54
    .line 55
    invoke-interface {v1, v2, v3}, Lf3/m0;->b(Ljava/util/UUID;Lf3/b0$d;)[B

    .line 56
    .line 57
    .line 58
    move-result-object v1
    :try_end_0
    .catch Lf3/n0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    const-string v2, "DefaultDrmSession"

    .line 62
    .line 63
    const-string v3, "Key/provisioning request produced an unexpected exception. Not retrying."

    .line 64
    .line 65
    invoke-static {v2, v3, v1}, Ly4/r;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_1
    move-exception v1

    .line 70
    invoke-direct {p0, p1, v1}, Lf3/g$c;->a(Landroid/os/Message;Lf3/n0;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    :goto_0
    iget-object v2, p0, Lf3/g$c;->b:Lf3/g;

    .line 78
    .line 79
    invoke-static {v2}, Lf3/g;->p(Lf3/g;)Lx4/d0;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-wide v3, v0, Lf3/g$d;->a:J

    .line 84
    .line 85
    invoke-interface {v2, v3, v4}, Lx4/d0;->c(J)V

    .line 86
    .line 87
    .line 88
    monitor-enter p0

    .line 89
    :try_start_1
    iget-boolean v2, p0, Lf3/g$c;->a:Z

    .line 90
    .line 91
    if-nez v2, :cond_3

    .line 92
    .line 93
    iget-object v2, p0, Lf3/g$c;->b:Lf3/g;

    .line 94
    .line 95
    invoke-static {v2}, Lf3/g;->q(Lf3/g;)Lf3/g$e;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    iget p1, p1, Landroid/os/Message;->what:I

    .line 100
    .line 101
    iget-object v0, v0, Lf3/g$d;->d:Ljava/lang/Object;

    .line 102
    .line 103
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v2, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 112
    .line 113
    .line 114
    :cond_3
    monitor-exit p0

    .line 115
    return-void

    .line 116
    :catchall_0
    move-exception p1

    .line 117
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    throw p1
.end method
