.class public abstract Lio/appmetrica/analytics/impl/Cd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lio/appmetrica/analytics/impl/I9;


# direct methods
.method public static final declared-synchronized a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/I9;
    .locals 3

    .line 1
    const-class v0, Lio/appmetrica/analytics/impl/Cd;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/impl/Cd;->a:Lio/appmetrica/analytics/impl/I9;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lio/appmetrica/analytics/impl/I9;

    .line 9
    .line 10
    const-string v2, "uuid.dat"

    .line 11
    .line 12
    invoke-direct {v1, p0, v2}, Lio/appmetrica/analytics/impl/I9;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lio/appmetrica/analytics/impl/Cd;->a:Lio/appmetrica/analytics/impl/I9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0
.end method
