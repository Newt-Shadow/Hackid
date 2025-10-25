.class public final Lio/appmetrica/analytics/impl/Xc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Xm;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/permission/PermissionResolutionStrategy;

.field public final c:Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor;

.field public final d:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Xc;->a:Landroid/content/Context;

    .line 5
    .line 6
    const/16 v0, 0x1d

    .line 7
    .line 8
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/permission/SinglePermissionStrategy;

    .line 15
    .line 16
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/za;->i()Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/coreutils/internal/permission/SinglePermissionStrategy;-><init>(Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/permission/AlwaysAllowPermissionStrategy;

    .line 31
    .line 32
    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/permission/AlwaysAllowPermissionStrategy;-><init>()V

    .line 33
    .line 34
    .line 35
    :goto_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Xc;->b:Lio/appmetrica/analytics/coreapi/internal/permission/PermissionResolutionStrategy;

    .line 36
    .line 37
    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Xc;->c:Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor;

    .line 43
    .line 44
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 45
    .line 46
    const-wide/16 v0, 0x14

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    new-instance p1, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    .line 53
    .line 54
    const/4 v0, 0x2

    .line 55
    int-to-long v0, v0

    .line 56
    mul-long v5, v3, v0

    .line 57
    .line 58
    const-string v7, "mobile-connection"

    .line 59
    .line 60
    move-object v2, p1

    .line 61
    invoke-direct/range {v2 .. v7}, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;-><init>(JJLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Xc;->d:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Xc;->b()Lio/appmetrica/analytics/impl/Wc;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final declared-synchronized b()Lio/appmetrica/analytics/impl/Wc;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Xc;->d:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    .line 3
    .line 4
    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;->getData()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lio/appmetrica/analytics/impl/Wc;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Xc;->d:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    .line 13
    .line 14
    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;->shouldUpdateData()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    :cond_0
    new-instance v0, Lio/appmetrica/analytics/impl/Wc;

    .line 21
    .line 22
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Xc;->b:Lio/appmetrica/analytics/coreapi/internal/permission/PermissionResolutionStrategy;

    .line 23
    .line 24
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Xc;->a:Landroid/content/Context;

    .line 25
    .line 26
    invoke-interface {v1, v2}, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionResolutionStrategy;->hasNecessaryPermissions(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Xc;->c:Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor;

    .line 33
    .line 34
    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/services/telephony/CellularNetworkTypeExtractor;->getNetworkType()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-string v1, "unknown"

    .line 40
    .line 41
    :goto_0
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Wc;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Xc;->d:Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/coreutils/internal/cache/CachedDataProvider$CachedData;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :cond_2
    monitor-exit p0

    .line 50
    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    monitor-exit p0

    .line 53
    throw v0
.end method
