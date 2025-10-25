.class public final Lio/appmetrica/analytics/impl/q4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/p4;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public c:Lio/appmetrica/analytics/impl/W5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/p4;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/p4;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/appmetrica/analytics/impl/q4;->a:Lio/appmetrica/analytics/impl/p4;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/appmetrica/analytics/impl/q4;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/nj;->a:Lio/appmetrica/analytics/impl/Oj;

    .line 2
    invoke-static {p2}, Lxc/a;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object p1

    invoke-static {p1}, Lyc/e0;->c(Lxc/k;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    move-result-object p0

    invoke-static {p0}, Lyc/e0;->c(Lxc/k;)Ljava/util/Map;

    move-result-object p0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance p1, Lio/appmetrica/analytics/impl/Nj;

    const-string p2, "client_module_errors"

    invoke-direct {p1, p2, p0}, Lio/appmetrica/analytics/impl/Nj;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Oj;->a(Lio/appmetrica/analytics/impl/cb;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueProcessor;
    .locals 1

    .line 14
    iget-object v0, p0, Lio/appmetrica/analytics/impl/q4;->c:Lio/appmetrica/analytics/impl/W5;

    if-eqz v0, :cond_0

    check-cast v0, Lio/appmetrica/analytics/impl/c4;

    .line 15
    iget-object v0, v0, Lio/appmetrica/analytics/impl/c4;->b:Lio/appmetrica/analytics/impl/Z5;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Z5;->a:Lio/appmetrica/analytics/impl/x5;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final a(Landroid/os/Bundle;Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/q4;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;

    .line 19
    :try_start_0
    invoke-virtual {v1}, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;->getServiceConfigExtensionConfiguration()Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigExtensionConfiguration;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {v2}, Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigExtensionConfiguration;->getServiceConfigUpdateListener()Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigUpdateListener;

    move-result-object v3

    .line 21
    iget-object v4, p0, Lio/appmetrica/analytics/impl/q4;->a:Lio/appmetrica/analytics/impl/p4;

    .line 22
    invoke-virtual {v1}, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 25
    new-instance v5, Lio/appmetrica/analytics/impl/o4;

    .line 26
    invoke-virtual {v2}, Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigExtensionConfiguration;->getBundleConverter()Lio/appmetrica/analytics/modulesapi/internal/client/BundleToServiceConfigConverter;

    move-result-object v2

    invoke-interface {v2, v4}, Lio/appmetrica/analytics/modulesapi/internal/client/BundleToServiceConfigConverter;->fromBundle(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    invoke-direct {v5, p2, v2}, Lio/appmetrica/analytics/impl/o4;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    .line 28
    invoke-interface {v3, v5}, Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigUpdateListener;->onServiceConfigUpdated(Lio/appmetrica/analytics/modulesapi/internal/client/ModuleServiceConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 29
    invoke-virtual {v1}, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v3, "notifyModulesWithConfig"

    invoke-static {v1, v3, v2}, Lio/appmetrica/analytics/impl/q4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/W5;)V
    .locals 6

    .line 6
    iput-object p1, p0, Lio/appmetrica/analytics/impl/q4;->c:Lio/appmetrica/analytics/impl/W5;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/impl/q4;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;

    .line 10
    :try_start_0
    invoke-virtual {v2, p1}, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;->initClientSide(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 11
    invoke-virtual {v2}, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    const-string v5, "initClientSide"

    invoke-static {v4, v5, v3}, Lio/appmetrica/analytics/impl/q4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/q4;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/q4;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/q4;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {v1}, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;->onActivated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v2

    .line 24
    invoke-virtual {v1}, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;->getIdentifier()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v3, "onActivated"

    .line 29
    .line 30
    invoke-static {v1, v3, v2}, Lio/appmetrica/analytics/impl/q4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method
