.class public final Lio/appmetrica/analytics/impl/fh;
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
    .locals 1

    .line 1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Pg;->a:Lio/appmetrica/analytics/impl/o5;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p1, Lio/appmetrica/analytics/impl/o5;->p:Lio/appmetrica/analytics/impl/B9;

    .line 5
    .line 6
    check-cast v0, Lio/appmetrica/analytics/impl/z5;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/z5;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p1

    .line 16
    throw v0
.end method
