.class public final Lio/appmetrica/analytics/impl/md;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleController;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/N1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/N1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/md;->a:Lio/appmetrica/analytics/impl/N1;

    .line 5
    .line 6
    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;->onFirstClientConnected()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final b(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;->onAllClientsDisconnected()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final registerObserver(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/md;->a:Lio/appmetrica/analytics/impl/N1;

    .line 2
    .line 3
    new-instance v1, Lio/appmetrica/analytics/impl/wp;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/wp;-><init>(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/N1;->b(Lio/appmetrica/analytics/impl/M1;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/appmetrica/analytics/impl/md;->a:Lio/appmetrica/analytics/impl/N1;

    .line 12
    .line 13
    new-instance v1, Lio/appmetrica/analytics/impl/xp;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/xp;-><init>(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/N1;->a(Lio/appmetrica/analytics/impl/M1;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
