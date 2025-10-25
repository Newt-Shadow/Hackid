.class public final Lio/appmetrica/analytics/impl/qk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/o5;

.field public final b:Lio/appmetrica/analytics/impl/Hk;

.field public final c:Lio/appmetrica/analytics/impl/tk;

.field public d:J

.field public e:J

.field public f:Ljava/util/concurrent/atomic/AtomicLong;

.field public g:Z

.field public volatile h:Lio/appmetrica/analytics/impl/Fk;

.field public i:J

.field public j:J

.field public final k:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;Lio/appmetrica/analytics/impl/Hk;Lio/appmetrica/analytics/impl/tk;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/qk;->a:Lio/appmetrica/analytics/impl/o5;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/qk;->b:Lio/appmetrica/analytics/impl/Hk;

    .line 7
    .line 8
    iput-object p3, p0, Lio/appmetrica/analytics/impl/qk;->c:Lio/appmetrica/analytics/impl/tk;

    .line 9
    .line 10
    iput-object p4, p0, Lio/appmetrica/analytics/impl/qk;->k:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    .line 11
    .line 12
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/qk;->a()V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/qk;->c:Lio/appmetrica/analytics/impl/tk;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/qk;->k:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->elapsedRealtime()J

    move-result-wide v1

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/tk;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4
    :goto_0
    iput-wide v1, p0, Lio/appmetrica/analytics/impl/qk;->e:J

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/qk;->c:Lio/appmetrica/analytics/impl/tk;

    .line 6
    iget-object v0, v0, Lio/appmetrica/analytics/impl/tk;->b:Ljava/lang/Long;

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 8
    :goto_1
    iput-wide v0, p0, Lio/appmetrica/analytics/impl/qk;->d:J

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/qk;->c:Lio/appmetrica/analytics/impl/tk;

    .line 10
    iget-object v1, v1, Lio/appmetrica/analytics/impl/tk;->e:Ljava/lang/Long;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_2

    move-wide v4, v2

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 12
    :goto_2
    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/qk;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    iget-object v0, p0, Lio/appmetrica/analytics/impl/qk;->c:Lio/appmetrica/analytics/impl/tk;

    .line 14
    iget-object v0, v0, Lio/appmetrica/analytics/impl/tk;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 16
    :goto_3
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/qk;->g:Z

    .line 17
    iget-object v0, p0, Lio/appmetrica/analytics/impl/qk;->c:Lio/appmetrica/analytics/impl/tk;

    .line 18
    iget-object v0, v0, Lio/appmetrica/analytics/impl/tk;->g:Ljava/lang/Long;

    if-nez v0, :cond_4

    goto :goto_4

    .line 19
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 20
    :goto_4
    iput-wide v2, p0, Lio/appmetrica/analytics/impl/qk;->i:J

    .line 21
    iget-object v0, p0, Lio/appmetrica/analytics/impl/qk;->c:Lio/appmetrica/analytics/impl/tk;

    iget-wide v4, p0, Lio/appmetrica/analytics/impl/qk;->e:J

    sub-long/2addr v2, v4

    .line 22
    iget-object v0, v0, Lio/appmetrica/analytics/impl/tk;->h:Ljava/lang/Long;

    if-nez v0, :cond_5

    goto :goto_5

    .line 23
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 24
    :goto_5
    iput-wide v2, p0, Lio/appmetrica/analytics/impl/qk;->j:J

    return-void
.end method

.method public final a(J)Z
    .locals 9

    .line 25
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/qk;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 26
    :goto_0
    iget-object v3, p0, Lio/appmetrica/analytics/impl/qk;->h:Lio/appmetrica/analytics/impl/Fk;

    if-nez v3, :cond_2

    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v3, p0, Lio/appmetrica/analytics/impl/qk;->h:Lio/appmetrica/analytics/impl/Fk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    .line 29
    :try_start_1
    iget-object v3, p0, Lio/appmetrica/analytics/impl/qk;->a:Lio/appmetrica/analytics/impl/o5;

    .line 30
    iget-object v3, v3, Lio/appmetrica/analytics/impl/o5;->e:Lio/appmetrica/analytics/impl/W6;

    .line 31
    iget-wide v4, p0, Lio/appmetrica/analytics/impl/qk;->d:J

    .line 32
    iget-object v6, p0, Lio/appmetrica/analytics/impl/qk;->c:Lio/appmetrica/analytics/impl/tk;

    .line 33
    iget-object v6, v6, Lio/appmetrica/analytics/impl/tk;->a:Lio/appmetrica/analytics/impl/Ik;

    .line 34
    invoke-virtual {v3, v4, v5, v6}, Lio/appmetrica/analytics/impl/W6;->a(JLio/appmetrica/analytics/impl/Ik;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "report_request_parameters"

    .line 35
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 37
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v3, Lio/appmetrica/analytics/impl/Fk;

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/Fk;-><init>(Lorg/json/JSONObject;)V

    iput-object v3, p0, Lio/appmetrica/analytics/impl/qk;->h:Lio/appmetrica/analytics/impl/Fk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :catchall_0
    :cond_1
    :try_start_2
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 40
    :cond_2
    :goto_1
    iget-object v3, p0, Lio/appmetrica/analytics/impl/qk;->h:Lio/appmetrica/analytics/impl/Fk;

    if-eqz v3, :cond_8

    .line 41
    iget-object v4, p0, Lio/appmetrica/analytics/impl/qk;->a:Lio/appmetrica/analytics/impl/o5;

    .line 42
    iget-object v4, v4, Lio/appmetrica/analytics/impl/o5;->k:Lio/appmetrica/analytics/impl/Og;

    .line 43
    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/D5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/impl/lh;

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Boolean;

    .line 44
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAnalyticsSdkVersionName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lio/appmetrica/analytics/impl/Fk;->a:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    .line 45
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAnalyticsSdkBuildNumber()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lio/appmetrica/analytics/impl/Fk;->b:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    .line 46
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lio/appmetrica/analytics/impl/Fk;->c:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 47
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getAppBuildNumber()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lio/appmetrica/analytics/impl/Fk;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 48
    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getOsVersion()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lio/appmetrica/analytics/impl/Fk;->e:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    .line 49
    iget v6, v3, Lio/appmetrica/analytics/impl/Fk;->f:I

    invoke-virtual {v4}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getOsApiLevel()I

    move-result v7

    if-ne v6, v7, :cond_3

    move v6, v1

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v5, v7

    .line 50
    iget v3, v3, Lio/appmetrica/analytics/impl/Fk;->g:I

    .line 51
    iget v4, v4, Lio/appmetrica/analytics/impl/lh;->r:I

    if-ne v3, v4, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    .line 52
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v5, v4

    .line 53
    invoke-static {v5}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 54
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    .line 55
    :cond_5
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_5

    :cond_7
    :goto_4
    move v3, v1

    goto :goto_6

    :cond_8
    :goto_5
    move v3, v2

    .line 56
    :goto_6
    iget-object v4, p0, Lio/appmetrica/analytics/impl/qk;->k:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {v4}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->elapsedRealtime()J

    move-result-wide v4

    .line 57
    iget-wide v6, p0, Lio/appmetrica/analytics/impl/qk;->i:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_9

    move v4, v1

    goto :goto_7

    :cond_9
    move v4, v2

    :goto_7
    sub-long v5, p1, v6

    .line 58
    iget-wide v7, p0, Lio/appmetrica/analytics/impl/qk;->e:J

    sub-long/2addr p1, v7

    if-nez v4, :cond_c

    .line 59
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 60
    iget-object v7, p0, Lio/appmetrica/analytics/impl/qk;->c:Lio/appmetrica/analytics/impl/tk;

    iget-object v8, p0, Lio/appmetrica/analytics/impl/qk;->a:Lio/appmetrica/analytics/impl/o5;

    .line 61
    iget-object v8, v8, Lio/appmetrica/analytics/impl/o5;->k:Lio/appmetrica/analytics/impl/Og;

    .line 62
    invoke-virtual {v8}, Lio/appmetrica/analytics/impl/D5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v8

    check-cast v8, Lio/appmetrica/analytics/impl/lh;

    .line 63
    iget v8, v8, Lio/appmetrica/analytics/impl/lh;->f:I

    .line 64
    iget-object v7, v7, Lio/appmetrica/analytics/impl/tk;->d:Ljava/lang/Integer;

    if-nez v7, :cond_a

    goto :goto_8

    .line 65
    :cond_a
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_8
    int-to-long v7, v8

    .line 66
    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_c

    sget-wide v5, Lio/appmetrica/analytics/impl/uk;->a:J

    .line 67
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long p1, p1, v4

    if-ltz p1, :cond_b

    goto :goto_9

    :cond_b
    move p1, v2

    goto :goto_a

    :cond_c
    :goto_9
    move p1, v1

    :goto_a
    xor-int/2addr p1, v1

    if-eqz v0, :cond_d

    if-eqz v3, :cond_d

    if-eqz p1, :cond_d

    goto :goto_b

    :cond_d
    move v1, v2

    :goto_b
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Session{id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lio/appmetrica/analytics/impl/qk;->d:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", creationTime="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lio/appmetrica/analytics/impl/qk;->e:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", currentReportId="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lio/appmetrica/analytics/impl/qk;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", sessionRequestParams="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lio/appmetrica/analytics/impl/qk;->h:Lio/appmetrica/analytics/impl/Fk;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", sleepStart="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lio/appmetrica/analytics/impl/qk;->i:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 v1, 0x7d

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
