.class public final Lio/appmetrica/analytics/impl/Dj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/cb;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/ModuleEvent;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/ModuleEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Dj;->a:Lio/appmetrica/analytics/ModuleEvent;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/db;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Dj;->a:Lio/appmetrica/analytics/ModuleEvent;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lio/appmetrica/analytics/IModuleReporter;->reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
