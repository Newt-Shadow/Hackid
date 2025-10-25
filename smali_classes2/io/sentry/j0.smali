.class public final Lio/sentry/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/o0;
.implements Lio/sentry/metrics/d$a;


# instance fields
.field private volatile a:Lio/sentry/protocol/r;

.field private final b:Lio/sentry/s5;

.field private volatile c:Z

.field private final d:Lio/sentry/r6;

.field private final e:Lio/sentry/w6;

.field private final f:Ljava/util/Map;

.field private final g:Lio/sentry/b7;

.field private final h:Lio/sentry/metrics/d;


# direct methods
.method public constructor <init>(Lio/sentry/s5;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/sentry/j0;->G(Lio/sentry/s5;)Lio/sentry/r6$a;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/j0;-><init>(Lio/sentry/s5;Lio/sentry/r6$a;)V

    return-void
.end method

.method private constructor <init>(Lio/sentry/s5;Lio/sentry/r6$a;)V
    .locals 2

    .line 13
    new-instance v0, Lio/sentry/r6;

    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lio/sentry/r6;-><init>(Lio/sentry/ILogger;Lio/sentry/r6$a;)V

    invoke-direct {p0, p1, v0}, Lio/sentry/j0;-><init>(Lio/sentry/s5;Lio/sentry/r6;)V

    return-void
.end method

.method private constructor <init>(Lio/sentry/s5;Lio/sentry/r6;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/j0;->f:Ljava/util/Map;

    .line 5
    invoke-static {p1}, Lio/sentry/j0;->L(Lio/sentry/s5;)V

    .line 6
    iput-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 7
    new-instance v0, Lio/sentry/w6;

    invoke-direct {v0, p1}, Lio/sentry/w6;-><init>(Lio/sentry/s5;)V

    iput-object v0, p0, Lio/sentry/j0;->e:Lio/sentry/w6;

    .line 8
    iput-object p2, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 9
    sget-object p2, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    iput-object p2, p0, Lio/sentry/j0;->a:Lio/sentry/protocol/r;

    .line 10
    invoke-virtual {p1}, Lio/sentry/s5;->getTransactionPerformanceCollector()Lio/sentry/b7;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/j0;->g:Lio/sentry/b7;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lio/sentry/j0;->c:Z

    .line 12
    new-instance p1, Lio/sentry/metrics/d;

    invoke-direct {p1, p0}, Lio/sentry/metrics/d;-><init>(Lio/sentry/metrics/d$a;)V

    iput-object p1, p0, Lio/sentry/j0;->h:Lio/sentry/metrics/d;

    return-void
.end method

.method private E(Lio/sentry/u0;Lio/sentry/e3;)Lio/sentry/u0;
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Lio/sentry/u0;->r()Lio/sentry/u0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p2, v0}, Lio/sentry/e3;->a(Lio/sentry/u0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :catchall_0
    move-exception p2

    .line 12
    iget-object v0, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 19
    .line 20
    const-string v2, "Error in the \'ScopeCallback\' callback."

    .line 21
    .line 22
    invoke-interface {v0, v1, v2, p2}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-object p1
.end method

.method private F(Lio/sentry/z4;Lio/sentry/c0;Lio/sentry/e3;)Lio/sentry/protocol/r;
    .locals 4

    .line 1
    sget-object v0, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 11
    .line 12
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 17
    .line 18
    const-string p3, "Instance is disabled and this \'captureEvent\' call is a no-op."

    .line 19
    .line 20
    new-array v1, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-interface {p1, p2, p3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 29
    .line 30
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 35
    .line 36
    const-string p3, "captureEvent called with null parameter."

    .line 37
    .line 38
    new-array v1, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-interface {p1, p2, p3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lio/sentry/j0;->k(Lio/sentry/z4;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 48
    .line 49
    invoke-virtual {v1}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lio/sentry/r6$a;->c()Lio/sentry/u0;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-direct {p0, v2, p3}, Lio/sentry/j0;->E(Lio/sentry/u0;Lio/sentry/e3;)Lio/sentry/u0;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {v1}, Lio/sentry/r6$a;->a()Lio/sentry/w0;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v1, p1, p3, p2}, Lio/sentry/w0;->e(Lio/sentry/z4;Lio/sentry/u0;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lio/sentry/j0;->a:Lio/sentry/protocol/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p2

    .line 73
    iget-object p3, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 74
    .line 75
    invoke-virtual {p3}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 80
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v3, "Error while capturing event with id: "

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p3, v1, p1, p2}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    return-object v0
.end method

.method private static G(Lio/sentry/s5;)Lio/sentry/r6$a;
    .locals 3

    .line 1
    invoke-static {p0}, Lio/sentry/j0;->L(Lio/sentry/s5;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/d3;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lio/sentry/d3;-><init>(Lio/sentry/s5;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lio/sentry/w3;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lio/sentry/w3;-><init>(Lio/sentry/s5;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lio/sentry/r6$a;

    .line 15
    .line 16
    invoke-direct {v2, p0, v1, v0}, Lio/sentry/r6$a;-><init>(Lio/sentry/s5;Lio/sentry/w0;Lio/sentry/u0;)V

    .line 17
    .line 18
    .line 19
    return-object v2
.end method

.method private H(Lio/sentry/y6;Lio/sentry/a7;)Lio/sentry/a1;
    .locals 3

    .line 1
    const-string v0, "transactionContext is required"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 14
    .line 15
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object v0, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 20
    .line 21
    const-string v2, "Instance is disabled and this \'startTransaction\' returns a no-op."

    .line 22
    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lio/sentry/h2;->u()Lio/sentry/h2;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 35
    .line 36
    invoke-virtual {v0}, Lio/sentry/s5;->getInstrumenter()Lio/sentry/d1;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lio/sentry/y6;->s()Lio/sentry/d1;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 51
    .line 52
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 57
    .line 58
    invoke-virtual {p1}, Lio/sentry/y6;->s()Lio/sentry/d1;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object v2, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 63
    .line 64
    invoke-virtual {v2}, Lio/sentry/s5;->getInstrumenter()Lio/sentry/d1;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v2, "Returning no-op for instrumenter %s as the SDK has been configured to use instrumenter %s"

    .line 73
    .line 74
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lio/sentry/h2;->u()Lio/sentry/h2;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    iget-object v0, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 83
    .line 84
    invoke-virtual {v0}, Lio/sentry/s5;->isTracingEnabled()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 91
    .line 92
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    sget-object v0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 97
    .line 98
    const-string v2, "Tracing is disabled and this \'startTransaction\' returns a no-op."

    .line 99
    .line 100
    new-array v1, v1, [Ljava/lang/Object;

    .line 101
    .line 102
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lio/sentry/h2;->u()Lio/sentry/h2;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    new-instance v0, Lio/sentry/c3;

    .line 111
    .line 112
    invoke-virtual {p2}, Lio/sentry/a7;->e()Lio/sentry/h;

    .line 113
    .line 114
    .line 115
    const/4 v1, 0x0

    .line 116
    invoke-direct {v0, p1, v1}, Lio/sentry/c3;-><init>(Lio/sentry/y6;Lio/sentry/h;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lio/sentry/j0;->e:Lio/sentry/w6;

    .line 120
    .line 121
    invoke-virtual {v1, v0}, Lio/sentry/w6;->b(Lio/sentry/c3;)Lio/sentry/x6;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Lio/sentry/l6;->n(Lio/sentry/x6;)V

    .line 126
    .line 127
    .line 128
    new-instance v1, Lio/sentry/d6;

    .line 129
    .line 130
    iget-object v2, p0, Lio/sentry/j0;->g:Lio/sentry/b7;

    .line 131
    .line 132
    invoke-direct {v1, p1, p0, p2, v2}, Lio/sentry/d6;-><init>(Lio/sentry/y6;Lio/sentry/o0;Lio/sentry/a7;Lio/sentry/b7;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lio/sentry/x6;->d()Ljava/lang/Boolean;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_4

    .line 144
    .line 145
    invoke-virtual {v0}, Lio/sentry/x6;->b()Ljava/lang/Boolean;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_4

    .line 154
    .line 155
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 156
    .line 157
    invoke-virtual {p1}, Lio/sentry/s5;->getTransactionProfiler()Lio/sentry/b1;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-interface {p1}, Lio/sentry/b1;->isRunning()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-nez v0, :cond_3

    .line 166
    .line 167
    invoke-interface {p1}, Lio/sentry/b1;->start()V

    .line 168
    .line 169
    .line 170
    invoke-interface {p1, v1}, Lio/sentry/b1;->b(Lio/sentry/a1;)V

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {p2}, Lio/sentry/a7;->j()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_4

    .line 179
    .line 180
    invoke-interface {p1, v1}, Lio/sentry/b1;->b(Lio/sentry/a1;)V

    .line 181
    .line 182
    .line 183
    :cond_4
    :goto_0
    move-object p1, v1

    .line 184
    :goto_1
    invoke-virtual {p2}, Lio/sentry/a7;->k()Z

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    if-eqz p2, :cond_5

    .line 189
    .line 190
    new-instance p2, Lio/sentry/i0;

    .line 191
    .line 192
    invoke-direct {p2, p1}, Lio/sentry/i0;-><init>(Lio/sentry/a1;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p2}, Lio/sentry/j0;->y(Lio/sentry/e3;)V

    .line 196
    .line 197
    .line 198
    :cond_5
    return-object p1
.end method

.method private static synthetic I(Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lio/sentry/u0;->clear()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic J(Lio/sentry/x0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getShutdownTimeoutMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-interface {p1, v0, v1}, Lio/sentry/x0;->a(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static synthetic K(Lio/sentry/a1;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lio/sentry/u0;->E(Lio/sentry/a1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static L(Lio/sentry/s5;)V
    .locals 1

    .line 1
    const-string v0, "SentryOptions is required."

    .line 2
    .line 3
    invoke-static {p0, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/sentry/s5;->getDsn()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lio/sentry/s5;->getDsn()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v0, "Hub requires a DSN to be instantiated. Considering using the NoOpHub if no DSN is available."

    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static synthetic g(Lio/sentry/a1;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/sentry/j0;->K(Lio/sentry/a1;Lio/sentry/u0;)V

    return-void
.end method

.method public static synthetic h(Lio/sentry/j0;Lio/sentry/x0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/j0;->J(Lio/sentry/x0;)V

    return-void
.end method

.method public static synthetic j(Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/j0;->I(Lio/sentry/u0;)V

    return-void
.end method

.method private k(Lio/sentry/z4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->isTracingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lio/sentry/t3;->O()Ljava/lang/Throwable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lio/sentry/j0;->f:Ljava/util/Map;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/sentry/t3;->O()Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lio/sentry/util/d;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lio/sentry/util/r;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lio/sentry/util/r;->a()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lio/sentry/protocol/c;->f()Lio/sentry/l6;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lio/sentry/z0;

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-interface {v1}, Lio/sentry/z0;->o()Lio/sentry/l6;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v2, v1}, Lio/sentry/protocol/c;->n(Lio/sentry/l6;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-virtual {v0}, Lio/sentry/util/r;->b()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1}, Lio/sentry/z4;->v0()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-nez v1, :cond_1

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lio/sentry/z4;->G0(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Throwable;Lio/sentry/z0;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "throwable is required"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "span is required"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const-string v0, "transactionName is required"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lio/sentry/util/d;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lio/sentry/j0;->f:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lio/sentry/j0;->f:Ljava/util/Map;

    .line 29
    .line 30
    new-instance v1, Lio/sentry/util/r;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2, p3}, Lio/sentry/util/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public B()Lio/sentry/s5;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/sentry/r6$a;->b()Lio/sentry/s5;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public C(Lio/sentry/protocol/y;Lio/sentry/v6;Lio/sentry/c0;Lio/sentry/u2;)Lio/sentry/protocol/r;
    .locals 8

    .line 1
    const-string v0, "transaction is required"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 15
    .line 16
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 21
    .line 22
    const/4 p3, 0x0

    .line 23
    new-array p3, p3, [Ljava/lang/Object;

    .line 24
    .line 25
    const-string p4, "Instance is disabled and this \'captureTransaction\' call is a no-op."

    .line 26
    .line 27
    invoke-interface {p1, p2, p4, p3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1}, Lio/sentry/protocol/y;->r0()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    iget-object p2, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 39
    .line 40
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    sget-object p3, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 45
    .line 46
    invoke-virtual {p1}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p4, "Transaction: %s is not finished and this \'captureTransaction\' call is a no-op."

    .line 55
    .line 56
    invoke-interface {p2, p3, p4, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {p1}, Lio/sentry/protocol/y;->s0()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    iget-object p2, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 78
    .line 79
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    sget-object p3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 84
    .line 85
    invoke-virtual {p1}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    filled-new-array {p4}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p4

    .line 93
    const-string v1, "Transaction %s was dropped due to sampling decision."

    .line 94
    .line 95
    invoke-interface {p2, p3, v1, p4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    iget-object p2, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 99
    .line 100
    invoke-virtual {p2}, Lio/sentry/s5;->getBackpressureMonitor()Lio/sentry/backpressure/b;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-interface {p2}, Lio/sentry/backpressure/b;->a()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-lez p2, :cond_2

    .line 109
    .line 110
    iget-object p2, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 111
    .line 112
    invoke-virtual {p2}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    sget-object p3, Lio/sentry/clientreport/f;->BACKPRESSURE:Lio/sentry/clientreport/f;

    .line 117
    .line 118
    sget-object p4, Lio/sentry/i;->Transaction:Lio/sentry/i;

    .line 119
    .line 120
    invoke-interface {p2, p3, p4}, Lio/sentry/clientreport/h;->a(Lio/sentry/clientreport/f;Lio/sentry/i;)V

    .line 121
    .line 122
    .line 123
    iget-object p2, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 124
    .line 125
    invoke-virtual {p2}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    sget-object p4, Lio/sentry/i;->Span:Lio/sentry/i;

    .line 130
    .line 131
    invoke-virtual {p1}, Lio/sentry/protocol/y;->q0()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    add-int/lit8 p1, p1, 0x1

    .line 140
    .line 141
    int-to-long v1, p1

    .line 142
    invoke-interface {p2, p3, p4, v1, v2}, Lio/sentry/clientreport/h;->c(Lio/sentry/clientreport/f;Lio/sentry/i;J)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_2
    iget-object p2, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 147
    .line 148
    invoke-virtual {p2}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    sget-object p3, Lio/sentry/clientreport/f;->SAMPLE_RATE:Lio/sentry/clientreport/f;

    .line 153
    .line 154
    sget-object p4, Lio/sentry/i;->Transaction:Lio/sentry/i;

    .line 155
    .line 156
    invoke-interface {p2, p3, p4}, Lio/sentry/clientreport/h;->a(Lio/sentry/clientreport/f;Lio/sentry/i;)V

    .line 157
    .line 158
    .line 159
    iget-object p2, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 160
    .line 161
    invoke-virtual {p2}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    sget-object p4, Lio/sentry/i;->Span:Lio/sentry/i;

    .line 166
    .line 167
    invoke-virtual {p1}, Lio/sentry/protocol/y;->q0()Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    add-int/lit8 p1, p1, 0x1

    .line 176
    .line 177
    int-to-long v1, p1

    .line 178
    invoke-interface {p2, p3, p4, v1, v2}, Lio/sentry/clientreport/h;->c(Lio/sentry/clientreport/f;Lio/sentry/i;J)V

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_3
    :try_start_0
    iget-object v1, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 183
    .line 184
    invoke-virtual {v1}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v1}, Lio/sentry/r6$a;->a()Lio/sentry/w0;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v1}, Lio/sentry/r6$a;->c()Lio/sentry/u0;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    move-object v3, p1

    .line 197
    move-object v4, p2

    .line 198
    move-object v6, p3

    .line 199
    move-object v7, p4

    .line 200
    invoke-interface/range {v2 .. v7}, Lio/sentry/w0;->d(Lio/sentry/protocol/y;Lio/sentry/v6;Lio/sentry/u0;Lio/sentry/c0;Lio/sentry/u2;)Lio/sentry/protocol/r;

    .line 201
    .line 202
    .line 203
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    goto :goto_0

    .line 205
    :catchall_0
    move-exception p2

    .line 206
    iget-object p3, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 207
    .line 208
    invoke-virtual {p3}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 209
    .line 210
    .line 211
    move-result-object p3

    .line 212
    sget-object p4, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 213
    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v2, "Error while capturing transaction with id: "

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-interface {p3, p4, p1, p2}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    .line 237
    .line 238
    :goto_0
    return-object v0
.end method

.method public D(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/protocol/r;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/j0;->F(Lio/sentry/z4;Lio/sentry/c0;Lio/sentry/e3;)Lio/sentry/protocol/r;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 15
    .line 16
    const-string v2, "Instance is disabled and this \'removeExtra\' call is a no-op."

    .line 17
    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 27
    .line 28
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object v0, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 33
    .line 34
    const-string v2, "removeExtra called with null parameter."

    .line 35
    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 43
    .line 44
    invoke-virtual {v0}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lio/sentry/r6$a;->c()Lio/sentry/u0;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0, p1}, Lio/sentry/u0;->a(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 15
    .line 16
    const-string v0, "Instance is disabled and this \'setExtra\' call is a no-op."

    .line 17
    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    if-eqz p1, :cond_2

    .line 25
    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 30
    .line 31
    invoke-virtual {v0}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lio/sentry/r6$a;->c()Lio/sentry/u0;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0, p1, p2}, Lio/sentry/u0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 44
    .line 45
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 50
    .line 51
    const-string v0, "setExtra called with null parameter."

    .line 52
    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 15
    .line 16
    const-string v2, "Instance is disabled and this \'removeTag\' call is a no-op."

    .line 17
    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 27
    .line 28
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object v0, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 33
    .line 34
    const-string v2, "removeTag called with null parameter."

    .line 35
    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 43
    .line 44
    invoke-virtual {v0}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lio/sentry/r6$a;->c()Lio/sentry/u0;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0, p1}, Lio/sentry/u0;->c(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/j0;->r()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 15
    .line 16
    const-string v0, "Instance is disabled and this \'setTag\' call is a no-op."

    .line 17
    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    if-eqz p1, :cond_2

    .line 25
    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 30
    .line 31
    invoke-virtual {v0}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lio/sentry/r6$a;->c()Lio/sentry/u0;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0, p1, p2}, Lio/sentry/u0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 44
    .line 45
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 50
    .line 51
    const-string v0, "setTag called with null parameter."

    .line 52
    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v3, "Instance is disabled and this \'endSession\' call is a no-op."

    .line 19
    .line 20
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 25
    .line 26
    invoke-virtual {v0}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lio/sentry/r6$a;->c()Lio/sentry/u0;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Lio/sentry/u0;->e()Lio/sentry/f6;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    new-instance v2, Lio/sentry/hints/m;

    .line 41
    .line 42
    invoke-direct {v2}, Lio/sentry/hints/m;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lio/sentry/util/j;->e(Ljava/lang/Object;)Lio/sentry/c0;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0}, Lio/sentry/r6$a;->a()Lio/sentry/w0;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0, v1, v2}, Lio/sentry/w0;->a(Lio/sentry/f6;Lio/sentry/c0;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 9
    .line 10
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 15
    .line 16
    const-string v3, "Instance is disabled and this \'startSession\' call is a no-op."

    .line 17
    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 25
    .line 26
    invoke-virtual {v0}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lio/sentry/r6$a;->c()Lio/sentry/u0;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2}, Lio/sentry/u0;->f()Lio/sentry/d3$d;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2}, Lio/sentry/d3$d;->b()Lio/sentry/f6;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    new-instance v1, Lio/sentry/hints/m;

    .line 47
    .line 48
    invoke-direct {v1}, Lio/sentry/hints/m;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lio/sentry/util/j;->e(Ljava/lang/Object;)Lio/sentry/c0;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0}, Lio/sentry/r6$a;->a()Lio/sentry/w0;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2}, Lio/sentry/d3$d;->b()Lio/sentry/f6;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-interface {v3, v4, v1}, Lio/sentry/w0;->a(Lio/sentry/f6;Lio/sentry/c0;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    new-instance v1, Lio/sentry/hints/o;

    .line 67
    .line 68
    invoke-direct {v1}, Lio/sentry/hints/o;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Lio/sentry/util/j;->e(Ljava/lang/Object;)Lio/sentry/c0;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0}, Lio/sentry/r6$a;->a()Lio/sentry/w0;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v2}, Lio/sentry/d3$d;->a()Lio/sentry/f6;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-interface {v0, v2, v1}, Lio/sentry/w0;->a(Lio/sentry/f6;Lio/sentry/c0;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 88
    .line 89
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    sget-object v2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 94
    .line 95
    const-string v3, "Session could not be started."

    .line 96
    .line 97
    new-array v1, v1, [Ljava/lang/Object;

    .line 98
    .line 99
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    return-void
.end method

.method public i(Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 15
    .line 16
    const-string v2, "Instance is disabled and this \'close\' call is a no-op."

    .line 17
    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 26
    .line 27
    invoke-virtual {v0}, Lio/sentry/s5;->getIntegrations()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lio/sentry/e1;

    .line 46
    .line 47
    instance-of v3, v2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    :try_start_1
    move-object v3, v2

    .line 52
    check-cast v3, Ljava/io/Closeable;

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v3

    .line 59
    :try_start_2
    iget-object v4, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 60
    .line 61
    invoke-virtual {v4}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    sget-object v5, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 66
    .line 67
    const-string v6, "Failed to close the integration {}."

    .line 68
    .line 69
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v4, v5, v6, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    new-instance v0, Lio/sentry/g0;

    .line 78
    .line 79
    invoke-direct {v0}, Lio/sentry/g0;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lio/sentry/j0;->y(Lio/sentry/e3;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 86
    .line 87
    invoke-virtual {v0}, Lio/sentry/s5;->getTransactionProfiler()Lio/sentry/b1;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Lio/sentry/b1;->close()V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 95
    .line 96
    invoke-virtual {v0}, Lio/sentry/s5;->getTransactionPerformanceCollector()Lio/sentry/b7;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0}, Lio/sentry/b7;->close()V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 104
    .line 105
    invoke-virtual {v0}, Lio/sentry/s5;->getExecutorService()Lio/sentry/x0;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    new-instance v2, Lio/sentry/h0;

    .line 112
    .line 113
    invoke-direct {v2, p0, v0}, Lio/sentry/h0;-><init>(Lio/sentry/j0;Lio/sentry/x0;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v0, v2}, Lio/sentry/x0;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    iget-object v2, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 121
    .line 122
    invoke-virtual {v2}, Lio/sentry/s5;->getShutdownTimeoutMillis()J

    .line 123
    .line 124
    .line 125
    move-result-wide v2

    .line 126
    invoke-interface {v0, v2, v3}, Lio/sentry/x0;->a(J)V

    .line 127
    .line 128
    .line 129
    :goto_1
    iget-object v0, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 130
    .line 131
    invoke-virtual {v0}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lio/sentry/r6$a;->a()Lio/sentry/w0;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-interface {v0, p1}, Lio/sentry/w0;->i(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :catchall_0
    move-exception p1

    .line 144
    iget-object v0, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 145
    .line 146
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 151
    .line 152
    const-string v3, "Error while closing the Hub."

    .line 153
    .line 154
    invoke-interface {v0, v2, v3, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    :goto_2
    iput-boolean v1, p0, Lio/sentry/j0;->c:Z

    .line 158
    .line 159
    :goto_3
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/sentry/j0;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public l()Lio/sentry/transport/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/sentry/r6$a;->a()Lio/sentry/w0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lio/sentry/w0;->l()Lio/sentry/transport/z;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/sentry/r6$a;->a()Lio/sentry/w0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lio/sentry/w0;->m()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public n(Lio/sentry/protocol/b0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 8
    .line 9
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v2, "Instance is disabled and this \'setUser\' call is a no-op."

    .line 19
    .line 20
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 25
    .line 26
    invoke-virtual {v0}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lio/sentry/r6$a;->c()Lio/sentry/u0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0, p1}, Lio/sentry/u0;->n(Lio/sentry/protocol/b0;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public o(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 8
    .line 9
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v1, "Instance is disabled and this \'flush\' call is a no-op."

    .line 19
    .line 20
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 25
    .line 26
    invoke-virtual {v0}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lio/sentry/r6$a;->a()Lio/sentry/w0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0, p1, p2}, Lio/sentry/w0;->o(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    iget-object p2, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 40
    .line 41
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 46
    .line 47
    const-string v1, "Error in the \'client.flush\'."

    .line 48
    .line 49
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public p(Lio/sentry/e;Lio/sentry/c0;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 15
    .line 16
    const-string v0, "Instance is disabled and this \'addBreadcrumb\' call is a no-op."

    .line 17
    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 27
    .line 28
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 33
    .line 34
    const-string v0, "addBreadcrumb called with null parameter."

    .line 35
    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 43
    .line 44
    invoke-virtual {v0}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lio/sentry/r6$a;->c()Lio/sentry/u0;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0, p1, p2}, Lio/sentry/u0;->p(Lio/sentry/e;Lio/sentry/c0;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public q()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v3, "Instance is disabled and this \'clearBreadcrumbs\' call is a no-op."

    .line 19
    .line 20
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 25
    .line 26
    invoke-virtual {v0}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lio/sentry/r6$a;->c()Lio/sentry/u0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Lio/sentry/u0;->q()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public r()Lio/sentry/o0;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v3, "Disabled Hub cloned."

    .line 19
    .line 20
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    new-instance v0, Lio/sentry/j0;

    .line 24
    .line 25
    iget-object v1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 26
    .line 27
    new-instance v2, Lio/sentry/r6;

    .line 28
    .line 29
    iget-object v3, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 30
    .line 31
    invoke-direct {v2, v3}, Lio/sentry/r6;-><init>(Lio/sentry/r6;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Lio/sentry/j0;-><init>(Lio/sentry/s5;Lio/sentry/r6;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public s()Lio/sentry/a1;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v3, "Instance is disabled and this \'getTransaction\' call is a no-op."

    .line 19
    .line 20
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 26
    .line 27
    invoke-virtual {v0}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lio/sentry/r6$a;->c()Lio/sentry/u0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Lio/sentry/u0;->s()Lio/sentry/a1;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    return-object v0
.end method

.method public t(Lio/sentry/e;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/c0;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/c0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lio/sentry/j0;->p(Lio/sentry/e;Lio/sentry/c0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public u(Lio/sentry/a4;Lio/sentry/c0;)Lio/sentry/protocol/r;
    .locals 3

    .line 1
    const-string v0, "SentryEnvelope is required."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 15
    .line 16
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    const-string v2, "Instance is disabled and this \'captureEnvelope\' call is a no-op."

    .line 26
    .line 27
    invoke-interface {p1, p2, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 32
    .line 33
    invoke-virtual {v1}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lio/sentry/r6$a;->a()Lio/sentry/w0;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1, p1, p2}, Lio/sentry/w0;->u(Lio/sentry/a4;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 42
    .line 43
    .line 44
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    move-object v0, p1

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    iget-object p2, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 51
    .line 52
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 57
    .line 58
    const-string v2, "Error while capturing envelope."

    .line 59
    .line 60
    invoke-interface {p2, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-object v0
.end method

.method public w(Lio/sentry/y6;Lio/sentry/a7;)Lio/sentry/a1;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/j0;->H(Lio/sentry/y6;Lio/sentry/a7;)Lio/sentry/a1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public y(Lio/sentry/e3;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 8
    .line 9
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v2, "Instance is disabled and this \'configureScope\' call is a no-op."

    .line 19
    .line 20
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 25
    .line 26
    invoke-virtual {v0}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lio/sentry/r6$a;->c()Lio/sentry/u0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v0}, Lio/sentry/e3;->a(Lio/sentry/u0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    iget-object v0, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 40
    .line 41
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 46
    .line 47
    const-string v2, "Error in the \'configureScope\' callback."

    .line 48
    .line 49
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public z(Lio/sentry/t5;Lio/sentry/c0;)Lio/sentry/protocol/r;
    .locals 3

    .line 1
    sget-object v0, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/j0;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 10
    .line 11
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v2, "Instance is disabled and this \'captureReplay\' call is a no-op."

    .line 21
    .line 22
    invoke-interface {p1, p2, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/sentry/j0;->d:Lio/sentry/r6;

    .line 27
    .line 28
    invoke-virtual {v1}, Lio/sentry/r6;->a()Lio/sentry/r6$a;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lio/sentry/r6$a;->a()Lio/sentry/w0;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1}, Lio/sentry/r6$a;->c()Lio/sentry/u0;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v2, p1, v1, p2}, Lio/sentry/w0;->b(Lio/sentry/t5;Lio/sentry/u0;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 41
    .line 42
    .line 43
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    iget-object p2, p0, Lio/sentry/j0;->b:Lio/sentry/s5;

    .line 47
    .line 48
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 53
    .line 54
    const-string v2, "Error while capturing replay"

    .line 55
    .line 56
    invoke-interface {p2, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-object v0
.end method
