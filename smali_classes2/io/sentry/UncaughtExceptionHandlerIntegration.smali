.class public final Lio/sentry/UncaughtExceptionHandlerIntegration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/e1;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/UncaughtExceptionHandlerIntegration$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Lio/sentry/o0;

.field private c:Lio/sentry/s5;

.field private d:Z

.field private final e:Lio/sentry/c7;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/c7$a;->c()Lio/sentry/c7;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/UncaughtExceptionHandlerIntegration;-><init>(Lio/sentry/c7;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/c7;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->d:Z

    const-string v0, "threadAdapter is required."

    .line 4
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/c7;

    iput-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->e:Lio/sentry/c7;

    return-void
.end method

.method static a(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/protocol/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/protocol/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/sentry/protocol/i;->i(Ljava/lang/Boolean;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "UncaughtExceptionHandler"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/sentry/protocol/i;->j(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lio/sentry/exception/a;

    .line 17
    .line 18
    invoke-direct {v1, v0, p1, p0}, Lio/sentry/exception/a;-><init>(Lio/sentry/protocol/i;Ljava/lang/Throwable;Ljava/lang/Thread;)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->e:Lio/sentry/c7;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/c7;->b()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->e:Lio/sentry/c7;

    .line 10
    .line 11
    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lio/sentry/c7;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->c:Lio/sentry/s5;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    .line 29
    const-string v3, "UncaughtExceptionHandlerIntegration removed."

    .line 30
    .line 31
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public f(Lio/sentry/o0;Lio/sentry/s5;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object p2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 11
    .line 12
    const-string v0, "Attempt to register a UncaughtExceptionHandlerIntegration twice."

    .line 13
    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->d:Z

    .line 22
    .line 23
    const-string v0, "Hub is required"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lio/sentry/o0;

    .line 30
    .line 31
    iput-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->b:Lio/sentry/o0;

    .line 32
    .line 33
    const-string p1, "SentryOptions is required"

    .line 34
    .line 35
    invoke-static {p2, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lio/sentry/s5;

    .line 40
    .line 41
    iput-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->c:Lio/sentry/s5;

    .line 42
    .line 43
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object p2, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 48
    .line 49
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->c:Lio/sentry/s5;

    .line 50
    .line 51
    invoke-virtual {v0}, Lio/sentry/s5;->isEnableUncaughtExceptionHandler()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, "UncaughtExceptionHandlerIntegration enabled: %s"

    .line 64
    .line 65
    invoke-interface {p1, p2, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->c:Lio/sentry/s5;

    .line 69
    .line 70
    invoke-virtual {p1}, Lio/sentry/s5;->isEnableUncaughtExceptionHandler()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    iget-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->e:Lio/sentry/c7;

    .line 77
    .line 78
    invoke-interface {p1}, Lio/sentry/c7;->b()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->c:Lio/sentry/s5;

    .line 85
    .line 86
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v3, "default UncaughtExceptionHandler class=\'"

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v3, "\'"

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    new-array v3, v1, [Ljava/lang/Object;

    .line 121
    .line 122
    invoke-interface {v0, p2, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    instance-of v0, p1, Lio/sentry/UncaughtExceptionHandlerIntegration;

    .line 126
    .line 127
    if-eqz v0, :cond_1

    .line 128
    .line 129
    check-cast p1, Lio/sentry/UncaughtExceptionHandlerIntegration;

    .line 130
    .line 131
    iget-object p1, p1, Lio/sentry/UncaughtExceptionHandlerIntegration;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 132
    .line 133
    iput-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_1
    iput-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 137
    .line 138
    :cond_2
    :goto_0
    iget-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->e:Lio/sentry/c7;

    .line 139
    .line 140
    invoke-interface {p1, p0}, Lio/sentry/c7;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->c:Lio/sentry/s5;

    .line 144
    .line 145
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const-string v0, "UncaughtExceptionHandlerIntegration installed."

    .line 150
    .line 151
    new-array v1, v1, [Ljava/lang/Object;

    .line 152
    .line 153
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    const-string p1, "UncaughtExceptionHandler"

    .line 157
    .line 158
    invoke-static {p1}, Lio/sentry/util/k;->a(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_3
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->c:Lio/sentry/s5;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->b:Lio/sentry/o0;

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 14
    .line 15
    const-string v2, "Uncaught exception received."

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    new-array v4, v3, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    new-instance v0, Lio/sentry/UncaughtExceptionHandlerIntegration$a;

    .line 24
    .line 25
    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->c:Lio/sentry/s5;

    .line 26
    .line 27
    invoke-virtual {v1}, Lio/sentry/s5;->getFlushTimeoutMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    iget-object v4, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->c:Lio/sentry/s5;

    .line 32
    .line 33
    invoke-virtual {v4}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-direct {v0, v1, v2, v4}, Lio/sentry/UncaughtExceptionHandlerIntegration$a;-><init>(JLio/sentry/ILogger;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p2}, Lio/sentry/UncaughtExceptionHandlerIntegration;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Lio/sentry/z4;

    .line 45
    .line 46
    invoke-direct {v2, v1}, Lio/sentry/z4;-><init>(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    sget-object v1, Lio/sentry/j5;->FATAL:Lio/sentry/j5;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Lio/sentry/z4;->B0(Lio/sentry/j5;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->b:Lio/sentry/o0;

    .line 55
    .line 56
    invoke-interface {v1}, Lio/sentry/o0;->s()Lio/sentry/a1;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    invoke-virtual {v2}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    invoke-virtual {v2}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lio/sentry/UncaughtExceptionHandlerIntegration$a;->h(Lio/sentry/protocol/r;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-static {v0}, Lio/sentry/util/j;->e(Ljava/lang/Object;)Lio/sentry/c0;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v4, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->b:Lio/sentry/o0;

    .line 80
    .line 81
    invoke-interface {v4, v2, v1}, Lio/sentry/o0;->D(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    sget-object v5, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 86
    .line 87
    invoke-virtual {v4, v5}, Lio/sentry/protocol/r;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-static {v1}, Lio/sentry/util/j;->f(Lio/sentry/c0;)Lio/sentry/hints/h;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eqz v4, :cond_1

    .line 96
    .line 97
    sget-object v4, Lio/sentry/hints/h;->MULTITHREADED_DEDUPLICATION:Lio/sentry/hints/h;

    .line 98
    .line 99
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    :cond_1
    invoke-virtual {v0}, Lio/sentry/hints/d;->e()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_2

    .line 110
    .line 111
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->c:Lio/sentry/s5;

    .line 112
    .line 113
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sget-object v1, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 118
    .line 119
    const-string v4, "Timed out waiting to flush event to disk before crashing. Event: %s"

    .line 120
    .line 121
    const/4 v5, 0x1

    .line 122
    new-array v5, v5, [Ljava/lang/Object;

    .line 123
    .line 124
    invoke-virtual {v2}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    aput-object v2, v5, v3

    .line 129
    .line 130
    invoke-interface {v0, v1, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->c:Lio/sentry/s5;

    .line 136
    .line 137
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 142
    .line 143
    const-string v4, "Error sending uncaught exception to Sentry."

    .line 144
    .line 145
    invoke-interface {v1, v2, v4, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 149
    .line 150
    if-eqz v0, :cond_3

    .line 151
    .line 152
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->c:Lio/sentry/s5;

    .line 153
    .line 154
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    sget-object v1, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 159
    .line 160
    const-string v2, "Invoking inner uncaught exception handler."

    .line 161
    .line 162
    new-array v3, v3, [Ljava/lang/Object;

    .line 163
    .line 164
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 168
    .line 169
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_3
    iget-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->c:Lio/sentry/s5;

    .line 174
    .line 175
    invoke-virtual {p1}, Lio/sentry/s5;->isPrintUncaughtStackTrace()Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_4

    .line 180
    .line 181
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    .line 183
    .line 184
    :cond_4
    :goto_1
    return-void
.end method
