.class public final Lio/sentry/w3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/w0;
.implements Lio/sentry/metrics/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/w3$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Lio/sentry/s5;

.field private final c:Lio/sentry/transport/q;

.field private final d:Lio/sentry/w3$b;

.field private final e:Lio/sentry/p0;


# direct methods
.method constructor <init>(Lio/sentry/s5;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/w3$b;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lio/sentry/w3$b;-><init>(Lio/sentry/w3$a;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/sentry/w3;->d:Lio/sentry/w3$b;

    .line 11
    .line 12
    const-string v0, "SentryOptions is required."

    .line 13
    .line 14
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lio/sentry/s5;

    .line 19
    .line 20
    iput-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lio/sentry/w3;->a:Z

    .line 24
    .line 25
    invoke-virtual {p1}, Lio/sentry/s5;->getTransportFactory()Lio/sentry/c1;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    instance-of v1, v0, Lio/sentry/k2;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    new-instance v0, Lio/sentry/a;

    .line 34
    .line 35
    invoke-direct {v0}, Lio/sentry/a;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lio/sentry/s5;->setTransportFactory(Lio/sentry/c1;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    new-instance v1, Lio/sentry/b3;

    .line 42
    .line 43
    invoke-direct {v1, p1}, Lio/sentry/b3;-><init>(Lio/sentry/s5;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lio/sentry/b3;->a()Lio/sentry/a3;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v0, p1, v1}, Lio/sentry/c1;->a(Lio/sentry/s5;Lio/sentry/a3;)Lio/sentry/transport/q;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lio/sentry/w3;->c:Lio/sentry/transport/q;

    .line 55
    .line 56
    invoke-virtual {p1}, Lio/sentry/s5;->isEnableMetrics()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    new-instance v0, Lio/sentry/v1;

    .line 63
    .line 64
    invoke-direct {v0, p1, p0}, Lio/sentry/v1;-><init>(Lio/sentry/s5;Lio/sentry/metrics/b;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-static {}, Lio/sentry/metrics/f;->a()Lio/sentry/metrics/f;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :goto_0
    iput-object v0, p0, Lio/sentry/w3;->e:Lio/sentry/p0;

    .line 73
    .line 74
    return-void
.end method

.method private synthetic A(Lio/sentry/z4;Lio/sentry/c0;Lio/sentry/f6;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_5

    .line 3
    .line 4
    invoke-virtual {p1}, Lio/sentry/z4;->x0()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Lio/sentry/f6$b;->Crashed:Lio/sentry/f6$b;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, v2

    .line 15
    :goto_0
    sget-object v3, Lio/sentry/f6$b;->Crashed:Lio/sentry/f6$b;

    .line 16
    .line 17
    if-eq v3, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lio/sentry/z4;->y0()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    :cond_1
    const/4 v0, 0x1

    .line 26
    :cond_2
    invoke-virtual {p1}, Lio/sentry/t3;->K()Lio/sentry/protocol/m;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1}, Lio/sentry/t3;->K()Lio/sentry/protocol/m;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Lio/sentry/protocol/m;->l()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1}, Lio/sentry/t3;->K()Lio/sentry/protocol/m;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lio/sentry/protocol/m;->l()Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "user-agent"

    .line 51
    .line 52
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Lio/sentry/t3;->K()Lio/sentry/protocol/m;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lio/sentry/protocol/m;->l()Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Ljava/lang/String;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move-object p1, v2

    .line 74
    :goto_1
    invoke-static {p2}, Lio/sentry/util/j;->g(Lio/sentry/c0;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    instance-of v3, p2, Lio/sentry/hints/a;

    .line 79
    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    check-cast p2, Lio/sentry/hints/a;

    .line 83
    .line 84
    invoke-interface {p2}, Lio/sentry/hints/a;->g()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    sget-object v1, Lio/sentry/f6$b;->Abnormal:Lio/sentry/f6$b;

    .line 89
    .line 90
    :cond_4
    invoke-virtual {p3, v1, p1, v0, v2}, Lio/sentry/f6;->q(Lio/sentry/f6$b;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    invoke-virtual {p3}, Lio/sentry/f6;->m()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    invoke-virtual {p3}, Lio/sentry/f6;->c()V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    iget-object p1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 107
    .line 108
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    sget-object p2, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 113
    .line 114
    const-string p3, "Session is null on scope.withSession"

    .line 115
    .line 116
    new-array v0, v0, [Ljava/lang/Object;

    .line 117
    .line 118
    invoke-interface {p1, p2, p3, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_6
    :goto_2
    return-void
.end method

.method private B(Lio/sentry/z4;Lio/sentry/c0;Ljava/util/List;)Lio/sentry/z4;
    .locals 6

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lio/sentry/y;

    .line 16
    .line 17
    :try_start_0
    instance-of v1, v0, Lio/sentry/c;

    .line 18
    .line 19
    const-class v2, Lio/sentry/hints/c;

    .line 20
    .line 21
    invoke-static {p2, v2}, Lio/sentry/util/j;->h(Lio/sentry/c0;Ljava/lang/Class;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v0, p1, p2}, Lio/sentry/y;->b(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/z4;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-nez v2, :cond_2

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    invoke-interface {v0, p1, p2}, Lio/sentry/y;->b(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/z4;

    .line 39
    .line 40
    .line 41
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    iget-object v2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 45
    .line 46
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    sget-object v3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v5, "An exception occurred while processing event by processor: %s"

    .line 65
    .line 66
    invoke-interface {v2, v3, v1, v5, v4}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_0
    if-nez p1, :cond_0

    .line 70
    .line 71
    iget-object p2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 72
    .line 73
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    sget-object p3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v1, "Event was dropped by a processor: %s"

    .line 92
    .line 93
    invoke-interface {p2, p3, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget-object p2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 97
    .line 98
    invoke-virtual {p2}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    sget-object p3, Lio/sentry/clientreport/f;->EVENT_PROCESSOR:Lio/sentry/clientreport/f;

    .line 103
    .line 104
    sget-object v0, Lio/sentry/i;->Error:Lio/sentry/i;

    .line 105
    .line 106
    invoke-interface {p2, p3, v0}, Lio/sentry/clientreport/h;->a(Lio/sentry/clientreport/f;Lio/sentry/i;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    return-object p1
.end method

.method private C(Lio/sentry/t5;Lio/sentry/c0;Ljava/util/List;)Lio/sentry/t5;
    .locals 6

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lio/sentry/y;

    .line 16
    .line 17
    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/sentry/y;->a(Lio/sentry/t5;Lio/sentry/c0;)Lio/sentry/t5;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    iget-object v2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 24
    .line 25
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget-object v3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v5, "An exception occurred while processing replay event by processor: %s"

    .line 44
    .line 45
    invoke-interface {v2, v3, v1, v5, v4}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    if-nez p1, :cond_0

    .line 49
    .line 50
    iget-object p2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 51
    .line 52
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    sget-object p3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "Replay event was dropped by a processor: %s"

    .line 71
    .line 72
    invoke-interface {p2, p3, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 76
    .line 77
    invoke-virtual {p2}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    sget-object p3, Lio/sentry/clientreport/f;->EVENT_PROCESSOR:Lio/sentry/clientreport/f;

    .line 82
    .line 83
    sget-object v0, Lio/sentry/i;->Replay:Lio/sentry/i;

    .line 84
    .line 85
    invoke-interface {p2, p3, v0}, Lio/sentry/clientreport/h;->a(Lio/sentry/clientreport/f;Lio/sentry/i;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-object p1
.end method

.method private D(Lio/sentry/protocol/y;Lio/sentry/c0;Ljava/util/List;)Lio/sentry/protocol/y;
    .locals 7

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lio/sentry/y;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/sentry/protocol/y;->q0()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/sentry/y;->c(Lio/sentry/protocol/y;Lio/sentry/c0;)Lio/sentry/protocol/y;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception v2

    .line 31
    iget-object v3, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 32
    .line 33
    invoke-virtual {v3}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    sget-object v4, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const-string v6, "An exception occurred while processing transaction by processor: %s"

    .line 52
    .line 53
    invoke-interface {v3, v4, v2, v6, v5}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    if-nez p1, :cond_1

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    invoke-virtual {p1}, Lio/sentry/protocol/y;->q0()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    :goto_2
    if-nez p1, :cond_2

    .line 69
    .line 70
    iget-object p2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 71
    .line 72
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    sget-object p3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v2, "Transaction was dropped by a processor: %s"

    .line 91
    .line 92
    invoke-interface {p2, p3, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object p2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 96
    .line 97
    invoke-virtual {p2}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    sget-object p3, Lio/sentry/clientreport/f;->EVENT_PROCESSOR:Lio/sentry/clientreport/f;

    .line 102
    .line 103
    sget-object v0, Lio/sentry/i;->Transaction:Lio/sentry/i;

    .line 104
    .line 105
    invoke-interface {p2, p3, v0}, Lio/sentry/clientreport/h;->a(Lio/sentry/clientreport/f;Lio/sentry/i;)V

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 109
    .line 110
    invoke-virtual {p2}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    sget-object v0, Lio/sentry/i;->Span:Lio/sentry/i;

    .line 115
    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 117
    .line 118
    int-to-long v1, v1

    .line 119
    invoke-interface {p2, p3, v0, v1, v2}, Lio/sentry/clientreport/h;->c(Lio/sentry/clientreport/f;Lio/sentry/i;J)V

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_2
    if-ge v2, v1, :cond_0

    .line 124
    .line 125
    sub-int/2addr v1, v2

    .line 126
    iget-object v2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 127
    .line 128
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    sget-object v3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 133
    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    filled-new-array {v4, v0}, [Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const-string v4, "%d spans were dropped by a processor: %s"

    .line 151
    .line 152
    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 156
    .line 157
    invoke-virtual {v0}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    sget-object v2, Lio/sentry/clientreport/f;->EVENT_PROCESSOR:Lio/sentry/clientreport/f;

    .line 162
    .line 163
    sget-object v3, Lio/sentry/i;->Span:Lio/sentry/i;

    .line 164
    .line 165
    int-to-long v4, v1

    .line 166
    invoke-interface {v0, v2, v3, v4, v5}, Lio/sentry/clientreport/h;->c(Lio/sentry/clientreport/f;Lio/sentry/i;J)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_3
    :goto_3
    return-object p1
.end method

.method private E()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getSampleRate()Ljava/lang/Double;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lio/sentry/util/v;->a()Lio/sentry/util/t;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    iget-object v1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 16
    .line 17
    invoke-virtual {v1}, Lio/sentry/s5;->getSampleRate()Ljava/lang/Double;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 27
    .line 28
    invoke-virtual {v1}, Lio/sentry/s5;->getSampleRate()Ljava/lang/Double;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-virtual {v0}, Lio/sentry/util/t;->c()D

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    cmpg-double v0, v3, v0

    .line 41
    .line 42
    if-ltz v0, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v2, 0x0

    .line 46
    :cond_2
    :goto_1
    return v2
.end method

.method private F(Lio/sentry/a4;Lio/sentry/c0;)Lio/sentry/protocol/r;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getBeforeEnvelopeCallback()Lio/sentry/s5$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/sentry/s5$c;->a(Lio/sentry/a4;Lio/sentry/c0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 15
    .line 16
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 21
    .line 22
    const-string v3, "The BeforeEnvelope callback threw an exception."

    .line 23
    .line 24
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 28
    .line 29
    iget-object p2, p0, Lio/sentry/w3;->c:Lio/sentry/transport/q;

    .line 30
    .line 31
    invoke-interface {p2, p1}, Lio/sentry/transport/q;->y0(Lio/sentry/a4;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v0, p0, Lio/sentry/w3;->c:Lio/sentry/transport/q;

    .line 36
    .line 37
    invoke-interface {v0, p1, p2}, Lio/sentry/transport/q;->V(Lio/sentry/a4;Lio/sentry/c0;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-virtual {p1}, Lio/sentry/a4;->b()Lio/sentry/b4;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lio/sentry/b4;->a()Lio/sentry/protocol/r;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    sget-object p1, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 52
    .line 53
    :goto_2
    return-object p1
.end method

.method private G(Lio/sentry/t3;Lio/sentry/c0;)Z
    .locals 2

    .line 1
    invoke-static {p2}, Lio/sentry/util/j;->u(Lio/sentry/c0;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object p2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 10
    .line 11
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "Event was cached so not applying scope: %s"

    .line 26
    .line 27
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method private H(Lio/sentry/f6;Lio/sentry/f6;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p2}, Lio/sentry/f6;->l()Lio/sentry/f6$b;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-object v3, Lio/sentry/f6$b;->Crashed:Lio/sentry/f6$b;

    .line 14
    .line 15
    if-ne v2, v3, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/sentry/f6;->l()Lio/sentry/f6$b;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eq v2, v3, :cond_2

    .line 22
    .line 23
    move v2, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    move v2, v0

    .line 26
    :goto_0
    if-eqz v2, :cond_3

    .line 27
    .line 28
    return v1

    .line 29
    :cond_3
    invoke-virtual {p2}, Lio/sentry/f6;->e()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-lez p2, :cond_4

    .line 34
    .line 35
    invoke-virtual {p1}, Lio/sentry/f6;->e()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-gtz p1, :cond_4

    .line 40
    .line 41
    move p1, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_4
    move p1, v0

    .line 44
    :goto_1
    if-eqz p1, :cond_5

    .line 45
    .line 46
    return v1

    .line 47
    :cond_5
    return v0
.end method

.method private I(Lio/sentry/t3;Ljava/util/Collection;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/sentry/t3;->B()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lio/sentry/w3;->d:Lio/sentry/w3$b;

    .line 17
    .line 18
    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static synthetic f(Lio/sentry/f6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/w3;->z(Lio/sentry/f6;)V

    return-void
.end method

.method public static synthetic g(Lio/sentry/w3;Lio/sentry/z4;Lio/sentry/c0;Lio/sentry/f6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/w3;->A(Lio/sentry/z4;Lio/sentry/c0;Lio/sentry/f6;)V

    return-void
.end method

.method private h(Lio/sentry/u0;Lio/sentry/c0;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lio/sentry/u0;->x()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Lio/sentry/c0;->a(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private j(Lio/sentry/t3;Lio/sentry/u0;)Lio/sentry/t3;
    .locals 4

    .line 1
    if-eqz p2, :cond_a

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/sentry/t3;->K()Lio/sentry/protocol/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p2}, Lio/sentry/u0;->H()Lio/sentry/protocol/m;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lio/sentry/t3;->a0(Lio/sentry/protocol/m;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Lio/sentry/t3;->Q()Lio/sentry/protocol/b0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p2}, Lio/sentry/u0;->G()Lio/sentry/protocol/b0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lio/sentry/t3;->f0(Lio/sentry/protocol/b0;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1}, Lio/sentry/t3;->N()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    new-instance v0, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-interface {p2}, Lio/sentry/u0;->w()Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lio/sentry/t3;->e0(Ljava/util/Map;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-interface {p2}, Lio/sentry/u0;->w()Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/util/Map$Entry;

    .line 71
    .line 72
    invoke-virtual {p1}, Lio/sentry/t3;->N()Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_3

    .line 85
    .line 86
    invoke-virtual {p1}, Lio/sentry/t3;->N()Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Ljava/lang/String;

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Ljava/lang/String;

    .line 101
    .line 102
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lio/sentry/t3;->B()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-nez v0, :cond_5

    .line 111
    .line 112
    new-instance v0, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-interface {p2}, Lio/sentry/u0;->l()Ljava/util/Queue;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Lio/sentry/t3;->R(Ljava/util/List;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    invoke-interface {p2}, Lio/sentry/u0;->l()Ljava/util/Queue;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-direct {p0, p1, v0}, Lio/sentry/w3;->I(Lio/sentry/t3;Ljava/util/Collection;)V

    .line 130
    .line 131
    .line 132
    :goto_2
    invoke-virtual {p1}, Lio/sentry/t3;->H()Ljava/util/Map;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-nez v0, :cond_6

    .line 137
    .line 138
    new-instance v0, Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-interface {p2}, Lio/sentry/u0;->getExtras()Ljava/util/Map;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v0}, Lio/sentry/t3;->X(Ljava/util/Map;)V

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_6
    invoke-interface {p2}, Lio/sentry/u0;->getExtras()Ljava/util/Map;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_8

    .line 168
    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    check-cast v1, Ljava/util/Map$Entry;

    .line 174
    .line 175
    invoke-virtual {p1}, Lio/sentry/t3;->H()Ljava/util/Map;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-nez v2, :cond_7

    .line 188
    .line 189
    invoke-virtual {p1}, Lio/sentry/t3;->H()Ljava/util/Map;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    check-cast v3, Ljava/lang/String;

    .line 198
    .line 199
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_8
    :goto_4
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    new-instance v1, Lio/sentry/protocol/c;

    .line 212
    .line 213
    invoke-interface {p2}, Lio/sentry/u0;->y()Lio/sentry/protocol/c;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    invoke-direct {v1, p2}, Lio/sentry/protocol/c;-><init>(Lio/sentry/protocol/c;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    :cond_9
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_a

    .line 233
    .line 234
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    check-cast v1, Ljava/util/Map$Entry;

    .line 239
    .line 240
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v0, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-nez v2, :cond_9

    .line 249
    .line 250
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Ljava/lang/String;

    .line 255
    .line 256
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_a
    return-object p1
.end method

.method private k(Lio/sentry/z4;Lio/sentry/u0;Lio/sentry/c0;)Lio/sentry/z4;
    .locals 2

    .line 1
    if-eqz p2, :cond_5

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lio/sentry/w3;->j(Lio/sentry/t3;Lio/sentry/u0;)Lio/sentry/t3;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/sentry/z4;->v0()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p2}, Lio/sentry/u0;->J()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Lio/sentry/z4;->G0(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Lio/sentry/z4;->q0()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p2}, Lio/sentry/u0;->F()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lio/sentry/z4;->A0(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-interface {p2}, Lio/sentry/u0;->m()Lio/sentry/j5;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-interface {p2}, Lio/sentry/u0;->m()Lio/sentry/j5;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Lio/sentry/z4;->B0(Lio/sentry/j5;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-interface {p2}, Lio/sentry/u0;->i()Lio/sentry/z0;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lio/sentry/protocol/c;->f()Lio/sentry/l6;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-nez v1, :cond_4

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {p2}, Lio/sentry/u0;->t()Lio/sentry/w2;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Lio/sentry/y6;->q(Lio/sentry/w2;)Lio/sentry/y6;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lio/sentry/protocol/c;->n(Lio/sentry/l6;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v0}, Lio/sentry/z0;->o()Lio/sentry/l6;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v1, v0}, Lio/sentry/protocol/c;->n(Lio/sentry/l6;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    :goto_0
    invoke-interface {p2}, Lio/sentry/u0;->I()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-direct {p0, p1, p3, p2}, Lio/sentry/w3;->B(Lio/sentry/z4;Lio/sentry/c0;Ljava/util/List;)Lio/sentry/z4;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    :cond_5
    return-object p1
.end method

.method private n(Lio/sentry/t5;Lio/sentry/u0;)Lio/sentry/t5;
    .locals 4

    .line 1
    if-eqz p2, :cond_8

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/sentry/t3;->K()Lio/sentry/protocol/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p2}, Lio/sentry/u0;->H()Lio/sentry/protocol/m;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lio/sentry/t3;->a0(Lio/sentry/protocol/m;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Lio/sentry/t3;->Q()Lio/sentry/protocol/b0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p2}, Lio/sentry/u0;->G()Lio/sentry/protocol/b0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lio/sentry/t3;->f0(Lio/sentry/protocol/b0;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1}, Lio/sentry/t3;->N()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    new-instance v0, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-interface {p2}, Lio/sentry/u0;->w()Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lio/sentry/t3;->e0(Ljava/util/Map;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-interface {p2}, Lio/sentry/u0;->w()Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/util/Map$Entry;

    .line 71
    .line 72
    invoke-virtual {p1}, Lio/sentry/t3;->N()Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_3

    .line 85
    .line 86
    invoke-virtual {p1}, Lio/sentry/t3;->N()Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Ljava/lang/String;

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Ljava/lang/String;

    .line 101
    .line 102
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Lio/sentry/protocol/c;

    .line 111
    .line 112
    invoke-interface {p2}, Lio/sentry/u0;->y()Lio/sentry/protocol/c;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-direct {v1, v2}, Lio/sentry/protocol/c;-><init>(Lio/sentry/protocol/c;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_6

    .line 132
    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Ljava/util/Map$Entry;

    .line 138
    .line 139
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v0, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_5

    .line 148
    .line 149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Ljava/lang/String;

    .line 154
    .line 155
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v0, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_6
    invoke-interface {p2}, Lio/sentry/u0;->i()Lio/sentry/z0;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lio/sentry/protocol/c;->f()Lio/sentry/l6;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    if-nez v1, :cond_8

    .line 176
    .line 177
    if-nez v0, :cond_7

    .line 178
    .line 179
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-interface {p2}, Lio/sentry/u0;->t()Lio/sentry/w2;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-static {p2}, Lio/sentry/y6;->q(Lio/sentry/w2;)Lio/sentry/y6;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {v0, p2}, Lio/sentry/protocol/c;->n(Lio/sentry/l6;)V

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_7
    invoke-virtual {p1}, Lio/sentry/t3;->C()Lio/sentry/protocol/c;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-interface {v0}, Lio/sentry/z0;->o()Lio/sentry/l6;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {p2, v0}, Lio/sentry/protocol/c;->n(Lio/sentry/l6;)V

    .line 204
    .line 205
    .line 206
    :cond_8
    :goto_3
    return-object p1
.end method

.method private p(Lio/sentry/t3;Ljava/util/List;Lio/sentry/f6;Lio/sentry/v6;Lio/sentry/u2;)Lio/sentry/a4;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 10
    .line 11
    invoke-virtual {v2}, Lio/sentry/s5;->getSerializer()Lio/sentry/y0;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2, p1}, Lio/sentry/x4;->y(Lio/sentry/y0;Lio/sentry/t3;)Lio/sentry/x4;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p1, v1

    .line 28
    :goto_0
    if-eqz p3, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 31
    .line 32
    invoke-virtual {v2}, Lio/sentry/s5;->getSerializer()Lio/sentry/y0;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2, p3}, Lio/sentry/x4;->C(Lio/sentry/y0;Lio/sentry/f6;)Lio/sentry/x4;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    if-eqz p5, :cond_2

    .line 44
    .line 45
    iget-object p3, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 46
    .line 47
    invoke-virtual {p3}, Lio/sentry/s5;->getMaxTraceFileSize()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    iget-object p3, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 52
    .line 53
    invoke-virtual {p3}, Lio/sentry/s5;->getSerializer()Lio/sentry/y0;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-static {p5, v2, v3, p3}, Lio/sentry/x4;->A(Lio/sentry/u2;JLio/sentry/y0;)Lio/sentry/x4;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    new-instance p1, Lio/sentry/protocol/r;

    .line 67
    .line 68
    invoke-virtual {p5}, Lio/sentry/u2;->B()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-direct {p1, p3}, Lio/sentry/protocol/r;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    if-eqz p2, :cond_3

    .line 76
    .line 77
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    if-eqz p3, :cond_3

    .line 86
    .line 87
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    check-cast p3, Lio/sentry/b;

    .line 92
    .line 93
    iget-object p5, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 94
    .line 95
    invoke-virtual {p5}, Lio/sentry/s5;->getSerializer()Lio/sentry/y0;

    .line 96
    .line 97
    .line 98
    move-result-object p5

    .line 99
    iget-object v2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 100
    .line 101
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iget-object v3, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 106
    .line 107
    invoke-virtual {v3}, Lio/sentry/s5;->getMaxAttachmentSize()J

    .line 108
    .line 109
    .line 110
    move-result-wide v3

    .line 111
    invoke-static {p5, v2, p3, v3, v4}, Lio/sentry/x4;->w(Lio/sentry/y0;Lio/sentry/ILogger;Lio/sentry/b;J)Lio/sentry/x4;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-nez p2, :cond_4

    .line 124
    .line 125
    new-instance p2, Lio/sentry/b4;

    .line 126
    .line 127
    iget-object p3, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 128
    .line 129
    invoke-virtual {p3}, Lio/sentry/s5;->getSdkVersion()Lio/sentry/protocol/p;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    invoke-direct {p2, p1, p3, p4}, Lio/sentry/b4;-><init>(Lio/sentry/protocol/r;Lio/sentry/protocol/p;Lio/sentry/v6;)V

    .line 134
    .line 135
    .line 136
    new-instance p1, Lio/sentry/a4;

    .line 137
    .line 138
    invoke-direct {p1, p2, v0}, Lio/sentry/a4;-><init>(Lio/sentry/b4;Ljava/lang/Iterable;)V

    .line 139
    .line 140
    .line 141
    return-object p1

    .line 142
    :cond_4
    return-object v1
.end method

.method private q(Lio/sentry/t5;Lio/sentry/z2;Lio/sentry/v6;Z)Lio/sentry/a4;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 7
    .line 8
    invoke-virtual {v1}, Lio/sentry/s5;->getSerializer()Lio/sentry/y0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 13
    .line 14
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v1, v2, p1, p2, p4}, Lio/sentry/x4;->B(Lio/sentry/y0;Lio/sentry/ILogger;Lio/sentry/t5;Lio/sentry/z2;Z)Lio/sentry/x4;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance p2, Lio/sentry/b4;

    .line 30
    .line 31
    iget-object p4, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 32
    .line 33
    invoke-virtual {p4}, Lio/sentry/s5;->getSessionReplay()Lio/sentry/u5;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    invoke-virtual {p4}, Lio/sentry/u5;->i()Lio/sentry/protocol/p;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    invoke-direct {p2, p1, p4, p3}, Lio/sentry/b4;-><init>(Lio/sentry/protocol/r;Lio/sentry/protocol/p;Lio/sentry/v6;)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Lio/sentry/a4;

    .line 45
    .line 46
    invoke-direct {p1, p2, v0}, Lio/sentry/a4;-><init>(Lio/sentry/b4;Ljava/lang/Iterable;)V

    .line 47
    .line 48
    .line 49
    return-object p1
.end method

.method private r(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/z4;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getBeforeSend()Lio/sentry/s5$d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/sentry/s5$d;->execute(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/z4;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    iget-object p2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 16
    .line 17
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 22
    .line 23
    const-string v1, "The BeforeSend callback threw an exception. It will be added as breadcrumb and continue."

    .line 24
    .line 25
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    :cond_0
    :goto_0
    return-object p1
.end method

.method private s(Lio/sentry/t5;Lio/sentry/c0;)Lio/sentry/t5;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getBeforeSendReplay()Lio/sentry/s5$e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/sentry/s5$e;->a(Lio/sentry/t5;Lio/sentry/c0;)Lio/sentry/t5;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    iget-object p2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 16
    .line 17
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 22
    .line 23
    const-string v1, "The BeforeSendReplay callback threw an exception. It will be added as breadcrumb and continue."

    .line 24
    .line 25
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    :cond_0
    :goto_0
    return-object p1
.end method

.method private t(Lio/sentry/protocol/y;Lio/sentry/c0;)Lio/sentry/protocol/y;
    .locals 0

    .line 1
    iget-object p2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {p2}, Lio/sentry/s5;->getBeforeSendTransaction()Lio/sentry/s5$f;

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method private w(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lio/sentry/b;

    .line 25
    .line 26
    invoke-virtual {v1}, Lio/sentry/b;->j()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return-object v0
.end method

.method private x(Lio/sentry/u0;Lio/sentry/c0;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/sentry/u0;->s()Lio/sentry/a1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const-class v0, Lio/sentry/hints/q;

    .line 8
    .line 9
    invoke-static {p2, v0}, Lio/sentry/util/j;->h(Lio/sentry/c0;Ljava/lang/Class;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {p2}, Lio/sentry/util/j;->g(Lio/sentry/c0;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v1, v0, Lio/sentry/hints/f;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    check-cast v0, Lio/sentry/hints/f;

    .line 25
    .line 26
    invoke-interface {p1}, Lio/sentry/a1;->m()Lio/sentry/protocol/r;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Lio/sentry/hints/f;->h(Lio/sentry/protocol/r;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lio/sentry/p6;->ABORTED:Lio/sentry/p6;

    .line 34
    .line 35
    invoke-interface {p1, v0, v2, p2}, Lio/sentry/a1;->e(Lio/sentry/p6;ZLio/sentry/c0;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object p2, Lio/sentry/p6;->ABORTED:Lio/sentry/p6;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-interface {p1, p2, v2, v0}, Lio/sentry/a1;->e(Lio/sentry/p6;ZLio/sentry/c0;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method private y(Lio/sentry/c0;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/sentry/c0;->e()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lio/sentry/c0;->g()Lio/sentry/b;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lio/sentry/c0;->i()Lio/sentry/b;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p1}, Lio/sentry/c0;->h()Lio/sentry/b;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_2
    return-object v0
.end method

.method private static synthetic z(Lio/sentry/f6;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method J(Lio/sentry/z4;Lio/sentry/c0;Lio/sentry/u0;)Lio/sentry/f6;
    .locals 1

    .line 1
    invoke-static {p2}, Lio/sentry/util/j;->u(Lio/sentry/c0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    new-instance v0, Lio/sentry/v3;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, p2}, Lio/sentry/v3;-><init>(Lio/sentry/w3;Lio/sentry/z4;Lio/sentry/c0;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p3, v0}, Lio/sentry/u0;->u(Lio/sentry/d3$b;)Lio/sentry/f6;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 20
    .line 21
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object p2, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 26
    .line 27
    const/4 p3, 0x0

    .line 28
    new-array p3, p3, [Ljava/lang/Object;

    .line 29
    .line 30
    const-string v0, "Scope is null on client.captureEvent"

    .line 31
    .line 32
    invoke-interface {p1, p2, v0, p3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    :goto_0
    return-object p1
.end method

.method public a(Lio/sentry/f6;Lio/sentry/c0;)V
    .locals 2

    .line 1
    const-string v0, "Session is required."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/sentry/f6;->h()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lio/sentry/f6;->h()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 24
    .line 25
    invoke-virtual {v0}, Lio/sentry/s5;->getSerializer()Lio/sentry/y0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 30
    .line 31
    invoke-virtual {v1}, Lio/sentry/s5;->getSdkVersion()Lio/sentry/protocol/p;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, p1, v1}, Lio/sentry/a4;->a(Lio/sentry/y0;Lio/sentry/f6;Lio/sentry/protocol/p;)Lio/sentry/a4;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    invoke-virtual {p0, p1, p2}, Lio/sentry/w3;->u(Lio/sentry/a4;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    move-exception p1

    .line 44
    iget-object p2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 45
    .line 46
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 51
    .line 52
    const-string v1, "Failed to capture session."

    .line 53
    .line 54
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 59
    .line 60
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    .line 69
    const-string v1, "Sessions can\'t be captured without setting a release."

    .line 70
    .line 71
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public b(Lio/sentry/t5;Lio/sentry/u0;Lio/sentry/c0;)Lio/sentry/protocol/r;
    .locals 6

    .line 1
    const-string v0, "SessionReplay is required."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    new-instance p3, Lio/sentry/c0;

    .line 9
    .line 10
    invoke-direct {p3}, Lio/sentry/c0;-><init>()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1, p3}, Lio/sentry/w3;->G(Lio/sentry/t3;Lio/sentry/c0;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, p1, p2}, Lio/sentry/w3;->n(Lio/sentry/t5;Lio/sentry/u0;)Lio/sentry/t5;

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 23
    .line 24
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 29
    .line 30
    invoke-virtual {p1}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "Capturing session replay: %s"

    .line 39
    .line 40
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 44
    .line 45
    invoke-virtual {p1}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move-object v2, v0

    .line 57
    :goto_0
    iget-object v3, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 58
    .line 59
    invoke-virtual {v3}, Lio/sentry/s5;->getEventProcessors()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-direct {p0, p1, p3, v3}, Lio/sentry/w3;->C(Lio/sentry/t5;Lio/sentry/c0;Ljava/util/List;)Lio/sentry/t5;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    invoke-direct {p0, p1, p3}, Lio/sentry/w3;->s(Lio/sentry/t5;Lio/sentry/c0;)Lio/sentry/t5;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    iget-object v3, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 76
    .line 77
    invoke-virtual {v3}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const/4 v4, 0x0

    .line 82
    new-array v4, v4, [Ljava/lang/Object;

    .line 83
    .line 84
    const-string v5, "Event was dropped by beforeSendReplay"

    .line 85
    .line 86
    invoke-interface {v3, v1, v5, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 90
    .line 91
    invoke-virtual {v1}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    sget-object v3, Lio/sentry/clientreport/f;->BEFORE_SEND:Lio/sentry/clientreport/f;

    .line 96
    .line 97
    sget-object v4, Lio/sentry/i;->Replay:Lio/sentry/i;

    .line 98
    .line 99
    invoke-interface {v1, v3, v4}, Lio/sentry/clientreport/h;->a(Lio/sentry/clientreport/f;Lio/sentry/i;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    if-nez p1, :cond_4

    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_4
    if-eqz p2, :cond_6

    .line 106
    .line 107
    :try_start_0
    invoke-interface {p2}, Lio/sentry/u0;->s()Lio/sentry/a1;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    invoke-interface {v0}, Lio/sentry/z0;->a()Lio/sentry/v6;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    goto :goto_1

    .line 118
    :cond_5
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 119
    .line 120
    invoke-static {p2, v0}, Lio/sentry/util/a0;->g(Lio/sentry/u0;Lio/sentry/s5;)Lio/sentry/w2;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p2}, Lio/sentry/w2;->i()Lio/sentry/v6;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    goto :goto_1

    .line 129
    :cond_6
    const/4 p2, 0x0

    .line 130
    :goto_1
    const-class v0, Lio/sentry/hints/c;

    .line 131
    .line 132
    invoke-static {p3, v0}, Lio/sentry/util/j;->h(Lio/sentry/c0;Ljava/lang/Class;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-virtual {p3}, Lio/sentry/c0;->f()Lio/sentry/z2;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-direct {p0, p1, v1, p2, v0}, Lio/sentry/w3;->q(Lio/sentry/t5;Lio/sentry/z2;Lio/sentry/v6;Z)Lio/sentry/a4;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p3}, Lio/sentry/c0;->b()V

    .line 145
    .line 146
    .line 147
    iget-object p2, p0, Lio/sentry/w3;->c:Lio/sentry/transport/q;

    .line 148
    .line 149
    invoke-interface {p2, p1, p3}, Lio/sentry/transport/q;->V(Lio/sentry/a4;Lio/sentry/c0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :catch_0
    move-exception p1

    .line 154
    iget-object p2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 155
    .line 156
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    sget-object p3, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 161
    .line 162
    const-string v0, "Capturing event %s failed."

    .line 163
    .line 164
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-interface {p2, p3, p1, v0, v1}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    sget-object v2, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 172
    .line 173
    :goto_2
    return-object v2
.end method

.method public c(Lio/sentry/metrics/a;)Lio/sentry/protocol/r;
    .locals 4

    .line 1
    invoke-static {p1}, Lio/sentry/x4;->z(Lio/sentry/metrics/a;)Lio/sentry/x4;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lio/sentry/b4;

    .line 6
    .line 7
    new-instance v1, Lio/sentry/protocol/r;

    .line 8
    .line 9
    invoke-direct {v1}, Lio/sentry/protocol/r;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 13
    .line 14
    invoke-virtual {v2}, Lio/sentry/s5;->getSdkVersion()Lio/sentry/protocol/p;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lio/sentry/b4;-><init>(Lio/sentry/protocol/r;Lio/sentry/protocol/p;Lio/sentry/v6;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lio/sentry/a4;

    .line 23
    .line 24
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v1, v0, p1}, Lio/sentry/a4;-><init>(Lio/sentry/b4;Ljava/lang/Iterable;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, v1}, Lio/sentry/w0;->v(Lio/sentry/a4;)Lio/sentry/protocol/r;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object p1, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 39
    .line 40
    :goto_0
    return-object p1
.end method

.method public d(Lio/sentry/protocol/y;Lio/sentry/v6;Lio/sentry/u0;Lio/sentry/c0;Lio/sentry/u2;)Lio/sentry/protocol/r;
    .locals 9

    .line 1
    const-string v2, "Transaction is required."

    .line 2
    .line 3
    invoke-static {p1, v2}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-nez p4, :cond_0

    .line 7
    .line 8
    new-instance v2, Lio/sentry/c0;

    .line 9
    .line 10
    invoke-direct {v2}, Lio/sentry/c0;-><init>()V

    .line 11
    .line 12
    .line 13
    move-object v7, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v7, p4

    .line 16
    :goto_0
    invoke-direct {p0, p1, v7}, Lio/sentry/w3;->G(Lio/sentry/t3;Lio/sentry/c0;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-direct {p0, p3, v7}, Lio/sentry/w3;->h(Lio/sentry/u0;Lio/sentry/c0;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 26
    .line 27
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget-object v3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 32
    .line 33
    invoke-virtual {p1}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "Capturing transaction: %s"

    .line 42
    .line 43
    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sget-object v2, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 47
    .line 48
    invoke-virtual {p1}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    move-object v8, v4

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move-object v8, v2

    .line 61
    :goto_1
    invoke-direct {p0, p1, v7}, Lio/sentry/w3;->G(Lio/sentry/t3;Lio/sentry/c0;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const/4 v5, 0x0

    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    invoke-direct {p0, p1, p3}, Lio/sentry/w3;->j(Lio/sentry/t3;Lio/sentry/u0;)Lio/sentry/t3;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lio/sentry/protocol/y;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    if-eqz p3, :cond_3

    .line 77
    .line 78
    invoke-interface {p3}, Lio/sentry/u0;->I()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-direct {p0, v0, v7, v1}, Lio/sentry/w3;->D(Lio/sentry/protocol/y;Lio/sentry/c0;Ljava/util/List;)Lio/sentry/protocol/y;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :cond_3
    if-nez v0, :cond_5

    .line 87
    .line 88
    iget-object v1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 89
    .line 90
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v4, "Transaction was dropped by applyScope"

    .line 95
    .line 96
    new-array v6, v5, [Ljava/lang/Object;

    .line 97
    .line 98
    invoke-interface {v1, v3, v4, v6}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    move-object v0, p1

    .line 103
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 104
    .line 105
    iget-object v1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 106
    .line 107
    invoke-virtual {v1}, Lio/sentry/s5;->getEventProcessors()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-direct {p0, v0, v7, v1}, Lio/sentry/w3;->D(Lio/sentry/protocol/y;Lio/sentry/c0;Ljava/util/List;)Lio/sentry/protocol/y;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :cond_6
    if-nez v0, :cond_7

    .line 116
    .line 117
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 118
    .line 119
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const-string v1, "Transaction was dropped by Event processors."

    .line 124
    .line 125
    new-array v4, v5, [Ljava/lang/Object;

    .line 126
    .line 127
    invoke-interface {v0, v3, v1, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    return-object v2

    .line 131
    :cond_7
    invoke-virtual {v0}, Lio/sentry/protocol/y;->q0()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-direct {p0, v0, v7}, Lio/sentry/w3;->t(Lio/sentry/protocol/y;Lio/sentry/c0;)Lio/sentry/protocol/y;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-nez v0, :cond_8

    .line 144
    .line 145
    move v4, v5

    .line 146
    goto :goto_3

    .line 147
    :cond_8
    invoke-virtual {v0}, Lio/sentry/protocol/y;->q0()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    :goto_3
    if-nez v0, :cond_9

    .line 156
    .line 157
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 158
    .line 159
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const-string v4, "Transaction was dropped by beforeSendTransaction."

    .line 164
    .line 165
    new-array v5, v5, [Ljava/lang/Object;

    .line 166
    .line 167
    invoke-interface {v0, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 171
    .line 172
    invoke-virtual {v0}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    sget-object v3, Lio/sentry/clientreport/f;->BEFORE_SEND:Lio/sentry/clientreport/f;

    .line 177
    .line 178
    sget-object v4, Lio/sentry/i;->Transaction:Lio/sentry/i;

    .line 179
    .line 180
    invoke-interface {v0, v3, v4}, Lio/sentry/clientreport/h;->a(Lio/sentry/clientreport/f;Lio/sentry/i;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 184
    .line 185
    invoke-virtual {v0}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    sget-object v4, Lio/sentry/i;->Span:Lio/sentry/i;

    .line 190
    .line 191
    add-int/lit8 v1, v1, 0x1

    .line 192
    .line 193
    int-to-long v5, v1

    .line 194
    invoke-interface {v0, v3, v4, v5, v6}, Lio/sentry/clientreport/h;->c(Lio/sentry/clientreport/f;Lio/sentry/i;J)V

    .line 195
    .line 196
    .line 197
    return-object v2

    .line 198
    :cond_9
    if-ge v4, v1, :cond_a

    .line 199
    .line 200
    sub-int/2addr v1, v4

    .line 201
    iget-object v2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 202
    .line 203
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    const-string v5, "%d spans were dropped by beforeSendTransaction."

    .line 216
    .line 217
    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    iget-object v2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 221
    .line 222
    invoke-virtual {v2}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    sget-object v3, Lio/sentry/clientreport/f;->BEFORE_SEND:Lio/sentry/clientreport/f;

    .line 227
    .line 228
    sget-object v4, Lio/sentry/i;->Span:Lio/sentry/i;

    .line 229
    .line 230
    int-to-long v5, v1

    .line 231
    invoke-interface {v2, v3, v4, v5, v6}, Lio/sentry/clientreport/h;->c(Lio/sentry/clientreport/f;Lio/sentry/i;J)V

    .line 232
    .line 233
    .line 234
    :cond_a
    :try_start_0
    invoke-direct {p0, v7}, Lio/sentry/w3;->y(Lio/sentry/c0;)Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-direct {p0, v1}, Lio/sentry/w3;->w(Ljava/util/List;)Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    const/4 v4, 0x0

    .line 243
    move-object v1, p0

    .line 244
    move-object v2, v0

    .line 245
    move-object v5, p2

    .line 246
    move-object v6, p5

    .line 247
    invoke-direct/range {v1 .. v6}, Lio/sentry/w3;->p(Lio/sentry/t3;Ljava/util/List;Lio/sentry/f6;Lio/sentry/v6;Lio/sentry/u2;)Lio/sentry/a4;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v7}, Lio/sentry/c0;->b()V

    .line 252
    .line 253
    .line 254
    if-eqz v0, :cond_b

    .line 255
    .line 256
    invoke-direct {p0, v0, v7}, Lio/sentry/w3;->F(Lio/sentry/a4;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 257
    .line 258
    .line 259
    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/sentry/exception/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    goto :goto_5

    .line 261
    :catch_0
    move-exception v0

    .line 262
    goto :goto_4

    .line 263
    :catch_1
    move-exception v0

    .line 264
    :goto_4
    iget-object v1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 265
    .line 266
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    sget-object v2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 271
    .line 272
    const-string v3, "Capturing transaction %s failed."

    .line 273
    .line 274
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-interface {v1, v2, v0, v3, v4}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    sget-object v8, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 282
    .line 283
    :cond_b
    :goto_5
    return-object v8
.end method

.method public e(Lio/sentry/z4;Lio/sentry/u0;Lio/sentry/c0;)Lio/sentry/protocol/r;
    .locals 11

    .line 1
    const-string v0, "SentryEvent is required."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    new-instance p3, Lio/sentry/c0;

    .line 9
    .line 10
    invoke-direct {p3}, Lio/sentry/c0;-><init>()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1, p3}, Lio/sentry/w3;->G(Lio/sentry/t3;Lio/sentry/c0;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, p2, p3}, Lio/sentry/w3;->h(Lio/sentry/u0;Lio/sentry/c0;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 23
    .line 24
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 29
    .line 30
    invoke-virtual {p1}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "Capturing event: %s"

    .line 39
    .line 40
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lio/sentry/t3;->O()Ljava/lang/Throwable;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Lio/sentry/s5;->containsIgnoredExceptionForType(Ljava/lang/Throwable;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    iget-object p1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 58
    .line 59
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    const-string p3, "Event was dropped as the exception %s is ignored"

    .line 72
    .line 73
    invoke-interface {p1, v1, p3, p2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 77
    .line 78
    invoke-virtual {p1}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    sget-object p2, Lio/sentry/clientreport/f;->EVENT_PROCESSOR:Lio/sentry/clientreport/f;

    .line 83
    .line 84
    sget-object p3, Lio/sentry/i;->Error:Lio/sentry/i;

    .line 85
    .line 86
    invoke-interface {p1, p2, p3}, Lio/sentry/clientreport/h;->a(Lio/sentry/clientreport/f;Lio/sentry/i;)V

    .line 87
    .line 88
    .line 89
    sget-object p1, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 90
    .line 91
    return-object p1

    .line 92
    :cond_2
    invoke-direct {p0, p1, p3}, Lio/sentry/w3;->G(Lio/sentry/t3;Lio/sentry/c0;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    const/4 v2, 0x0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/w3;->k(Lio/sentry/z4;Lio/sentry/u0;Lio/sentry/c0;)Lio/sentry/z4;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-nez p1, :cond_3

    .line 104
    .line 105
    iget-object p1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 106
    .line 107
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string p2, "Event was dropped by applyScope"

    .line 112
    .line 113
    new-array p3, v2, [Ljava/lang/Object;

    .line 114
    .line 115
    invoke-interface {p1, v1, p2, p3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    sget-object p1, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 119
    .line 120
    return-object p1

    .line 121
    :cond_3
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 122
    .line 123
    invoke-virtual {v0}, Lio/sentry/s5;->getEventProcessors()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-direct {p0, p1, p3, v0}, Lio/sentry/w3;->B(Lio/sentry/z4;Lio/sentry/c0;Ljava/util/List;)Lio/sentry/z4;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    invoke-direct {p0, p1, p3}, Lio/sentry/w3;->r(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/z4;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-nez p1, :cond_4

    .line 138
    .line 139
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 140
    .line 141
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const-string v3, "Event was dropped by beforeSend"

    .line 146
    .line 147
    new-array v4, v2, [Ljava/lang/Object;

    .line 148
    .line 149
    invoke-interface {v0, v1, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 153
    .line 154
    invoke-virtual {v0}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    sget-object v3, Lio/sentry/clientreport/f;->BEFORE_SEND:Lio/sentry/clientreport/f;

    .line 159
    .line 160
    sget-object v4, Lio/sentry/i;->Error:Lio/sentry/i;

    .line 161
    .line 162
    invoke-interface {v0, v3, v4}, Lio/sentry/clientreport/h;->a(Lio/sentry/clientreport/f;Lio/sentry/i;)V

    .line 163
    .line 164
    .line 165
    :cond_4
    if-nez p1, :cond_5

    .line 166
    .line 167
    sget-object p1, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 168
    .line 169
    return-object p1

    .line 170
    :cond_5
    const/4 v0, 0x0

    .line 171
    if-eqz p2, :cond_6

    .line 172
    .line 173
    new-instance v3, Lio/sentry/u3;

    .line 174
    .line 175
    invoke-direct {v3}, Lio/sentry/u3;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-interface {p2, v3}, Lio/sentry/u0;->u(Lio/sentry/d3$b;)Lio/sentry/f6;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    goto :goto_0

    .line 183
    :cond_6
    move-object v3, v0

    .line 184
    :goto_0
    if-eqz v3, :cond_8

    .line 185
    .line 186
    invoke-virtual {v3}, Lio/sentry/f6;->m()Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-nez v4, :cond_7

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_7
    move-object v8, v0

    .line 194
    goto :goto_2

    .line 195
    :cond_8
    :goto_1
    invoke-virtual {p0, p1, p3, p2}, Lio/sentry/w3;->J(Lio/sentry/z4;Lio/sentry/c0;Lio/sentry/u0;)Lio/sentry/f6;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    move-object v8, v4

    .line 200
    :goto_2
    invoke-direct {p0}, Lio/sentry/w3;->E()Z

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-nez v4, :cond_9

    .line 205
    .line 206
    iget-object v4, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 207
    .line 208
    invoke-virtual {v4}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-virtual {p1}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    const-string v5, "Event %s was dropped due to sampling decision."

    .line 221
    .line 222
    invoke-interface {v4, v1, v5, p1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    iget-object p1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 226
    .line 227
    invoke-virtual {p1}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    sget-object v4, Lio/sentry/clientreport/f;->SAMPLE_RATE:Lio/sentry/clientreport/f;

    .line 232
    .line 233
    sget-object v5, Lio/sentry/i;->Error:Lio/sentry/i;

    .line 234
    .line 235
    invoke-interface {p1, v4, v5}, Lio/sentry/clientreport/h;->a(Lio/sentry/clientreport/f;Lio/sentry/i;)V

    .line 236
    .line 237
    .line 238
    move-object v6, v0

    .line 239
    goto :goto_3

    .line 240
    :cond_9
    move-object v6, p1

    .line 241
    :goto_3
    invoke-direct {p0, v3, v8}, Lio/sentry/w3;->H(Lio/sentry/f6;Lio/sentry/f6;)Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-nez v6, :cond_a

    .line 246
    .line 247
    if-nez p1, :cond_a

    .line 248
    .line 249
    iget-object p1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 250
    .line 251
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    const-string p2, "Not sending session update for dropped event as it did not cause the session health to change."

    .line 256
    .line 257
    new-array p3, v2, [Ljava/lang/Object;

    .line 258
    .line 259
    invoke-interface {p1, v1, p2, p3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    sget-object p1, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 263
    .line 264
    return-object p1

    .line 265
    :cond_a
    sget-object p1, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 266
    .line 267
    if-eqz v6, :cond_b

    .line 268
    .line 269
    invoke-virtual {v6}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    if-eqz v1, :cond_b

    .line 274
    .line 275
    invoke-virtual {v6}, Lio/sentry/t3;->G()Lio/sentry/protocol/r;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    :cond_b
    const-class v1, Lio/sentry/hints/c;

    .line 280
    .line 281
    invoke-static {p3, v1}, Lio/sentry/util/j;->h(Lio/sentry/c0;Ljava/lang/Class;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v6, :cond_d

    .line 286
    .line 287
    if-nez v1, :cond_d

    .line 288
    .line 289
    invoke-virtual {v6}, Lio/sentry/z4;->y0()Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-nez v3, :cond_c

    .line 294
    .line 295
    invoke-virtual {v6}, Lio/sentry/z4;->x0()Z

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    if-eqz v3, :cond_d

    .line 300
    .line 301
    :cond_c
    iget-object v3, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 302
    .line 303
    invoke-virtual {v3}, Lio/sentry/s5;->getReplayController()Lio/sentry/y2;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-virtual {v6}, Lio/sentry/z4;->x0()Z

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    invoke-interface {v3, v4}, Lio/sentry/y2;->b(Ljava/lang/Boolean;)V

    .line 316
    .line 317
    .line 318
    :cond_d
    if-eqz v1, :cond_e

    .line 319
    .line 320
    if-eqz v6, :cond_10

    .line 321
    .line 322
    :try_start_0
    iget-object v1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 323
    .line 324
    invoke-static {v6, v1}, Lio/sentry/d;->b(Lio/sentry/z4;Lio/sentry/s5;)Lio/sentry/d;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v1}, Lio/sentry/d;->H()Lio/sentry/v6;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    goto :goto_4

    .line 333
    :cond_e
    if-eqz p2, :cond_10

    .line 334
    .line 335
    invoke-interface {p2}, Lio/sentry/u0;->s()Lio/sentry/a1;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    if-eqz v1, :cond_f

    .line 340
    .line 341
    invoke-interface {v1}, Lio/sentry/z0;->a()Lio/sentry/v6;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    :goto_4
    move-object v9, v1

    .line 346
    goto :goto_5

    .line 347
    :cond_f
    iget-object v1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 348
    .line 349
    invoke-static {p2, v1}, Lio/sentry/util/a0;->g(Lio/sentry/u0;Lio/sentry/s5;)Lio/sentry/w2;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-virtual {v1}, Lio/sentry/w2;->i()Lio/sentry/v6;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    goto :goto_4

    .line 358
    :catch_0
    move-exception v0

    .line 359
    goto :goto_6

    .line 360
    :catch_1
    move-exception v0

    .line 361
    goto :goto_6

    .line 362
    :cond_10
    move-object v9, v0

    .line 363
    :goto_5
    if-eqz v6, :cond_11

    .line 364
    .line 365
    const/4 v2, 0x1

    .line 366
    :cond_11
    if-eqz v2, :cond_12

    .line 367
    .line 368
    invoke-direct {p0, p3}, Lio/sentry/w3;->y(Lio/sentry/c0;)Ljava/util/List;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    :cond_12
    move-object v7, v0

    .line 373
    const/4 v10, 0x0

    .line 374
    move-object v5, p0

    .line 375
    invoke-direct/range {v5 .. v10}, Lio/sentry/w3;->p(Lio/sentry/t3;Ljava/util/List;Lio/sentry/f6;Lio/sentry/v6;Lio/sentry/u2;)Lio/sentry/a4;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {p3}, Lio/sentry/c0;->b()V

    .line 380
    .line 381
    .line 382
    if-eqz v0, :cond_13

    .line 383
    .line 384
    invoke-direct {p0, v0, p3}, Lio/sentry/w3;->F(Lio/sentry/a4;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 385
    .line 386
    .line 387
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/sentry/exception/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    goto :goto_7

    .line 389
    :goto_6
    iget-object v1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 390
    .line 391
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    sget-object v2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 396
    .line 397
    const-string v3, "Capturing event %s failed."

    .line 398
    .line 399
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    invoke-interface {v1, v2, v0, v3, p1}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    sget-object p1, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 407
    .line 408
    :cond_13
    :goto_7
    if-eqz p2, :cond_14

    .line 409
    .line 410
    invoke-direct {p0, p2, p3}, Lio/sentry/w3;->x(Lio/sentry/u0;Lio/sentry/c0;)V

    .line 411
    .line 412
    .line 413
    :cond_14
    return-object p1
.end method

.method public i(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const-string v4, "Closing SentryClient."

    .line 13
    .line 14
    invoke-interface {v0, v1, v4, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Lio/sentry/w3;->e:Lio/sentry/p0;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    iget-object v1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 25
    .line 26
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v3, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 31
    .line 32
    const-string v4, "Failed to close the metrics aggregator."

    .line 33
    .line 34
    invoke-interface {v1, v3, v4, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    if-eqz p1, :cond_0

    .line 38
    .line 39
    const-wide/16 v0, 0x0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 43
    .line 44
    invoke-virtual {v0}, Lio/sentry/s5;->getShutdownTimeoutMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    :goto_1
    invoke-virtual {p0, v0, v1}, Lio/sentry/w3;->o(J)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lio/sentry/w3;->c:Lio/sentry/transport/q;

    .line 52
    .line 53
    invoke-interface {v0, p1}, Lio/sentry/transport/q;->i(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catch_1
    move-exception p1

    .line 58
    iget-object v0, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 59
    .line 60
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v1, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 65
    .line 66
    const-string v3, "Failed to close the connection to the Sentry Server."

    .line 67
    .line 68
    invoke-interface {v0, v1, v3, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    iget-object p1, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 72
    .line 73
    invoke-virtual {p1}, Lio/sentry/s5;->getEventProcessors()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :cond_1
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lio/sentry/y;

    .line 92
    .line 93
    instance-of v1, v0, Ljava/io/Closeable;

    .line 94
    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    :try_start_2
    move-object v1, v0

    .line 98
    check-cast v1, Ljava/io/Closeable;

    .line 99
    .line 100
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :catch_2
    move-exception v1

    .line 105
    iget-object v3, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 106
    .line 107
    invoke-virtual {v3}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    sget-object v4, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 112
    .line 113
    const-string v5, "Failed to close the event processor {}."

    .line 114
    .line 115
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-interface {v3, v4, v5, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_2
    iput-boolean v2, p0, Lio/sentry/w3;->a:Z

    .line 124
    .line 125
    return-void
.end method

.method public l()Lio/sentry/transport/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/w3;->c:Lio/sentry/transport/q;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/transport/q;->l()Lio/sentry/transport/z;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/w3;->c:Lio/sentry/transport/q;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/sentry/transport/q;->m()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public o(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/w3;->c:Lio/sentry/transport/q;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lio/sentry/transport/q;->o(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public u(Lio/sentry/a4;Lio/sentry/c0;)Lio/sentry/protocol/r;
    .locals 2

    .line 1
    const-string v0, "SentryEnvelope is required."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    new-instance p2, Lio/sentry/c0;

    .line 9
    .line 10
    invoke-direct {p2}, Lio/sentry/c0;-><init>()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/c0;->b()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2}, Lio/sentry/w3;->F(Lio/sentry/a4;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object p1

    .line 21
    :catch_0
    move-exception p1

    .line 22
    iget-object p2, p0, Lio/sentry/w3;->b:Lio/sentry/s5;

    .line 23
    .line 24
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 29
    .line 30
    const-string v1, "Failed to capture envelope."

    .line 31
    .line 32
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lio/sentry/protocol/r;->b:Lio/sentry/protocol/r;

    .line 36
    .line 37
    return-object p1
.end method
