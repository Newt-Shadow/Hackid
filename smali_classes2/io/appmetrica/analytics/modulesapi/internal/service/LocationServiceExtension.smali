.class public abstract Lio/appmetrica/analytics/modulesapi/internal/service/LocationServiceExtension;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract getLocationConsumer()Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/coreapi/internal/backport/Consumer<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocationControllerAppStateToggle()Lio/appmetrica/analytics/coreapi/internal/control/Toggle;
.end method

.method public abstract getLocationSourcesController()Lio/appmetrica/analytics/modulesapi/internal/service/ModuleLocationSourcesServiceController;
.end method
