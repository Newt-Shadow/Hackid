.class public final Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;
.super Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigExtensionConfiguration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigExtensionConfiguration<",
        "Lio/appmetrica/analytics/screenshot/impl/B;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint;


# direct methods
.method constructor <init>(Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;->a:Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint;

    .line 2
    .line 3
    invoke-direct {p0}, Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigExtensionConfiguration;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic getBundleConverter()Lio/appmetrica/analytics/modulesapi/internal/client/BundleToServiceConfigConverter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;->getBundleConverter()Lio/appmetrica/analytics/screenshot/impl/h;

    move-result-object v0

    return-object v0
.end method

.method public getBundleConverter()Lio/appmetrica/analytics/screenshot/impl/h;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;->a:Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint;

    invoke-static {v0}, Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint;->access$getBundleConverter$p(Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint;)Lio/appmetrica/analytics/screenshot/impl/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getServiceConfigUpdateListener()Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigUpdateListener;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;->getServiceConfigUpdateListener()Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint$configUpdateListener$1;

    move-result-object v0

    return-object v0
.end method

.method public getServiceConfigUpdateListener()Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint$configUpdateListener$1;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;->a:Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint;

    invoke-static {v0}, Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint;->access$getConfigUpdateListener$p(Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint;)Lio/appmetrica/analytics/screenshot/internal/ScreenshotClientModuleEntryPoint$configUpdateListener$1;

    move-result-object v0

    return-object v0
.end method
