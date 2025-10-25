.class public final Lio/appmetrica/analytics/impl/qc;
.super Lio/appmetrica/analytics/impl/Cn;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/AppMetricaConfig;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/fb;Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Cn;-><init>(Lio/appmetrica/analytics/impl/fb;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/qc;->b:Lio/appmetrica/analytics/AppMetricaConfig;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/gb;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Cn;->a:Lio/appmetrica/analytics/impl/fb;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/appmetrica/analytics/impl/fb;->a()Lio/appmetrica/analytics/impl/eb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/impl/qc;->b:Lio/appmetrica/analytics/AppMetricaConfig;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/impl/eb;->b(Lio/appmetrica/analytics/AppMetricaConfig;)Lio/appmetrica/analytics/impl/gb;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
