.class public interface abstract Lio/appmetrica/analytics/locationapi/internal/LocationClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;
.implements Lio/appmetrica/analytics/locationapi/internal/LocationProvider;


# virtual methods
.method public abstract getLastKnownExtractorProviderFactory()Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProviderFactory;
.end method

.method public abstract getLocationReceiverProviderFactory()Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProviderFactory;
.end method

.method public abstract init(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;",
            "Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;",
            "Ljava/util/List<",
            "+",
            "Lio/appmetrica/analytics/coreapi/internal/backport/Consumer<",
            "Landroid/location/Location;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract registerSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V
.end method

.method public abstract registerSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;)V
.end method

.method public abstract unregisterSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LastKnownLocationExtractorProvider;)V
.end method

.method public abstract unregisterSystemLocationSource(Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;)V
.end method

.method public abstract updateCacheArguments(Lio/appmetrica/analytics/locationapi/internal/CacheArguments;)V
.end method

.method public abstract updateLocationFilter(Lio/appmetrica/analytics/locationapi/internal/LocationFilter;)V
.end method

.method public abstract updateUserLocation(Landroid/location/Location;)V
.end method
