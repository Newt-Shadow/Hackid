.class public final Lio/sentry/clientreport/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/clientreport/h;


# instance fields
.field private final a:Lio/sentry/clientreport/i;

.field private final b:Lio/sentry/s5;


# direct methods
.method public constructor <init>(Lio/sentry/s5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/clientreport/e;->b:Lio/sentry/s5;

    .line 5
    .line 6
    new-instance p1, Lio/sentry/clientreport/b;

    .line 7
    .line 8
    invoke-direct {p1}, Lio/sentry/clientreport/b;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lio/sentry/clientreport/e;->a:Lio/sentry/clientreport/i;

    .line 12
    .line 13
    return-void
.end method

.method private f(Lio/sentry/i5;)Lio/sentry/i;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/i5;->Event:Lio/sentry/i5;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lio/sentry/i;->Error:Lio/sentry/i;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    sget-object v0, Lio/sentry/i5;->Session:Lio/sentry/i5;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object p1, Lio/sentry/i;->Session:Lio/sentry/i;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    sget-object v0, Lio/sentry/i5;->Transaction:Lio/sentry/i5;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    sget-object p1, Lio/sentry/i;->Transaction:Lio/sentry/i;

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_2
    sget-object v0, Lio/sentry/i5;->UserFeedback:Lio/sentry/i5;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    sget-object p1, Lio/sentry/i;->UserReport:Lio/sentry/i;

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_3
    sget-object v0, Lio/sentry/i5;->Profile:Lio/sentry/i5;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    sget-object p1, Lio/sentry/i;->Profile:Lio/sentry/i;

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_4
    sget-object v0, Lio/sentry/i5;->Statsd:Lio/sentry/i5;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    sget-object p1, Lio/sentry/i;->MetricBucket:Lio/sentry/i;

    .line 65
    .line 66
    return-object p1

    .line 67
    :cond_5
    sget-object v0, Lio/sentry/i5;->Attachment:Lio/sentry/i5;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    sget-object p1, Lio/sentry/i;->Attachment:Lio/sentry/i;

    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_6
    sget-object v0, Lio/sentry/i5;->CheckIn:Lio/sentry/i5;

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_7

    .line 85
    .line 86
    sget-object p1, Lio/sentry/i;->Monitor:Lio/sentry/i;

    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_7
    sget-object v0, Lio/sentry/i5;->ReplayVideo:Lio/sentry/i5;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_8

    .line 96
    .line 97
    sget-object p1, Lio/sentry/i;->Replay:Lio/sentry/i;

    .line 98
    .line 99
    return-object p1

    .line 100
    :cond_8
    sget-object p1, Lio/sentry/i;->Default:Lio/sentry/i;

    .line 101
    .line 102
    return-object p1
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/clientreport/d;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lio/sentry/clientreport/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/sentry/clientreport/e;->a:Lio/sentry/clientreport/i;

    .line 7
    .line 8
    invoke-interface {p1, v0, p3}, Lio/sentry/clientreport/i;->b(Lio/sentry/clientreport/d;Ljava/lang/Long;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private i(Lio/sentry/clientreport/c;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lio/sentry/clientreport/c;->a()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lio/sentry/clientreport/g;

    .line 23
    .line 24
    invoke-virtual {v0}, Lio/sentry/clientreport/g;->c()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0}, Lio/sentry/clientreport/g;->a()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0}, Lio/sentry/clientreport/g;->b()Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p0, v1, v2, v0}, Lio/sentry/clientreport/e;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lio/sentry/clientreport/f;Lio/sentry/i;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/sentry/clientreport/e;->c(Lio/sentry/clientreport/f;Lio/sentry/i;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lio/sentry/clientreport/f;Lio/sentry/a4;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/a4;->c()Ljava/lang/Iterable;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lio/sentry/x4;

    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Lio/sentry/clientreport/e;->e(Lio/sentry/clientreport/f;Lio/sentry/x4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    iget-object p2, p0, Lio/sentry/clientreport/e;->b:Lio/sentry/s5;

    .line 30
    .line 31
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    const-string v2, "Unable to record lost envelope."

    .line 41
    .line 42
    invoke-interface {p2, v0, p1, v2, v1}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public c(Lio/sentry/clientreport/f;Lio/sentry/i;J)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/clientreport/f;->getReason()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lio/sentry/i;->getCategory()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/clientreport/e;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    iget-object p2, p0, Lio/sentry/clientreport/e;->b:Lio/sentry/s5;

    .line 19
    .line 20
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    sget-object p3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 25
    .line 26
    const/4 p4, 0x0

    .line 27
    new-array p4, p4, [Ljava/lang/Object;

    .line 28
    .line 29
    const-string v0, "Unable to record lost event."

    .line 30
    .line 31
    invoke-interface {p2, p3, p1, v0, p4}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public d(Lio/sentry/a4;)Lio/sentry/a4;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lio/sentry/clientreport/e;->h()Lio/sentry/clientreport/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :try_start_0
    iget-object v2, p0, Lio/sentry/clientreport/e;->b:Lio/sentry/s5;

    .line 10
    .line 11
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 16
    .line 17
    const-string v4, "Attaching client report to envelope."

    .line 18
    .line 19
    new-array v5, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lio/sentry/a4;->c()Ljava/lang/Iterable;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lio/sentry/x4;

    .line 48
    .line 49
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v3, p0, Lio/sentry/clientreport/e;->b:Lio/sentry/s5;

    .line 54
    .line 55
    invoke-virtual {v3}, Lio/sentry/s5;->getSerializer()Lio/sentry/y0;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v3, v0}, Lio/sentry/x4;->x(Lio/sentry/y0;Lio/sentry/clientreport/c;)Lio/sentry/x4;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    new-instance v0, Lio/sentry/a4;

    .line 67
    .line 68
    invoke-virtual {p1}, Lio/sentry/a4;->b()Lio/sentry/b4;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-direct {v0, v3, v2}, Lio/sentry/a4;-><init>(Lio/sentry/b4;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    iget-object v2, p0, Lio/sentry/clientreport/e;->b:Lio/sentry/s5;

    .line 78
    .line 79
    invoke-virtual {v2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    sget-object v3, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 84
    .line 85
    const-string v4, "Unable to attach client report to envelope."

    .line 86
    .line 87
    new-array v1, v1, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-interface {v2, v3, v0, v4, v1}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-object p1
.end method

.method public e(Lio/sentry/clientreport/f;Lio/sentry/x4;)V
    .locals 8

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/x4;->G()Lio/sentry/y4;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lio/sentry/y4;->b()Lio/sentry/i5;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lio/sentry/i5;->ClientReport:Lio/sentry/i5;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    :try_start_1
    iget-object p1, p0, Lio/sentry/clientreport/e;->b:Lio/sentry/s5;

    .line 22
    .line 23
    invoke-virtual {p1}, Lio/sentry/s5;->getSerializer()Lio/sentry/y0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p2, p1}, Lio/sentry/x4;->D(Lio/sentry/y0;)Lio/sentry/clientreport/c;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lio/sentry/clientreport/e;->i(Lio/sentry/clientreport/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    :try_start_2
    iget-object p1, p0, Lio/sentry/clientreport/e;->b:Lio/sentry/s5;

    .line 36
    .line 37
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget-object p2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 42
    .line 43
    const-string v1, "Unable to restore counts from previous client report."

    .line 44
    .line 45
    new-array v2, v0, [Ljava/lang/Object;

    .line 46
    .line 47
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-direct {p0, v1}, Lio/sentry/clientreport/e;->f(Lio/sentry/i5;)Lio/sentry/i;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    sget-object v2, Lio/sentry/i;->Transaction:Lio/sentry/i;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const-wide/16 v3, 0x1

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    iget-object v2, p0, Lio/sentry/clientreport/e;->b:Lio/sentry/s5;

    .line 66
    .line 67
    invoke-virtual {v2}, Lio/sentry/s5;->getSerializer()Lio/sentry/y0;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p2, v2}, Lio/sentry/x4;->H(Lio/sentry/y0;)Lio/sentry/protocol/y;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    invoke-virtual {p2}, Lio/sentry/protocol/y;->q0()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1}, Lio/sentry/clientreport/f;->getReason()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    sget-object v5, Lio/sentry/i;->Span:Lio/sentry/i;

    .line 86
    .line 87
    invoke-virtual {v5}, Lio/sentry/i;->getCategory()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    int-to-long v6, p2

    .line 96
    add-long/2addr v6, v3

    .line 97
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-direct {p0, v2, v5, p2}, Lio/sentry/clientreport/e;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    invoke-virtual {p1}, Lio/sentry/clientreport/f;->getReason()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v1}, Lio/sentry/i;->getCategory()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-direct {p0, p1, p2, v1}, Lio/sentry/clientreport/e;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    iget-object p2, p0, Lio/sentry/clientreport/e;->b:Lio/sentry/s5;

    .line 122
    .line 123
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 128
    .line 129
    const-string v2, "Unable to record lost envelope item."

    .line 130
    .line 131
    new-array v0, v0, [Ljava/lang/Object;

    .line 132
    .line 133
    invoke-interface {p2, v1, p1, v2, v0}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :goto_0
    return-void
.end method

.method h()Lio/sentry/clientreport/c;
    .locals 3

    .line 1
    invoke-static {}, Lio/sentry/j;->c()Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/sentry/clientreport/e;->a:Lio/sentry/clientreport/i;

    .line 6
    .line 7
    invoke-interface {v1}, Lio/sentry/clientreport/i;->a()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    :cond_0
    new-instance v2, Lio/sentry/clientreport/c;

    .line 20
    .line 21
    invoke-direct {v2, v0, v1}, Lio/sentry/clientreport/c;-><init>(Ljava/util/Date;Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    return-object v2
.end method
