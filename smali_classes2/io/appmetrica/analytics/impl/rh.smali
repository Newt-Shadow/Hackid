.class public final Lio/appmetrica/analytics/impl/rh;
.super Lio/appmetrica/analytics/impl/Pg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/o5;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Pg;-><init>(Lio/appmetrica/analytics/impl/o5;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/e6;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->p:Lio/appmetrica/analytics/impl/B9;

    .line 4
    .line 5
    check-cast v0, Lio/appmetrica/analytics/impl/z5;

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/z5;->e()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 11
    .line 12
    iget-object v0, v0, Lio/appmetrica/analytics/impl/o5;->j:Lio/appmetrica/analytics/impl/Ek;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Ek;->b(Lio/appmetrica/analytics/impl/e6;)Lio/appmetrica/analytics/impl/qk;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-boolean v2, v1, Lio/appmetrica/analytics/impl/qk;->g:Z

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iput-boolean v3, v1, Lio/appmetrica/analytics/impl/qk;->g:Z

    .line 25
    .line 26
    iget-object v1, v1, Lio/appmetrica/analytics/impl/qk;->b:Lio/appmetrica/analytics/impl/Hk;

    .line 27
    .line 28
    const-string v2, "SESSION_IS_ALIVE_REPORT_NEEDED"

    .line 29
    .line 30
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v1, v2, v4}, Lio/appmetrica/analytics/impl/Hk;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Hk;->b()V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget v1, v0, Lio/appmetrica/analytics/impl/Ek;->g:I

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    if-eq v1, v2, :cond_1

    .line 42
    .line 43
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Ek;->f:Lio/appmetrica/analytics/impl/qk;

    .line 44
    .line 45
    invoke-virtual {v0, v1, p1}, Lio/appmetrica/analytics/impl/Ek;->a(Lio/appmetrica/analytics/impl/qk;Lio/appmetrica/analytics/impl/e6;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iput v2, v0, Lio/appmetrica/analytics/impl/Ek;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    monitor-exit v0

    .line 51
    return v3

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    monitor-exit v0

    .line 54
    throw p1
.end method
