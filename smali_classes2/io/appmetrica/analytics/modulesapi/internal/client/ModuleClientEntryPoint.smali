.class public abstract Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;
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
.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public getServiceConfigExtensionConfiguration()Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigExtensionConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigExtensionConfiguration<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public initClientSide(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V
    .locals 0

    return-void
.end method

.method public onActivated()V
    .locals 0

    return-void
.end method
