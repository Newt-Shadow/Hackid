.class public final synthetic Lsc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsc/a;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsc/a;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    invoke-static {v0}, Lio/appmetrica/analytics/reporterextension/internal/ReporterExtensionClientModuleEntryPoint;->b(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V

    return-void
.end method
