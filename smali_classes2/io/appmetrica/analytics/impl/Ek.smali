.class public final Lio/appmetrica/analytics/impl/Ek;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/o5;

.field public final b:Lio/appmetrica/analytics/impl/Dk;

.field public final c:Lio/appmetrica/analytics/impl/n5;

.field public final d:Lio/appmetrica/analytics/impl/g;

.field public final e:Lio/appmetrica/analytics/impl/g;

.field public f:Lio/appmetrica/analytics/impl/qk;

.field public g:I


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/Dk;Lio/appmetrica/analytics/impl/n5;Lio/appmetrica/analytics/impl/ta;Lio/appmetrica/analytics/impl/H2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lio/appmetrica/analytics/impl/Ek;->g:I

    .line 6
    .line 7
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ek;->a:Lio/appmetrica/analytics/impl/o5;

    .line 8
    .line 9
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Ek;->c:Lio/appmetrica/analytics/impl/n5;

    .line 10
    .line 11
    iput-object p4, p0, Lio/appmetrica/analytics/impl/Ek;->d:Lio/appmetrica/analytics/impl/g;

    .line 12
    .line 13
    iput-object p5, p0, Lio/appmetrica/analytics/impl/Ek;->e:Lio/appmetrica/analytics/impl/g;

    .line 14
    .line 15
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Ek;->b:Lio/appmetrica/analytics/impl/Dk;

    .line 16
    .line 17
    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/qk;J)Lio/appmetrica/analytics/impl/Gk;
    .locals 6

    .line 64
    new-instance v0, Lio/appmetrica/analytics/impl/Gk;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Gk;-><init>()V

    .line 65
    iget-wide v1, p0, Lio/appmetrica/analytics/impl/qk;->d:J

    .line 66
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Gk;->a:J

    .line 67
    iget-object v1, p0, Lio/appmetrica/analytics/impl/qk;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    .line 68
    iget-object v3, p0, Lio/appmetrica/analytics/impl/qk;->b:Lio/appmetrica/analytics/impl/Hk;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/qk;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 69
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "SESSION_COUNTER_ID"

    .line 70
    invoke-virtual {v3, v5, v4}, Lio/appmetrica/analytics/impl/Hk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/Hk;->b()V

    .line 72
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Gk;->b:J

    .line 73
    iget-object v1, p0, Lio/appmetrica/analytics/impl/qk;->b:Lio/appmetrica/analytics/impl/Hk;

    .line 74
    iget-wide v2, p0, Lio/appmetrica/analytics/impl/qk;->e:J

    sub-long/2addr p1, v2

    .line 75
    iput-wide p1, p0, Lio/appmetrica/analytics/impl/qk;->j:J

    .line 76
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_LAST_EVENT_OFFSET"

    .line 77
    invoke-virtual {v1, p2, p1}, Lio/appmetrica/analytics/impl/Hk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/qk;->j:J

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    .line 79
    iput-wide p1, v0, Lio/appmetrica/analytics/impl/Gk;->c:J

    .line 80
    iget-object p0, p0, Lio/appmetrica/analytics/impl/qk;->c:Lio/appmetrica/analytics/impl/tk;

    .line 81
    iget-object p0, p0, Lio/appmetrica/analytics/impl/tk;->a:Lio/appmetrica/analytics/impl/Ik;

    .line 82
    iput-object p0, v0, Lio/appmetrica/analytics/impl/Gk;->d:Lio/appmetrica/analytics/impl/Ik;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;

    if-nez v0, :cond_0

    const-wide v0, 0x2540be400L

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, v0, Lio/appmetrica/analytics/impl/qk;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/e6;)Lio/appmetrica/analytics/impl/qk;
    .locals 6

    .line 3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->a:Lio/appmetrica/analytics/impl/o5;

    .line 4
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Start foreground session"

    .line 5
    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-wide v0, p1, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 7
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Ek;->d:Lio/appmetrica/analytics/impl/g;

    new-instance v3, Lio/appmetrica/analytics/impl/rk;

    .line 8
    iget-wide v4, p1, Lio/appmetrica/analytics/impl/e6;->j:J

    .line 9
    invoke-direct {v3, v0, v1, v4, v5}, Lio/appmetrica/analytics/impl/rk;-><init>(JJ)V

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/g;->a(Lio/appmetrica/analytics/impl/rk;)Lio/appmetrica/analytics/impl/qk;

    move-result-object v2

    const/4 v3, 0x3

    .line 12
    iput v3, p0, Lio/appmetrica/analytics/impl/Ek;->g:I

    .line 13
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Ek;->a:Lio/appmetrica/analytics/impl/o5;

    .line 14
    iget-object v3, v3, Lio/appmetrica/analytics/impl/o5;->p:Lio/appmetrica/analytics/impl/B9;

    .line 15
    check-cast v3, Lio/appmetrica/analytics/impl/z5;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/z5;->e()V

    .line 16
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Ek;->c:Lio/appmetrica/analytics/impl/n5;

    .line 17
    sget-object v4, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 18
    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/za;->h()Lio/appmetrica/analytics/impl/Y9;

    move-result-object v4

    .line 19
    invoke-static {p1, v4}, Lio/appmetrica/analytics/impl/e6;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Y9;)Lio/appmetrica/analytics/impl/e6;

    move-result-object p1

    .line 20
    invoke-static {v2, v0, v1}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/qk;J)Lio/appmetrica/analytics/impl/Gk;

    move-result-object v0

    .line 21
    iget-object v1, v3, Lio/appmetrica/analytics/impl/n5;->a:Lio/appmetrica/analytics/impl/o5;

    .line 22
    iget-object v1, v1, Lio/appmetrica/analytics/impl/o5;->n:Lio/appmetrica/analytics/impl/v9;

    .line 23
    invoke-virtual {v1, p1, v0}, Lio/appmetrica/analytics/impl/v9;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Gk;)V

    return-object v2
.end method

.method public final a(Lio/appmetrica/analytics/impl/qk;Lio/appmetrica/analytics/impl/e6;)V
    .locals 8

    .line 24
    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/qk;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 25
    iget-wide v2, p1, Lio/appmetrica/analytics/impl/qk;->d:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 26
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->c:Lio/appmetrica/analytics/impl/n5;

    .line 27
    sget-object v2, Lio/appmetrica/analytics/impl/nb;->g:Lio/appmetrica/analytics/impl/nb;

    invoke-static {p2, v2}, Lio/appmetrica/analytics/impl/e6;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/nb;)Lio/appmetrica/analytics/impl/e6;

    move-result-object p2

    .line 28
    new-instance v2, Lio/appmetrica/analytics/impl/Gk;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/Gk;-><init>()V

    .line 29
    iget-wide v3, p1, Lio/appmetrica/analytics/impl/qk;->d:J

    .line 30
    iput-wide v3, v2, Lio/appmetrica/analytics/impl/Gk;->a:J

    .line 31
    iget-object v3, p1, Lio/appmetrica/analytics/impl/qk;->c:Lio/appmetrica/analytics/impl/tk;

    .line 32
    iget-object v3, v3, Lio/appmetrica/analytics/impl/tk;->a:Lio/appmetrica/analytics/impl/Ik;

    .line 33
    iput-object v3, v2, Lio/appmetrica/analytics/impl/Gk;->d:Lio/appmetrica/analytics/impl/Ik;

    .line 34
    iget-object v3, p1, Lio/appmetrica/analytics/impl/qk;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v3

    .line 35
    iget-object v5, p1, Lio/appmetrica/analytics/impl/qk;->b:Lio/appmetrica/analytics/impl/Hk;

    iget-object v6, p1, Lio/appmetrica/analytics/impl/qk;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    .line 36
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "SESSION_COUNTER_ID"

    .line 37
    invoke-virtual {v5, v7, v6}, Lio/appmetrica/analytics/impl/Hk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v5}, Lio/appmetrica/analytics/impl/Hk;->b()V

    .line 39
    iput-wide v3, v2, Lio/appmetrica/analytics/impl/Gk;->b:J

    .line 40
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p1, Lio/appmetrica/analytics/impl/qk;->i:J

    iget-wide v6, p1, Lio/appmetrica/analytics/impl/qk;->e:J

    sub-long/2addr v4, v6

    iget-wide v6, p1, Lio/appmetrica/analytics/impl/qk;->j:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    .line 41
    iput-wide v3, v2, Lio/appmetrica/analytics/impl/Gk;->c:J

    .line 42
    iget-object v0, v0, Lio/appmetrica/analytics/impl/n5;->a:Lio/appmetrica/analytics/impl/o5;

    .line 43
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->n:Lio/appmetrica/analytics/impl/v9;

    .line 44
    invoke-virtual {v0, p2, v2}, Lio/appmetrica/analytics/impl/v9;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Gk;)V

    .line 45
    iget-boolean p2, p1, Lio/appmetrica/analytics/impl/qk;->g:Z

    if-eqz p2, :cond_0

    .line 46
    iput-boolean v1, p1, Lio/appmetrica/analytics/impl/qk;->g:Z

    .line 47
    iget-object p2, p1, Lio/appmetrica/analytics/impl/qk;->b:Lio/appmetrica/analytics/impl/Hk;

    .line 48
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "SESSION_IS_ALIVE_REPORT_NEEDED"

    .line 49
    invoke-virtual {p2, v2, v0}, Lio/appmetrica/analytics/impl/Hk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/Hk;->b()V

    .line 51
    :cond_0
    iget-object p2, p0, Lio/appmetrica/analytics/impl/Ek;->a:Lio/appmetrica/analytics/impl/o5;

    .line 52
    iget-object p2, p2, Lio/appmetrica/analytics/impl/o5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 53
    iget-object v0, p1, Lio/appmetrica/analytics/impl/qk;->c:Lio/appmetrica/analytics/impl/tk;

    .line 54
    iget-object v0, v0, Lio/appmetrica/analytics/impl/tk;->a:Lio/appmetrica/analytics/impl/Ik;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Finish background session"

    .line 56
    invoke-virtual {p2, v1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Finish foreground session"

    .line 57
    invoke-virtual {p2, v1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :goto_0
    monitor-enter p1

    .line 59
    :try_start_0
    iget-object p2, p1, Lio/appmetrica/analytics/impl/qk;->b:Lio/appmetrica/analytics/impl/Hk;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    new-instance v0, Lio/appmetrica/analytics/impl/rb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/rb;-><init>()V

    iput-object v0, p2, Lio/appmetrica/analytics/impl/Hk;->c:Lio/appmetrica/analytics/impl/rb;

    .line 61
    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/Hk;->b()V

    const/4 p2, 0x0

    .line 62
    iput-object p2, p1, Lio/appmetrica/analytics/impl/qk;->h:Lio/appmetrica/analytics/impl/Fk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 63
    monitor-exit p1

    throw p2
.end method

.method public final declared-synchronized b(Lio/appmetrica/analytics/impl/e6;)Lio/appmetrica/analytics/impl/qk;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lio/appmetrica/analytics/impl/Ek;->g:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->d:Lio/appmetrica/analytics/impl/g;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/g;->b()Lio/appmetrica/analytics/impl/qk;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-wide v4, p1, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 19
    .line 20
    invoke-virtual {v0, v4, v5}, Lio/appmetrica/analytics/impl/qk;->a(J)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    iput v0, p0, Lio/appmetrica/analytics/impl/Ek;->g:I

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/qk;Lio/appmetrica/analytics/impl/e6;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->e:Lio/appmetrica/analytics/impl/g;

    .line 36
    .line 37
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/g;->b()Lio/appmetrica/analytics/impl/qk;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iget-wide v4, p1, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 45
    .line 46
    invoke-virtual {v0, v4, v5}, Lio/appmetrica/analytics/impl/qk;->a(J)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;

    .line 53
    .line 54
    iput v2, p0, Lio/appmetrica/analytics/impl/Ek;->g:I

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/qk;Lio/appmetrica/analytics/impl/e6;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    iput-object v1, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;

    .line 61
    .line 62
    iput v3, p0, Lio/appmetrica/analytics/impl/Ek;->g:I

    .line 63
    .line 64
    :cond_4
    :goto_2
    iget v0, p0, Lio/appmetrica/analytics/impl/Ek;->g:I

    .line 65
    .line 66
    if-eq v0, v3, :cond_7

    .line 67
    .line 68
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;

    .line 69
    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_5
    iget-wide v4, p1, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 74
    .line 75
    invoke-virtual {v0, v4, v5}, Lio/appmetrica/analytics/impl/qk;->a(J)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_6

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/qk;Lio/appmetrica/analytics/impl/e6;)V

    .line 83
    .line 84
    .line 85
    :goto_3
    iput v3, p0, Lio/appmetrica/analytics/impl/Ek;->g:I

    .line 86
    .line 87
    iput-object v1, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;

    .line 88
    .line 89
    :cond_7
    :goto_4
    iget v0, p0, Lio/appmetrica/analytics/impl/Ek;->g:I

    .line 90
    .line 91
    invoke-static {v0}, Lio/appmetrica/analytics/impl/U7;->a(I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eq v0, v3, :cond_b

    .line 96
    .line 97
    if-eq v0, v2, :cond_a

    .line 98
    .line 99
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->a:Lio/appmetrica/analytics/impl/o5;

    .line 100
    .line 101
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->m:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    new-array v1, v1, [Ljava/lang/Object;

    .line 105
    .line 106
    const-string v3, "Start background session"

    .line 107
    .line 108
    invoke-virtual {v0, v3, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iput v2, p0, Lio/appmetrica/analytics/impl/Ek;->g:I

    .line 112
    .line 113
    iget-wide v0, p1, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 114
    .line 115
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Ek;->e:Lio/appmetrica/analytics/impl/g;

    .line 116
    .line 117
    new-instance v3, Lio/appmetrica/analytics/impl/rk;

    .line 118
    .line 119
    iget-wide v4, p1, Lio/appmetrica/analytics/impl/e6;->j:J

    .line 120
    .line 121
    invoke-direct {v3, v0, v1, v4, v5}, Lio/appmetrica/analytics/impl/rk;-><init>(JJ)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/g;->a(Lio/appmetrica/analytics/impl/rk;)Lio/appmetrica/analytics/impl/qk;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Ek;->a:Lio/appmetrica/analytics/impl/o5;

    .line 132
    .line 133
    iget-object v3, v3, Lio/appmetrica/analytics/impl/o5;->t:Lio/appmetrica/analytics/impl/do;

    .line 134
    .line 135
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/do;->c()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_8

    .line 140
    .line 141
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->c:Lio/appmetrica/analytics/impl/n5;

    .line 142
    .line 143
    sget-object v1, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 144
    .line 145
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/za;->h()Lio/appmetrica/analytics/impl/Y9;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {p1, v1}, Lio/appmetrica/analytics/impl/e6;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Y9;)Lio/appmetrica/analytics/impl/e6;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iget-wide v3, p1, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 154
    .line 155
    invoke-static {v2, v3, v4}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/qk;J)Lio/appmetrica/analytics/impl/Gk;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iget-object v0, v0, Lio/appmetrica/analytics/impl/n5;->a:Lio/appmetrica/analytics/impl/o5;

    .line 160
    .line 161
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->n:Lio/appmetrica/analytics/impl/v9;

    .line 162
    .line 163
    invoke-virtual {v0, v1, p1}, Lio/appmetrica/analytics/impl/v9;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Gk;)V

    .line 164
    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_8
    iget v3, p1, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 168
    .line 169
    sget-object v4, Lio/appmetrica/analytics/impl/nb;->c:Lio/appmetrica/analytics/impl/nb;

    .line 170
    .line 171
    const/16 v4, 0x1801

    .line 172
    .line 173
    if-ne v3, v4, :cond_9

    .line 174
    .line 175
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Ek;->c:Lio/appmetrica/analytics/impl/n5;

    .line 176
    .line 177
    invoke-static {v2, v0, v1}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/qk;J)Lio/appmetrica/analytics/impl/Gk;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    iget-object v3, v3, Lio/appmetrica/analytics/impl/n5;->a:Lio/appmetrica/analytics/impl/o5;

    .line 182
    .line 183
    iget-object v3, v3, Lio/appmetrica/analytics/impl/o5;->n:Lio/appmetrica/analytics/impl/v9;

    .line 184
    .line 185
    invoke-virtual {v3, p1, v4}, Lio/appmetrica/analytics/impl/v9;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Gk;)V

    .line 186
    .line 187
    .line 188
    iget-object v3, p0, Lio/appmetrica/analytics/impl/Ek;->c:Lio/appmetrica/analytics/impl/n5;

    .line 189
    .line 190
    sget-object v4, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 191
    .line 192
    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/za;->h()Lio/appmetrica/analytics/impl/Y9;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-static {p1, v4}, Lio/appmetrica/analytics/impl/e6;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Y9;)Lio/appmetrica/analytics/impl/e6;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {v2, v0, v1}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/qk;J)Lio/appmetrica/analytics/impl/Gk;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iget-object v1, v3, Lio/appmetrica/analytics/impl/n5;->a:Lio/appmetrica/analytics/impl/o5;

    .line 205
    .line 206
    iget-object v1, v1, Lio/appmetrica/analytics/impl/o5;->n:Lio/appmetrica/analytics/impl/v9;

    .line 207
    .line 208
    invoke-virtual {v1, p1, v0}, Lio/appmetrica/analytics/impl/v9;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/Gk;)V

    .line 209
    .line 210
    .line 211
    :cond_9
    :goto_5
    iput-object v2, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .line 213
    monitor-exit p0

    .line 214
    return-object v2

    .line 215
    :cond_a
    :try_start_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    .line 217
    monitor-exit p0

    .line 218
    return-object p1

    .line 219
    :cond_b
    :try_start_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;

    .line 220
    .line 221
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 222
    .line 223
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/qk;->i:J

    .line 224
    .line 225
    iget-object p1, v0, Lio/appmetrica/analytics/impl/qk;->b:Lio/appmetrica/analytics/impl/Hk;

    .line 226
    .line 227
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    const-string v1, "SESSION_SLEEP_START"

    .line 232
    .line 233
    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/impl/Hk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Hk;->b()V

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    .line 241
    monitor-exit p0

    .line 242
    return-object p1

    .line 243
    :catchall_0
    move-exception p1

    .line 244
    monitor-exit p0

    .line 245
    throw p1
.end method

.method public final declared-synchronized c(Lio/appmetrica/analytics/impl/e6;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lio/appmetrica/analytics/impl/Ek;->g:I

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->d:Lio/appmetrica/analytics/impl/g;

    .line 9
    .line 10
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/g;->b()Lio/appmetrica/analytics/impl/qk;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-wide v3, p1, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 18
    .line 19
    invoke-virtual {v0, v3, v4}, Lio/appmetrica/analytics/impl/qk;->a(J)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    iput v0, p0, Lio/appmetrica/analytics/impl/Ek;->g:I

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/qk;Lio/appmetrica/analytics/impl/e6;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->e:Lio/appmetrica/analytics/impl/g;

    .line 35
    .line 36
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/g;->b()Lio/appmetrica/analytics/impl/qk;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-wide v3, p1, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 44
    .line 45
    invoke-virtual {v0, v3, v4}, Lio/appmetrica/analytics/impl/qk;->a(J)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;

    .line 52
    .line 53
    iput v1, p0, Lio/appmetrica/analytics/impl/Ek;->g:I

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/qk;Lio/appmetrica/analytics/impl/e6;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;

    .line 61
    .line 62
    iput v2, p0, Lio/appmetrica/analytics/impl/Ek;->g:I

    .line 63
    .line 64
    :cond_4
    :goto_2
    iget v0, p0, Lio/appmetrica/analytics/impl/Ek;->g:I

    .line 65
    .line 66
    invoke-static {v0}, Lio/appmetrica/analytics/impl/U7;->a(I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_9

    .line 71
    .line 72
    if-eq v0, v2, :cond_8

    .line 73
    .line 74
    if-eq v0, v1, :cond_5

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;

    .line 78
    .line 79
    if-nez v0, :cond_6

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_6
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/qk;->a(J)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_7

    .line 89
    .line 90
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;

    .line 91
    .line 92
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/e6;->i:J

    .line 93
    .line 94
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/qk;->i:J

    .line 95
    .line 96
    iget-object p1, v0, Lio/appmetrica/analytics/impl/qk;->b:Lio/appmetrica/analytics/impl/Hk;

    .line 97
    .line 98
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v1, "SESSION_SLEEP_START"

    .line 103
    .line 104
    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/impl/Hk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Hk;->b()V

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_7
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/qk;Lio/appmetrica/analytics/impl/e6;)V

    .line 112
    .line 113
    .line 114
    :goto_3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/e6;)Lio/appmetrica/analytics/impl/qk;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;

    .line 122
    .line 123
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/qk;Lio/appmetrica/analytics/impl/e6;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/e6;)Lio/appmetrica/analytics/impl/qk;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_9
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/e6;)Lio/appmetrica/analytics/impl/qk;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .line 139
    :goto_4
    monitor-exit p0

    .line 140
    return-void

    .line 141
    :catchall_0
    move-exception p1

    .line 142
    monitor-exit p0

    .line 143
    throw p1
.end method
