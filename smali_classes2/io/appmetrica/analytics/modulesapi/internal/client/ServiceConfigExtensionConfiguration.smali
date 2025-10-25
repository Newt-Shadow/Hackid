.class public abstract Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigExtensionConfiguration;
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
.method public abstract getBundleConverter()Lio/appmetrica/analytics/modulesapi/internal/client/BundleToServiceConfigConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/modulesapi/internal/client/BundleToServiceConfigConverter<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getServiceConfigUpdateListener()Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigUpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigUpdateListener<",
            "TT;>;"
        }
    .end annotation
.end method
