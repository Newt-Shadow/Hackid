.class public final Lio/appmetrica/analytics/reporterextension/internal/ReporterExtensionClientModuleEntryPoint;
.super Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0xa

    .line 5
    .line 6
    iput-wide v0, p0, Lio/appmetrica/analytics/reporterextension/internal/ReporterExtensionClientModuleEntryPoint;->a:J

    .line 7
    .line 8
    const-string v0, "reporter_extension"

    .line 9
    .line 10
    iput-object v0, p0, Lio/appmetrica/analytics/reporterextension/internal/ReporterExtensionClientModuleEntryPoint;->b:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private static final a(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getClientActivator()Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientActivator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {v0, p0}, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientActivator;->activate(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic b(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/appmetrica/analytics/reporterextension/internal/ReporterExtensionClientModuleEntryPoint;->a(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/reporterextension/internal/ReporterExtensionClientModuleEntryPoint;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public initClientSide(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;->initClientSide(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getProcessDetector()Lio/appmetrica/analytics/modulesapi/internal/client/ProcessDetector;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/client/ProcessDetector;->isMainProcess()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getClientExecutorProvider()Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientExecutorProvider;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientExecutorProvider;->getDefaultExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lsc/a;

    .line 23
    .line 24
    invoke-direct {v1, p1}, Lsc/a;-><init>(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V

    .line 25
    .line 26
    .line 27
    iget-wide v2, p0, Lio/appmetrica/analytics/reporterextension/internal/ReporterExtensionClientModuleEntryPoint;->a:J

    .line 28
    .line 29
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    .line 31
    invoke-interface {v0, v1, v2, v3, p1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
