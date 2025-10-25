.class public final Lio/appmetrica/analytics/impl/h2;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static final a(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/fb;)Lio/appmetrica/analytics/impl/Ra;
    .locals 3

    .line 2
    new-instance v0, Lio/appmetrica/analytics/impl/Ch;

    .line 3
    new-instance v1, Lio/appmetrica/analytics/impl/qc;

    invoke-direct {v1, p3, p2}, Lio/appmetrica/analytics/impl/qc;-><init>(Lio/appmetrica/analytics/impl/fb;Lio/appmetrica/analytics/AppMetricaConfig;)V

    new-instance p3, Lio/appmetrica/analytics/impl/rp;

    invoke-direct {p3}, Lio/appmetrica/analytics/impl/rp;-><init>()V

    .line 4
    iget-object p2, p2, Lio/appmetrica/analytics/AppMetricaConfig;->crashTransformer:Lio/appmetrica/analytics/ICrashTransformer;

    .line 5
    new-instance v2, Lio/appmetrica/analytics/impl/Y9;

    invoke-direct {v2, p1}, Lio/appmetrica/analytics/impl/Y9;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, p3, p2, v2}, Lio/appmetrica/analytics/impl/Ch;-><init>(Lio/appmetrica/analytics/impl/Cn;Lio/appmetrica/analytics/impl/w6;Lio/appmetrica/analytics/ICrashTransformer;Lio/appmetrica/analytics/impl/Y9;)V

    return-object v0
.end method
