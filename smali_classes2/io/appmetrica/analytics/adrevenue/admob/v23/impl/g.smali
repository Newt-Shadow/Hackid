.class public abstract Lio/appmetrica/analytics/adrevenue/admob/v23/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueProcessor;


# instance fields
.field protected final a:Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;

.field public final b:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/g;->a:Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/g;->b:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/g;->b:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getInternalClientModuleFacade()Lio/appmetrica/analytics/modulesapi/internal/common/InternalClientModuleFacade;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalClientModuleFacade;->reportAdRevenue(Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getMainPublicOrAnonymousLogger()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string v1, "Ad Revenue from AdMob was reported"

    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "AdMob"

    return-object v0
.end method
