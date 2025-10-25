.class public final Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field final synthetic a:Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;

.field final synthetic b:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;


# direct methods
.method constructor <init>(Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1;->a:Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;

    .line 2
    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1;->b:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    .line 4
    .line 5
    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public runSafety()V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1;->a:Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;->access$getContext$p(Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/billingclient/api/d;->j(Landroid/content/Context;)Lcom/android/billingclient/api/d$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lio/appmetrica/analytics/billingv6/impl/s;

    .line 12
    .line 13
    invoke-direct {v1}, Lio/appmetrica/analytics/billingv6/impl/s;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/d$a;->e(Lc2/o;)Lcom/android/billingclient/api/d$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/billingclient/api/d$a;->c()Lcom/android/billingclient/api/d$a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/billingclient/api/d$a;->a()Lcom/android/billingclient/api/d;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v7, Lio/appmetrica/analytics/billingv6/impl/d;

    .line 29
    .line 30
    iget-object v2, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1;->b:Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    .line 31
    .line 32
    iget-object v6, p0, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1;->a:Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;

    .line 33
    .line 34
    new-instance v4, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1$runSafety$1;

    .line 35
    .line 36
    invoke-direct {v4, v6}, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1$runSafety$1;-><init>(Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;)V

    .line 37
    .line 38
    .line 39
    new-instance v5, Lio/appmetrica/analytics/billingv6/impl/g;

    .line 40
    .line 41
    invoke-direct {v5, v0, v4}, Lio/appmetrica/analytics/billingv6/impl/g;-><init>(Lcom/android/billingclient/api/d;Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1$runSafety$1;)V

    .line 42
    .line 43
    .line 44
    move-object v1, v7

    .line 45
    move-object v3, v0

    .line 46
    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/billingv6/impl/d;-><init>(Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;Lcom/android/billingclient/api/d;Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor$updateBilling$1$runSafety$1;Lio/appmetrica/analytics/billingv6/impl/g;Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v7}, Lcom/android/billingclient/api/d;->r(Lc2/g;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
