.class public final Lio/sentry/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/p0;
.implements Ljava/lang/Runnable;
.implements Ljava/io/Closeable;


# static fields
.field private static final j:Ljava/nio/charset/Charset;


# instance fields
.field private final a:Lio/sentry/ILogger;

.field private final b:Lio/sentry/metrics/b;

.field private final c:Lio/sentry/z3;

.field private volatile d:Lio/sentry/x0;

.field private volatile e:Z

.field private volatile f:Z

.field private final g:Ljava/util/NavigableMap;

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/sentry/v1;->j:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lio/sentry/metrics/b;Lio/sentry/ILogger;Lio/sentry/z3;ILio/sentry/s5$b;Lio/sentry/x0;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    .line 7
    iput-boolean p5, p0, Lio/sentry/v1;->e:Z

    .line 8
    iput-boolean p5, p0, Lio/sentry/v1;->f:Z

    .line 9
    new-instance p5, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p5}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object p5, p0, Lio/sentry/v1;->g:Ljava/util/NavigableMap;

    .line 10
    new-instance p5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p5, p0, Lio/sentry/v1;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    iput-object p1, p0, Lio/sentry/v1;->b:Lio/sentry/metrics/b;

    .line 12
    iput-object p2, p0, Lio/sentry/v1;->a:Lio/sentry/ILogger;

    .line 13
    iput-object p3, p0, Lio/sentry/v1;->c:Lio/sentry/z3;

    .line 14
    iput p4, p0, Lio/sentry/v1;->i:I

    .line 15
    iput-object p6, p0, Lio/sentry/v1;->d:Lio/sentry/x0;

    return-void
.end method

.method public constructor <init>(Lio/sentry/s5;Lio/sentry/metrics/b;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Lio/sentry/s5;->getDateProvider()Lio/sentry/z3;

    move-result-object v3

    const v4, 0x186a0

    .line 3
    invoke-virtual {p1}, Lio/sentry/s5;->getBeforeEmitMetricCallback()Lio/sentry/s5$b;

    const/4 v5, 0x0

    .line 4
    invoke-static {}, Lio/sentry/e2;->f()Lio/sentry/x0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    .line 5
    invoke-direct/range {v0 .. v6}, Lio/sentry/v1;-><init>(Lio/sentry/metrics/b;Lio/sentry/ILogger;Lio/sentry/z3;ILio/sentry/s5$b;Lio/sentry/x0;)V

    return-void
.end method

.method private static b(Ljava/util/Map;)I
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    throw p0
.end method

.method private c(Z)Ljava/util/Set;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lio/sentry/v1;->g:Ljava/util/NavigableMap;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-direct {p0}, Lio/sentry/v1;->f()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-static {v0, v1}, Lio/sentry/metrics/e;->b(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Lio/sentry/metrics/e;->c(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iget-object p1, p0, Lio/sentry/v1;->g:Ljava/util/NavigableMap;

    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-interface {p1, v0, v1}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method private e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/v1;->g:Ljava/util/NavigableMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lio/sentry/v1;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    iget v1, p0, Lio/sentry/v1;->i:I

    .line 15
    .line 16
    if-lt v0, v1, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
.end method

.method private f()J
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/v1;->c:Lio/sentry/z3;

    .line 4
    .line 5
    invoke-interface {v1}, Lio/sentry/z3;->a()Lio/sentry/y3;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lio/sentry/y3;->l()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method


# virtual methods
.method public a(Z)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Lio/sentry/v1;->e()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lio/sentry/v1;->a:Lio/sentry/ILogger;

    .line 11
    .line 12
    sget-object v1, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 13
    .line 14
    const-string v2, "Metrics: total weight exceeded, flushing all buckets"

    .line 15
    .line 16
    new-array v3, v0, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-interface {p1, v1, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    :cond_0
    iput-boolean v0, p0, Lio/sentry/v1;->f:Z

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lio/sentry/v1;->c(Z)Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lio/sentry/v1;->a:Lio/sentry/ILogger;

    .line 35
    .line 36
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 37
    .line 38
    const-string v2, "Metrics: nothing to flush"

    .line 39
    .line 40
    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    .line 42
    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iget-object v1, p0, Lio/sentry/v1;->a:Lio/sentry/ILogger;

    .line 47
    .line 48
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "Metrics: flushing "

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v4, " buckets"

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    new-array v4, v0, [Ljava/lang/Object;

    .line 77
    .line 78
    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    new-instance v1, Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    move v2, v0

    .line 91
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_3

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Ljava/lang/Long;

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 104
    .line 105
    .line 106
    move-result-wide v3

    .line 107
    iget-object v5, p0, Lio/sentry/v1;->g:Ljava/util/NavigableMap;

    .line 108
    .line 109
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Ljava/util/Map;

    .line 118
    .line 119
    if-eqz v5, :cond_2

    .line 120
    .line 121
    monitor-enter v5

    .line 122
    :try_start_0
    invoke-static {v5}, Lio/sentry/v1;->b(Ljava/util/Map;)I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    iget-object v7, p0, Lio/sentry/v1;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 127
    .line 128
    neg-int v6, v6

    .line 129
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 130
    .line 131
    .line 132
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    add-int/2addr v2, v6

    .line 137
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    monitor-exit v5

    .line 145
    goto :goto_0

    .line 146
    :catchall_0
    move-exception p1

    .line 147
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    throw p1

    .line 149
    :cond_3
    if-nez v2, :cond_4

    .line 150
    .line 151
    iget-object p1, p0, Lio/sentry/v1;->a:Lio/sentry/ILogger;

    .line 152
    .line 153
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 154
    .line 155
    const-string v2, "Metrics: only empty buckets found"

    .line 156
    .line 157
    new-array v0, v0, [Ljava/lang/Object;

    .line 158
    .line 159
    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_4
    iget-object p1, p0, Lio/sentry/v1;->a:Lio/sentry/ILogger;

    .line 164
    .line 165
    sget-object v2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 166
    .line 167
    const-string v3, "Metrics: capturing metrics"

    .line 168
    .line 169
    new-array v0, v0, [Ljava/lang/Object;

    .line 170
    .line 171
    invoke-interface {p1, v2, v3, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lio/sentry/v1;->b:Lio/sentry/metrics/b;

    .line 175
    .line 176
    new-instance v0, Lio/sentry/metrics/a;

    .line 177
    .line 178
    invoke-direct {v0, v1}, Lio/sentry/metrics/a;-><init>(Ljava/util/Map;)V

    .line 179
    .line 180
    .line 181
    invoke-interface {p1, v0}, Lio/sentry/metrics/b;->c(Lio/sentry/metrics/a;)Lio/sentry/protocol/r;

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lio/sentry/v1;->e:Z

    .line 4
    .line 5
    iget-object v1, p0, Lio/sentry/v1;->d:Lio/sentry/x0;

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    invoke-interface {v1, v2, v3}, Lio/sentry/x0;->a(J)V

    .line 10
    .line 11
    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0, v0}, Lio/sentry/v1;->a(Z)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v0
.end method

.method public run()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/sentry/v1;->a(Z)V

    .line 3
    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/v1;->e:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/sentry/v1;->g:Ljava/util/NavigableMap;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lio/sentry/v1;->d:Lio/sentry/x0;

    .line 19
    .line 20
    const-wide/16 v1, 0x1388

    .line 21
    .line 22
    invoke-interface {v0, p0, v1, v2}, Lio/sentry/x0;->c(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    .line 23
    .line 24
    .line 25
    :cond_0
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v0
.end method
