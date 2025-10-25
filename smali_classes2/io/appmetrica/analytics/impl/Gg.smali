.class public final Lio/appmetrica/analytics/impl/Gg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/vl;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/mm;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/mm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gg;->a:Lio/appmetrica/analytics/impl/mm;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gg;->a:Lio/appmetrica/analytics/impl/mm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/mm;->c()Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->getInstance()Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->getNetworkCore()Lio/appmetrica/analytics/networktasks/internal/NetworkCore;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/networktasks/internal/NetworkCore;->startTask(Lio/appmetrica/analytics/networktasks/internal/NetworkTask;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
