.class public final Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;
.super Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint<",
        "Lio/appmetrica/analytics/screenshot/impl/G;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lio/appmetrica/analytics/screenshot/impl/g0;

.field private final b:Lio/appmetrica/analytics/screenshot/impl/j0;

.field private final c:Lio/appmetrica/analytics/screenshot/impl/I;

.field private final d:Lio/appmetrica/analytics/screenshot/impl/H;

.field private final e:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$configUpdateListener$1;

.field private final f:Ljava/lang/String;

.field private final g:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1;

.field private final h:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$clientConfigProvider$1;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/j0;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/j0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->b:Lio/appmetrica/analytics/screenshot/impl/j0;

    .line 10
    .line 11
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/I;

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v0, v2, v2, v1, v2}, Lio/appmetrica/analytics/screenshot/impl/I;-><init>(Lio/appmetrica/analytics/screenshot/impl/V;Lio/appmetrica/analytics/screenshot/impl/U;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->c:Lio/appmetrica/analytics/screenshot/impl/I;

    .line 19
    .line 20
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/H;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {v0, v2, v1, v2}, Lio/appmetrica/analytics/screenshot/impl/H;-><init>(Lio/appmetrica/analytics/screenshot/impl/J;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->d:Lio/appmetrica/analytics/screenshot/impl/H;

    .line 27
    .line 28
    new-instance v0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$configUpdateListener$1;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$configUpdateListener$1;-><init>(Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->e:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$configUpdateListener$1;

    .line 34
    .line 35
    const-string v0, "screenshot"

    .line 36
    .line 37
    iput-object v0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->f:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1;-><init>(Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->g:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1;

    .line 45
    .line 46
    new-instance v0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$clientConfigProvider$1;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$clientConfigProvider$1;-><init>(Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->h:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$clientConfigProvider$1;

    .line 52
    .line 53
    return-void
.end method

.method public static final synthetic access$getBundleConverter$p(Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;)Lio/appmetrica/analytics/screenshot/impl/j0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->b:Lio/appmetrica/analytics/screenshot/impl/j0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getConfig$p(Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;)Lio/appmetrica/analytics/screenshot/impl/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->a:Lio/appmetrica/analytics/screenshot/impl/g0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getConfigConverter$p(Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;)Lio/appmetrica/analytics/screenshot/impl/H;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->d:Lio/appmetrica/analytics/screenshot/impl/H;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getConfigParser$p(Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;)Lio/appmetrica/analytics/screenshot/impl/I;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->c:Lio/appmetrica/analytics/screenshot/impl/I;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getConfigUpdateListener$p(Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;)Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$configUpdateListener$1;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->e:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$configUpdateListener$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setConfig$p(Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;Lio/appmetrica/analytics/screenshot/impl/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->a:Lio/appmetrica/analytics/screenshot/impl/g0;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public getClientConfigProvider()Lio/appmetrica/analytics/modulesapi/internal/service/ClientConfigProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->h:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$clientConfigProvider$1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRemoteConfigExtensionConfiguration()Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration<",
            "Lio/appmetrica/analytics/screenshot/impl/G;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->g:Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1;

    .line 2
    .line 3
    return-object v0
.end method

.method public initServiceSide(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;",
            "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig<",
            "Lio/appmetrica/analytics/screenshot/impl/G;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;->getFeaturesConfig()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/G;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p2, Lio/appmetrica/analytics/screenshot/impl/g0;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Lio/appmetrica/analytics/screenshot/impl/g0;-><init>(Lio/appmetrica/analytics/screenshot/impl/G;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    :goto_0
    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/internal/ScreenshotServiceModuleEntryPoint;->a:Lio/appmetrica/analytics/screenshot/impl/g0;

    .line 17
    .line 18
    return-void
.end method
