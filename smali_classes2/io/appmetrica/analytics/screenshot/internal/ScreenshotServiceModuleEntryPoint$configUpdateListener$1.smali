.class public final Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$configUpdateListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigUpdateListener<",
        "Lio/appmetrica/analytics/screenshot/impl/G;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;


# direct methods
.method constructor <init>(Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$configUpdateListener$1;->a:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRemoteConfigUpdated(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig<",
            "Lio/appmetrica/analytics/screenshot/impl/G;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$configUpdateListener$1;->a:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;

    .line 2
    .line 3
    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;->getFeaturesConfig()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/G;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/g0;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lio/appmetrica/analytics/screenshot/impl/g0;-><init>(Lio/appmetrica/analytics/screenshot/impl/G;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-static {v0, v1}, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->access$setConfig$p(Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;Lio/appmetrica/analytics/screenshot/impl/g0;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
