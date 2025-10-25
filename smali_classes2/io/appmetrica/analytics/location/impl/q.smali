.class public final Lio/appmetrica/analytics/location/impl/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;
.implements Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lio/appmetrica/analytics/location/impl/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "location-passive-provider"

    .line 5
    .line 6
    iput-object v0, p0, Lio/appmetrica/analytics/location/impl/q;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Landroid/location/LocationListener;)Lio/appmetrica/analytics/location/impl/r;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/location/impl/q;->c(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Landroid/location/LocationListener;)Lio/appmetrica/analytics/location/impl/r;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final b(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Landroid/location/LocationListener;)Lio/appmetrica/analytics/location/impl/r;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/location/impl/q;->c(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Landroid/location/LocationListener;)Lio/appmetrica/analytics/location/impl/r;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final declared-synchronized c(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Landroid/location/LocationListener;)Lio/appmetrica/analytics/location/impl/r;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/location/impl/q;->b:Lio/appmetrica/analytics/location/impl/r;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lio/appmetrica/analytics/location/impl/r;

    .line 7
    .line 8
    invoke-interface {p3}, Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;->getLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/permission/SinglePermissionStrategy;

    .line 13
    .line 14
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 15
    .line 16
    invoke-direct {v1, p2, v2}, Lio/appmetrica/analytics/coreutils/internal/permission/SinglePermissionStrategy;-><init>(Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1, p3, v1, p4}, Lio/appmetrica/analytics/location/impl/r;-><init>(Landroid/content/Context;Landroid/os/Looper;Lio/appmetrica/analytics/coreapi/internal/permission/PermissionResolutionStrategy;Landroid/location/LocationListener;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lio/appmetrica/analytics/location/impl/q;->b:Lio/appmetrica/analytics/location/impl/r;

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lio/appmetrica/analytics/location/impl/q;->b:Lio/appmetrica/analytics/location/impl/r;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    const-string p1, "passiveProviderLocationReceiver"

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    :cond_1
    monitor-exit p0

    .line 35
    return-object p1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0

    .line 38
    throw p1
.end method

.method public final getExtractor(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Landroid/location/LocationListener;)Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/location/impl/q;->c(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Landroid/location/LocationListener;)Lio/appmetrica/analytics/location/impl/r;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/location/impl/q;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLocationReceiver(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Landroid/location/LocationListener;)Lio/appmetrica/analytics/locationapi/internal/LocationReceiver;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/location/impl/q;->c(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Landroid/location/LocationListener;)Lio/appmetrica/analytics/location/impl/r;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
