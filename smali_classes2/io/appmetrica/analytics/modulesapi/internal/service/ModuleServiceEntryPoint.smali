.class public abstract Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


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
.method public getClientConfigProvider()Lio/appmetrica/analytics/modulesapi/internal/service/ClientConfigProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public getLocationServiceExtension()Lio/appmetrica/analytics/modulesapi/internal/service/LocationServiceExtension;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getModuleEventServiceHandlerFactory()Lio/appmetrica/analytics/modulesapi/internal/service/event/ModuleEventServiceHandlerFactory;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getModuleServicesDatabase()Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServicesDatabase;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteConfigExtensionConfiguration()Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public initServiceSide(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;",
            "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method
