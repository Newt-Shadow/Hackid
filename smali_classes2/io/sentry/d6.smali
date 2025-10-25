.class public final Lio/sentry/d6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/a1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/d6$c;
    }
.end annotation


# instance fields
.field private final a:Lio/sentry/protocol/r;

.field private final b:Lio/sentry/k6;

.field private final c:Ljava/util/List;

.field private final d:Lio/sentry/o0;

.field private e:Ljava/lang/String;

.field private f:Lio/sentry/d6$c;

.field private volatile g:Ljava/util/TimerTask;

.field private volatile h:Ljava/util/TimerTask;

.field private volatile i:Ljava/util/Timer;

.field private final j:Ljava/lang/Object;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final m:Lio/sentry/d;

.field private n:Lio/sentry/protocol/a0;

.field private final o:Lio/sentry/d1;

.field private final p:Lio/sentry/protocol/c;

.field private final q:Lio/sentry/b7;

.field private final r:Lio/sentry/a7;


# direct methods
.method constructor <init>(Lio/sentry/y6;Lio/sentry/o0;Lio/sentry/a7;Lio/sentry/b7;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/protocol/r;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/sentry/protocol/r;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/d6;->a:Lio/sentry/protocol/r;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/sentry/d6;->c:Ljava/util/List;

    .line 17
    .line 18
    sget-object v0, Lio/sentry/d6$c;->c:Lio/sentry/d6$c;

    .line 19
    .line 20
    iput-object v0, p0, Lio/sentry/d6;->f:Lio/sentry/d6$c;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lio/sentry/d6;->i:Ljava/util/Timer;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/Object;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lio/sentry/d6;->j:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lio/sentry/d6;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lio/sentry/d6;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    new-instance v0, Lio/sentry/protocol/c;

    .line 48
    .line 49
    invoke-direct {v0}, Lio/sentry/protocol/c;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lio/sentry/d6;->p:Lio/sentry/protocol/c;

    .line 53
    .line 54
    const-string v0, "context is required"

    .line 55
    .line 56
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const-string v0, "hub is required"

    .line 60
    .line 61
    invoke-static {p2, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    new-instance v0, Lio/sentry/k6;

    .line 65
    .line 66
    invoke-virtual {p3}, Lio/sentry/a7;->h()Lio/sentry/y3;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    move-object v1, v0

    .line 71
    move-object v2, p1

    .line 72
    move-object v3, p0

    .line 73
    move-object v4, p2

    .line 74
    move-object v6, p3

    .line 75
    invoke-direct/range {v1 .. v6}, Lio/sentry/k6;-><init>(Lio/sentry/y6;Lio/sentry/d6;Lio/sentry/o0;Lio/sentry/y3;Lio/sentry/o6;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 79
    .line 80
    invoke-virtual {p1}, Lio/sentry/y6;->t()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lio/sentry/d6;->e:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p1}, Lio/sentry/y6;->s()Lio/sentry/d1;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lio/sentry/d6;->o:Lio/sentry/d1;

    .line 91
    .line 92
    iput-object p2, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 93
    .line 94
    iput-object p4, p0, Lio/sentry/d6;->q:Lio/sentry/b7;

    .line 95
    .line 96
    invoke-virtual {p1}, Lio/sentry/y6;->v()Lio/sentry/protocol/a0;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lio/sentry/d6;->n:Lio/sentry/protocol/a0;

    .line 101
    .line 102
    iput-object p3, p0, Lio/sentry/d6;->r:Lio/sentry/a7;

    .line 103
    .line 104
    invoke-virtual {p1}, Lio/sentry/y6;->r()Lio/sentry/d;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    .line 110
    invoke-virtual {p1}, Lio/sentry/y6;->r()Lio/sentry/d;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lio/sentry/d6;->m:Lio/sentry/d;

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    new-instance p1, Lio/sentry/d;

    .line 118
    .line 119
    invoke-interface {p2}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-direct {p1, p2}, Lio/sentry/d;-><init>(Lio/sentry/ILogger;)V

    .line 128
    .line 129
    .line 130
    iput-object p1, p0, Lio/sentry/d6;->m:Lio/sentry/d;

    .line 131
    .line 132
    :goto_0
    if-eqz p4, :cond_1

    .line 133
    .line 134
    invoke-interface {p4, p0}, Lio/sentry/b7;->d(Lio/sentry/a1;)V

    .line 135
    .line 136
    .line 137
    :cond_1
    invoke-virtual {p3}, Lio/sentry/a7;->g()Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-nez p1, :cond_2

    .line 142
    .line 143
    invoke-virtual {p3}, Lio/sentry/a7;->f()Ljava/lang/Long;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-eqz p1, :cond_3

    .line 148
    .line 149
    :cond_2
    new-instance p1, Ljava/util/Timer;

    .line 150
    .line 151
    const/4 p2, 0x1

    .line 152
    invoke-direct {p1, p2}, Ljava/util/Timer;-><init>(Z)V

    .line 153
    .line 154
    .line 155
    iput-object p1, p0, Lio/sentry/d6;->i:Ljava/util/Timer;

    .line 156
    .line 157
    invoke-direct {p0}, Lio/sentry/d6;->X()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lio/sentry/d6;->n()V

    .line 161
    .line 162
    .line 163
    :cond_3
    return-void
.end method

.method static synthetic A(Lio/sentry/d6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/d6;->V()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private B()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/sentry/d6;->h:Ljava/util/TimerTask;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lio/sentry/d6;->h:Ljava/util/TimerTask;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lio/sentry/d6;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lio/sentry/d6;->h:Ljava/util/TimerTask;

    .line 21
    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v1
.end method

.method private C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/sentry/d6;->g:Ljava/util/TimerTask;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lio/sentry/d6;->g:Ljava/util/TimerTask;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lio/sentry/d6;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lio/sentry/d6;->g:Ljava/util/TimerTask;

    .line 21
    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v1
.end method

.method private D(Lio/sentry/n6;Ljava/lang/String;Ljava/lang/String;Lio/sentry/y3;Lio/sentry/d1;Lio/sentry/o6;)Lio/sentry/z0;
    .locals 9

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/k6;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/sentry/g2;->u()Lio/sentry/g2;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object v0, p0, Lio/sentry/d6;->o:Lio/sentry/d1;

    .line 15
    .line 16
    invoke-virtual {v0, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p5

    .line 20
    if-nez p5, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lio/sentry/g2;->u()Lio/sentry/g2;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1
    iget-object p5, p0, Lio/sentry/d6;->c:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result p5

    .line 33
    iget-object v0, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 34
    .line 35
    invoke-interface {v0}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lio/sentry/s5;->getMaxSpans()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ge p5, v0, :cond_4

    .line 44
    .line 45
    const-string p5, "parentSpanId is required"

    .line 46
    .line 47
    invoke-static {p1, p5}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    const-string p5, "operation is required"

    .line 51
    .line 52
    invoke-static {p2, p5}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lio/sentry/d6;->C()V

    .line 56
    .line 57
    .line 58
    new-instance p5, Lio/sentry/k6;

    .line 59
    .line 60
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 61
    .line 62
    invoke-virtual {v0}, Lio/sentry/k6;->G()Lio/sentry/protocol/r;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v5, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 67
    .line 68
    new-instance v8, Lio/sentry/a6;

    .line 69
    .line 70
    invoke-direct {v8, p0}, Lio/sentry/a6;-><init>(Lio/sentry/d6;)V

    .line 71
    .line 72
    .line 73
    move-object v0, p5

    .line 74
    move-object v2, p1

    .line 75
    move-object v3, p0

    .line 76
    move-object v4, p2

    .line 77
    move-object v6, p4

    .line 78
    move-object v7, p6

    .line 79
    invoke-direct/range {v0 .. v8}, Lio/sentry/k6;-><init>(Lio/sentry/protocol/r;Lio/sentry/n6;Lio/sentry/d6;Ljava/lang/String;Lio/sentry/o0;Lio/sentry/y3;Lio/sentry/o6;Lio/sentry/m6;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p5, p3}, Lio/sentry/k6;->l(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    .line 90
    .line 91
    .line 92
    move-result-wide p1

    .line 93
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string p2, "thread.id"

    .line 98
    .line 99
    invoke-virtual {p5, p2, p1}, Lio/sentry/k6;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 103
    .line 104
    invoke-interface {p1}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lio/sentry/s5;->getMainThreadChecker()Lio/sentry/util/thread/a;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {p1}, Lio/sentry/util/thread/a;->a()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_2

    .line 117
    .line 118
    const-string p1, "main"

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    :goto_0
    const-string p2, "thread.name"

    .line 130
    .line 131
    invoke-virtual {p5, p2, p1}, Lio/sentry/k6;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lio/sentry/d6;->c:Ljava/util/List;

    .line 135
    .line 136
    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lio/sentry/d6;->q:Lio/sentry/b7;

    .line 140
    .line 141
    if-eqz p1, :cond_3

    .line 142
    .line 143
    invoke-interface {p1, p5}, Lio/sentry/b7;->b(Lio/sentry/z0;)V

    .line 144
    .line 145
    .line 146
    :cond_3
    return-object p5

    .line 147
    :cond_4
    iget-object p1, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 148
    .line 149
    invoke-interface {p1}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    sget-object p4, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 158
    .line 159
    const-string p5, "Span operation: %s, description: %s dropped due to limit reached. Returning NoOpSpan."

    .line 160
    .line 161
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-interface {p1, p4, p5, p2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Lio/sentry/g2;->u()Lio/sentry/g2;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    return-object p1
.end method

.method private E(Ljava/lang/String;Ljava/lang/String;Lio/sentry/y3;Lio/sentry/d1;Lio/sentry/o6;)Lio/sentry/z0;
    .locals 8

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/k6;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lio/sentry/g2;->u()Lio/sentry/g2;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object v0, p0, Lio/sentry/d6;->o:Lio/sentry/d1;

    .line 15
    .line 16
    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lio/sentry/g2;->u()Lio/sentry/g2;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1
    iget-object v0, p0, Lio/sentry/d6;->c:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 34
    .line 35
    invoke-interface {v1}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lio/sentry/s5;->getMaxSpans()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ge v0, v1, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 46
    .line 47
    move-object v3, p1

    .line 48
    move-object v4, p2

    .line 49
    move-object v5, p3

    .line 50
    move-object v6, p4

    .line 51
    move-object v7, p5

    .line 52
    invoke-virtual/range {v2 .. v7}, Lio/sentry/k6;->L(Ljava/lang/String;Ljava/lang/String;Lio/sentry/y3;Lio/sentry/d1;Lio/sentry/o6;)Lio/sentry/z0;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :cond_2
    iget-object p3, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 58
    .line 59
    invoke-interface {p3}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-virtual {p3}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    sget-object p4, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 68
    .line 69
    const-string p5, "Span operation: %s, description: %s dropped due to limit reached. Returning NoOpSpan."

    .line 70
    .line 71
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p3, p4, p5, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lio/sentry/g2;->u()Lio/sentry/g2;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1
.end method

.method private N()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/d6;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lio/sentry/k6;

    .line 29
    .line 30
    invoke-virtual {v1}, Lio/sentry/k6;->c()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Lio/sentry/k6;->p()Lio/sentry/y3;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    return v0

    .line 44
    :cond_1
    const/4 v0, 0x1

    .line 45
    return v0
.end method

.method private synthetic Q(Lio/sentry/k6;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->q:Lio/sentry/b7;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/sentry/b7;->a(Lio/sentry/z0;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lio/sentry/d6;->f:Lio/sentry/d6$c;

    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/d6;->r:Lio/sentry/a7;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/sentry/a7;->g()Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object p1, p0, Lio/sentry/d6;->r:Lio/sentry/a7;

    .line 19
    .line 20
    invoke-virtual {p1}, Lio/sentry/a7;->l()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Lio/sentry/d6;->N()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Lio/sentry/d6;->n()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-static {p1}, Lio/sentry/d6$c;->b(Lio/sentry/d6$c;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-static {p1}, Lio/sentry/d6$c;->a(Lio/sentry/d6$c;)Lio/sentry/p6;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lio/sentry/d6;->g(Lio/sentry/p6;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic R(Lio/sentry/m6;Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/k6;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1, p3}, Lio/sentry/m6;->a(Lio/sentry/k6;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    iget-object p1, p0, Lio/sentry/d6;->r:Lio/sentry/a7;

    .line 7
    .line 8
    invoke-virtual {p1}, Lio/sentry/a7;->i()Lio/sentry/z6;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-interface {p1, p0}, Lio/sentry/z6;->a(Lio/sentry/a1;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object p1, p0, Lio/sentry/d6;->q:Lio/sentry/b7;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-interface {p1, p0}, Lio/sentry/b7;->c(Lio/sentry/a1;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method private synthetic S(Lio/sentry/u0;Lio/sentry/a1;)V
    .locals 0

    .line 1
    if-ne p2, p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lio/sentry/u0;->h()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private synthetic T(Lio/sentry/u0;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/c6;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lio/sentry/c6;-><init>(Lio/sentry/d6;Lio/sentry/u0;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Lio/sentry/u0;->D(Lio/sentry/d3$c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static synthetic U(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/u0;)V
    .locals 1

    .line 1
    invoke-interface {p2}, Lio/sentry/u0;->G()Lio/sentry/protocol/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p2}, Lio/sentry/u0;->o()Lio/sentry/protocol/r;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private V()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/sentry/d6;->d()Lio/sentry/p6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lio/sentry/p6;->DEADLINE_EXCEEDED:Lio/sentry/p6;

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lio/sentry/d6;->r:Lio/sentry/a7;

    .line 11
    .line 12
    invoke-virtual {v1}, Lio/sentry/a7;->g()Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v1, v2

    .line 22
    :goto_1
    const/4 v3, 0x0

    .line 23
    invoke-virtual {p0, v0, v1, v3}, Lio/sentry/d6;->e(Lio/sentry/p6;ZLio/sentry/c0;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lio/sentry/d6;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private W()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/sentry/d6;->d()Lio/sentry/p6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lio/sentry/p6;->OK:Lio/sentry/p6;

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0, v0}, Lio/sentry/d6;->g(Lio/sentry/p6;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/sentry/d6;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private X()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->r:Lio/sentry/a7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/a7;->f()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lio/sentry/d6;->j:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lio/sentry/d6;->i:Ljava/util/Timer;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lio/sentry/d6;->B()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lio/sentry/d6;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lio/sentry/d6$b;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Lio/sentry/d6$b;-><init>(Lio/sentry/d6;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lio/sentry/d6;->h:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    .line 32
    :try_start_1
    iget-object v2, p0, Lio/sentry/d6;->i:Ljava/util/Timer;

    .line 33
    .line 34
    iget-object v3, p0, Lio/sentry/d6;->h:Ljava/util/TimerTask;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    :try_start_2
    iget-object v2, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 46
    .line 47
    invoke-interface {v2}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    sget-object v3, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 56
    .line 57
    const-string v4, "Failed to schedule finish timer"

    .line 58
    .line 59
    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lio/sentry/d6;->V()V

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    monitor-exit v1

    .line 66
    goto :goto_1

    .line 67
    :catchall_1
    move-exception v0

    .line 68
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    throw v0

    .line 70
    :cond_1
    :goto_1
    return-void
.end method

.method private c0()V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/sentry/d6;->m:Lio/sentry/d;

    .line 3
    .line 4
    invoke-virtual {v0}, Lio/sentry/d;->r()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 21
    .line 22
    new-instance v3, Lio/sentry/b6;

    .line 23
    .line 24
    invoke-direct {v3, v0, v1}, Lio/sentry/b6;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v2, v3}, Lio/sentry/o0;->y(Lio/sentry/e3;)V

    .line 28
    .line 29
    .line 30
    iget-object v4, p0, Lio/sentry/d6;->m:Lio/sentry/d;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move-object v6, v0

    .line 37
    check-cast v6, Lio/sentry/protocol/b0;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v7, v0

    .line 44
    check-cast v7, Lio/sentry/protocol/r;

    .line 45
    .line 46
    iget-object v0, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 47
    .line 48
    invoke-interface {v0}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-virtual {p0}, Lio/sentry/d6;->L()Lio/sentry/x6;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    move-object v5, p0

    .line 57
    invoke-virtual/range {v4 .. v9}, Lio/sentry/d;->G(Lio/sentry/a1;Lio/sentry/protocol/b0;Lio/sentry/protocol/r;Lio/sentry/s5;Lio/sentry/x6;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lio/sentry/d6;->m:Lio/sentry/d;

    .line 61
    .line 62
    invoke-virtual {v0}, Lio/sentry/d;->a()V

    .line 63
    .line 64
    .line 65
    :cond_0
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw v0
.end method

.method public static synthetic u(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/d6;->U(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/u0;)V

    return-void
.end method

.method public static synthetic v(Lio/sentry/d6;Lio/sentry/k6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/d6;->Q(Lio/sentry/k6;)V

    return-void
.end method

.method public static synthetic w(Lio/sentry/d6;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/d6;->T(Lio/sentry/u0;)V

    return-void
.end method

.method public static synthetic x(Lio/sentry/d6;Lio/sentry/u0;Lio/sentry/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/d6;->S(Lio/sentry/u0;Lio/sentry/a1;)V

    return-void
.end method

.method public static synthetic y(Lio/sentry/d6;Lio/sentry/m6;Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/k6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/d6;->R(Lio/sentry/m6;Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/k6;)V

    return-void
.end method

.method static synthetic z(Lio/sentry/d6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/d6;->W()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public F(Lio/sentry/p6;Lio/sentry/y3;ZLio/sentry/c0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/k6;->p()Lio/sentry/y3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object p2, v0

    .line 11
    :goto_0
    if-nez p2, :cond_1

    .line 12
    .line 13
    iget-object p2, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 14
    .line 15
    invoke-interface {p2}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lio/sentry/s5;->getDateProvider()Lio/sentry/z3;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p2}, Lio/sentry/z3;->a()Lio/sentry/y3;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :cond_1
    iget-object v0, p0, Lio/sentry/d6;->c:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lio/sentry/k6;

    .line 44
    .line 45
    invoke-virtual {v1}, Lio/sentry/k6;->A()Lio/sentry/o6;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lio/sentry/o6;->a()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    move-object v2, p1

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    invoke-virtual {p0}, Lio/sentry/d6;->o()Lio/sentry/l6;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget-object v2, v2, Lio/sentry/l6;->g:Lio/sentry/p6;

    .line 64
    .line 65
    :goto_2
    invoke-virtual {v1, v2, p2}, Lio/sentry/k6;->r(Lio/sentry/p6;Lio/sentry/y3;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    invoke-static {p1}, Lio/sentry/d6$c;->c(Lio/sentry/p6;)Lio/sentry/d6$c;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lio/sentry/d6;->f:Lio/sentry/d6$c;

    .line 74
    .line 75
    iget-object p1, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 76
    .line 77
    invoke-virtual {p1}, Lio/sentry/k6;->c()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_b

    .line 82
    .line 83
    iget-object p1, p0, Lio/sentry/d6;->r:Lio/sentry/a7;

    .line 84
    .line 85
    invoke-virtual {p1}, Lio/sentry/a7;->l()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    invoke-direct {p0}, Lio/sentry/d6;->N()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_b

    .line 96
    .line 97
    :cond_5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    .line 99
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 103
    .line 104
    invoke-virtual {v0}, Lio/sentry/k6;->D()Lio/sentry/m6;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v1, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 109
    .line 110
    new-instance v2, Lio/sentry/y5;

    .line 111
    .line 112
    invoke-direct {v2, p0, v0, p1}, Lio/sentry/y5;-><init>(Lio/sentry/d6;Lio/sentry/m6;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Lio/sentry/k6;->K(Lio/sentry/m6;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 119
    .line 120
    iget-object v1, p0, Lio/sentry/d6;->f:Lio/sentry/d6$c;

    .line 121
    .line 122
    invoke-static {v1}, Lio/sentry/d6$c;->a(Lio/sentry/d6$c;)Lio/sentry/p6;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1, p2}, Lio/sentry/k6;->r(Lio/sentry/p6;Lio/sentry/y3;)V

    .line 127
    .line 128
    .line 129
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 130
    .line 131
    invoke-virtual {p0}, Lio/sentry/d6;->P()Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    const/4 v1, 0x0

    .line 140
    if-eqz v0, :cond_6

    .line 141
    .line 142
    invoke-virtual {p0}, Lio/sentry/d6;->O()Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-eqz p2, :cond_6

    .line 151
    .line 152
    iget-object p2, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 153
    .line 154
    invoke-interface {p2}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-virtual {p2}, Lio/sentry/s5;->getTransactionProfiler()Lio/sentry/b1;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Ljava/util/List;

    .line 167
    .line 168
    iget-object v2, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 169
    .line 170
    invoke-interface {v2}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-interface {p2, p0, v0, v2}, Lio/sentry/b1;->a(Lio/sentry/a1;Ljava/util/List;Lio/sentry/s5;)Lio/sentry/u2;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    goto :goto_3

    .line 179
    :cond_6
    move-object p2, v1

    .line 180
    :goto_3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    if-eqz v0, :cond_7

    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    check-cast p1, Ljava/util/List;

    .line 191
    .line 192
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 193
    .line 194
    .line 195
    :cond_7
    iget-object p1, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 196
    .line 197
    new-instance v0, Lio/sentry/z5;

    .line 198
    .line 199
    invoke-direct {v0, p0}, Lio/sentry/z5;-><init>(Lio/sentry/d6;)V

    .line 200
    .line 201
    .line 202
    invoke-interface {p1, v0}, Lio/sentry/o0;->y(Lio/sentry/e3;)V

    .line 203
    .line 204
    .line 205
    new-instance p1, Lio/sentry/protocol/y;

    .line 206
    .line 207
    invoke-direct {p1, p0}, Lio/sentry/protocol/y;-><init>(Lio/sentry/d6;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lio/sentry/d6;->i:Ljava/util/Timer;

    .line 211
    .line 212
    if-eqz v0, :cond_9

    .line 213
    .line 214
    iget-object v0, p0, Lio/sentry/d6;->j:Ljava/lang/Object;

    .line 215
    .line 216
    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v2, p0, Lio/sentry/d6;->i:Ljava/util/Timer;

    .line 218
    .line 219
    if-eqz v2, :cond_8

    .line 220
    .line 221
    invoke-direct {p0}, Lio/sentry/d6;->C()V

    .line 222
    .line 223
    .line 224
    invoke-direct {p0}, Lio/sentry/d6;->B()V

    .line 225
    .line 226
    .line 227
    iget-object v2, p0, Lio/sentry/d6;->i:Ljava/util/Timer;

    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 230
    .line 231
    .line 232
    iput-object v1, p0, Lio/sentry/d6;->i:Ljava/util/Timer;

    .line 233
    .line 234
    :cond_8
    monitor-exit v0

    .line 235
    goto :goto_4

    .line 236
    :catchall_0
    move-exception p1

    .line 237
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    throw p1

    .line 239
    :cond_9
    :goto_4
    if-eqz p3, :cond_a

    .line 240
    .line 241
    iget-object p3, p0, Lio/sentry/d6;->c:Ljava/util/List;

    .line 242
    .line 243
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 244
    .line 245
    .line 246
    move-result p3

    .line 247
    if-eqz p3, :cond_a

    .line 248
    .line 249
    iget-object p3, p0, Lio/sentry/d6;->r:Lio/sentry/a7;

    .line 250
    .line 251
    invoke-virtual {p3}, Lio/sentry/a7;->g()Ljava/lang/Long;

    .line 252
    .line 253
    .line 254
    move-result-object p3

    .line 255
    if-eqz p3, :cond_a

    .line 256
    .line 257
    iget-object p1, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 258
    .line 259
    invoke-interface {p1}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    sget-object p2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 268
    .line 269
    const-string p3, "Dropping idle transaction %s because it has no child spans"

    .line 270
    .line 271
    iget-object p4, p0, Lio/sentry/d6;->e:Ljava/lang/String;

    .line 272
    .line 273
    filled-new-array {p4}, [Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p4

    .line 277
    invoke-interface {p1, p2, p3, p4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :cond_a
    invoke-virtual {p1}, Lio/sentry/protocol/y;->o0()Ljava/util/Map;

    .line 282
    .line 283
    .line 284
    move-result-object p3

    .line 285
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 286
    .line 287
    invoke-virtual {v0}, Lio/sentry/k6;->y()Ljava/util/Map;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-interface {p3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 292
    .line 293
    .line 294
    iget-object p3, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 295
    .line 296
    invoke-virtual {p0}, Lio/sentry/d6;->a()Lio/sentry/v6;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-interface {p3, p1, v0, p4, p2}, Lio/sentry/o0;->C(Lio/sentry/protocol/y;Lio/sentry/v6;Lio/sentry/c0;Lio/sentry/u2;)Lio/sentry/protocol/r;

    .line 301
    .line 302
    .line 303
    :cond_b
    return-void
.end method

.method public G()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public H()Lio/sentry/protocol/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->p:Lio/sentry/protocol/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public I()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/k6;->v()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public J()Lio/sentry/metrics/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/k6;->x()Lio/sentry/metrics/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method K()Lio/sentry/k6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    return-object v0
.end method

.method public L()Lio/sentry/x6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/k6;->C()Lio/sentry/x6;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public M()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public O()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/k6;->H()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public P()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/k6;->I()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public Y(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/k6;->y()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lio/sentry/d6;->q(Ljava/lang/String;Ljava/lang/Number;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public Z(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/t1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/k6;->y()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/d6;->j(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/t1;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public a()Lio/sentry/v6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/sentry/s5;->isTraceSampling()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lio/sentry/d6;->c0()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/sentry/d6;->m:Lio/sentry/d;

    .line 17
    .line 18
    invoke-virtual {v0}, Lio/sentry/d;->H()Lio/sentry/v6;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return-object v0
.end method

.method a0(Lio/sentry/n6;Ljava/lang/String;Ljava/lang/String;Lio/sentry/y3;Lio/sentry/d1;Lio/sentry/o6;)Lio/sentry/z0;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lio/sentry/d6;->D(Lio/sentry/n6;Ljava/lang/String;Ljava/lang/String;Lio/sentry/y3;Lio/sentry/d1;Lio/sentry/o6;)Lio/sentry/z0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/k6;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 10
    .line 11
    invoke-interface {p2}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 20
    .line 21
    const-string v1, "The transaction is already finished. Data %s cannot be set"

    .line 22
    .line 23
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Lio/sentry/k6;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public b0(Ljava/lang/String;Ljava/lang/String;Lio/sentry/y3;Lio/sentry/d1;Lio/sentry/o6;)Lio/sentry/z0;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/sentry/d6;->E(Ljava/lang/String;Ljava/lang/String;Lio/sentry/y3;Lio/sentry/d1;Lio/sentry/o6;)Lio/sentry/z0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/k6;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d()Lio/sentry/p6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/k6;->d()Lio/sentry/p6;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e(Lio/sentry/p6;ZLio/sentry/c0;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/sentry/d6;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 9
    .line 10
    invoke-interface {v0}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lio/sentry/s5;->getDateProvider()Lio/sentry/z3;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lio/sentry/z3;->a()Lio/sentry/y3;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lio/sentry/d6;->c:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lio/sentry/k6;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v2, v3}, Lio/sentry/k6;->K(Lio/sentry/m6;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1, v0}, Lio/sentry/k6;->r(Lio/sentry/p6;Lio/sentry/y3;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0, p1, v0, p2, p3}, Lio/sentry/d6;->F(Lio/sentry/p6;Lio/sentry/y3;ZLio/sentry/c0;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public f(Lio/sentry/y3;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/sentry/k6;->f(Lio/sentry/y3;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public g(Lio/sentry/p6;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lio/sentry/d6;->r(Lio/sentry/p6;Lio/sentry/y3;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/k6;->getDescription()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Lio/sentry/y3;Lio/sentry/d1;)Lio/sentry/z0;
    .locals 6

    .line 1
    new-instance v5, Lio/sentry/o6;

    .line 2
    .line 3
    invoke-direct {v5}, Lio/sentry/o6;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p3

    .line 10
    move-object v4, p4

    .line 11
    invoke-virtual/range {v0 .. v5}, Lio/sentry/d6;->b0(Ljava/lang/String;Ljava/lang/String;Lio/sentry/y3;Lio/sentry/d1;Lio/sentry/o6;)Lio/sentry/z0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public i()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/d6;->d()Lio/sentry/p6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lio/sentry/d6;->g(Lio/sentry/p6;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/t1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lio/sentry/k6;->j(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/t1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()Lio/sentry/k6;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/d6;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    :goto_0
    if-ltz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lio/sentry/k6;

    .line 27
    .line 28
    invoke-virtual {v2}, Lio/sentry/k6;->c()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lio/sentry/k6;

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/k6;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 10
    .line 11
    invoke-interface {v0}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 20
    .line 21
    const-string v2, "The transaction is already finished. Description %s cannot be set"

    .line 22
    .line 23
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lio/sentry/k6;->l(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public m()Lio/sentry/protocol/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->a:Lio/sentry/protocol/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/sentry/d6;->i:Ljava/util/Timer;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lio/sentry/d6;->r:Lio/sentry/a7;

    .line 9
    .line 10
    invoke-virtual {v1}, Lio/sentry/a7;->g()Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-direct {p0}, Lio/sentry/d6;->C()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lio/sentry/d6;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lio/sentry/d6$a;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Lio/sentry/d6$a;-><init>(Lio/sentry/d6;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lio/sentry/d6;->g:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    .line 32
    :try_start_1
    iget-object v2, p0, Lio/sentry/d6;->i:Ljava/util/Timer;

    .line 33
    .line 34
    iget-object v3, p0, Lio/sentry/d6;->g:Ljava/util/TimerTask;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    :try_start_2
    iget-object v2, p0, Lio/sentry/d6;->d:Lio/sentry/o0;

    .line 46
    .line 47
    invoke-interface {v2}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    sget-object v3, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 56
    .line 57
    const-string v4, "Failed to schedule finish timer"

    .line 58
    .line 59
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lio/sentry/d6;->W()V

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :catchall_1
    move-exception v1

    .line 68
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    throw v1
.end method

.method public o()Lio/sentry/l6;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/k6;->o()Lio/sentry/l6;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public p()Lio/sentry/y3;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/k6;->p()Lio/sentry/y3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public q(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lio/sentry/k6;->q(Ljava/lang/String;Ljava/lang/Number;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public r(Lio/sentry/p6;Lio/sentry/y3;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/sentry/d6;->F(Lio/sentry/p6;Lio/sentry/y3;ZLio/sentry/c0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public s()Lio/sentry/protocol/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->n:Lio/sentry/protocol/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Lio/sentry/y3;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/d6;->b:Lio/sentry/k6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/k6;->t()Lio/sentry/y3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
