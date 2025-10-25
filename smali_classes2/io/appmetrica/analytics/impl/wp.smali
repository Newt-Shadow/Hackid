.class public final synthetic Lio/appmetrica/analytics/impl/wp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/M1;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/wp;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/wp;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;

    invoke-static {v0, p1}, Lio/appmetrica/analytics/impl/md;->a(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleObserver;Landroid/content/Intent;)V

    return-void
.end method
