.class public final Lio/appmetrica/analytics/impl/P0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/ecommerce/ECommerceEvent;

.field public final synthetic b:Lio/appmetrica/analytics/impl/k1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/k1;Lio/appmetrica/analytics/ecommerce/ECommerceEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/P0;->b:Lio/appmetrica/analytics/impl/k1;

    .line 2
    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/P0;->a:Lio/appmetrica/analytics/ecommerce/ECommerceEvent;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/P0;->b:Lio/appmetrica/analytics/impl/k1;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/impl/k1;->a(Lio/appmetrica/analytics/impl/k1;)Lio/appmetrica/analytics/impl/Ua;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/impl/P0;->a:Lio/appmetrica/analytics/ecommerce/ECommerceEvent;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/IReporter;->reportECommerce(Lio/appmetrica/analytics/ecommerce/ECommerceEvent;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
