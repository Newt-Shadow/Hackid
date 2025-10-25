.class public final Lio/appmetrica/analytics/impl/d3;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;

.field public final synthetic b:Lio/appmetrica/analytics/impl/e3;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/e3;Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/d3;->b:Lio/appmetrica/analytics/impl/e3;

    .line 2
    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/d3;->a:Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;

    .line 4
    .line 5
    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/d3;->b:Lio/appmetrica/analytics/impl/e3;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/e3;->a:Lio/appmetrica/analytics/impl/bb;

    .line 4
    .line 5
    iget-object v1, p0, Lio/appmetrica/analytics/impl/d3;->a:Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;

    .line 6
    .line 7
    new-instance v2, Lio/appmetrica/analytics/impl/Cf;

    .line 8
    .line 9
    invoke-direct {v2, v1}, Lio/appmetrica/analytics/impl/Cf;-><init>(Lio/appmetrica/analytics/billinginterface/internal/ProductInfo;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Lio/appmetrica/analytics/impl/e6;->a(Lio/appmetrica/analytics/impl/Cf;)Lio/appmetrica/analytics/impl/e6;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v0, Lio/appmetrica/analytics/impl/o5;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/o5;->a(Lio/appmetrica/analytics/impl/e6;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
