.class public final Lio/appmetrica/analytics/impl/li;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/eb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)Lio/appmetrica/analytics/impl/Ua;
    .locals 0

    .line 3
    new-instance p1, Lio/appmetrica/analytics/impl/Jc;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Jc;-><init>()V

    return-object p1
.end method

.method public final a()Lio/appmetrica/analytics/impl/eb;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final b(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Z)Lio/appmetrica/analytics/impl/Ua;
    .locals 0

    .line 1
    new-instance p1, Lio/appmetrica/analytics/impl/Jc;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Jc;-><init>()V

    return-object p1
.end method

.method public final b(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/db;
    .locals 0

    .line 2
    new-instance p1, Lio/appmetrica/analytics/impl/ii;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/ii;-><init>()V

    return-object p1
.end method

.method public final b(Lio/appmetrica/analytics/AppMetricaConfig;)Lio/appmetrica/analytics/impl/gb;
    .locals 0

    .line 3
    new-instance p1, Lio/appmetrica/analytics/impl/ii;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/ii;-><init>()V

    return-object p1
.end method
